package § C§
{
   import §0!!§.§46§;
   import §3"§.§0$§;
   import §3"§.§8+§;
   import §9!!§.§&a§;
   
   public class §[!;§ extends §7!6§
   {
       
      
      public function §[!;§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
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
            §@!9§ = true;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            if(!(_loc2_ && _loc2_))
            {
               addr27:
               if(§0$§.§[C§ != null)
               {
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§8+§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.initLevelMain(param1);
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
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
         if(!_loc3_)
         {
            super.onLevelLoadError();
         }
         §§push("level-");
         if(!_loc3_)
         {
            §§push(§§pop() + §0$§.§[C§);
         }
         var _loc1_:String = §§pop();
         if(_loc2_ || _loc2_)
         {
            §46§.§+A§(_loc1_);
         }
         do
         {
            §&a§.§1b§();
         }
         while(!(_loc2_ || this));
         
      }
   }
}
