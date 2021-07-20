package §else§
{
   import §_-6r§.§_-7P§;
   import §_-6r§.§_-h3§;
   import §_-PD§.HighscoreSidebar;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-W0§.§_-MC§;
   import §_-ZI§.§_-9v§;
   import §_-e3§.Base64;
   import §_-e3§.§_-54§;
   import §_-hU§.§_-MB§;
   import §_-hq§.§_-AD§;
   import §_-y7§.§_-VA§;
   import §_-zL§.§_-5B§;
   import §_-zL§.§_-Rv§;
   import §_-zL§.§_-Zq§;
   import flash.events.AsyncErrorEvent;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.NetStatusEvent;
   import flash.events.SyncEvent;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-mk§ extends §_-iL§
   {
      
      public static const §_-Az§:String = "LoginState";
      
      public static const §_-0§:String = "userLoggedIn";
      
      public static var §_-zl§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-Az§ = "LoginState";
            if(_loc2_)
            {
               §_-0§ = "userLoggedIn";
               if(_loc2_)
               {
                  addr33:
                  §_-zl§ = false;
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      private var §_-GS§:Boolean;
      
      private var §_-Jp§:SharedObject;
      
      public function §_-mk§(param1:Boolean = false, param2:String = "LoginState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_ || param1)
         {
            §§pop().§§slot[1] = param1;
            if(_loc6_)
            {
               §§goto(addr31);
            }
            §§goto(addr35);
         }
         addr31:
         var name:String = param2;
         if(_loc6_)
         {
            addr35:
            super(initObject,name);
         }
         try
         {
            this.§_-Jp§ = SharedObject.getLocal("loginData");
            if(!_loc5_)
            {
               this.§_-Jp§.addEventListener(NetStatusEvent.NET_STATUS,this.§_-nz§);
               if(_loc6_)
               {
                  this.§_-Jp§.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.§_-wY§);
                  if(!_loc5_)
                  {
                     addr73:
                     this.§_-Jp§.addEventListener(SyncEvent.SYNC,this.§_-AY§);
                  }
                  §§goto(addr101);
               }
            }
            §§goto(addr73);
         }
         catch(e:*)
         {
         }
         addr101:
      }
      
      private function §_-AY§(param1:SyncEvent) : void
      {
      }
      
      private function §_-wY§(param1:AsyncErrorEvent) : void
      {
      }
      
      private function §_-nz§(param1:NetStatusEvent) : void
      {
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
               addr32:
               §_-NY§ = new §_-ru§(this);
               if(_loc2_)
               {
                  §_-NY§.init(§_-BN§.native.Views.View_Login[0]);
               }
            }
            return;
         }
         §§goto(addr32);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.activate();
            if(_loc3_)
            {
               §_-MB§.§_-A7§.§_-Gf§(false);
               if(!_loc4_)
               {
                  addr25:
                  this.§_-GS§ = false;
               }
               §§push(this.§_-oW§());
               if(_loc3_ || this)
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc1_:* = §§pop();
               if(!_loc4_)
               {
                  if(this.§_-Jp§.data.rememberMe)
                  {
                     if(_loc3_ || _loc1_)
                     {
                        this.§_-GS§ = true;
                     }
                  }
               }
               var _loc2_:§_-h3§ = §_-NY§.getItemByName("Checkbox_RememberMe") as §_-h3§;
               §§push(this.§_-GS§);
               if(_loc3_ || this)
               {
                  if(§§pop())
                  {
                     _loc2_.setComponentState(§_-h3§.§_-1M§);
                  }
                  else
                  {
                     _loc2_.setComponentState(§_-h3§.§_-sp§);
                  }
                  §§push(§_-z0§.§_-UZ§);
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc3_ || _loc3_)
                     {
                        addr106:
                        if(§§pop())
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §§pop();
                              addr118:
                              §§push(Boolean(§_-z0§.§_-RA§));
                              if(_loc4_)
                              {
                              }
                           }
                           §§goto(addr140);
                        }
                        if(§§pop())
                        {
                           §_-NY§.setText(§_-z0§.§_-RA§,"TextField_UserNameField");
                           §_-NY§.setText(§_-z0§.§_-UZ§,"TextField_PasswordField");
                           if(_loc3_ || _loc3_)
                           {
                              addr139:
                              addr140:
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    this.§_-j7§();
                                    addr145:
                                    this.§_-W9§();
                                    §§goto(addr147);
                                 }
                                 §§goto(addr159);
                              }
                              addr147:
                              §_-zl§ = false;
                              if(_loc3_)
                              {
                                 addr159:
                                 §_-1S§.changeState(HighscoreSidebar.§_-x1§);
                                 if(_loc3_)
                                 {
                                    §_-1S§.hideLogos();
                                 }
                              }
                              return;
                              §§push(§_-zl§);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr118);
               }
               §§goto(addr106);
            }
         }
         §§goto(addr25);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = super.run(param1);
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() != §_-VA§.STATE_STATUS_RUNNING)
               {
                  if(_loc4_)
                  {
                     §§goto(addr42);
                  }
               }
               else if(mNextState.length > 0)
               {
                  if(!(_loc3_ && this))
                  {
                     §§goto(addr68);
                  }
               }
               return §_-VA§.STATE_STATUS_RUNNING;
            }
            addr42:
            return _loc2_;
         }
         addr68:
         return §_-VA§.STATE_STATUS_COMPLETED;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§_-h3§ = null;
         var _loc5_:* = param2;
         if(_loc6_ || this)
         {
            if("SUBMIT" === _loc5_)
            {
               if(!(_loc7_ && param1))
               {
                  addr104:
                  §§push(0);
                  if(!_loc6_)
                  {
                     addr130:
                  }
               }
               else
               {
                  addr118:
                  §§push(1);
                  if(!_loc6_)
                  {
                     addr144:
                  }
               }
            }
            else
            {
               if("REGISTER" === _loc5_)
               {
                  if(_loc6_ || param3)
                  {
                     §§goto(addr118);
                  }
               }
               else if("CHECKBOX_CHANGE" === _loc5_)
               {
                  if(!_loc7_)
                  {
                     §§push(2);
                     if(_loc6_)
                     {
                        §§goto(addr130);
                     }
                  }
               }
               else if("FORGOT_PASSWORD" !== _loc5_)
               {
                  addr149:
                  switch(§§pop())
                  {
                     case 0:
                        this.§_-kS§();
                        if(!_loc7_)
                        {
                           break;
                        }
                        addr35:
                        break;
                     case 1:
                        mNextState = §_-z0§.§_-Az§;
                        if(_loc6_ || param1)
                        {
                           §§goto(addr35);
                        }
                        break;
                     case 2:
                        _loc4_ = §_-NY§.getItemByName("Checkbox_RememberMe") as §_-h3§;
                        §§push(this);
                        §§push(this.§_-GS§);
                        if(_loc6_)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().§_-GS§ = §§pop();
                        if(!_loc6_)
                        {
                           addr82:
                           break;
                        }
                        if(this.§_-GS§)
                        {
                           if(!_loc7_)
                           {
                              _loc4_.setComponentState(§_-h3§.§_-1M§);
                           }
                           else
                           {
                              addr67:
                              this.§_-j7§();
                           }
                           break;
                        }
                        _loc4_.setComponentState(§_-h3§.§_-sp§);
                        §§goto(addr67);
                        break;
                     case 3:
                        mNextState = §_-PC§.§_-Az§;
                        §§goto(addr82);
                  }
                  return;
                  §§push(4);
               }
               §§goto(addr149);
               if(!_loc7_)
               {
                  §§goto(addr144);
               }
            }
            §§goto(addr149);
         }
         §§goto(addr104);
      }
      
      private function §_-kS§() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc1_:String = "login";
         var _loc2_:String = §_-NY§.getText("TextField_UserNameField");
         var _loc3_:String = §_-NY§.getText("TextField_PasswordField");
         §§push(_loc2_);
         if(!_loc8_)
         {
            if(§§pop().length == 0)
            {
               if(!(_loc8_ && _loc2_))
               {
                  this.§_-4j§(§_-5B§.§_-X8§.EMAIL_REQUIRED);
               }
               return;
            }
            §§push(_loc3_);
         }
         if(§§pop().length == 0)
         {
            if(_loc9_)
            {
               this.§_-4j§(§_-5B§.§_-X8§.PASSWORD_MISSING);
               return;
            }
         }
         var _loc4_:URLLoader = new URLLoader();
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         if(_loc9_ || this)
         {
            _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         }
         var _loc6_:Object;
         (_loc6_ = {}).id = _loc2_;
         if(!(_loc8_ && _loc1_))
         {
            _loc6_.password = _loc3_;
         }
         var _loc7_:Object = {
            "type":_loc1_,
            "player":_loc6_
         };
         if(_loc9_)
         {
            _loc5_.data = "json=" + Base64.encode(§_-AD§.encode(_loc7_));
            _loc4_.addEventListener(Event.COMPLETE,this.onComplete);
            _loc4_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-wL§);
            if(!_loc8_)
            {
               _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
               if(!_loc8_)
               {
                  addr145:
                  _loc5_.url = §_-Qu§.§_-BK§;
                  §§goto(addr149);
               }
               §§goto(addr174);
            }
            addr149:
            _loc4_.load(_loc5_);
            if(_loc9_ || _loc3_)
            {
               §_-NY§.getItemByName("WaitingPopup").setVisibility(true);
               if(this.§_-GS§)
               {
                  addr174:
                  this.§_-Y4§(_loc2_,_loc3_);
               }
            }
            return;
         }
         §§goto(addr145);
      }
      
      private function §_-oW§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = null;
         var _loc2_:String = null;
         §§push(Boolean(this.§_-Jp§.data.id));
         if(!(_loc4_ && _loc2_))
         {
            if(§§pop())
            {
               if(_loc3_ || this)
               {
                  §§pop();
                  §§push(Boolean(this.§_-Jp§.data.password));
                  if(!_loc4_)
                  {
                     addr48:
                     if(§§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§_-Zq§.§_-Eu§(this.§_-Jp§.data.id));
                           if(_loc3_)
                           {
                              §§push(§§pop());
                              if(_loc3_ || _loc1_)
                              {
                                 _loc1_ = §§pop();
                                 if(!_loc4_)
                                 {
                                    §§push(§_-Zq§.§_-Eu§(this.§_-Jp§.data.password));
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§goto(addr96);
                                    }
                                    addr96:
                                    _loc2_ = §§pop();
                                    if(_loc3_)
                                    {
                                       addr99:
                                       §_-NY§.setText(_loc1_,"TextField_UserNameField");
                                       §_-NY§.setText(_loc2_,"TextField_PasswordField");
                                       if(_loc4_ && this)
                                       {
                                       }
                                    }
                                    §§goto(addr126);
                                 }
                                 §§push(true);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr124);
                                 }
                                 else
                                 {
                                    §§goto(addr126);
                                 }
                              }
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr126);
                  }
                  addr124:
                  return §§pop();
               }
               §§goto(addr126);
            }
            §§goto(addr48);
         }
         addr126:
         return false;
      }
      
      private function §_-Y4§(param1:String, param2:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§pop().§§slot[1] = §§pop();
               §§push(§§newactivation());
               if(_loc5_)
               {
                  addr28:
                  §§pop().§§slot[2] = param2;
                  §§push(§§newactivation());
                  if(!(_loc6_ && param2))
                  {
                     §§pop().§§slot[3] = §_-NY§.getText("TextField_UserNameField");
                     §§push(§§newactivation());
                     if(_loc6_ && _loc3_)
                     {
                     }
                     §§goto(addr74);
                  }
                  §§pop().§§slot[4] = §_-NY§.getText("TextField_PasswordField");
                  §§push(§§newactivation());
                  if(!_loc6_)
                  {
                     §§pop().§§slot[3] = §_-Zq§.§_-L6§(idLocal);
                     addr58:
                     if(!_loc6_)
                     {
                        addr74:
                        §§pop().§§slot[4] = §_-Zq§.§_-L6§(passwordLocal);
                        if(!(_loc6_ && this))
                        {
                           this.§_-Jp§.data.id = idLocal;
                           if(_loc5_ || param1)
                           {
                              this.§_-Jp§.data.password = passwordLocal;
                              this.§_-Jp§.data.rememberMe = this.§_-GS§;
                           }
                        }
                        try
                        {
                           addr112:
                           this.§_-Jp§.flush();
                        }
                        catch(e:*)
                        {
                        }
                        return;
                        §§push(§§newactivation());
                     }
                     §§goto(addr112);
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr28);
         }
         §§goto(addr58);
      }
      
      private function §_-wL§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §_-54§.log(param1.toString());
         }
      }
      
      private function §_-qT§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §_-54§.log("IO error: " + param1.errorID);
            if(!(_loc2_ && this))
            {
               §§goto(addr36);
            }
            §§goto(addr55);
         }
         addr36:
         this.§_-4j§(§_-5B§.§_-X8§.CONNECTION_ERROR_RETRY);
         if(_loc3_ || _loc3_)
         {
            addr55:
            §_-NY§.getItemByName("WaitingPopup").setVisibility(false);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:String = null;
         if(!(_loc5_ && this))
         {
            §_-NY§.getItemByName("WaitingPopup").setVisibility(false);
         }
         var _loc2_:Object = §_-Rv§.§_-3a§((param1.currentTarget as URLLoader).data);
         if(_loc4_ || _loc2_)
         {
            if(_loc2_ == null)
            {
               return;
            }
            if(_loc2_.security)
            {
               if(_loc4_)
               {
                  _loc3_ = §_-NY§.getText("TextField_UserNameField");
                  if(!(_loc5_ && _loc2_))
                  {
                     §_-MC§.§_-9H§ = new §_-9v§();
                     §§push(§_-MC§.§_-9H§);
                     if(_loc4_ || _loc2_)
                     {
                        §§pop().name = _loc2_.nickName;
                        if(_loc4_ || this)
                        {
                           §§push(§_-MC§.§_-9H§);
                           if(!(_loc5_ && _loc2_))
                           {
                              addr104:
                              §§pop().§_-Yv§ = _loc2_.id;
                              §§push(§_-MC§.§_-9H§);
                           }
                           §§pop().§_-le§ = _loc2_.security;
                           if(!(_loc5_ && this))
                           {
                              §_-MC§.levelProfile = _loc2_.levelProfile;
                              if(!(_loc5_ && this))
                              {
                                 if(_loc2_.competition)
                                 {
                                    §_-MC§.competition = _loc2_.competition;
                                 }
                              }
                           }
                           §§goto(addr137);
                        }
                        mNextState = §_-pX§.§_-Az§;
                        addr145:
                        §§goto(addr137);
                     }
                  }
                  §§goto(addr104);
               }
               §§goto(addr137);
            }
            else if(_loc2_.error)
            {
               if(!(_loc5_ && _loc2_))
               {
                  this.§_-4j§(§_-5B§.§_-rm§(_loc2_.error));
               }
            }
            addr137:
            §_-1S§.reloadAllScores();
            if(!_loc4_)
            {
            }
            return;
         }
         §§goto(addr145);
      }
      
      private function §_-4j§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §_-1S§.showHelpText("Error:\n" + param1);
         }
      }
      
      public function §_-j7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§_-Jp§)
            {
               if(_loc1_ || this)
               {
                  this.§_-Jp§.clear();
               }
            }
         }
      }
      
      public function §_-W9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-NY§.setText("","TextField_UserNameField");
            if(_loc2_)
            {
               addr29:
               §_-NY§.setText("","TextField_PasswordField");
            }
            return;
         }
         §§goto(addr29);
      }
   }
}
