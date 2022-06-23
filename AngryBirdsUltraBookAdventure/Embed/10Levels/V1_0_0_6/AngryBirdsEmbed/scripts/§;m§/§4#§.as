package §;m§
{
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §6H§.§>3§;
   import §=!B§.§59§;
   import §=!B§.§^!9§;
   
   public class §4#§ extends §>3§
   {
      
      public static const §&y§:Boolean = false;
      
      public static var §4P§:int;
      
      public static const §8Q§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §5_§:Number = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §&y§ = false;
            §4P§ = §8Q§;
         }
         if(_loc1_)
         {
            LOAD_STATE_STEP_2 = 2;
            §5_§ = -1;
         }
      }
      
      private var §8!H§:Number = 0;
      
      public function §4#§(param1:Boolean, param2:String)
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            if(!_loc1_)
            {
               this.initLoadingView();
            }
         }
      }
      
      protected function initLoadingView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§-f§ = new §0#§(this);
            if(_loc1_)
            {
               addr40:
               §-f§.init(§06§.§-`§.Views.View_LevelLoad[0]);
            }
            return;
         }
         §§goto(addr40);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.activate();
            if(_loc1_ || _loc2_)
            {
               addr42:
               §4P§ = LOAD_STATE_STEP_1;
               if(!_loc2_)
               {
                  this.setLoadingText();
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      protected function setLoadingText() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§59§.§%j§ != null)
            {
               if(!_loc1_)
               {
                  §-f§.setText("LOADING " + §59§.§%j§.replace("-"," - "),"TextField_LevelLoading");
               }
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || param1)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop() != §>3§.STATE_STATUS_RUNNING)
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc2_))
                  {
                     return §§pop();
                  }
                  addr70:
                  §§push(LOAD_STATE_STEP_1);
                  if(_loc3_)
                  {
                     if(§§pop() == §§pop())
                     {
                        §"h§.§1C§.clearLevel();
                        if(_loc3_)
                        {
                           this.initLevelLoad();
                           §4P§ = LOAD_STATE_STEP_2;
                           if(_loc4_ && this)
                           {
                              addr124:
                              this.onLevelLoadReady();
                           }
                           else
                           {
                              addr91:
                           }
                        }
                        §§goto(addr91);
                     }
                     else
                     {
                        addr94:
                        if(§4P§ == LOAD_STATE_STEP_2)
                        {
                           if(_loc3_)
                           {
                              §§push(this.isReady());
                              if(_loc3_ || _loc3_)
                              {
                                 addr141:
                                 if(§§pop())
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       §§goto(addr124);
                                    }
                                    §§goto(addr145);
                                 }
                                 else
                                 {
                                    §§push(this.hasError());
                                 }
                                 if(mNextState.length > 0)
                                 {
                                    §§goto(addr145);
                                 }
                                 else
                                 {
                                    §§goto(addr148);
                                 }
                              }
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    this.onLevelLoadError();
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§goto(addr141);
                                    }
                                    addr145:
                                    return §>3§.STATE_STATUS_COMPLETED;
                                 }
                              }
                              §§goto(addr141);
                           }
                           addr148:
                           return §>3§.STATE_STATUS_RUNNING;
                        }
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr94);
               }
               else
               {
                  §§push(§4P§);
                  if(_loc3_)
                  {
                     §§goto(addr70);
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr70);
         }
         §§goto(addr91);
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
      
      protected function initLevelMain(param1:§^!9§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §"h§.§6!9§(param1);
         }
      }
   }
}
