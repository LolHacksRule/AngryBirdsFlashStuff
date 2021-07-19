package §else§
{
   import §_-6r§.§_-7P§;
   import §_-F1§.§_-qp§;
   import §_-IV§.§_-qW§;
   import §_-OJ§.§_-vI§;
   import §_-Qx§.§_-Sf§;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-W0§.§_-MC§;
   import §_-ZA§.§_-tg§;
   import §_-dA§.§_-FO§;
   import §_-e3§.Base64;
   import §_-e3§.§_-9Y§;
   import §_-gY§.§_-Vu§;
   import §_-hU§.§_-MB§;
   import §_-hq§.§_-AD§;
   import §_-rQ§.§_-Ou§;
   import §_-y7§.§_-VA§;
   import §_-zL§.§_-Rv§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class StatePlay extends §_-6y§
   {
      
      public static const §_-Az§:String = "StatePlay";
      
      private static const §_-Bg§:Number = -10000.0;
      
      private static const §_-rL§:Number = 15000.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-Az§ = "StatePlay";
            if(_loc1_ || StatePlay)
            {
               §_-Bg§ = -10 * 1000;
               if(_loc2_ && _loc2_)
               {
               }
               §§goto(addr56);
            }
            §_-rL§ = 15 * 1000;
         }
         addr56:
      }
      
      private var §_-1s§:Boolean = true;
      
      private var §_-2I§:Boolean = false;
      
      private var §_-iu§:Number = -10000.0;
      
      private var §_-Dx§:int = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            if(!(_loc2_ && _loc1_))
            {
               §_-NY§ = new §_-ru§(this);
               if(_loc1_ || _loc2_)
               {
                  §_-NY§.init(§_-BN§.native.Views.View_LevelPlay[0]);
               }
            }
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.levelStarted();
            if(_loc1_)
            {
               §_-Ou§.§_-yO§();
               if(!_loc2_)
               {
                  §§goto(addr30);
               }
            }
            §§goto(addr38);
         }
         addr30:
         §_-qW§.§_-6h§(§_-qW§.§_-2Y§,§_-Sf§.§_-vj§);
         if(!_loc2_)
         {
            §_-Ou§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
            addr38:
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            if(!(_loc1_ && _loc1_))
            {
               §_-MB§.§_-A7§.§_-Gf§(true);
               if(!_loc1_)
               {
                  this.§_-jg§();
                  addr40:
                  §_-NY§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
                  if(!_loc1_)
                  {
                     this.§_-tk§();
                     if(!_loc2_)
                     {
                     }
                  }
                  §§goto(addr62);
               }
               §_-FO§.§_-I8§(§_-NY§);
               §§goto(addr62);
            }
            §§goto(addr40);
         }
         addr62:
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.deActivate();
            if(_loc2_ || _loc1_)
            {
               this.§_-CW§();
               if(_loc1_ && this)
               {
               }
               §§goto(addr55);
            }
            this.§_-tk§();
         }
         addr55:
      }
      
      private function §_-CW§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         §§push(this.§_-2I§);
         if(!(_loc2_ && this))
         {
            if(!§§pop())
            {
               if(this.§_-iu§ > §_-rL§)
               {
                  this.§_-2I§ = true;
                  _loc1_ = Math.round(1000 / this.§_-iu§ * this.§_-Dx§);
                  if(_loc3_)
                  {
                     addr55:
                     if(§_-Vu§.§_-wB§)
                     {
                        §_-qW§.§_-6h§(§_-qW§.§_-X§,_loc1_.toString(),_loc1_);
                        if(_loc3_ || _loc2_)
                        {
                        }
                     }
                     else
                     {
                        §_-qW§.§_-6h§(§_-qW§.§_-Qz§,_loc1_.toString(),_loc1_);
                     }
                     §§goto(addr85);
                  }
               }
            }
            addr85:
            return;
         }
         §§goto(addr55);
      }
      
      private function §_-Pn§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.§_-iu§);
            if(_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§_-iu§ = §§pop();
            if(!(_loc4_ && _loc3_))
            {
               §§goto(addr38);
            }
            §§goto(addr44);
         }
         addr38:
         if(this.§_-iu§ > 0)
         {
            if(_loc5_)
            {
               addr44:
               var _loc2_:*;
               §§push((_loc2_ = this).§_-Dx§);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(!(_loc4_ && param1))
               {
                  _loc2_.§_-Dx§ = _loc3_;
               }
            }
         }
      }
      
      private function §_-tk§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-iu§ = §_-Bg§;
            if(_loc1_ || this)
            {
               this.§_-Dx§ = 0;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(§_-FO§.§_-GJ§)
            {
               if(!(_loc3_ && param1))
               {
                  addr26:
                  §§push(0);
                  if(!(_loc3_ && _loc3_))
                  {
                     return §§pop();
                  }
                  addr47:
                  §§push(int(§§pop()));
               }
               else
               {
                  addr35:
                  §§push(super.run(param1));
                  if(!_loc3_)
                  {
                     §§goto(addr47);
                  }
               }
               var _loc2_:* = §§pop();
               if(_loc4_)
               {
                  §§push(_loc2_);
                  if(_loc4_ || _loc2_)
                  {
                     if(§§pop() == §_-VA§.STATE_STATUS_RUNNING)
                     {
                        this.§_-Pn§(param1);
                        if(_loc4_)
                        {
                           addr69:
                           this.§_-jg§();
                           if(mNextState.length <= 0)
                           {
                              return §_-VA§.STATE_STATUS_RUNNING;
                           }
                        }
                        return §_-VA§.STATE_STATUS_COMPLETED;
                     }
                     return _loc2_;
                  }
               }
               §§goto(addr69);
            }
            §§goto(addr35);
         }
         §§goto(addr26);
      }
      
      override protected function levelCompleted() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc1_:String = "updateLevelProfile";
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         if(!_loc10_)
         {
            _loc3_.method = URLRequestMethod.POST;
            if(_loc11_ || this)
            {
               _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
            }
         }
         §§push(§_-Sf§.§_-vj§);
         if(!_loc10_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:Object = §_-MC§.§_-yg§(§_-Sf§.§_-vj§);
         var _loc6_:int = §_-uZ§.getScore();
         §§push(§_-Sf§.§_-mF§(_loc4_,_loc6_));
         if(_loc11_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Boolean = false;
         if(_loc11_)
         {
            _loc5_.stars = _loc7_;
            _loc5_.score = _loc6_;
         }
         §_-qW§.§_-6h§(§_-qW§.§_-5S§,_loc4_,_loc6_);
         if(_loc11_ || _loc2_)
         {
            _loc5_.blocks = §_-vI§.§_-iC§();
            if(!_loc10_)
            {
               _loc5_.gamePlay = §_-MB§.§_-A7§.§_-tt§().toString();
               if(_loc11_)
               {
                  _loc5_.security = this.§_-L3§(_loc4_,_loc5_);
                  if(_loc10_ && _loc2_)
                  {
                  }
               }
               §§goto(addr133);
            }
            _loc5_.security2 = this.§_-6S§(_loc4_,_loc5_);
         }
         addr133:
         var _loc9_:Object = {
            "type":_loc1_,
            "competition":§_-MC§.competition,
            "player":§_-MC§.§_-7w§,
            "levelProfile":_loc5_
         };
         _loc3_.data = "json=" + Base64.encode(§_-AD§.encode(_loc9_));
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         if(_loc11_ || _loc2_)
         {
            _loc2_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-wL§);
            _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
            _loc3_.url = §_-Qu§.§_-BK§;
            _loc2_.load(_loc3_);
         }
      }
      
      public function §_-L3§(param1:String, param2:Object) : String
      {
         return §_-tg§.§_-bG§([param1,param2.score,param2.stars,§_-MC§.competition,§_-MC§.§_-9H§.§_-Yv§,"dZx4QZwrL1bcKaRXLSDaAwSlq5uE1krj"].join("|"));
      }
      
      public function §_-6S§(param1:String, param2:Object) : String
      {
         return §_-tg§.§_-bG§([param1,§_-MC§.§_-9H§.§_-Yv§,param2.blocks,"dZx4QZwrL1bcKaRXLSDaAwSlq5uE1krj"].join("|"));
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §_-Rv§.§_-3a§((param1.currentTarget as URLLoader).data);
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  if(_loc2_.competition)
                  {
                     if(§_-MC§.competition != _loc2_.competition)
                     {
                        §_-MC§.competition = _loc2_.competition;
                     }
                  }
                  §§goto(addr52);
               }
               §_-MC§.levelProfile = _loc2_.levelProfile;
            }
         }
         addr52:
         if(_loc2_)
         {
            if(!(_loc3_ && this))
            {
               if(!_loc2_.isHighScore)
               {
               }
               §§goto(addr73);
            }
            §_-1S§.showNewHighscore();
         }
         addr73:
      }
      
      private function §_-wL§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-qT§(param1:IOErrorEvent) : void
      {
      }
      
      override public function getVictoryState() : String
      {
         return §_-Rk§.§_-Az§;
      }
      
      override public function getLoserState() : String
      {
         return §_-nZ§.§_-Az§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.keyDown(param1);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            if(param3 is §_-qp§)
            {
               if(_loc5_ || param3)
               {
                  §§push(param1);
                  if(_loc5_)
                  {
                     §§push(§_-7P§.LISTENER_EVENT_MOUSE_DOWN);
                     if(_loc5_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc6_ && this))
                           {
                              §_-9Y§.§_-gZ§();
                              if(_loc5_ || param1)
                              {
                                 var _loc4_:* = param2;
                                 addr69:
                                 if(!_loc6_)
                                 {
                                    if("CLOSE_TUTORIAL" === _loc4_)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(0);
                                          if(_loc6_)
                                          {
                                             addr155:
                                          }
                                       }
                                       else
                                       {
                                          addr145:
                                          §§push(2);
                                          if(!_loc6_)
                                          {
                                             §§goto(addr155);
                                          }
                                       }
                                       §§goto(addr160);
                                    }
                                    else if("PAUSE" === _loc4_)
                                    {
                                       if(!_loc6_)
                                       {
                                          addr138:
                                          §§push(1);
                                          if(_loc6_)
                                          {
                                             §§goto(addr155);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr145);
                                       }
                                       §§goto(addr160);
                                    }
                                    else
                                    {
                                       if("RESTART_LEVEL" === _loc4_)
                                       {
                                          §§goto(addr145);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                       addr160:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             §_-FO§.§_-OC§();
                                             if(!(_loc6_ && this))
                                             {
                                                break;
                                             }
                                             addr111:
                                             mNextState = §_-Jw§.§_-Az§;
                                             if(_loc5_)
                                             {
                                                addr117:
                                                break;
                                             }
                                             break;
                                          case 1:
                                             mNextState = §_-xb§.§_-Az§;
                                             if(_loc5_ || param1)
                                             {
                                                break;
                                             }
                                             §§goto(addr117);
                                             break;
                                          case 2:
                                             §_-Jw§.§_-h5§();
                                             if(_loc5_ || this)
                                             {
                                                §§goto(addr111);
                                             }
                                             §§goto(addr117);
                                       }
                                       return;
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr138);
                                 addr69:
                              }
                           }
                           §§goto(addr69);
                        }
                        else
                        {
                           addr57:
                           §§push(param1);
                           §§push(§_-7P§.LISTENER_EVENT_MOUSE_UP);
                        }
                        §§goto(addr69);
                     }
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc6_ && param2))
                        {
                           addr67:
                           §_-9Y§.§_-TK§();
                        }
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr57);
               }
            }
            §§goto(addr69);
         }
         §§goto(addr67);
      }
      
      private function §_-jg§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = §_-uZ§.getScore();
         if(_loc3_ || _loc1_)
         {
            §_-NY§.setText(_loc1_.toString(),"TextField_CurrentScore");
         }
         §§push(§_-Qu§.§_-di§.§_-xN§(§_-Sf§.§_-vj§));
         if(_loc3_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §_-NY§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
         }
      }
   }
}
