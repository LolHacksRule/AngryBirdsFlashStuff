package §["-§
{
   import §+!C§.§!!S§;
   import §@#§.§^#Q§;
   
   public class §##J§ extends §3!t§
   {
       
      
      protected var §1"h§:String = null;
      
      protected var §3""§:Boolean = true;
      
      protected var §?#%§:Number = 1.0;
      
      public function §##J§(param1:§!!S§, param2:§^#Q§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§1"h§ = param3;
         this.§3""§ = param4;
      }
      
      override public function init() : void
      {
         §`=§.initializeEmptyEnvironment(this.§1"h§,this.§3""§);
         §`=§.camera.initSlowScroll(this.§?#%§);
      }
   }
}
