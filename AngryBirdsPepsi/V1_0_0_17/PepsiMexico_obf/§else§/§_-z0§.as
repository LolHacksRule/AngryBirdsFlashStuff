package §else§
{
   import §_-6r§.§_-7P§;
   import §_-6r§.§_-h3§;
   import §_-F1§.§_-V1§;
   import §_-F1§.§_-qp§;
   import §_-IV§.§_-qW§;
   import §_-PD§.HighscoreSidebar;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-e3§.Base64;
   import §_-e3§.§_-54§;
   import §_-hU§.§_-MB§;
   import §_-hq§.§_-AD§;
   import §_-y7§.§_-VA§;
   import §_-zL§.§_-5B§;
   import §_-zL§.§_-Rv§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-z0§ extends §_-iL§
   {
      
      public static const §_-Az§:String = "RegisterState";
      
      public static var §_-RA§:String;
      
      public static var §_-UZ§:String;
      
      private static var §_-XV§:String;
      
      private static var §_-DD§:String;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §_-Az§ = "RegisterState";
         }
      }
      
      private var §_-rq§:String = "";
      
      private var §_-sQ§:Boolean = false;
      
      private var §_-IZ§:§_-qp§;
      
      private var §_-hI§:§_-qp§;
      
      public function §_-z0§(param1:Boolean = false, param2:String = "RegisterState")
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
         if(_loc2_)
         {
            super.init();
            if(_loc2_ || this)
            {
               §§goto(addr32);
            }
            §§goto(addr51);
         }
         addr32:
         §_-NY§ = new §_-ru§(this);
         if(_loc2_ || _loc1_)
         {
            addr51:
            §_-NY§.init(§_-BN§.native.Views.View_Register[0]);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = super.run(param1);
         if(_loc4_ || this)
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               if(§§pop() != §_-VA§.STATE_STATUS_RUNNING)
               {
                  if(_loc4_)
                  {
                     §§push(_loc2_);
                  }
                  else
                  {
                     §§goto(addr71);
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
                     §§goto(addr71);
                  }
                  §§goto(addr71);
               }
               §§goto(addr71);
            }
            return §§pop();
         }
         addr71:
         return §_-VA§.STATE_STATUS_RUNNING;
      }
      
      override public function activate() : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         super.activate();
         §_-MB§.§_-A7§.§_-Gf§(false);
         if(_loc12_)
         {
            this.§_-IZ§ = §_-NY§.getItemByName("Button_Male") as §_-qp§;
            this.§_-hI§ = §_-NY§.getItemByName("Button_Female") as §_-qp§;
            if(_loc12_)
            {
               addr37:
               this.§_-IZ§.setComponentState(§_-h3§.§_-sp§);
            }
            this.§_-hI§.setComponentState(§_-h3§.§_-sp§);
            var _loc1_:§_-h3§ = §_-NY§.getItemByName("Checkbox_Marketing") as §_-h3§;
            if(_loc12_ || _loc2_)
            {
               _loc1_.setComponentState(§_-h3§.§_-sp§);
               if(!_loc13_)
               {
                  addr67:
                  this.§_-sQ§ = false;
               }
               var _loc2_:String = "a-z A-Z 0-9 àáâäãåèéêëìíîïòóôöõøùúûüÿýñçÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑßÇŒÆ∂ð .\'\\-";
               var _loc3_:String = "a-z     0-9  \'\\-_@.";
               var _loc4_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
               var _loc5_:§_-V1§ = §_-NY§.getItemByName("TextField_UserNameField") as §_-V1§;
               var _loc6_:§_-V1§ = §_-NY§.getItemByName("TextField_PasswordField") as §_-V1§;
               var _loc7_:§_-V1§ = §_-NY§.getItemByName("TextField_PasswordFieldRepeat") as §_-V1§;
               if(_loc12_ || _loc1_)
               {
                  _loc5_.§_-hJ§.restrict = _loc2_;
                  if(!(_loc13_ && _loc1_))
                  {
                     _loc7_.§_-hJ§.restrict = _loc2_;
                     if(!(_loc13_ && _loc1_))
                     {
                        addr136:
                        _loc6_.§_-hJ§.restrict = _loc2_;
                     }
                     var _loc8_:§_-V1§;
                     (_loc8_ = §_-NY§.getItemByName("TextField_EmailField") as §_-V1§).§_-hJ§.restrict = _loc3_;
                     var _loc9_:§_-V1§;
                     (_loc9_ = §_-NY§.getItemByName("TextField_AgeField") as §_-V1§).§_-hJ§.restrict = "0-9";
                     var _loc10_:§_-V1§;
                     (_loc10_ = §_-NY§.getItemByName("TextField_FullNameField") as §_-V1§).§_-hJ§.restrict = _loc2_;
                     var _loc11_:§_-V1§;
                     (_loc11_ = §_-NY§.getItemByName("TextField_ZipCodeField") as §_-V1§).§_-hJ§.restrict = "0-9";
                     §_-NY§.setText("","TextField_UserNameField");
                     if(_loc12_)
                     {
                        §_-NY§.setText("","TextField_PasswordField");
                        if(!(_loc13_ && _loc1_))
                        {
                           §_-NY§.setText("","TextField_PasswordFieldRepeat");
                           §§goto(addr205);
                        }
                        §§goto(addr231);
                     }
                     addr205:
                     §_-NY§.setText("","TextField_EmailField");
                     §_-NY§.setText("","TextField_AgeField");
                     §_-NY§.setText("","TextField_FullNameField");
                     if(!(_loc13_ && _loc2_))
                     {
                        addr231:
                        §_-NY§.setText("","TextField_ZipCodeField");
                        §_-1S§.changeState(HighscoreSidebar.§_-x1§);
                     }
                     return;
                  }
               }
               §§goto(addr136);
            }
            §§goto(addr67);
         }
         §§goto(addr37);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§_-h3§ = null;
         var _loc5_:* = param2;
         if(_loc7_)
         {
            if("MALE" === _loc5_)
            {
               if(!_loc6_)
               {
                  addr130:
                  §§push(0);
                  if(_loc6_ && param1)
                  {
                     addr171:
                  }
               }
               else
               {
                  addr184:
                  §§push(4);
                  if(_loc6_)
                  {
                  }
               }
               §§goto(addr199);
            }
            else
            {
               if("FEMALE" === _loc5_)
               {
                  if(!_loc6_)
                  {
                     §§push(1);
                     if(_loc6_ && this)
                     {
                        §§goto(addr171);
                     }
                  }
                  else
                  {
                     addr177:
                     §§push(3);
                     if(_loc7_)
                     {
                        addr180:
                     }
                  }
               }
               else if("CANCEL" === _loc5_)
               {
                  if(_loc7_ || param2)
                  {
                     §§push(2);
                     if(!(_loc6_ && param2))
                     {
                        §§goto(addr171);
                     }
                     else
                     {
                        §§goto(addr180);
                     }
                  }
                  else
                  {
                     §§goto(addr177);
                  }
               }
               else
               {
                  if("SUBMIT" === _loc5_)
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr177);
                     }
                     else
                     {
                        §§goto(addr184);
                     }
                  }
                  else if("CHECKBOX_CHANGE" === _loc5_)
                  {
                     §§goto(addr184);
                  }
                  else
                  {
                     §§push(5);
                  }
                  §§goto(addr184);
               }
               addr199:
               switch(§§pop())
               {
                  case 0:
                     §§push(this.§_-IZ§);
                     if(!_loc6_)
                     {
                        §§push(§_-h3§.§_-1M§);
                        if(!(_loc6_ && this))
                        {
                           §§pop().setComponentState(§§pop());
                           §§push(this.§_-hI§);
                           if(_loc7_)
                           {
                              §§push(§_-h3§.§_-sp§);
                              if(_loc7_ || this)
                              {
                                 §§pop().setComponentState(§§pop());
                                 this.§_-rq§ = "m";
                                 break;
                              }
                           }
                           else
                           {
                              addr59:
                              §§push(§_-h3§.§_-1M§);
                           }
                           §§pop().setComponentState(§§pop());
                           this.§_-rq§ = "f";
                           break;
                        }
                        addr56:
                        §§pop().setComponentState(§§pop());
                        §§push(this.§_-hI§);
                        §§goto(addr59);
                     }
                     else
                     {
                        addr54:
                        §§push(§_-h3§.§_-sp§);
                     }
                     §§goto(addr56);
                  case 1:
                     §§goto(addr54);
                  case 2:
                     mNextState = §_-mk§.§_-Az§;
                     break;
                  case 3:
                     this.§_-kC§();
                     break;
                  case 4:
                     _loc4_ = §_-NY§.getItemByName("Checkbox_Marketing") as §_-h3§;
                     §§push(this.§_-IZ§);
                     if(_loc7_)
                     {
                        §§push(this);
                        §§push(this.§_-sQ§);
                        if(_loc7_)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().§_-sQ§ = §§pop();
                        if(_loc7_)
                        {
                           if(this.§_-sQ§)
                           {
                              if(!_loc6_)
                              {
                                 addr107:
                                 _loc4_.setComponentState(§_-h3§.§_-1M§);
                                 if(!_loc7_)
                                 {
                                 }
                                 addr118:
                                 break;
                              }
                           }
                           else
                           {
                              _loc4_.setComponentState(§_-h3§.§_-sp§);
                           }
                           §§goto(addr118);
                        }
                     }
                     §§goto(addr107);
               }
               return;
            }
            §§goto(addr184);
         }
         §§goto(addr130);
      }
      
      private function §_-kC§() : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         if(!_loc20_)
         {
            this.§_-4j§("");
         }
         var _loc1_:String = "registerPlayer";
         var _loc2_:String = §_-NY§.getText("TextField_UserNameField");
         var _loc3_:String = §_-NY§.getText("TextField_PasswordField");
         var _loc4_:String = §_-NY§.getText("TextField_PasswordFieldRepeat");
         var _loc5_:String = §_-NY§.getText("TextField_EmailField");
         var _loc6_:String = §_-NY§.getText("TextField_AgeField");
         var _loc7_:String = §_-NY§.getText("TextField_FullNameField");
         var _loc8_:String = §_-NY§.getText("TextField_ZipCodeField");
         §§push(this.§_-rq§);
         if(!_loc20_)
         {
            §§push(§§pop());
         }
         var _loc9_:* = §§pop();
         §§push(this.§_-sQ§);
         if(_loc19_ || this)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(_loc19_ || _loc1_)
         {
            §_-XV§ = _loc5_;
            if(_loc19_ || _loc3_)
            {
               §_-DD§ = _loc3_;
            }
         }
         var _loc11_:int = 5;
         var _loc12_:int = 5;
         if(_loc19_ || _loc3_)
         {
            §§push(_loc2_);
            if(!(_loc20_ && this))
            {
               if(§§pop().length < _loc11_)
               {
                  this.§_-4j§(§_-5B§.§_-X8§.NICKNAME_LENGTH);
                  return;
               }
               §§push(_loc3_);
               if(_loc19_)
               {
                  §§goto(addr123);
               }
               §§goto(addr137);
            }
            addr123:
            if(§§pop().length < _loc12_)
            {
               if(_loc19_)
               {
                  §§goto(addr128);
               }
            }
            else
            {
               addr137:
               if(_loc3_ != _loc4_)
               {
                  this.§_-4j§(§_-5B§.§_-X8§.PASSWORDS_DONT_MATCH);
                  return;
               }
            }
            var _loc13_:RegExp;
            if(!(_loc13_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
            {
               if(_loc19_ || this)
               {
                  this.§_-4j§(§_-5B§.§_-X8§.EMAIL_LOWERCASE);
                  return;
               }
            }
            else
            {
               §§push(_loc5_);
               if(_loc19_)
               {
                  if(§§pop().length < 1)
                  {
                     if(!(_loc20_ && _loc1_))
                     {
                        §§goto(addr187);
                     }
                  }
                  §§push(_loc6_);
               }
               if(§§pop().length < 1)
               {
                  this.§_-4j§(§_-5B§.§_-X8§.AGE_REQUIRED);
                  return;
               }
               var _loc14_:int;
               if((_loc14_ = int(_loc6_)) < 13)
               {
                  if(_loc19_)
                  {
                     this.§_-4j§(§_-5B§.§_-X8§.AGE_UNDER_13);
                     if(!_loc19_)
                     {
                        addr221:
                        var _loc15_:URLLoader = new URLLoader();
                        var _loc16_:URLRequest;
                        (_loc16_ = new URLRequest()).method = URLRequestMethod.POST;
                        if(_loc19_)
                        {
                           _loc15_.dataFormat = URLLoaderDataFormat.TEXT;
                        }
                        var _loc17_:Object;
                        (_loc17_ = {}).nickName = _loc2_;
                        _loc17_.password = _loc3_;
                        if(_loc19_)
                        {
                           _loc17_.id = _loc5_;
                        }
                        _loc17_.age = int(_loc6_);
                        _loc17_.marketing = _loc10_;
                        §§push(_loc7_);
                        if(!_loc20_)
                        {
                           if(§§pop().length > 0)
                           {
                              if(!_loc20_)
                              {
                                 _loc17_.name = _loc7_;
                                 if(!(_loc20_ && this))
                                 {
                                    addr279:
                                    §§push(_loc8_);
                                    if(_loc19_)
                                    {
                                       if(§§pop().length > 0)
                                       {
                                          _loc17_.zipcode = _loc8_;
                                          if(!_loc19_)
                                          {
                                          }
                                          §§goto(addr299);
                                       }
                                       addr291:
                                       if(_loc9_.length > 0)
                                       {
                                          if(_loc19_)
                                          {
                                             addr296:
                                             _loc17_.gender = _loc9_;
                                          }
                                       }
                                    }
                                    §§goto(addr291);
                                 }
                                 addr299:
                                 var _loc18_:Object = {
                                    "type":_loc1_,
                                    "player":_loc17_
                                 };
                                 if(_loc19_ || _loc2_)
                                 {
                                    _loc16_.data = "json=" + Base64.encode(§_-AD§.encode(_loc18_));
                                    _loc15_.addEventListener(Event.COMPLETE,this.onComplete);
                                    if(_loc19_)
                                    {
                                       _loc15_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-wL§);
                                       if(_loc19_)
                                       {
                                          _loc15_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
                                       }
                                       _loc16_.url = §_-Qu§.§_-BK§;
                                       if(_loc19_)
                                       {
                                          _loc15_.load(_loc16_);
                                       }
                                       §§goto(addr365);
                                    }
                                    §_-NY§.getItemByName("WaitingPopup").setVisibility(true);
                                 }
                                 addr365:
                                 return;
                              }
                              §§goto(addr296);
                           }
                           §§goto(addr279);
                        }
                        §§goto(addr291);
                     }
                  }
                  return;
               }
               §§goto(addr221);
            }
            addr187:
            this.§_-4j§(§_-5B§.§_-X8§.EMAIL_REQUIRED);
            return;
         }
         addr128:
         this.§_-4j§(§_-5B§.§_-X8§.PASSWORD_LENGTH);
      }
      
      private function §_-wL§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §_-54§.log(param1.toString());
         }
      }
      
      private function §_-qT§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §_-54§.log("IO error: " + param1.errorID);
            if(_loc3_)
            {
               §_-DD§ = null;
               if(!(_loc2_ && param1))
               {
                  §_-XV§ = null;
                  addr46:
                  if(_loc2_)
                  {
                  }
                  §§goto(addr63);
               }
               §_-NY§.getItemByName("WaitingPopup").setVisibility(false);
               addr63:
               return;
            }
         }
         §§goto(addr46);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(!(_loc5_ && this))
         {
            §_-NY§.getItemByName("WaitingPopup").setVisibility(false);
         }
         var _loc2_:Object = §_-Rv§.§_-3a§((param1.currentTarget as URLLoader).data);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.security)
         {
            §§push(§_-NY§.getText("TextField_UserNameField"));
            if(_loc6_ || param1)
            {
               _loc3_ = §§pop();
               §_-RA§ = §_-XV§;
               §_-UZ§ = §_-DD§;
               if(!_loc5_)
               {
                  mNextState = §_-mk§.§_-Az§;
                  §_-qW§.§_-6h§(§_-qW§.§_-8g§);
                  if(_loc5_)
                  {
                     addr110:
                     §§push(§_-5B§.§_-ns§(_loc2_.field));
                     if(!_loc5_)
                     {
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           _loc4_ = §§pop();
                           addr120:
                           §§push(_loc4_);
                           if(_loc6_ || param1)
                           {
                              addr128:
                              §§push(§§pop() + §_-5B§.§_-rm§(_loc2_.error));
                           }
                        }
                     }
                     _loc4_ = §§pop();
                     addr135:
                     this.§_-4j§(_loc4_);
                     §_-qW§.§_-6h§(§_-qW§.§_-Uy§);
                  }
                  §§goto(addr149);
               }
               §§goto(addr120);
            }
            §§goto(addr128);
         }
         else if(_loc2_.error)
         {
            if(!(_loc5_ && _loc3_))
            {
               _loc4_ = "";
               if(_loc6_ || this)
               {
                  if(_loc2_.field)
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr110);
                     }
                  }
                  §§goto(addr120);
               }
               §§goto(addr135);
            }
            §§goto(addr110);
         }
         addr149:
         §_-XV§ = null;
         §_-DD§ = null;
      }
      
      private function §_-4j§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §_-1S§.showHelpText(param1);
         }
      }
   }
}
