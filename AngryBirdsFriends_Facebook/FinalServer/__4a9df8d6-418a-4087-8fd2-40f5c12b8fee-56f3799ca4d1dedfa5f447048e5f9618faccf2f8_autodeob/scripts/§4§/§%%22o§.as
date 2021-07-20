package §4§#3
{
   import §,"v§.§;"n§;
   import §>2§.§!6§;
   
   public class §%"o§ extends §=#5§
   {
       
      
      protected var §,"2§:String = null;
      
      protected var §2$E§:Boolean = true;
      
      protected var §^$2§:Number = 1.0;
      
      public function §%"o§(param1:§!6§, param2:§;"n§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§,"2§ = param3;
         this.§2$E§ = param4;
      }
      
      override public function init() : void
      {
         §5#0§.initializeEmptyEnvironment(this.§,"2§,this.§2$E§);
         §5#0§.camera.initSlowScroll(this.§^$2§);
      }
   }
}
