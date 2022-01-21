package §?;§
{
   import §@!b§.§@!k§;
   
   public class §4t§ extends §8!"§
   {
       
      
      protected var §7r§:String = null;
      
      protected var §@;§:Boolean = true;
      
      protected var §%R§:Number = 1.0;
      
      public function §4t§(param1:§@!k§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§7r§ = param2;
         this.§@;§ = param3;
      }
      
      override public function init() : void
      {
         mLevelMain.initEmptyEnvironment(this.§7r§,this.§@;§);
         mLevelMain.camera.initSlowScroll(this.§%R§);
      }
   }
}
