package §?!D§
{
   import §%x§.§#;§;
   
   public class §6s§ extends §]x§
   {
       
      
      protected var §^?§:String = null;
      
      protected var §0b§:Boolean = true;
      
      protected var §`@§:Number = 1.0;
      
      public function §6s§(param1:§#;§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§^?§ = param2;
         this.§0b§ = param3;
      }
      
      override public function init() : void
      {
         §7C§.initEmptyEnvironment(this.§^?§,this.§0b§);
         §7C§.camera.initSlowScroll(this.§`@§);
      }
   }
}
