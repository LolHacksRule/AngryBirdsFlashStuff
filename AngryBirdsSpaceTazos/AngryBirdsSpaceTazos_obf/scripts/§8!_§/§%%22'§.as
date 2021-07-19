package §8!_§
{
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§#b§;
   import §`!j§.§9"!§;
   
   public class §%"'§ extends §5!&§
   {
      
      public static const §>"4§:Boolean = false;
      
      protected static var §@'§:int;
      
      public static const §," §:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var § D§:Number = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §>"4§ = false;
         }
         loop0:
         while(true)
         {
            §@'§ = §," §;
            while(true)
            {
               §," § = 0;
               while(!_loc1_)
               {
                  continue loop0;
                  while(!(_loc1_ && §%"'§))
                  {
                     LOAD_STATE_STEP_2 = 2;
                     while(!(_loc1_ && §%"'§))
                     {
                        § D§ = -1;
                        if(_loc2_ || _loc1_)
                        {
                           return;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private var §,!!§:Number = 0;
      
      public function §%"'§(param1:§9"!§, param2:§3!'§, param3:Boolean, param4:String)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.init();
         }
         do
         {
            this.§5[§();
         }
         while(_loc1_);
         
      }
      
      protected function §5[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§8!A§ = new §1"F§(this);
         }
         do
         {
            §8!A§.init(§-G§.§4+§.Views.View_LevelLoad[0]);
         }
         while(_loc2_);
         
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.activate(param1);
         }
         while(true)
         {
            §@'§ = LOAD_STATE_STEP_1;
            while(!_loc3_)
            {
               this.setLoadingText();
               if(!(_loc3_ && param1))
               {
                  return;
               }
            }
         }
      }
      
      protected function setLoadingText() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§6u§.currentLevel != null)
            {
               if(!_loc1_)
               {
                  §8!A§.setText("LOADING " + §6u§.currentLevel.replace("-"," - "),"TextField_LevelLoading");
                  addr35:
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.update(param1);
            do
            {
               §§push(§@'§);
               loop1:
               while(true)
               {
                  §§push(LOAD_STATE_STEP_1);
                  addr141:
                  addr142:
                  addr145:
                  while(§§pop() != §§pop())
                  {
                     continue loop1;
                  }
                  §9q§.§>!L§.clearLevel();
                  this.initLevelLoad();
               }
            }
            while(!(_loc3_ || _loc3_));
            
            §§goto(addr20);
         }
         §§goto(addr127);
      }
      
      protected function initLevelLoad() : void
      {
      }
      
      public function isLoadingReady() : Boolean
      {
         return false;
      }
      
      public function hasError() : Boolean
      {
         return false;
      }
      
      public function onLevelLoadReady() : void
      {
      }
      
      public function onLevelLoadError() : void
      {
      }
      
      protected function §"Z§(param1:§#b§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §9q§.loadLevel(param1);
         }
      }
   }
}
