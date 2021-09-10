/**
 * Created by Administrator on 2017/5/24.
 */

$(function () {

    //全局的checkbox选中和未选中的样式
    var $allCheckbox = $('input[type="checkbox"]'),     //全局的全部checkbox,寻找所有的type是checkbox的input，全局三个复选框，全选和每个商品前面的选择框
        $wholeChexbox = $('.whole_check'),              //获取全选的标签，选取类为whole_check的标签
        $cartBox = $('.cartBox'),                       //每个商铺盒子，选取类为cartBox的标签
        $shopCheckbox = $('.shopChoice'),               //每个商铺的checkbox，选取类为shopChoice标签
        $sonCheckBox = $('.son_check');                 //选取类为son_check标签

    //每个商铺下的商品的checkbox
    //全选
    $allCheckbox.click(function () {

        // 在jquery中判断checkbox是否选中只要使用is(“:checked”)即可解决了
        // 选中$(this).is(':checked')返回true，
        if ($(this).is(':checked')) {
            $(this).next('label').addClass('mark');
			$(this).parent().parent().parent().addClass('bg-warning');
        } else {
            $(this).next('label').removeClass('mark');
			$(this).parent().parent().parent().removeClass('bg-warning');
        }
    });

    //====================================全局全选与单个商品的关系================================
    $wholeChexbox.click(function () {

        // 选择$cartBox下面的所有的type是checkbox的input标签
        var $checkboxs = $cartBox.find('input[type="checkbox"]');

        if ($(this).is(':checked')) {
            //设置属性的值
            $checkboxs.prop("checked", true);
            //addClass向被选元素添加一个类
            $checkboxs.next('label').addClass('mark');
            //parent()返回上一级的直接父元素
			$checkboxs.next('label').parent().parent().parent().addClass('bg-warning');
        } else {
            $checkboxs.prop("checked", false);
            $checkboxs.next('label').removeClass('mark');
			$checkboxs.next('label').parent().parent().parent().removeClass('bg-warning');
        }
        totalMoney();
    });

    //商品全选，则全选变更成全选，反之就不全选
    $sonCheckBox.each(function () {

        $(this).click(function () {
            if ($(this).is(':checked')) {
                //判断：所有单个商品是否勾选
                var len = $sonCheckBox.length;
                var num = 0;

                $sonCheckBox.each(function () {
                    if ($(this).is(':checked')) {
                        num++;
                    }
                });
                //如果全部的商品被选中，就把全选也选中
                if (num == len) {
                    $wholeChexbox.prop("checked", true);
                    $wholeChexbox.next('label').addClass('mark');
                }
            } else {
                //单个商品取消勾选，全局全选取消勾选
                $wholeChexbox.prop("checked", false);
                $wholeChexbox.next('label').removeClass('mark');
            }
        })
    })


    //店铺$sonChecks有一个未选中，店铺全选按钮取消选中，若全都选中，则全选打对勾
    $cartBox.each(function () {

        //把当前对象保存起来，便于后边的使用。
        var $this = $(this);
        //son_check也是获取到商品选中框的input
        var $sonChecks = $this.find('.son_check');

        $sonChecks.each(function () {

            $(this).click(function () {
                if ($(this).is(':checked')) {
                    //判断：如果所有的$sonChecks都选中则店铺全选打对勾！
                    var len = $sonChecks.length;
                    var num = 0;
                    $sonChecks.each(function () {
                        if ($(this).is(':checked')) {
                            num++;
                        }
                    });
                    if (num == len) {
                        $(this).parents('.cartBox').find('.shopChoice').prop("checked", true);
                        $(this).parents('.cartBox').find('.shopChoice').next('label').addClass('mark');
                    }

                } else {
                    //否则，店铺全选取消
                    $(this).parents('.cartBox').find('.shopChoice').prop("checked", false);
                    $(this).parents('.cartBox').find('.shopChoice').next('label').removeClass('mark');
                }
                totalMoney();
            });
        });
    });


    //=====================================商品数量==============================================

    var $plus = $('.plus'),//＋号
        $reduce = $('.reduce'),//➖号
        $all_sum = $('.sum');//总数量

    $plus.click(function () {

        var $inputVal = $(this).prev('input'),
            $count = parseInt($inputVal.val())+1,
            $obj = $(this).parents('.amount_box').find('.reduce'),
            $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
            $priceTotal = $count*parseInt($price.substring(1));

        $inputVal.val($count);
        $priceTotalObj.html('￥'+$priceTotal);
        if($inputVal.val()>1 && $obj.hasClass('reSty')){
            $obj.removeClass('reSty');
        }
        totalMoney();
    });

    $reduce.click(function () {
        var $inputVal = $(this).next('input'),
            $count = parseInt($inputVal.val())-1,
            $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
            $priceTotal = $count*parseInt($price.substring(1));
        if($inputVal.val()>1){
            $inputVal.val($count);
            $priceTotalObj.html('￥'+$priceTotal);
        }
        if($inputVal.val()==1 && !$(this).hasClass('reSty')){
            $(this).addClass('reSty');
        }
        totalMoney();
    });

    $all_sum.keyup(function () {
        var $count = 0,
            $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
            $priceTotal = 0;

        if($(this).val()==''){
            $(this).val('1');
        }
        //匹配非数字字符或者是以0开头的字符/\D|^0/g,意思就是数量的input框只能输入数字
        $(this).val($(this).val().replace(/\D|^0/g,''));
        $count = $(this).val();
        $priceTotal = $count*parseInt($price.substring(1));
        $(this).attr('value',$count);
        $priceTotalObj.html('￥'+$priceTotal);
        totalMoney();
    })

    //======================================移除商品========================================

    var $order_lists = null;
    var $order_content = '';

    //点击删除弹出模态框的
    $('.delBtn').click(function () {
        //ul里面的order_lists
        $order_lists = $(this).parents('.order_lists');
        //div里面的order_content
        $order_content = $order_lists.parents('.order_content');
        // $('.model_bg').fadeIn(300);
        $('.my_model').fadeIn(300);
    });

    //关闭模态框
    $('.closeModel').click(function () {
        closeM();
    });
    $('.dialog-close').click(function () {
        closeM();
    });
    function closeM() {
        // $('.model_bg').fadeOut(300);
        $('.my_model').fadeOut(300);
    }

    //确定按钮，移除商品
    $('.dialog-sure').click(function () {

        $order_lists.remove();
        if($order_content.html().trim() == null || $order_content.html().trim().length == 0){
            $order_content.parents('.cartBox').remove();
        }
        closeM();
        $sonCheckBox = $('.son_check');
        totalMoney();
    })

    //======================================总计==========================================

    function totalMoney() {
        var total_money = 0;
        var total_count = 0;
        var calBtn = $('.calBtn a');//结算

        //选择商品的时候，就在结算哪里显示出选中商品的价格
        $sonCheckBox.each(function () {
            if ($(this).is(':checked')) {
                // $(this).parents('.order_lists').find('.sum_price').html()获取的是￥980，substring是截取1后面的，1前面的不要
                var goods = parseInt($(this).parents('.order_lists').find('.sum_price').html().substring(1));

                var num =  parseInt($(this).parents('.order_lists').find('.sum').val());
                total_money += goods;
                total_count += num;
            }
        });

        $('.total_text').html('￥'+total_money);
        $('.piece_num').html(total_count);


        //改变结算是否能够选择，也就是改变结算的样式
        if(total_money!=0 && total_count!=0){
            if(!calBtn.hasClass('btn_sty')){
                calBtn.addClass('btn_sty');
            }
        }else{
            if(calBtn.hasClass('btn_sty')){
                calBtn.removeClass('btn_sty');
            }
        }
    }


});
