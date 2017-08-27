<script type="text/javascript"
                src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js"
                charset="UTF-8"></script>

<script type="text/javascript"
                src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/locales/bootstrap-datepicker.zh-CN.min.js"
                charset="UTF-8"></script>


<script type="text/javascript">

    $(function () {


        $('#dateDemo').datepicker({
            format: 'yyyy-mm-dd',
            language: 'zh-CN'
        });

    });


</script>

<div>


        <br/>
        <br/>
        日期控件demo:
        <input type="text" id="dateDemo">

        <br/>
        <br/>

        <p>日期组件文档：https://github.com/uxsolutions/bootstrap-datepicker/blob/master/README.md</p>
        <p>
            在线演示：https://uxsolutions.github.io/bootstrap-datepicker/?markup=input&format=&weekStart=&startDate=&endDate=&startView=0&minViewMode=0&maxViewMode=4&todayBtn=false&clearBtn=false&language=en&orientation=auto&multidate=&multidateSeparator=&keyboardNavigation=on&forceParse=on#sandbox</p>

        <P>可用的js cdn：https://cdnjs.com/libraries/bootstrap-datepicker</P>


</div>