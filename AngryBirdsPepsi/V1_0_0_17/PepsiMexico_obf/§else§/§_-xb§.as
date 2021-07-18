package §else§
{
   import §_-20§.§_-j5§;
   import §_-6r§.§_-7P§;
   import §_-6v§.§_-In§;
   import §_-F1§.§_-V1§;
   import §_-F1§.§_-k4§;
   import §_-F1§.§_-lq§;
   import §_-F1§.§_-qp§;
   import §_-OJ§.§_-1W§;
   import §_-PD§.HighscoreSidebar;
   import §_-Qx§.§_-Sf§;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-dA§.§_-FO§;
   import §_-gY§.§_-Vu§;
   import §_-hU§.§_-MB§;
   import §_-mD§.§_-29§;
   import §_-y7§.§_-VA§;
   
   public class §_-xb§ extends §_-iL§
   {
      
      private static const §_-r0§:Number = -250;
      
      public static const §_-Az§:String = "PauseState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-r0§ = -250;
            if(_loc2_ || §_-xb§)
            {
               addr33:
               §_-Az§ = "PauseState";
            }
            return;
         }
         §§goto(addr33);
      }
      
      private var §_-me§:§_-j5§ = null;
      
      public function §_-xb§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
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
            if(!_loc1_)
            {
               §_-NY§ = new §_-ru§(this);
               if(!_loc1_)
               {
                  addr41:
                  §_-NY§.init(§_-BN§.native.Views.View_LevelPause[0]);
               }
               return;
            }
         }
         §§goto(addr41);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = 0;
         if(§_-1S§)
         {
            §§push(int(§_-1S§.currentPage));
            if(!(_loc3_ && this))
            {
               _loc1_ = §§pop();
               if(_loc2_ || _loc3_)
               {
                  addr35:
                  super.activate();
                  §_-MB§.§_-A7§.§_-Gf§(true);
                  this.§_-IB§();
                  §§goto(addr51);
               }
               §§goto(addr59);
            }
            addr51:
            if(_loc1_)
            {
               if(_loc2_ || _loc3_)
               {
                  addr59:
                  §_-1S§.choosePage(_loc1_);
               }
            }
            §_-1S§.changeState(HighscoreSidebar.§_-Jf§);
            §_-1S§.showHighscores(§_-Sf§.§_-vj§);
            if(_loc2_)
            {
               §_-NY§.getItemByName("Button_Help").setEnabled(§_-FO§.§_-Ms§());
            }
            §_-NY§.getItemByName("Button_Help").setVisibility(§_-FO§.§_-Ms§());
            return;
         }
         §§goto(addr35);
      }
      
      private function §_-IB§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§_-Sf§.§_-vj§);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(_loc3_)
         {
            if(§§pop().indexOf("1-") == 0)
            {
               §§push(_loc1_);
               if(_loc3_ || this)
               {
                  addr35:
                  §§push(§§pop().substring(2));
               }
               _loc1_ = §§pop();
               if(!_loc2_)
               {
                  addr41:
                  (§_-NY§.getItemByName("TextField_LevelName") as §_-V1§).§_-hJ§.text = _loc1_;
                  (§_-NY§.getItemByName("Container_PauseMenu") as §_-k4§).x = §_-r0§;
                  this.§_-ea§(false);
                  §_-Vu§.§_-jT§.§_-ra§ = true;
                  if(!(_loc2_ && _loc3_))
                  {
                     §_-NY§.getItemByName("MovieClip_SoundsOff").setVisibility(!§_-Qu§.§_-E§());
                     §§push(this.§_-me§);
                     if(!(_loc2_ && _loc3_))
                     {
                        if(§§pop() != null)
                        {
                           addr95:
                           §§push(this.§_-me§);
                           if(!_loc2_)
                           {
                              §§pop().stop();
                              addr100:
                              this.§_-me§ = §_-29§.§_-Y5§(§_-29§.§_-NW§(§_-NY§.getItemByName("Container_PauseMenu") as §_-k4§,{"x":0},null,0.25),§_-29§.§_-NW§((§_-NY§.getItemByName("MovieClip_DarkBG") as §_-lq§).mClip,{"alpha":1},{"alpha":0},0.25));
                              §§push(this.§_-me§);
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr140);
                              }
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr100);
                     }
                     addr140:
                     §§pop().addEventListener(§_-In§.COMPLETE,this.§_-10§);
                     if(_loc3_ || _loc2_)
                     {
                        addr161:
                        this.§_-me§.play();
                     }
                     return;
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr41);
         }
         §§goto(addr35);
      }
      
      private function §_-10§(param1:§_-In§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-me§.removeEventListener(§_-In§.COMPLETE,this.§_-10§);
            if(_loc3_ || this)
            {
               this.§_-ea§(true);
            }
         }
      }
      
      private function §_-ea§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         (§_-NY§.getItemByName("Button_Resume") as §_-qp§).setEnabled(param1);
         (§_-NY§.getItemByName("Button_Replay") as §_-qp§).setEnabled(param1);
         (§_-NY§.getItemByName("Button_Menu") as §_-qp§).setEnabled(param1);
         (§_-NY§.getItemByName("Button_Help") as §_-qp§).setEnabled(param1);
         (§_-NY§.getItemByName("Button_Sound") as §_-qp§).setEnabled(param1);
         if(!_loc3_)
         {
            §_-NY§.getItemByName("Button_Help").setEnabled(§_-FO§.§_-Ms§());
         }
      }
      
      private function §_-1G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§_-me§);
            if(_loc1_ || this)
            {
               if(§§pop() != null)
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§push(this.§_-me§);
                     if(_loc1_ || _loc1_)
                     {
                        addr47:
                        §§pop().stop();
                        if(!(_loc2_ && _loc1_))
                        {
                           this.§_-me§ = §_-29§.§_-Y5§(§_-29§.§_-NW§(§_-NY§.getItemByName("Container_PauseMenu") as §_-k4§,{"x":§_-r0§},null,0.25),§_-29§.§_-NW§((§_-NY§.getItemByName("MovieClip_DarkBG") as §_-lq§).mClip,{"alpha":0},{"alpha":1},0.25));
                           addr55:
                           if(_loc1_ || this)
                           {
                              addr100:
                              §§push(this.§_-me§);
                              if(_loc1_ || _loc2_)
                              {
                                 §§pop().addEventListener(§_-In§.COMPLETE,this.§_-Hq§);
                                 if(!(_loc2_ && this))
                                 {
                                    addr130:
                                    this.§_-me§.play();
                                 }
                                 return;
                              }
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr100);
               }
               §§goto(addr55);
            }
            §§goto(addr47);
         }
         §§goto(addr100);
      }
      
      private function §_-Hq§(param1:§_-In§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-me§.removeEventListener(§_-In§.COMPLETE,this.§_-Hq§);
            if(!(_loc3_ && param1))
            {
               mNextState = StatePlay.§_-Az§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = super.run(param1);
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() != §_-VA§.STATE_STATUS_RUNNING)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr36);
                  }
               }
               else if(mNextState.length > 0)
               {
                  if(_loc3_)
                  {
                     return §_-VA§.STATE_STATUS_COMPLETED;
                  }
               }
               return §_-VA§.STATE_STATUS_RUNNING;
            }
            §§goto(addr36);
         }
         addr36:
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
            if(_loc1_ || _loc2_)
            {
               addr31:
               §_-Vu§.§_-jT§.§_-ra§ = false;
            }
            return;
         }
         §§goto(addr31);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§_-1W§ = null;
         var _loc7_:* = param2;
         if(!(_loc10_ && this))
         {
            if("HELP" === _loc7_)
            {
               §§push(0);
               if(_loc10_ && param1)
               {
               }
            }
            else if("RESTART_LEVEL" === _loc7_)
            {
               addr207:
               §§push(1);
            }
            else if("RESUME_LEVEL" === _loc7_)
            {
               §§push(2);
            }
            else if("END_LEVEL" === _loc7_)
            {
               if(!(_loc10_ && param2))
               {
                  §§push(3);
                  if(_loc10_ && param1)
                  {
                  }
                  §§goto(addr268);
               }
               else
               {
                  §§goto(addr243);
               }
            }
            else if("MENU" === _loc7_)
            {
               §§push(4);
            }
            else
            {
               if("TOGGLE_SOUNDS" === _loc7_)
               {
                  if(_loc9_)
                  {
                     addr243:
                     §§push(5);
                     if(!_loc9_)
                     {
                     }
                  }
               }
               else if("TOGGLE_PARTICLES" !== _loc7_)
               {
                  if("TOGGLE_FULLSCREEN" === _loc7_)
                  {
                     §§goto(addr263);
                     §§push(7);
                  }
                  else
                  {
                     addr268:
                     loop0:
                     while(true)
                     {
                        switch(§§pop())
                        {
                           case 0:
                              this.§_-1G§();
                              if(_loc10_ && param3)
                              {
                                 addr118:
                                 break loop0;
                              }
                              continue;
                           case 1:
                              mNextState = §_-Jw§.§_-Az§;
                              if(!(_loc10_ && param2))
                              {
                                 addr97:
                                 §_-Jw§.§_-h5§();
                                 break loop0;
                              }
                              addr110:
                              break loop0;
                           case 2:
                              this.§_-1G§();
                              if(_loc10_ && this)
                              {
                                 break;
                              }
                              §§goto(addr110);
                              break;
                           case 3:
                              break loop0;
                           case 4:
                              mNextState = §_-pX§.§_-Az§;
                              §§goto(addr118);
                           case 5:
                              §§push(§_-Qu§.§_-E§());
                              if(!(_loc10_ && param2))
                              {
                                 §§push(!§§pop());
                                 if(!(_loc10_ && this))
                                 {
                                    _loc4_ = §§pop();
                                    if(!(_loc10_ && param1))
                                    {
                                       §_-Qu§.§_-vM§(_loc4_);
                                       §_-NY§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                                       break loop0;
                                    }
                                    break loop0;
                                 }
                                 addr167:
                                 §§push(!§§pop());
                              }
                              addr168:
                              _loc5_ = §§pop();
                              §_-MB§.§_-o3§(_loc5_);
                              §_-NY§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                              break;
                           case 6:
                              §§push(§_-MB§.§_-G8§());
                              if(!_loc10_)
                              {
                                 §§goto(addr167);
                              }
                              §§goto(addr168);
                           case 7:
                        }
                        break;
                     }
                     return;
                     §§push(8);
                  }
               }
               §§goto(addr268);
            }
            §§goto(addr268);
         }
         §§goto(addr207);
      }
   }
}
