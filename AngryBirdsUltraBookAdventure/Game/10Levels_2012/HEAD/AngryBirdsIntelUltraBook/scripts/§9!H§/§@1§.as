package §9!H§
{
   import §?A§.LevelMain;
   
   public class §@1§ extends BasicController
   {
       
      
      protected var §]A§:String = null;
      
      protected var §#!c§:Boolean = true;
      
      protected var §>K§:Number = 1.0;
      
      public function §@1§(param1:LevelMain, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§]A§ = param2;
         this.§#!c§ = param3;
      }
      
      override public function init() : void
      {
         §6f§.initEmptyEnvironment(this.§]A§,this.§#!c§);
         §6f§.camera.initSlowScroll(this.§>K§);
      }
   }
}
