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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §+_§ = true;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            if(!(_loc2_ && _loc2_))
            {
               addr27:
               if(§[4§.§"!>§ != null)
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
      
      override protected function initLevelMain(param1:§@Z§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            super.onLevelLoadError();
         }
         §§push("level-");
         if(!_loc2_)
         {
            §§push(§§pop() + §[4§.§"!>§);
         }
         var _loc1_:String = §§pop();
         if(!_loc2_)
         {
            §;9§.§`,§(_loc1_);
            if(_loc3_)
            {
               §+7§.§2!9§();
            }
         }
      }
   }
}
