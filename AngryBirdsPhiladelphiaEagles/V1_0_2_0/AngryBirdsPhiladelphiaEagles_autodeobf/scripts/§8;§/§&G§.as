package §8;§
{
   import §9!0§.§15§;
   import §<!<§.§+!<§;
   import §?!;§.§6H§;
   import §?!;§.§;!,§;
   
   public class §&G§ extends §8^§
   {
       
      
      public function §&G§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §9o§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§6H§.§"Q§ != null)
         {
         }
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§;!,§) : void
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
         var _loc1_:String = "level-" + §6H§.§"Q§;
         §15§.§6$§(_loc1_);
         §+!<§.§7L§();
      }
   }
}
