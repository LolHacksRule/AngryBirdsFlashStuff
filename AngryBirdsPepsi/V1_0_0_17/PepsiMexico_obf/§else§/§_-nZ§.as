package §else§
{
   import §_-6r§.§_-7P§;
   import §_-PD§.HighscoreSidebar;
   import §_-Qx§.§_-Sf§;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-hU§.§_-MB§;
   import §_-sT§.§_-Da§;
   import §_-y7§.§_-VA§;
   
   public class §_-nZ§ extends §_-iL§
   {
      
      public static const §_-Az§:String = "LevelEndFailState3";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §_-Az§ = "LevelEndFailState3";
         }
      }
      
      private var §_-4W§:§_-Da§;
      
      public function §_-nZ§(param1:Boolean = false, param2:String = "LevelEndFailState3")
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
            if(_loc2_)
            {
               §_-NY§ = new §_-ru§(this);
               if(_loc2_)
               {
                  §_-NY§.init(§_-BN§.native.Views.View_LevelEndFail3[0]);
                  if(_loc1_)
                  {
                  }
               }
               §§goto(addr71);
            }
            this.§_-4W§ = new §_-Da§(0,0,0,0);
            if(_loc1_ && _loc1_)
            {
            }
            §§goto(addr71);
         }
         addr71:
         §_-NY§.mMovieClip.addChildAt(this.§_-4W§,§_-NY§.mMovieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = 0;
         if(!(_loc2_ && _loc3_))
         {
            if(§_-1S§)
            {
               §§push(int(§_-1S§.currentPage));
               if(_loc3_)
               {
                  _loc1_ = §§pop();
                  if(_loc3_ || _loc2_)
                  {
                     addr45:
                     super.activate();
                  }
                  §_-MB§.§_-A7§.§_-Gf§(true);
                  addr51:
                  this.§_-4W§.§_-Mv§(0.7);
                  §§push(_loc1_);
               }
               if(§§pop())
               {
                  §_-1S§.choosePage(_loc1_);
               }
               §_-1S§.changeState(HighscoreSidebar.§_-Jf§);
               §_-1S§.showHighscores(§_-Sf§.§_-vj§);
               return;
            }
            §§goto(addr45);
         }
         §§goto(addr51);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = super.run(param1);
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() != §_-VA§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc3_ && param1))
                  {
                     §§push(_loc2_);
                  }
                  else
                  {
                     §§goto(addr61);
                  }
               }
               else
               {
                  if(mNextState.length > 0)
                  {
                     if(_loc4_)
                     {
                        return §_-VA§.STATE_STATUS_COMPLETED;
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr61);
               }
               §§goto(addr61);
            }
            return §§pop();
         }
         addr61:
         return §_-VA§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.deActivate();
            if(!(_loc1_ && _loc1_))
            {
               addr44:
               this.§_-4W§.§_-wk§(0);
            }
            return;
         }
         §§goto(addr44);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(!(_loc5_ && this))
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     addr117:
                  }
               }
               else
               {
                  addr121:
                  §§push(2);
                  if(!_loc6_)
                  {
                  }
               }
               §§goto(addr136);
            }
            else if("REPLAY" === _loc4_)
            {
               if(!(_loc5_ && param1))
               {
                  addr109:
                  §§push(1);
                  if(!(_loc5_ && param1))
                  {
                     §§goto(addr117);
                  }
               }
               else
               {
                  §§goto(addr121);
               }
               §§goto(addr136);
            }
            else
            {
               if("MENU" === _loc4_)
               {
                  §§goto(addr121);
               }
               else
               {
                  §§push(3);
               }
               addr136:
               switch(§§pop())
               {
                  case 0:
                     §_-Jw§.§_-GL§();
                     if(_loc6_ || this)
                     {
                        mNextState = §_-Jw§.§_-Az§;
                        if(!(_loc5_ && param3))
                        {
                           break;
                        }
                        addr78:
                        break;
                     }
                     break;
                  case 1:
                     §_-Jw§.§_-h5§();
                     if(!(_loc5_ && param2))
                     {
                        mNextState = §_-Jw§.§_-Az§;
                        if(!(_loc5_ && param3))
                        {
                           break;
                        }
                        §§goto(addr78);
                     }
                     break;
                  case 2:
                     mNextState = §_-pX§.§_-Az§;
                     if(!(_loc5_ && param3))
                     {
                        §§goto(addr78);
                     }
               }
               return;
            }
            §§goto(addr121);
         }
         §§goto(addr109);
      }
   }
}
