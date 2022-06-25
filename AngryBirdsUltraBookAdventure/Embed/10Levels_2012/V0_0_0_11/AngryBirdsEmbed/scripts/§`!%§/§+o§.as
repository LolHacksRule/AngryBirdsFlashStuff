package §`!%§
{
   import § !;§.§%'§;
   import §=!4§.§>y§;
   import §>!C§.§6M§;
   import §>!C§.§9R§;
   
   public class §+o§ extends § @§
   {
       
      
      public function §+o§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
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
            § !G§ = true;
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
               if(§6M§.§[z§ != null)
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
      
      override protected function initLevelMain(param1:§9R§) : void
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
            §§push(§§pop() + §6M§.§[z§);
         }
         var _loc1_:String = §§pop();
         if(_loc2_ || _loc3_)
         {
            §%'§.§5'§(_loc1_);
            if(_loc2_ || _loc1_)
            {
               addr75:
               §>y§.§2K§();
            }
            return;
         }
         §§goto(addr75);
      }
   }
}
