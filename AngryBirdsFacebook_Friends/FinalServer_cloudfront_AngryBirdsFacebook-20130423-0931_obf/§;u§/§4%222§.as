package §;u§
{
   import §8";§.§+d§;
   import §9!n§.§0"T§;
   import §9!n§.LevelManager;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   
   public class §4"2§ extends §+d§
   {
      
      public static const §-X§:Boolean = false;
      
      public static var §,"K§:int;
      
      public static const §4!I§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §7!I§:Number = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-X§ = false;
            loop0:
            while(true)
            {
               §,"K§ = §4!I§;
               while(true)
               {
                  §4!I§ = 0;
                  addr69:
                  while(_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         loop3:
         while(true)
         {
            LOAD_STATE_STEP_2 = 2;
            while(_loc2_)
            {
               §7!I§ = -1;
               if(!_loc2_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  break loop3;
               }
               §§goto(addr69);
            }
         }
      }
      
      private var §,!3§:Number = 0;
      
      public function §4"2§(param1:Boolean, param2:String)
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
            super.init();
         }
         do
         {
            this.initLoadingView();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      protected function initLoadingView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§2"@§ = new §`_§(this);
         }
         do
         {
            §2"@§.init(§ "<§.§%I§.Views.View_LevelLoad[0]);
         }
         while(_loc2_ && _loc1_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.activate();
            while(true)
            {
               §,"K§ = LOAD_STATE_STEP_1;
               while(!(_loc2_ && _loc2_))
               {
                  this.§1"W§();
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr43:
               }
            }
         }
         §§goto(addr43);
      }
      
      protected function §1"W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(LevelManager.§ T§ == null);
            if(_loc1_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr92:
                     while(true)
                     {
                        §§push(Boolean(§2"@§));
                        if(_loc2_ && _loc1_)
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               loop3:
               while(§§pop())
               {
                  if(!_loc2_)
                  {
                     while(true)
                     {
                        §2"@§.setText("LOADING " + LevelManager.§ T§.replace("-"," - "),"TextField_LevelLoading");
                     }
                     addr64:
                  }
                  while(true)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        break loop3;
                     }
                     §§goto(addr92);
                  }
               }
               return;
            }
         }
         §§goto(addr64);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc2_);
            loop0:
            while(§§pop() == §+d§.STATE_STATUS_RUNNING)
            {
               loop1:
               while(true)
               {
                  §§push(§,"K§);
                  loop2:
                  while(_loc4_)
                  {
                     §§push(LOAD_STATE_STEP_1);
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           §§push(§,"K§);
                           if(_loc4_ || _loc2_)
                           {
                              if(_loc3_ && param1)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        if(_loc4_ || _loc3_)
                        {
                           §?l§.§'h§.clearLevel();
                        }
                        loop11:
                        while(true)
                        {
                           this.initLevelLoad();
                           addr186:
                           while(true)
                           {
                              §,"K§ = LOAD_STATE_STEP_2;
                              addr165:
                              addr38:
                              while(!(_loc4_ || param1))
                              {
                                 continue loop11;
                              }
                              loop10:
                              while(mNextState.length > 0)
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    addr106:
                                    while(!(_loc3_ && _loc3_))
                                    {
                                       continue loop10;
                                    }
                                    continue loop1;
                                 }
                                 addr50:
                                 if(_loc4_ || param1)
                                 {
                                    if(_loc4_)
                                    {
                                       §§goto(addr59);
                                    }
                                    break loop0;
                                 }
                                 addr158:
                                 while(true)
                                 {
                                    this.onLevelLoadReady();
                                    addr160:
                                    while(true)
                                    {
                                       continue loop10;
                                    }
                                    §§goto(addr50);
                                 }
                              }
                              return §+d§.STATE_STATUS_RUNNING;
                           }
                        }
                     }
                     return §§pop();
                  }
                  continue loop0;
               }
            }
            §§goto(addr209);
            §§push(_loc2_);
         }
         addr59:
         return §+d§.STATE_STATUS_COMPLETED;
      }
      
      protected function initLevelLoad() : void
      {
      }
      
      public function isReady() : Boolean
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
      
      protected function initLevelMain(param1:§0"T§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §?l§.§,!m§(param1);
         }
      }
   }
}
