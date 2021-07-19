package §,!"§
{
   import §0!E§.§-<§;
   import §<M§.§?!6§;
   import §^]§.§[z§;
   import §^]§.§`!K§;
   
   public class §"!A§ extends §-O§
   {
       
      
      public function §"!A§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §&K§ = true;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            if(_loc2_ || _loc2_)
            {
               if(§`!K§.§5g§ != null)
               {
               }
            }
         }
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§[z§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.initLevelMain(param1);
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.initLevelLoad();
         }
      }
      
      override public function isReady() : Boolean
      {
         return super.isReady();
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            super.onLevelLoadError();
         }
         §§push("level-");
         if(!_loc2_)
         {
            §§push(§§pop() + §`!K§.§5g§);
         }
         var _loc1_:String = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §-<§.§7I§(_loc1_);
         }
         do
         {
            §?!6§.§<!>§();
         }
         while(_loc2_ && _loc3_);
         
      }
   }
}
