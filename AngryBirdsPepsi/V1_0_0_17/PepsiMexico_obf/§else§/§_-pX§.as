package §else§
{
   import §_-0S§.§_-z1§;
   import §_-20§.§_-j5§;
   import §_-6r§.§_-7P§;
   import §_-6r§.§_-Tk§;
   import §_-F1§.§_-V1§;
   import §_-F1§.§_-k4§;
   import §_-F1§.§_-mr§;
   import §_-F1§.§_-nq§;
   import §_-F1§.§_-qp§;
   import §_-IV§.§_-qW§;
   import §_-PD§.HighscoreSidebar;
   import §_-Qx§.§_-Sf§;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-W0§.§_-MC§;
   import §_-e3§.Base64;
   import §_-hU§.§_-MB§;
   import §_-hq§.§_-AD§;
   import §_-sK§.§_-Bs§;
   import §_-y7§.§_-VA§;
   import §_-zL§.§_-5B§;
   import §_-zL§.§_-Rv§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §_-pX§ extends §_-iL§
   {
      
      public static const §_-Az§:String = "LevelSelectionState";
      
      private static const §_-0t§:Number = 0.5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-Az§ = "LevelSelectionState";
            if(_loc1_ || _loc2_)
            {
               §_-0t§ = 0.5;
            }
         }
      }
      
      private var §_-Lm§:Boolean = false;
      
      private var §_-dN§:MovieClip;
      
      private var §_-I6§:Array;
      
      private var §_-yA§:Array;
      
      private var §_-ue§:int = 0;
      
      private var §_-Sp§:Boolean = false;
      
      private var §_-aX§:§_-j5§ = null;
      
      private var §_-m§:String;
      
      private var §_-Ct§:Dictionary;
      
      private var §_-CY§:Array;
      
      private var §_-6U§:§_-mr§;
      
      private var §_-8D§:Boolean = false;
      
      private var §_-Ed§:Boolean = false;
      
      private var §_-81§:Boolean = false;
      
      private var §_-tT§:Number = 0;
      
      private var §_-YP§:Number = 0;
      
      private var §_-c7§:Number = 0;
      
      private var §_-8t§:Number = 0;
      
      private var §_-vC§:Number;
      
      private var §_-U8§:Number;
      
      private var §_-HL§:Number;
      
      private var §_-x8§:Number;
      
      public function §_-pX§(param1:Boolean = false, param2:String = "LevelSelectionState")
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
         super.init();
         if(!_loc2_)
         {
            §_-NY§ = new §_-ru§(this);
         }
         §_-NY§.init(§_-BN§.native.Views.View_LevelSelection[0]);
         this.§_-dN§ = new MovieClip();
         if(_loc1_)
         {
            §_-NY§.addChild(this.§_-dN§);
            this.§_-yA§ = [];
         }
         this.§_-I6§ = [];
         if(!_loc2_)
         {
            this.§_-vC§ = (§_-NY§.getItemByName("Container_MenuLeftButtons") as §_-k4§).height;
            if(!(_loc2_ && this))
            {
               this.§_-U8§ = (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).height;
               if(!_loc2_)
               {
                  this.§_-HL§ = §_-NY§.getItemByName("Button_LeftMenuOpen").y - 50;
                  addr80:
               }
            }
            this.§_-x8§ = §_-NY§.getItemByName("Button_RightMenuOpen").y - 50;
            return;
         }
         §§goto(addr80);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super.activate();
         §§push(this.§_-8D§);
         if(_loc2_ || _loc2_)
         {
            if(!§§pop())
            {
               if(_loc2_)
               {
                  this.§_-8D§ = true;
                  §_-qW§.§_-6h§(§_-qW§.§_-Wp§);
                  if(_loc2_ || _loc2_)
                  {
                     addr41:
                     §_-MB§.§_-A7§.§_-Gf§(false);
                     this.§_-hW§();
                     if(!(_loc3_ && _loc3_))
                     {
                        addr54:
                        §_-1S§.changeState(HighscoreSidebar.§_-IT§);
                        if(_loc2_ || _loc3_)
                        {
                           §_-1S§.reloadAllScores();
                        }
                     }
                     (§_-NY§.getItemByName("TextField_Code") as §_-V1§).§_-hJ§.addEventListener(FocusEvent.FOCUS_IN,this.§_-L7§);
                     §§goto(addr85);
                  }
                  §§goto(addr54);
               }
               addr85:
               §§push(§_-Qu§.§_-E§());
               if(_loc2_ || this)
               {
                  addr94:
                  §§push(Boolean(§§pop()));
               }
               var _loc1_:* = §§pop();
               if(_loc2_)
               {
                  if(_loc1_)
                  {
                     if(!(_loc3_ && _loc1_))
                     {
                        §§goto(addr107);
                     }
                  }
                  §§goto(addr123);
               }
               addr107:
               §_-Qu§.§_-os§();
               if(!(_loc3_ && _loc2_))
               {
                  addr123:
                  §_-NY§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
               }
               return;
            }
            §§goto(addr41);
         }
         §§goto(addr94);
      }
      
      private function §_-L7§(param1:FocusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §_-NY§.setText("","TextField_Code");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = super.run(param1);
         §§push(_loc2_);
         if(!(_loc4_ && this))
         {
            if(§§pop() != §_-VA§.STATE_STATUS_RUNNING)
            {
               return _loc2_;
            }
            else
            {
               if(mNextState.length > 0)
               {
                  return §_-VA§.STATE_STATUS_COMPLETED;
               }
               this.§_-HL§ = §_-NY§.getItemByName("Button_LeftMenuOpen").y - 50;
               this.§_-x8§ = §_-NY§.getItemByName("Button_RightMenuOpen").y - 50;
               this.§_-ct§(param1);
               return §_-VA§.STATE_STATUS_RUNNING;
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§_-Ed§ = false;
         this.§_-81§ = false;
         if(!_loc2_)
         {
            this.§_-c7§ = 0;
            if(_loc1_)
            {
               this.§_-8t§ = 0;
               (§_-NY§.getItemByName("TextField_Code") as §_-V1§).§_-hJ§.removeEventListener(FocusEvent.FOCUS_IN,this.§_-L7§);
               if(_loc1_ || this)
               {
                  addr54:
                  this.§_-YP§ = 0;
                  this.§_-tT§ = 0;
                  if(_loc1_ || _loc1_)
                  {
                     (§_-NY§.getItemByName("Container_MenuLeftButtons") as §_-k4§).setVisibility(false);
                  }
               }
               (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).setVisibility(false);
               if(_loc1_)
               {
                  super.deActivate();
               }
               this.§_-Fu§();
               return;
            }
         }
         §§goto(addr54);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:§_-Tk§ = null;
         var _loc7_:§_-Tk§ = null;
         var _loc8_:String = null;
         var _loc9_:* = false;
         var _loc10_:§_-Tk§ = null;
         if(_loc12_ || this)
         {
            §§push(param2);
            if(!(_loc13_ && this))
            {
               §§push(§§pop().length > 0);
               §§push(§§pop().length > 0);
               if(!_loc13_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(param3 is §_-nq§);
                     if(!(_loc13_ && param1))
                     {
                        addr66:
                        if(§§pop())
                        {
                           if((param3 as §_-nq§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection6")
                           {
                              §§push(param2.substr(0,4));
                              if(!(_loc13_ && param2))
                              {
                                 §§push(_loc4_ = §§pop());
                                 if(_loc12_)
                                 {
                                    if(§§pop() == "OUT1")
                                    {
                                       if(_loc12_)
                                       {
                                          addr95:
                                          _loc4_ = "OUT";
                                          addr97:
                                          §§push(_loc4_);
                                          if(_loc12_)
                                          {
                                             addr100:
                                             §§push(§§pop() == "OVER");
                                             if(!(§§pop() == "OVER"))
                                             {
                                                §§pop();
                                                if(!(_loc13_ && param1))
                                                {
                                                   §§push(_loc4_ == "OUT");
                                                   if(_loc12_)
                                                   {
                                                      addr117:
                                                      if(§§pop())
                                                      {
                                                         addr118:
                                                         §§push(_loc4_);
                                                         if(_loc12_ || param2)
                                                         {
                                                            addr128:
                                                            _loc5_ = §§pop().toLowerCase();
                                                            (param3 as §_-nq§).mClip.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop(_loc5_);
                                                            var _loc11_:* = param2;
                                                            if(_loc12_ || param1)
                                                            {
                                                               if("OPEN_LEFT_MENU" === _loc11_)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc13_)
                                                                  {
                                                                     addr510:
                                                                  }
                                                               }
                                                               else if("OPEN_RIGHT_MENU" === _loc11_)
                                                               {
                                                                  §§push(1);
                                                               }
                                                               else if("PLAY_NEXT" === _loc11_)
                                                               {
                                                                  §§push(2);
                                                                  if(!(_loc12_ || this))
                                                                  {
                                                                     addr529:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  if("RESTART_LEVEL" === _loc11_)
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(3);
                                                                        if(!(_loc12_ || param2))
                                                                        {
                                                                           addr498:
                                                                        }
                                                                     }
                                                                  }
                                                                  else if("CANCEL" === _loc11_)
                                                                  {
                                                                     addr553:
                                                                     switch(§§pop())
                                                                     {
                                                                        case 0:
                                                                           §§push(this.§_-Ed§);
                                                                           if(!_loc13_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 this.§_-Ed§ = false;
                                                                                 if(_loc13_ && param2)
                                                                                 {
                                                                                    addr229:
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.§_-Ed§ = true;
                                                                                 if(_loc13_ && param3)
                                                                                 {
                                                                                    addr237:
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr207:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc12_ || this)
                                                                              {
                                                                                 this.§_-81§ = false;
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr237);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              this.§_-81§ = true;
                                                                              if(!(_loc12_ || param2))
                                                                              {
                                                                                 addr233:
                                                                                 mNextState = StateCutScene.§_-Az§;
                                                                                 §§goto(addr237);
                                                                              }
                                                                           }
                                                                           §§goto(addr229);
                                                                        case 1:
                                                                           §§goto(addr207);
                                                                        case 2:
                                                                           §_-Jw§.§_-GL§();
                                                                           §§goto(addr233);
                                                                        case 3:
                                                                           §_-Jw§.§_-h5§();
                                                                           §§push(this.§_-81§);
                                                                           if(_loc12_ || param3)
                                                                           {
                                                                              mNextState = §_-Jw§.§_-Az§;
                                                                           }
                                                                           break;
                                                                        case 4:
                                                                           (_loc7_ = §_-NY§.getItemByName("InsertCodePopup")).setVisibility(false);
                                                                           break;
                                                                        case 5:
                                                                           _loc8_ = §_-NY§.getText("TextField_Code");
                                                                           this.§_-96§(_loc8_);
                                                                           break;
                                                                        case 6:
                                                                           §§push(§_-Qu§.§_-E§());
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              if(!(_loc13_ && param3))
                                                                              {
                                                                                 _loc9_ = §§pop();
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    §_-Qu§.§_-vM§(_loc9_);
                                                                                    if(_loc13_ && this)
                                                                                    {
                                                                                       addr344:
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 §§push(_loc9_);
                                                                              }
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              §_-Qu§.§_-os§();
                                                                              if(_loc13_)
                                                                              {
                                                                                 addr331:
                                                                                 this.§_-Ed§ = false;
                                                                                 break;
                                                                              }
                                                                           }
                                                                           §_-NY§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc9_);
                                                                           break;
                                                                        case 7:
                                                                           mNextState = §_-1j§.§_-Az§;
                                                                           if(_loc13_ && param3)
                                                                           {
                                                                              addr352:
                                                                              break;
                                                                           }
                                                                           §§goto(addr331);
                                                                           break;
                                                                        case 8:
                                                                           navigateToURL(new URLRequest("http://www.facebook.com/angrybirds"),"_blank");
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§goto(addr344);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr352);
                                                                           }
                                                                        case 9:
                                                                           navigateToURL(new URLRequest("http://twitter.com/AngryBirds"),"_blank");
                                                                           §§goto(addr352);
                                                                        case 10:
                                                                           navigateToURL(new URLRequest("http://chrome.angrybirds.com/"),"_blank");
                                                                           break;
                                                                        case 11:
                                                                           (_loc10_ = §_-NY§.getItemByName("LogoutConfirmationPopup")).setVisibility(true);
                                                                           if(_loc12_ || this)
                                                                           {
                                                                              §_-NY§.container.setObjectToFront(_loc10_);
                                                                              if(!(_loc13_ && this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr402:
                                                                              mNextState = §_-mk§.§_-Az§;
                                                                              if(!(_loc13_ && param2))
                                                                              {
                                                                                 addr413:
                                                                                 break;
                                                                              }
                                                                           }
                                                                           addr420:
                                                                           break;
                                                                        case 12:
                                                                           §_-NY§.getItemByName("LogoutConfirmationPopup").setVisibility(false);
                                                                           if(!_loc13_)
                                                                           {
                                                                              §_-mk§.§_-zl§ = true;
                                                                              if(_loc12_)
                                                                              {
                                                                                 §§goto(addr402);
                                                                              }
                                                                              §§goto(addr413);
                                                                           }
                                                                           §§goto(addr420);
                                                                        case 13:
                                                                           §_-NY§.getItemByName("LogoutConfirmationPopup").setVisibility(false);
                                                                           §§goto(addr420);
                                                                     }
                                                                     return;
                                                                     §§push(4);
                                                                  }
                                                                  else
                                                                  {
                                                                     if("SEND_CODE" === _loc11_)
                                                                     {
                                                                        §§push(5);
                                                                        if(_loc13_ && this)
                                                                        {
                                                                           addr515:
                                                                        }
                                                                     }
                                                                     else if("SOUNDS_BUTTON" === _loc11_)
                                                                     {
                                                                        §§push(6);
                                                                        if(_loc12_ || param1)
                                                                        {
                                                                           §§goto(addr498);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr529);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        if("CREDITS_BUTTON" === _loc11_)
                                                                        {
                                                                           §§goto(addr553);
                                                                           §§push(7);
                                                                        }
                                                                        else
                                                                        {
                                                                           if("FACEBOOK" === _loc11_)
                                                                           {
                                                                              §§push(8);
                                                                              if(_loc12_)
                                                                              {
                                                                                 §§goto(addr510);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr515);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              if("TWITTER" === _loc11_)
                                                                              {
                                                                                 §§goto(addr515);
                                                                                 §§push(9);
                                                                              }
                                                                              else
                                                                              {
                                                                                 if("CHROME" !== _loc11_)
                                                                                 {
                                                                                    if("LOGOUT" === _loc11_)
                                                                                    {
                                                                                       §§push(11);
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          §§goto(addr529);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr548:
                                                                                          §§goto(addr553);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       if("LOGOUT_SI" === _loc11_)
                                                                                       {
                                                                                          §§push(12);
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             addr536:
                                                                                          }
                                                                                       }
                                                                                       else if("LOGOUT_NO" === _loc11_)
                                                                                       {
                                                                                          addr547:
                                                                                          §§goto(addr548);
                                                                                          §§push(13);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr553);
                                                                                          §§push(14);
                                                                                       }
                                                                                       §§goto(addr553);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr553);
                                                                              }
                                                                              §§goto(addr553);
                                                                           }
                                                                           §§goto(addr553);
                                                                        }
                                                                        §§goto(addr553);
                                                                     }
                                                                     §§goto(addr553);
                                                                  }
                                                                  §§goto(addr553);
                                                                  if(_loc13_)
                                                                  {
                                                                     §§goto(addr536);
                                                                  }
                                                               }
                                                               §§goto(addr553);
                                                            }
                                                            §§goto(addr547);
                                                            addr175:
                                                            addr126:
                                                         }
                                                         §§goto(addr128);
                                                      }
                                                      else
                                                      {
                                                         §§push(§_-MC§.§_-wR§(param2));
                                                      }
                                                      §§goto(addr175);
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      this.§_-JA§(param2.toLowerCase());
                                                      addr146:
                                                   }
                                                   else
                                                   {
                                                      this.§_-m§ = param2;
                                                      (_loc6_ = §_-NY§.getItemByName("InsertCodePopup")).setVisibility(true);
                                                      if(_loc12_ || param3)
                                                      {
                                                         §_-NY§.container.setObjectToFront(_loc6_);
                                                         if(!_loc12_)
                                                         {
                                                         }
                                                         §§goto(addr128);
                                                      }
                                                      §_-NY§.setText("","TextField_Code");
                                                   }
                                                   §§goto(addr128);
                                                }
                                                §§goto(addr118);
                                             }
                                             §§goto(addr117);
                                          }
                                          §§goto(addr126);
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr97);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr100);
                           }
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr66);
               }
               §§goto(addr100);
            }
            §§goto(addr128);
         }
         §§goto(addr95);
      }
      
      private function §_-JA§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §_-Sf§.§_-JA§(param1);
            if(!_loc2_)
            {
               addr33:
               mNextState = StateCutScene.§_-Az§;
            }
            return;
         }
         §§goto(addr33);
      }
      
      private function §_-Mg§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-Bs§ = §_-Bs§.§_-oA§(param1);
         if(!_loc4_)
         {
            if(_loc2_.§_-za§)
            {
               if(!(_loc4_ && param1))
               {
                  this.§_-JA§(_loc2_.§_-za§);
                  addr37:
                  if(_loc4_)
                  {
                  }
                  §§goto(addr54);
               }
               §_-MB§.§_-A7§.§_-xs§(param1);
            }
            addr54:
            return;
         }
         §§goto(addr37);
      }
      
      private function §_-96§(param1:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:String = "assignCode";
         §§push(this.§_-m§);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:URLLoader = new URLLoader();
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         if(!(_loc7_ && _loc3_))
         {
            _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         }
         var _loc6_:Object = {
            "type":_loc2_,
            "code":param1,
            "levelId":_loc3_,
            "player":§_-MC§.§_-7w§
         };
         _loc5_.data = "json=" + Base64.encode(§_-AD§.encode(_loc6_));
         if(_loc8_ || _loc2_)
         {
            _loc4_.addEventListener(Event.COMPLETE,this.onComplete);
            _loc4_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-wL§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
            _loc5_.url = §_-Qu§.§_-BK§;
            if(!(_loc7_ && param1))
            {
               _loc4_.load(_loc5_);
               §_-NY§.getItemByName("WaitingPopup").setVisibility(true);
            }
         }
      }
      
      private function §_-wL§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-qT§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(§_-NY§)
            {
               if(!(_loc2_ && this))
               {
                  §_-NY§.getItemByName("WaitingPopup").setVisibility(false);
               }
            }
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§_-Tk§ = null;
         if(!(_loc4_ && param1))
         {
            if(§_-NY§)
            {
               if(_loc5_ || _loc3_)
               {
                  §_-NY§.getItemByName("WaitingPopup").setVisibility(false);
               }
            }
         }
         var _loc2_:Object = §_-Rv§.§_-3a§((param1.currentTarget as URLLoader).data);
         if(_loc5_ || _loc2_)
         {
            if(_loc2_.security)
            {
               if(_loc5_ || _loc3_)
               {
                  addr64:
                  §_-MC§.levelProfile = _loc2_.levelProfile;
                  if(_loc5_)
                  {
                     if(§_-NY§)
                     {
                        _loc3_ = §_-NY§.getItemByName("InsertCodePopup");
                        addr72:
                        if(_loc5_ || _loc3_)
                        {
                           _loc3_.setVisibility(false);
                        }
                     }
                     while(true)
                     {
                        §§push(this.§_-6U§);
                        if(_loc4_ && _loc2_)
                        {
                           break;
                        }
                        if(§§pop().§_-yZ§[0].mClip.numChildren <= 0)
                        {
                           §§push(this.§_-6U§);
                           break;
                        }
                        §§push(this.§_-6U§);
                        if(!(_loc5_ || _loc2_))
                        {
                           break;
                        }
                        §§pop().§_-yZ§[0].mClip.removeChildAt(0);
                     }
                     §§pop().setVisibility(false);
                     if(_loc5_ || _loc2_)
                     {
                        mNextState = §_-pX§.§_-Az§;
                        if(_loc4_)
                        {
                           addr148:
                           if(§_-NY§)
                           {
                              if(_loc5_)
                              {
                                 §_-NY§.setText(§_-5B§.§_-rm§(_loc2_.error),"TextField_Code");
                              }
                           }
                        }
                     }
                     §§goto(addr166);
                  }
               }
               §§goto(addr72);
            }
            else if(_loc2_.error)
            {
               §§goto(addr148);
            }
            addr166:
            return;
         }
         §§goto(addr64);
      }
      
      public function §_-hW§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Array = null;
         var _loc1_:* = Number(0);
         if(_loc4_ || _loc1_)
         {
            this.§_-CY§ = [];
            if(_loc4_)
            {
               addr31:
               this.§_-ue§ = §_-Sf§.§_-Gd§(§_-Sf§.§_-wf§).currentPage;
            }
            var _loc2_:* = Number(0);
            while(_loc2_ < §_-Sf§.§_-Gd§(§_-Sf§.§_-wf§).pageIndexes.length)
            {
               _loc3_ = §_-Sf§.§_-Gd§(§_-Sf§.§_-wf§).§_-84§(§_-Sf§.§_-Gd§(§_-Sf§.§_-wf§).pageIndexes[_loc2_]);
               if(_loc5_)
               {
                  continue;
               }
               this.§_-CY§.push(§_-Sf§.§_-Gd§(§_-Sf§.§_-wf§).§_-4Q§(_loc2_));
               if(!_loc5_)
               {
                  §§push(this.§_-88§(_loc3_,_loc1_));
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc5_)
                     {
                        addr86:
                        _loc1_ = §§pop();
                        if(_loc5_ && _loc1_)
                        {
                           continue;
                        }
                        addr94:
                        §§push(_loc2_);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(§§pop() + 1);
                           if(_loc4_ || _loc2_)
                           {
                              addr110:
                              §§push(Number(§§pop()));
                           }
                           _loc2_ = §§pop();
                           continue;
                        }
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr86);
               }
               §§goto(addr94);
            }
            return;
         }
         §§goto(addr31);
      }
      
      private function §_-88§(param1:Array, param2:Number) : Number
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc6_:XML = null;
         var _loc9_:String = null;
         var _loc10_:MovieClip = null;
         var _loc11_:* = false;
         var _loc12_:Number = NaN;
         var _loc13_:XML = null;
         var _loc3_:Array = new Array();
         if(_loc15_ || param1)
         {
            _loc3_[0] = new Array();
         }
         var _loc4_:Class = §_-z1§.§_-tn§("Component_LevelSelection");
         var _loc5_:* = Number(0);
         while(_loc5_ < param1.length)
         {
            _loc9_ = param1[_loc5_];
            if(_loc14_)
            {
               break;
            }
            (_loc10_ = new _loc4_()).TextField_LevelNum.text.text = (_loc5_ + 1).toString();
            _loc10_.MovieClip_LevelSelectionLogos.gotoAndStop(_loc5_ + 1);
            _loc10_.MovieClip_LevelSelectionLogos.LevelSelectionButton.gotoAndStop("out");
            §§push(§_-MC§.§_-wR§(_loc9_));
            if(!(_loc14_ && param2))
            {
               §§push(Boolean(§§pop()));
               if(!(_loc14_ && param1))
               {
                  §§push(_loc11_ = §§pop());
               }
            }
            if(!§§pop())
            {
               _loc10_.gotoAndStop("Open");
               §§push(§_-Qu§.§_-di§);
               if(!(_loc14_ && this))
               {
                  §§push(_loc9_);
                  if(!_loc14_)
                  {
                     §§push(§§pop().§_-Qi§(§§pop()));
                     if(_loc15_)
                     {
                        if(§§pop() == 100)
                        {
                           _loc10_.MovieClip_Feather.gotoAndStop("Visible");
                        }
                        else
                        {
                           _loc10_.MovieClip_Feather.gotoAndStop("Hidden");
                        }
                        addr143:
                        §§push(§_-Qu§.§_-di§.§_-Al§(_loc9_));
                     }
                     _loc12_ = §§pop();
                     _loc10_.MovieClip_Stars.gotoAndStop(_loc12_.toString() + "_stars");
                     (_loc13_ = <Button/>).@name = _loc9_;
                     if(_loc15_ || _loc3_)
                     {
                        _loc13_.@MouseUp = _loc9_;
                        if(_loc15_)
                        {
                           _loc13_.@MouseOver = "Over" + _loc9_;
                           if(_loc14_ && param1)
                           {
                           }
                           addr199:
                           _loc3_[0].push(new Array(_loc13_,null,_loc10_));
                           if(_loc14_)
                           {
                              continue;
                           }
                           §§push(_loc5_);
                           if(_loc15_ || param2)
                           {
                              §§push(§§pop() + 1);
                              if(!_loc14_)
                              {
                                 addr221:
                                 §§push(Number(§§pop()));
                              }
                              _loc5_ = §§pop();
                              continue;
                           }
                           §§goto(addr221);
                        }
                        _loc13_.@MouseOut = "Out" + _loc9_;
                        if(_loc14_)
                        {
                           continue;
                        }
                     }
                     §§goto(addr199);
                  }
               }
               §§goto(addr143);
            }
            else
            {
               _loc10_.gotoAndStop("Locked");
            }
            §§goto(addr143);
         }
         (_loc6_ = <Repeater/>).@name = "Repeater_LevelSelection6";
         if(_loc15_ || _loc3_)
         {
            _loc6_.@button = "Component_LevelSelection";
            if(!_loc14_)
            {
               _loc6_.@enabled = "True";
               if(_loc14_)
               {
               }
               addr255:
               var _loc7_:Class;
               var _loc8_:MovieClip = new (_loc7_ = §_-z1§.§_-tn§(_loc6_.@name))();
               if(_loc15_)
               {
                  this.§_-6U§ = new §_-mr§(_loc6_,§_-NY§.container,null,_loc8_);
                  §§push(this.§_-6U§);
                  if(!_loc14_)
                  {
                     §§pop().§_-7§(_loc3_);
                     addr282:
                     §§push(this.§_-6U§);
                     if(_loc15_ || param1)
                     {
                        §§pop().setVisibility(true);
                        if(!(_loc14_ && param1))
                        {
                           §_-NY§.container.addComponent(this.§_-6U§);
                           if(!_loc14_)
                           {
                              addr309:
                              this.§_-6U§.x += param2;
                              this.§_-yA§.push(this.§_-6U§);
                              if(!_loc14_)
                              {
                                 §§goto(addr322);
                              }
                           }
                           §§goto(addr341);
                        }
                        addr322:
                        §§push(param2);
                        if(_loc15_)
                        {
                           §§push(§§pop() + §_-Qu§.§_-1q§);
                           if(_loc15_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc15_)
                              {
                                 param2 = §§pop();
                                 addr341:
                                 §§push(param2);
                              }
                           }
                        }
                        return §§pop();
                     }
                  }
                  §§goto(addr309);
               }
               §§goto(addr282);
            }
            _loc6_.@buttonSelectionType = "NO_SELECTION";
         }
         §§goto(addr255);
      }
      
      private function §_-Fu§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§_-6U§);
            if(_loc1_)
            {
               if(§§pop().mClip.parent.contains(this.§_-6U§.mClip))
               {
                  if(_loc1_)
                  {
                     addr37:
                     this.§_-6U§.mClip.parent.removeChild(this.§_-6U§.mClip);
                  }
               }
               do
               {
                  if(this.§_-dN§.numChildren <= 0)
                  {
                     if(_loc1_)
                     {
                        this.§_-yA§ = [];
                        break;
                     }
                     break;
                  }
                  this.§_-dN§.removeChildAt(0);
               }
               while(!_loc2_);
               
               return;
            }
         }
         §§goto(addr37);
      }
      
      private function §_-Bo§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            mNextState = §_-pX§.§_-Az§;
         }
      }
      
      private function §_-ct§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         (§_-NY§.getItemByName("Container_MenuLeftButtons") as §_-k4§).mClip.scrollRect = new Rectangle(0,0,(§_-NY§.getItemByName("Container_MenuLeftButtons") as §_-k4§).width,this.§_-vC§ + 20 - (this.§_-vC§ - this.§_-c7§));
         if(!(_loc3_ && this))
         {
            (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).mClip.scrollRect = new Rectangle(0,0,(§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).width,this.§_-U8§ + 20 - (this.§_-U8§ - this.§_-8t§));
            §§push(this.§_-Ed§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  (§_-NY§.getItemByName("Container_MenuLeftButtons") as §_-k4§).setVisibility(true);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this.§_-tT§);
                     §§push(90);
                     if(!_loc3_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(this);
                              §§push(this.§_-tT§);
                              if(!_loc3_)
                              {
                                 §§push(0.3);
                                 if(_loc2_ || param1)
                                 {
                                    §§push(§§pop() * param1);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().§_-tT§ = §§pop();
                              addr123:
                              if(this.§_-tT§ > 90)
                              {
                                 this.§_-tT§ = 90;
                              }
                              §§push(this.§_-c7§);
                              §§push(this.§_-vC§);
                              if(_loc2_ || this)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§push(this);
                                       §§push(this.§_-c7§);
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(0.5);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() * param1);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().§_-c7§ = §§pop();
                                       addr166:
                                       §§push(this.§_-c7§);
                                       §§push(this.§_-vC§);
                                       if(_loc2_ || param1)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                this.§_-c7§ = this.§_-vC§;
                                                if(!(_loc3_ && this))
                                                {
                                                   addr274:
                                                   if(this.§_-81§)
                                                   {
                                                      (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).setVisibility(true);
                                                      addr277:
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         §§push(this.§_-YP§);
                                                         if(_loc2_ || param1)
                                                         {
                                                            addr308:
                                                            if(§§pop() < 180)
                                                            {
                                                               if(_loc2_ || param1)
                                                               {
                                                                  addr316:
                                                                  §§push(this);
                                                                  §§push(this.§_-YP§);
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     §§push(0.5);
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() * param1);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§pop().§_-YP§ = §§pop();
                                                                  (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).y = (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).y - 0.5 * param1;
                                                                  addr354:
                                                                  if(this.§_-YP§ > 180)
                                                                  {
                                                                     this.§_-YP§ = 180;
                                                                  }
                                                                  §§push(this.§_-8t§);
                                                                  §§push(this.§_-U8§);
                                                                  if(_loc2_)
                                                                  {
                                                                     addr367:
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§_-8t§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(0.5);
                                                                              if(_loc2_ || this)
                                                                              {
                                                                                 §§push(§§pop() * param1);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           §§pop().§_-8t§ = §§pop();
                                                                           addr387:
                                                                           §§push(this.§_-8t§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr393:
                                                                              if(§§pop() > this.§_-U8§)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    this.§_-8t§ = this.§_-U8§;
                                                                                    addr495:
                                                                                    (§_-NY§.getItemByName("Button_LeftMenuOpen") as §_-qp§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                    (§_-NY§.getItemByName("Button_RightMenuOpen") as §_-qp§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                    addr513:
                                                                                    (§_-NY§.getItemByName("Button_LeftMenuOpen") as §_-qp§).mClip.MovieClip_LeftMenuImage.rotation = this.§_-tT§;
                                                                                    if(_loc2_ || param1)
                                                                                    {
                                                                                       (§_-NY§.getItemByName("Button_RightMenuOpen") as §_-qp§).mClip.MovieClip_RightMenuImage.rotation = this.§_-YP§;
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push(§_-NY§.getItemByName("Container_MenuLeftButtons") as §_-k4§);
                                                                                          §§push(this.§_-HL§);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(§§pop() - this.§_-c7§);
                                                                                          }
                                                                                          §§pop().y = §§pop();
                                                                                       }
                                                                                    }
                                                                                    §§push(§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§);
                                                                                    §§push(this.§_-x8§);
                                                                                    if(_loc2_ || this)
                                                                                    {
                                                                                       §§push(§§pop() - this.§_-8t§);
                                                                                    }
                                                                                    §§pop().y = §§pop();
                                                                                    addr400:
                                                                                 }
                                                                                 §§goto(addr580);
                                                                              }
                                                                              §§goto(addr400);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr403:
                                                                              if(§§pop() > 0)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§_-YP§);
                                                                                    if(_loc2_ || _loc3_)
                                                                                    {
                                                                                       §§push(0.5);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(§§pop() * param1);
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                    }
                                                                                    §§pop().§_-YP§ = §§pop();
                                                                                    (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).y = (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).y + 0.5 * param1;
                                                                                    addr440:
                                                                                    §§push(this.§_-YP§);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr444:
                                                                                       §§push(0);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             this.§_-YP§ = 0;
                                                                                             addr451:
                                                                                             §§push(this.§_-8t§);
                                                                                             §§push(0);
                                                                                             if(_loc2_ || this)
                                                                                             {
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      addr464:
                                                                                                      §§push(this);
                                                                                                      §§push(this.§_-8t§);
                                                                                                      if(_loc2_ || this)
                                                                                                      {
                                                                                                         §§push(0.5);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() * param1);
                                                                                                         }
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                      }
                                                                                                      §§pop().§_-8t§ = §§pop();
                                                                                                      addr481:
                                                                                                      if(this.§_-8t§ < 0)
                                                                                                      {
                                                                                                         addr485:
                                                                                                         (§_-NY§.getItemByName("Container_MenuRightButtons") as §_-k4§).setVisibility(false);
                                                                                                         this.§_-8t§ = 0;
                                                                                                      }
                                                                                                      §§goto(addr495);
                                                                                                   }
                                                                                                   §§goto(addr513);
                                                                                                }
                                                                                                §§goto(addr481);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr451);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr481);
                                                                                 }
                                                                                 §§goto(addr485);
                                                                              }
                                                                              §§goto(addr440);
                                                                           }
                                                                        }
                                                                        §§goto(addr451);
                                                                     }
                                                                     §§goto(addr387);
                                                                  }
                                                                  §§goto(addr393);
                                                               }
                                                               §§goto(addr495);
                                                            }
                                                         }
                                                         §§goto(addr354);
                                                      }
                                                      §§goto(addr316);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§_-YP§);
                                                   }
                                                   §§goto(addr403);
                                                   addr191:
                                                }
                                                §§goto(addr481);
                                             }
                                             §§goto(addr277);
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr367);
                                    }
                                    §§goto(addr485);
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr393);
                           }
                           §§goto(addr464);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr403);
                  }
                  §§goto(addr316);
               }
               else
               {
                  if(this.§_-tT§ > 0)
                  {
                     if(_loc2_)
                     {
                        §§push(this);
                        §§push(this.§_-tT§);
                        if(!_loc3_)
                        {
                           §§push(0.3);
                           if(_loc2_)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§push(§§pop() - §§pop());
                        }
                        §§pop().§_-tT§ = §§pop();
                        addr210:
                        if(this.§_-tT§ < 0)
                        {
                           this.§_-tT§ = 0;
                        }
                        §§push(this.§_-c7§);
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              if(§§pop() > §§pop())
                              {
                                 §§push(this);
                                 §§push(this.§_-c7§);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(0.5);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§push(§§pop() - §§pop());
                                 }
                                 §§pop().§_-c7§ = §§pop();
                                 if(_loc2_)
                                 {
                                    addr249:
                                    §§push(this.§_-c7§);
                                    §§push(0);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc2_)
                                          {
                                             (§_-NY§.getItemByName("Container_MenuLeftButtons") as §_-k4§).setVisibility(false);
                                             this.§_-c7§ = 0;
                                             if(!_loc3_)
                                             {
                                                §§goto(addr274);
                                             }
                                             §§goto(addr387);
                                          }
                                          §§goto(addr580);
                                       }
                                       §§goto(addr274);
                                    }
                                    §§goto(addr308);
                                 }
                                 addr580:
                                 return;
                              }
                              §§goto(addr249);
                           }
                           §§goto(addr403);
                        }
                        §§goto(addr444);
                     }
                     §§goto(addr495);
                  }
                  §§goto(addr210);
               }
            }
            §§goto(addr274);
         }
         §§goto(addr210);
      }
   }
}
