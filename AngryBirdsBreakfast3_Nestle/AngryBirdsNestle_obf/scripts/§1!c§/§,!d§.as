package §1!c§
{
   import §%!B§.§0![§;
   import §%!B§.§5L§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   
   public class §,!d§ extends §7X§
   {
      
      public static const §8!m§:Boolean = false;
      
      protected static var §2!x§:int;
      
      public static const §8y§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §+!'§:Number = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §8!m§ = false;
            loop0:
            while(true)
            {
               §2!x§ = §8y§;
               while(true)
               {
                  §8y§ = 0;
                  while(_loc2_)
                  {
                     LOAD_STATE_STEP_1 = 1;
                     while(_loc2_)
                     {
                        while(!(_loc1_ && §,!d§))
                        {
                           continue loop0;
                           §+!'§ = -1;
                           if(_loc2_ || §,!d§)
                           {
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            LOAD_STATE_STEP_2 = 2;
            §§goto(addr50);
         }
      }
      
      private var §[!x§:Number = 0;
      
      public function §,!d§(param1:§0![§, param2:§+f§, param3:Boolean, param4:String)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
            do
            {
               this.§2d§();
            }
            while(_loc2_);
            
         }
      }
      
      protected function §2d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§^!T§ = new §9%§(this);
         }
         do
         {
            §^!T§.init(§7I§.§7!%§.Views.View_LevelLoad[0]);
         }
         while(_loc2_);
         
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.activate(param1);
         }
         while(true)
         {
            §2!x§ = LOAD_STATE_STEP_1;
            while(_loc2_ || this)
            {
               this.setLoadingText();
               if(_loc2_)
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
         if(!(_loc1_ && _loc1_))
         {
            if(§4a§.currentLevel != null)
            {
               if(_loc2_ || this)
               {
                  §^!T§.setText("LOADING " + §4a§.currentLevel.replace("-"," - "),"TextField_LevelLoading");
               }
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.update(param1);
            loop0:
            while(true)
            {
               §§push(§2!x§);
               loop1:
               while(true)
               {
                  §§push(LOAD_STATE_STEP_1);
                  addr150:
                  addr151:
                  while(§§pop() != §§pop())
                  {
                     continue loop1;
                  }
                  §@!S§.§2A§.clearLevel();
               }
               while(true)
               {
                  if(!(_loc2_ || this))
                  {
                     continue loop0;
                  }
                  §§goto(addr19);
               }
            }
         }
         §§goto(addr154);
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
      
      protected function §[!'§(param1:§5L§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §@!S§.loadLevel(param1);
         }
      }
   }
}
