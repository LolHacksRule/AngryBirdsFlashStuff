package §;m§
{
   import §%!6§.§+9§;
   import §2?§.§3!#§;
   import §=!B§.§59§;
   import §=!B§.§^!9§;
   
   public class §,!>§ extends §3'§
   {
       
      
      public function §,!>§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
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
            §?z§ = true;
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
               if(§59§.§%j§ != null)
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
      
      override protected function initLevelMain(param1:§^!9§) : void
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
            §§push(§§pop() + §59§.§%j§);
         }
         var _loc1_:String = §§pop();
         if(_loc2_ || _loc3_)
         {
            §+9§.§#9§(_loc1_);
            if(_loc2_ || _loc1_)
            {
               addr75:
               §3!#§.§+§();
            }
            return;
         }
         §§goto(addr75);
      }
   }
}
