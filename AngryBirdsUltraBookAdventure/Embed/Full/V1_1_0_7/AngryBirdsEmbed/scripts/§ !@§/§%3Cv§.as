package § !@§
{
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §1!-§.§@Z§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   
   public class §<v§ extends §1Q§
   {
      
      public static const §@!=§:Boolean = false;
      
      public static const §`!2§:int = 0;
      
      public static var §+?§:int = §`!2§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §0J§:Number = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §@!=§ = false;
         }
         if(!_loc2_)
         {
            §`!2§ = 0;
         }
         if(!_loc2_)
         {
            LOAD_STATE_STEP_2 = 2;
            if(_loc1_)
            {
               addr54:
               §0J§ = -1;
            }
            return;
         }
         §§goto(addr54);
      }
      
      private var §6§:Number = 0;
      
      public function §<v§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            if(_loc2_ || _loc2_)
            {
               addr43:
               this.initLoadingView();
            }
            return;
         }
         §§goto(addr43);
      }
      
      protected function initLoadingView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§]F§ = new §4!,§(this);
            if(!(_loc1_ && _loc2_))
            {
               §]F§.init(§5A§.§;L§.Views.View_LevelLoad[0]);
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            if(!(_loc1_ && _loc2_))
            {
               §+?§ = LOAD_STATE_STEP_1;
               if(_loc2_)
               {
                  this.setLoadingText();
               }
            }
         }
      }
      
      protected function setLoadingText() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§[4§.§"!>§ == null);
            if(!(_loc2_ && this))
            {
               §§push(!§§pop());
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ && this)
                     {
                     }
                  }
                  §§goto(addr71);
               }
               §§pop();
               if(!_loc2_)
               {
                  §§push(Boolean(§]F§));
               }
               §§goto(addr79);
            }
            addr71:
            if(§§pop())
            {
               if(_loc1_ || _loc1_)
               {
                  addr79:
                  §]F§.setText("LOADING " + §[4§.§"!>§.replace("-"," - "),"TextField_LevelLoading");
               }
            }
            return;
         }
         §§goto(addr79);
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
         if(_loc3_)
         {
            if(§§pop() != §1Q§.STATE_STATUS_RUNNING)
            {
               §§push(_loc2_);
               if(!(_loc4_ && _loc2_))
               {
                  return §§pop();
               }
               addr53:
               §§push(LOAD_STATE_STEP_1);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc4_ && param1))
                     {
                        §=w§.§ o§.clearLevel();
                        this.initLevelLoad();
                        §+?§ = LOAD_STATE_STEP_2;
                        if(_loc3_)
                        {
                           addr132:
                           if(mNextState.length > 0)
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr138);
                              }
                           }
                        }
                        §§goto(addr132);
                     }
                     return §1Q§.STATE_STATUS_RUNNING;
                  }
                  addr92:
                  if(§+?§ == LOAD_STATE_STEP_2)
                  {
                     §§push(this.isReady());
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              this.onLevelLoadReady();
                              if(!_loc4_)
                              {
                                 addr119:
                                 §§goto(addr132);
                              }
                              addr138:
                              return §1Q§.STATE_STATUS_COMPLETED;
                           }
                           §§goto(addr119);
                        }
                        else
                        {
                           §§push(this.hasError());
                        }
                        §§goto(addr132);
                     }
                     if(§§pop())
                     {
                        if(_loc3_ || this)
                        {
                           this.onLevelLoadError();
                        }
                     }
                  }
                  §§goto(addr132);
               }
               §§goto(addr92);
            }
            else
            {
               §§push(§+?§);
               if(_loc3_)
               {
                  §§goto(addr53);
               }
            }
         }
         §§goto(addr92);
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
      
      protected function initLevelMain(param1:§@Z§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §=w§.§]a§(param1);
         }
      }
   }
}
