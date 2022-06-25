package §>!A§
{
   import §4!H§.§["§;
   import §6J§.§&!;§;
   import §6J§.§5j§;
   import §;!B§.§5U§;
   
   public class §0$§ extends §,w§
   {
       
      
      public function §0$§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §;!$§ = true;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.activate();
            if(!(_loc1_ && this))
            {
               addr43:
               if(§5j§.§%V§ != null)
               {
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§&!;§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.initLevelMain(param1);
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.onLevelLoadError();
         }
         §§push("level-");
         if(_loc2_ || _loc1_)
         {
            §§push(§§pop() + §5j§.§%V§);
         }
         var _loc1_:String = §§pop();
         if(_loc2_ || _loc3_)
         {
            §["§.§'!D§(_loc1_);
            if(_loc2_ || _loc1_)
            {
               addr75:
               §5U§.§?7§();
            }
            return;
         }
         §§goto(addr75);
      }
   }
}
