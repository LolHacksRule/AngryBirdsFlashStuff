package §?#§
{
   import §9T§.§1r§;
   
   public class §1!;§ extends §1q§
   {
       
      
      protected var §!L§:String = null;
      
      protected var §?O§:Boolean = true;
      
      protected var §<!4§:Number = 1.0;
      
      public function §1!;§(param1:§1r§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§!L§ = param2;
         this.§?O§ = param3;
      }
      
      override public function init() : void
      {
         §;§.initEmptyEnvironment(this.§!L§,this.§?O§);
         §;§.camera.initSlowScroll(this.§<!4§);
      }
   }
}
