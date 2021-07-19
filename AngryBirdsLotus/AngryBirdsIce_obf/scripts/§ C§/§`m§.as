package § C§
{
   import §!Y§.§[o§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3"§.§8+§;
   import §]4§.§-§;
   
   public class §`m§ extends §-§
   {
      
      public static const §5z§:Boolean = false;
      
      public static var §"E§:int;
      
      public static const §+E§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §8Z§:Number = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §`m§)
         {
            §5z§ = false;
            while(true)
            {
               §"E§ = §+E§;
               addr44:
               if(_loc1_ || §`m§)
               {
                  return;
               }
            }
         }
         while(true)
         {
            §+E§ = 0;
            loop2:
            while(true)
            {
               LOAD_STATE_STEP_1 = 1;
               while(true)
               {
                  LOAD_STATE_STEP_2 = 2;
                  while(_loc1_)
                  {
                     if(_loc1_)
                     {
                        §8Z§ = -1;
                        if(_loc2_)
                        {
                           continue;
                        }
                        §§goto(addr44);
                        continue;
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      private var §<=§:Number = 0;
      
      public function §`m§(param1:Boolean, param2:String)
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
         if(!(_loc2_ && _loc1_))
         {
            super.init();
            do
            {
               this.initLoadingView();
            }
            while(_loc2_ && this);
            
         }
      }
      
      protected function initLoadingView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§,R§ = new §#H§(this);
         }
         do
         {
            §,R§.init(§set §.§&!1§.Views.View_LevelLoad[0]);
         }
         while(!_loc1_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
         }
         do
         {
            §"E§ = LOAD_STATE_STEP_1;
            do
            {
               this.setLoadingText();
            }
            while(_loc2_);
            
         }
         while(!(_loc1_ || this));
         
      }
      
      protected function setLoadingText() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(§0$§.§[C§ != null)
            {
               if(_loc1_ || _loc2_)
               {
                  §,R§.setText("LOADING " + §0$§.§[C§.replace("-"," - "),"TextField_LevelLoading");
               }
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         loop0:
         while(true)
         {
            if(§§pop() != §-§.STATE_STATUS_RUNNING)
            {
               §§push(_loc2_);
            }
            else
            {
               §§push(§"E§);
               loop1:
               while(true)
               {
                  §§push(LOAD_STATE_STEP_1);
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        §§push(§"E§);
                        if(_loc3_)
                        {
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                           addr147:
                           if(_loc3_)
                           {
                              §§push(LOAD_STATE_STEP_2);
                              if(!(_loc4_ && this))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       addr104:
                                       if(!this.isReady())
                                       {
                                          §§push(this.hasError());
                                          if(_loc4_)
                                          {
                                             §§goto(addr104);
                                          }
                                          if(§§pop())
                                          {
                                             addr73:
                                             this.onLevelLoadError();
                                             break;
                                          }
                                          break;
                                       }
                                    }
                                    if(_loc3_ || param1)
                                    {
                                       this.onLevelLoadReady();
                                       break;
                                    }
                                    this.initLevelLoad();
                                    §"E§ = LOAD_STATE_STEP_2;
                                    break;
                                    addr141:
                                 }
                                 break;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     §[o§.§='§.clearLevel();
                     §§goto(addr141);
                  }
                  if(mNextState.length > 0)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc4_)
                        {
                           §§goto(addr73);
                        }
                        return §-§.STATE_STATUS_COMPLETED;
                     }
                     if(_loc4_)
                     {
                        §§goto(addr73);
                     }
                  }
                  return §-§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr147);
         }
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
      
      protected function initLevelMain(param1:§8+§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §[o§.§;4§(param1);
         }
      }
   }
}
