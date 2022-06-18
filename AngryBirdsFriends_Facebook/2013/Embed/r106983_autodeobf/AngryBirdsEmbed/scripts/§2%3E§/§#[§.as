package §2>§
{
   import §0!>§.§,!C§;
   import §3V§.§^!G§;
   import §6Z§.§"!;§;
   import §6Z§.§'?§;
   
   public class §#[§ extends §9$§
   {
       
      
      public function §#[§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §]!5§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§'?§.§"t§ != null)
         {
         }
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§"!;§) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initLevelLoad() : void
      {
         super.initLevelLoad();
      }
      
      override public function isReady() : Boolean
      {
         return super.isReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + §'?§.§"t§;
         §^!G§.§,<§(_loc1_);
         §,!C§.§>s§();
      }
   }
}
