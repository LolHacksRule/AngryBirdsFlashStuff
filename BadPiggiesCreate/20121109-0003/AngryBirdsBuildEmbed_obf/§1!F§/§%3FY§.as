package §1!F§
{
   import §-!0§.§1^§;
   import §-!0§.§2! §;
   import §8!Q§.§,8§;
   import §false§.§'k§;
   
   public class §?Y§ extends §26§
   {
       
      
      public function §?Y§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §?P§ = true;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.activate();
            if(!(_loc2_ && _loc2_))
            {
               if(§1^§.§ ]§ != null)
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
      
      override protected function initLevelMain(param1:§2! §) : void
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
         if(_loc1_)
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
         if(!(_loc2_ && _loc2_))
         {
            super.onLevelLoadError();
         }
         §§push("level-");
         if(!(_loc2_ && _loc1_))
         {
            §§push(§§pop() + §1^§.§ ]§);
         }
         var _loc1_:String = §§pop();
         if(!(_loc2_ && this))
         {
            §,8§.§4C§(_loc1_);
            if(!(_loc2_ && _loc2_))
            {
               addr76:
               §'k§.§14§();
            }
            return;
         }
         §§goto(addr76);
      }
   }
}
