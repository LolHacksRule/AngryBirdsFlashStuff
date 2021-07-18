package §else§
{
   import §_-Qx§.§_-Wv§;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-hU§.§_-MB§;
   import §_-y7§.§_-VA§;
   
   public class §_-dT§ extends §_-iL§
   {
      
      public static var §_-Ec§:int;
      
      public static const §_-Cw§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §_-XM§:Number = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §_-dT§))
         {
            §_-Ec§ = §_-Cw§;
            if(_loc2_ || _loc1_)
            {
               §_-Cw§ = 0;
               if(!(_loc1_ && §_-dT§))
               {
                  LOAD_STATE_STEP_1 = 1;
                  if(!_loc1_)
                  {
                     LOAD_STATE_STEP_2 = 2;
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr68);
                  }
               }
               §_-XM§ = -1;
            }
         }
         addr68:
      }
      
      private var §_-EX§:Number = 0;
      
      public function §_-dT§(param1:Boolean, param2:String)
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
         if(_loc1_ || _loc2_)
         {
            super.init();
            if(!_loc2_)
            {
               §§goto(addr31);
            }
            §§goto(addr45);
         }
         addr31:
         this.§_-NY§ = new §_-ru§(this);
         if(_loc1_)
         {
            addr45:
            §_-NY§.init(§_-BN§.native.Views.View_LevelLoad[0]);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.activate();
            if(!_loc2_)
            {
               §_-MB§.§_-A7§.§_-Gf§(true);
               if(!_loc1_)
               {
               }
               §§goto(addr47);
            }
            §_-Ec§ = LOAD_STATE_STEP_1;
         }
         addr47:
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = super.run(param1);
         §§push(_loc2_);
         if(!(_loc4_ && param1))
         {
            if(§§pop() != §_-VA§.STATE_STATUS_RUNNING)
            {
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr39);
                  }
                  else
                  {
                     addr73:
                     addr74:
                     if(§§pop() == LOAD_STATE_STEP_2)
                     {
                        addr75:
                        if(this.isReady())
                        {
                           this.onLevelLoadReady();
                        }
                     }
                     addr87:
                     if(mNextState.length <= 0)
                     {
                        return §_-VA§.STATE_STATUS_RUNNING;
                     }
                  }
               }
               §§goto(addr91);
            }
            else
            {
               §§push(§_-Ec§);
               if(_loc3_ || param1)
               {
                  §§push(LOAD_STATE_STEP_1);
                  if(_loc3_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc4_)
                        {
                           §_-MB§.§_-A7§.clearLevel();
                           this.initLevelLoad();
                           §_-Ec§ = LOAD_STATE_STEP_2;
                           if(_loc3_)
                           {
                              §§goto(addr87);
                           }
                           addr91:
                           return §_-VA§.STATE_STATUS_COMPLETED;
                        }
                        §§goto(addr75);
                     }
                     else
                     {
                        §§goto(addr73);
                        §§push(§_-Ec§);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr74);
               }
            }
            §§goto(addr73);
         }
         addr39:
         return §§pop();
      }
      
      public function initLevelLoad() : void
      {
      }
      
      public function isReady() : Boolean
      {
         return false;
      }
      
      public function onLevelLoadReady() : void
      {
      }
      
      protected function §_-XZ§(param1:§_-Wv§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §_-MB§.§_-JA§(param1);
         }
      }
   }
}
