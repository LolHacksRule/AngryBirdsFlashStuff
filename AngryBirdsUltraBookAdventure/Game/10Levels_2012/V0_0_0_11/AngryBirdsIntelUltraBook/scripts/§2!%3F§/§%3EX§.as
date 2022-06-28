package §2!?§
{
   import §2!H§.LevelMain;
   
   public class §>X§ extends BasicController
   {
       
      
      protected var §''§:String = null;
      
      protected var §#p§:Boolean = true;
      
      protected var §7!F§:Number = 1.0;
      
      public function §>X§(param1:LevelMain, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§''§ = param2;
         this.§#p§ = param3;
      }
      
      override public function init() : void
      {
         §"!>§.initEmptyEnvironment(this.§''§,this.§#p§);
         §"!>§.camera.initSlowScroll(this.§7!F§);
      }
   }
}
