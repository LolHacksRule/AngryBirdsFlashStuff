package § !@§
{
   import §+!B§.§;9§;
   import §1!-§.§@Z§;
   import §1!-§.§[4§;
   import §6!C§.§+7§;
   
   public class §,a§ extends §^!K§
   {
       
      
      public function §,a§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §+_§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§[4§.§"!>§ != null)
         {
         }
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§@Z§) : void
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
         var _loc1_:String = "level-" + §[4§.§"!>§;
         §;9§.§`,§(_loc1_);
         §+7§.§2!9§();
      }
   }
}
