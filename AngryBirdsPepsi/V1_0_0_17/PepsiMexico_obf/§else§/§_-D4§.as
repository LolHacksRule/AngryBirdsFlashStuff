package §else§
{
   import §_-20§.§_-j5§;
   import §_-6r§.§_-7P§;
   import §_-6v§.§_-In§;
   import §_-F1§.§_-V1§;
   import §_-F1§.§_-lq§;
   import §_-Qx§.§_-Sf§;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-hU§.§_-MB§;
   import §_-mD§.§_-29§;
   import §_-rQ§.§_-Ou§;
   import §_-sT§.§_-Da§;
   import §_-y7§.§_-VA§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-D4§ extends §_-iL§
   {
      
      public static const §_-Az§:String = "LevelEndEagleState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-Az§ = "LevelEndEagleState";
         }
      }
      
      private var §_-zD§:§_-j5§;
      
      private var §_-gM§:§_-j5§;
      
      private var §_-4W§:§_-Da§;
      
      public var mEagleScoreCounter:Number;
      
      private var §_-Kk§:Number;
      
      private var §_-Q-§:Number;
      
      public function §_-D4§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            §_-NY§ = new §_-ru§(this);
            if(!_loc1_)
            {
               §_-NY§.init(§_-BN§.native.Views.View_LevelEndEagle[0]);
               if(_loc2_)
               {
                  this.§_-4W§ = new §_-Da§(0,0,0,0);
                  addr50:
                  §_-NY§.mMovieClip.addChildAt(this.§_-4W§,§_-NY§.mMovieClip.numChildren - 1);
                  if(_loc2_)
                  {
                     addr68:
                     this.§_-Kk§ = (§_-NY§.getItemByName("MovieClip_EagleMeterFill") as §_-lq§).width;
                  }
               }
               return;
            }
            §§goto(addr50);
         }
         §§goto(addr68);
      }
      
      override public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super.activate();
            if(_loc5_)
            {
               addr20:
               §_-MB§.§_-A7§.§_-Gf§(true);
               (§_-NY§.getItemByName("MovieClip_EagleMeterEmpty") as §_-lq§).setVisibility(true);
               (§_-NY§.getItemByName("MovieClip_EagleMeterFill") as §_-lq§).setVisibility(true);
               if(_loc5_)
               {
                  §_-Ou§.playSound("LevelCompletedTheme1");
               }
            }
            this.§_-4W§.§_-Mv§(0.7);
            §§push(§_-Sf§.§_-L0§(§_-Sf§.§_-vj§).§_-7R§);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            var _loc2_:Number = Math.min(100,Math.round(§_-MB§.§_-Gk§.getScore() / _loc1_ * 100));
            if(_loc5_)
            {
               this.§_-Q-§ = §_-Qu§.§_-di§.§_-Qi§(§_-Sf§.§_-vj§);
            }
            var _loc3_:* = _loc2_ > this.§_-Q-§;
            if(_loc5_ || this)
            {
               if(_loc3_)
               {
                  if(!(_loc4_ && this))
                  {
                     §_-Qu§.§_-di§.§_-Li§(§_-Sf§.§_-vj§,_loc2_);
                  }
               }
               (§_-NY§.getItemByName("TextField_EaglePercentage") as §_-V1§).§_-hJ§.text = this.§_-Q-§ + "%";
               if(!_loc4_)
               {
                  §§push(this);
                  §§push(§_-29§);
                  §§push(this);
                  §§push({"mEagleScoreCounter":_loc2_});
                  §§push({"mEagleScoreCounter":0});
                  §§push(_loc2_);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(100);
                     if(!_loc4_)
                     {
                        addr156:
                        §§push(§§pop() / §§pop());
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(5);
                        }
                        §§pop().§_-zD§ = §§pop().§_-NW§(§§pop(),§§pop(),§§pop(),§§pop());
                        if(!_loc4_)
                        {
                           §§push(this.§_-zD§);
                           if(_loc5_ || _loc3_)
                           {
                              §§pop().addEventListener(§_-In§.COMPLETE,this.§_-nn§);
                              §§goto(addr191);
                           }
                           §§pop().play();
                           §§goto(addr191);
                        }
                        §§goto(addr188);
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§goto(addr156);
               }
            }
            addr191:
            if(_loc5_ || this)
            {
               addr188:
               §§push(this.§_-zD§);
            }
            return;
         }
         §§goto(addr20);
      }
      
      private function §_-nn§(param1:§_-In§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:GlowFilter = null;
         if(_loc4_ || _loc2_)
         {
            if(this.mEagleScoreCounter == 100)
            {
               if(_loc4_ || this)
               {
                  this.§_-gM§ = §_-29§.§_-NW§((§_-NY§.getItemByName("MovieClip_EagleMeterEffect") as §_-lq§).mClip,{"rotation":360},{"rotation":0},6.5);
                  if(!_loc3_)
                  {
                     §§push(this.§_-gM§);
                     if(!(_loc3_ && this))
                     {
                        §§pop().§_-Yc§ = false;
                        §§goto(addr77);
                     }
                     §§pop().play();
                  }
                  §§goto(addr74);
               }
               addr77:
               if(!_loc3_)
               {
                  addr74:
                  §§push(this.§_-gM§);
               }
               _loc2_ = new GlowFilter(16777215,1,22,22,2.5,10);
               if(!_loc3_)
               {
                  (§_-NY§.getItemByName("MovieClip_EagleMeterEffect") as §_-lq§).setVisibility(true);
                  if(_loc3_)
                  {
                  }
                  §§goto(addr114);
               }
               (§_-NY§.getItemByName("MovieClip_EagleMeterFill") as §_-lq§).mClip.filters = [_loc2_];
               §§goto(addr114);
            }
            addr114:
            return;
         }
         §§goto(addr74);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = super.run(param1);
         if(!(_loc5_ && this))
         {
            §§push(_loc2_);
            if(!(_loc5_ && _loc3_))
            {
               if(§§pop() != §_-VA§.STATE_STATUS_RUNNING)
               {
                  if(_loc4_)
                  {
                     §§goto(addr39);
                  }
                  else
                  {
                     addr57:
                     (§_-NY§.getItemByName("TextField_EaglePercentage") as §_-V1§).§_-hJ§.text = int(this.mEagleScoreCounter) + "%";
                     if(!_loc5_)
                     {
                        addr80:
                     }
                  }
               }
               else if(int(this.mEagleScoreCounter) > this.§_-Q-§)
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr57);
                  }
                  §§goto(addr80);
               }
               else
               {
                  (§_-NY§.getItemByName("TextField_EaglePercentage") as §_-V1§).§_-hJ§.text = int(this.§_-Q-§) + "%";
               }
               var _loc3_:Rectangle = new Rectangle(0,0,this.§_-Kk§ * (this.mEagleScoreCounter / 100),(§_-NY§.getItemByName("MovieClip_EagleMeterFill") as §_-lq§).height);
               if(!(_loc5_ && param1))
               {
                  (§_-NY§.getItemByName("MovieClip_EagleMeterFill") as §_-lq§).mClip.scrollRect = _loc3_;
                  if(_loc4_ || param1)
                  {
                     if(mNextState.length > 0)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           return §_-VA§.STATE_STATUS_COMPLETED;
                        }
                     }
                  }
               }
               return §_-VA§.STATE_STATUS_RUNNING;
            }
            §§goto(addr39);
         }
         addr39:
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§_-zD§.removeEventListener(§_-In§.COMPLETE,this.§_-nn§);
            if(_loc1_)
            {
               (§_-NY§.getItemByName("MovieClip_EagleMeterFill") as §_-lq§).mClip.filters = [];
               if(!_loc2_)
               {
                  addr46:
                  (§_-NY§.getItemByName("MovieClip_EagleMeterEffect") as §_-lq§).setVisibility(false);
                  if(!_loc2_)
                  {
                     super.deActivate();
                     if(!_loc1_)
                     {
                     }
                     §§goto(addr70);
                  }
                  this.§_-4W§.§_-wk§(0);
               }
            }
            addr70:
            return;
         }
         §§goto(addr46);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(!(_loc6_ && param3))
               {
                  §§push(0);
                  if(!_loc5_)
                  {
                  }
               }
               else
               {
                  addr105:
                  §§push(2);
                  if(_loc5_ || this)
                  {
                  }
               }
               §§goto(addr125);
            }
            else if("REPLAY" === _loc4_)
            {
               if(_loc5_ || param1)
               {
                  addr93:
                  §§push(1);
                  if(_loc6_ && param1)
                  {
                  }
               }
               else
               {
                  §§goto(addr105);
               }
               §§goto(addr125);
            }
            else
            {
               if("MENU" === _loc4_)
               {
                  §§goto(addr105);
               }
               else
               {
                  §§push(3);
               }
               addr125:
               switch(§§pop())
               {
                  case 0:
                     §_-Jw§.§_-GL§();
                     if(_loc5_ || param1)
                     {
                        mNextState = StateCutScene.§_-Az§;
                        if(_loc6_)
                        {
                           addr36:
                           mNextState = §_-Jw§.§_-Az§;
                           if(_loc5_)
                           {
                              addr42:
                              break;
                           }
                           break;
                        }
                     }
                     break;
                  case 1:
                     §_-Jw§.§_-h5§();
                     if(!_loc6_)
                     {
                        §§goto(addr36);
                     }
                     §§goto(addr42);
                  case 2:
                     mNextState = §_-pX§.§_-Az§;
                     if(_loc5_ || param3)
                     {
                        break;
                     }
               }
               return;
            }
            §§goto(addr105);
         }
         §§goto(addr93);
      }
   }
}
