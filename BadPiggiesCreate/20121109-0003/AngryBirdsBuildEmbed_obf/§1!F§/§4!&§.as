package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §-!0§.§1^§;
   import §-!0§.§2! §;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   
   public class §4!&§ extends §;!!§
   {
      
      public static const §1!h§:Boolean = false;
      
      public static var §>V§:int;
      
      public static const §8-§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §-!;§:Number = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §>V§ = §8-§;
            if(_loc1_)
            {
               §8-§ = 0;
               if(_loc1_ || _loc1_)
               {
                  LOAD_STATE_STEP_1 = 1;
               }
            }
            LOAD_STATE_STEP_2 = 2;
            if(!_loc2_)
            {
               §-!;§ = -1;
            }
         }
      }
      
      private var §3!-§:Number = 0;
      
      public function §4!&§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.init();
            if(!_loc2_)
            {
               this.initLoadingView();
            }
         }
      }
      
      protected function initLoadingView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§+!$§ = new §2U§(this);
            if(!_loc1_)
            {
               §+!$§.init(§=!Z§.§;K§.Views.View_LevelLoad[0]);
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.activate();
            if(!(_loc1_ && _loc1_))
            {
               §>V§ = LOAD_STATE_STEP_1;
               if(_loc2_)
               {
                  this.setLoadingText();
               }
            }
         }
      }
      
      protected function setLoadingText() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§1^§.§ ]§ != null)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr40:
                  §+!$§.setText("LOADING " + §1^§.§ ]§.replace("-"," - "),"TextField_LevelLoading");
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(_loc3_ || this)
            {
               if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && param1))
                  {
                     return §§pop();
                  }
                  addr60:
                  §§push(LOAD_STATE_STEP_1);
                  if(_loc3_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc4_)
                        {
                           §'!V§.§1!2§.clearLevel();
                           if(_loc3_)
                           {
                              this.initLevelLoad();
                              addr73:
                              §>V§ = LOAD_STATE_STEP_2;
                              addr107:
                              if(mNextState.length <= 0)
                              {
                                 return §;!!§.STATE_STATUS_RUNNING;
                              }
                              addr76:
                           }
                           else
                           {
                              addr103:
                              this.onLevelLoadError();
                              if(_loc3_)
                              {
                                 §§goto(addr107);
                              }
                           }
                           return §;!!§.STATE_STATUS_COMPLETED;
                        }
                        §§goto(addr73);
                     }
                     else
                     {
                        addr89:
                        if(§>V§ == LOAD_STATE_STEP_2)
                        {
                           if(_loc3_)
                           {
                              §§push(this.isReady());
                              if(_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    this.onLevelLoadReady();
                                    §§goto(addr73);
                                 }
                                 else
                                 {
                                    §§push(this.hasError());
                                 }
                                 §§goto(addr73);
                              }
                              if(§§pop())
                              {
                                 §§goto(addr103);
                              }
                           }
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr89);
               }
               else
               {
                  §§push(§>V§);
                  if(_loc3_)
                  {
                     §§goto(addr60);
                  }
               }
            }
            §§goto(addr89);
         }
         §§goto(addr76);
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
      
      protected function initLevelMain(param1:§2! §) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §'!V§.loadLevel(param1);
         }
      }
   }
}
