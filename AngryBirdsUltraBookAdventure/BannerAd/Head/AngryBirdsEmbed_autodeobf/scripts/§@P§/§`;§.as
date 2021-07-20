package §@P§
{
   import §%x§.§#;§;
   
   public class §`;§ extends §@!$§
   {
       
      
      protected var §-!6§:String = null;
      
      protected var §6s§:Boolean = true;
      
      protected var §0b§:Number = 1.0;
      
      public function §`;§(param1:§#;§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§-!6§ = param2;
         this.§6s§ = param3;
      }
      
      override public function init() : void
      {
         §7C§.initEmptyEnvironment(this.§-!6§,this.§6s§);
         §7C§.camera.initSlowScroll(this.§0b§);
      }
   }
}
