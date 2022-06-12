package §'!s§
{
   import § !9§.§'!J§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §,V§.§'"5§;
   import §-!q§.§&O§;
   import §2!i§.§'M§;
   import §2!i§.§=!&§;
   import §4!e§.§-"E§;
   import §]!A§.;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class §0!F§ extends Popup
   {
      
      private static const §2!-§:String = "";
      
      private static const §+D§:String = "Email successfully submited!";
      
      private static const §#B§:String = "An error occured while submitting your email.";
      
      private static const §%§:String = "You have already entered the competition!";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §2!-§ = "";
            do
            {
               §+D§ = "Email successfully submited!";
               do
               {
                  §#B§ = "An error occured while submitting your email.";
                  do
                  {
                     §%§ = "You have already entered the competition!";
                  }
                  while(_loc2_ && _loc2_);
                  
               }
               while(_loc2_ && _loc2_);
               
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      private var §>t§:Boolean = false;
      
      private var §"!T§:StatePopupManager;
      
      private var § !W§:Boolean = false;
      
      private var §]J§:String = "";
      
      public function §0!F§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(§ "A§.§4[§.Views.PopupView_BrandedTournamentContestEnter[0],param1);
            while(true)
            {
               mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§`!a§);
               addr38:
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               this.§"!T§.addEventListener(§'"5§.§#2§,this.onUiInteraction);
               if(_loc5_)
               {
                  if(false)
                  {
                     loop2:
                     while(true)
                     {
                        this.§"!T§ = param2;
                        addr36:
                        addr54:
                        while(!_loc4_)
                        {
                           §§goto(addr38);
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
                  var _loc3_:TextField = (§]"3§.getItemByName("TextField_Email_Input") as §-"E§).mClip.text;
                  if(_loc5_ || param2)
                  {
                     if(_loc3_ != null)
                     {
                        while(true)
                        {
                           _loc3_.addEventListener(Event.CHANGE,this.§9H§);
                           while(true)
                           {
                           }
                        }
                        addr133:
                     }
                     do
                     {
                        this.§2k§();
                        do
                        {
                           this.§`"@§();
                        }
                        while(!(_loc5_ || param2));
                        
                        if(_loc4_)
                        {
                           continue;
                        }
                     }
                     while(!(_loc5_ || param1));
                     
                     return;
                  }
                  §§goto(addr133);
               }
               §§goto(addr36);
            }
         }
         §§goto(addr54);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.open(param1);
            do
            {
               AngryBirdsFP11.§@<§.§#m§();
            }
            while(!_loc3_);
            
         }
      }
      
      private function §9H§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ !W§ = this.§?A§();
            while(this.§ !W§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  ((§]"3§.getItemByName("TextField_Email_Input") as §-"E§).mClip.text as TextField).textColor = 0;
               }
               break;
            }
            return;
         }
         §§goto(addr56);
      }
      
      private function §`"@§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§0]§ = null;
         var _loc1_:String = §#6§.§ q§.stage.loaderInfo.parameters.accessToken;
         §§push(§-!l§);
         §§push("https://graph.facebook.com/me?fields=email&access_token=");
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop() + _loc1_);
            if(_loc4_ || this)
            {
               addr45:
               §§push(§§pop() + "&format=json");
            }
            var _loc2_:URLRequest = §§pop().§%""§(§§pop());
            if(_loc4_ || _loc2_)
            {
               _loc2_.method = URLRequestMethod.POST;
            }
            _loc3_ = new §0]§(null,1);
            if(_loc4_ || _loc2_)
            {
               _loc3_.addEventListener(Event.COMPLETE,this.§;Y§);
               while(true)
               {
                  _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§]!T§);
                  while(_loc4_ || _loc1_)
                  {
                     _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]!T§);
                     loop2:
                     while(!_loc5_)
                     {
                        _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
                        do
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                           continue loop2;
                        }
                        while(_loc3_.load(_loc2_), _loc5_ && _loc3_);
                        
                        return;
                     }
                  }
               }
            }
            §§goto(addr100);
         }
         §§goto(addr45);
      }
      
      public function §;Y§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§pop().§§slot[2] = null;
            if(!_loc4_)
            {
               addr30:
               var e:Event = param1;
            }
            try
            {
               var returnObject:Object = §'!J§.§0!>§((e.currentTarget as URLLoader).data);
               if(_loc5_)
               {
                  this.§]J§ = returnObject.email;
               }
               loop0:
               while(true)
               {
                  (§]"3§.getItemByName("TextField_Email_Input") as §-"E§).setText(this.§]J§);
                  while(true)
                  {
                     while(true)
                     {
                        this.§[Z§();
                        do
                        {
                           this.§9H§(null);
                        }
                        while(!(_loc5_ || param1));
                        
                        if(_loc4_ && this)
                        {
                           break;
                        }
                        if(_loc5_)
                        {
                           if(true)
                           {
                              return;
                           }
                           addr132:
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            catch(e:Error)
            {
               if(!(_loc4_ && param1))
               {
                  §]!T§(null);
               }
            }
            §§goto(addr132);
         }
         §§goto(addr30);
      }
      
      public function §]!T§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§]"3§.getItemByName("TextField_Email_Input") as §-"E§).setText(§2!-§);
            do
            {
               this.§[Z§();
            }
            while(_loc2_);
            
         }
      }
      
      private function §[Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            (§]"3§.getItemByName("MovieClip_Popup_Loading") as §=!&§).visible = false;
         }
      }
      
      private function §@"?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            (§]"3§.getItemByName("MovieClip_Popup_Loading") as §=!&§).visible = true;
         }
      }
      
      private function §`!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.close();
         }
      }
      
      private function onUiInteraction(param1:§'"5§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.uiInteractionHandler(param1.§"!k§,param1.§[2§,param1.§1!`§);
         }
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
         {
            §§push("CHECKBOX_CHANGE");
            if(!(_loc6_ && param3))
            {
               §§push(_loc4_);
               if(!(_loc6_ && param2))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || param3)
                     {
                        addr125:
                        §§push(0);
                        if(_loc6_ && param3)
                        {
                        }
                     }
                     else
                     {
                        addr201:
                        §§push(2);
                        if(!_loc6_)
                        {
                           addr204:
                        }
                        else
                        {
                           addr216:
                        }
                     }
                  }
                  else
                  {
                     §§push("TERMS_AND_CONDITIONS");
                     if(_loc5_ || this)
                     {
                        addr142:
                        §§push(_loc4_);
                        if(!(_loc6_ && this))
                        {
                           addr150:
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc6_ && this))
                              {
                                 §§push(1);
                                 if(_loc5_ || param1)
                                 {
                                    §§goto(addr221);
                                 }
                                 else
                                 {
                                    §§goto(addr204);
                                 }
                              }
                              §§goto(addr221);
                           }
                           else
                           {
                              §§push("SUBMIT_NAME_TO_COMPETITION");
                              if(_loc5_ || param1)
                              {
                                 §§push(_loc4_);
                                 if(_loc5_ || param2)
                                 {
                                    addr183:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc5_ || param3)
                                       {
                                          §§goto(addr201);
                                       }
                                       else
                                       {
                                          addr208:
                                          §§push(3);
                                          if(_loc5_ || param2)
                                          {
                                             §§goto(addr216);
                                          }
                                          §§goto(addr221);
                                       }
                                    }
                                    else
                                    {
                                       addr206:
                                       §§push("LOTUS_POPUP_LINK");
                                       §§push(_loc4_);
                                    }
                                    §§goto(addr208);
                                 }
                                 if(§§pop() !== §§pop())
                                 {
                                    addr221:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §§push(this);
                                          §§push(this.§>t§);
                                          if(_loc5_ || param1)
                                          {
                                             §§push(!§§pop());
                                          }
                                          §§pop().§>t§ = §§pop();
                                          if(_loc5_)
                                          {
                                             this.§2k§();
                                             break;
                                             addr66:
                                          }
                                          break;
                                       case 1:
                                          §%?§.§6!?§();
                                          addr44:
                                          break;
                                          addr62:
                                       case 2:
                                          this.§?!E§();
                                          addr49:
                                          if(!(_loc6_ && param3))
                                          {
                                             break;
                                          }
                                          §§goto(addr66);
                                          break;
                                       case 3:
                                          navigateToURL(new URLRequest("https://www.facebook.com/LotusRenaultGP"),"_blank");
                                          if(!_loc6_)
                                          {
                                             if(_loc5_ || this)
                                             {
                                                if(_loc5_ || param1)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr62);
                                                }
                                                §§goto(addr44);
                                             }
                                             else
                                             {
                                                §§goto(addr49);
                                             }
                                          }
                                    }
                                    return;
                                    §§push(4);
                                 }
                                 §§goto(addr221);
                              }
                              §§goto(addr206);
                           }
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr206);
                  }
                  §§goto(addr221);
               }
               §§goto(addr150);
            }
            §§goto(addr142);
         }
         §§goto(addr125);
      }
      
      private function §?!E§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:URLRequest = null;
         var _loc3_:§0]§ = null;
         var _loc4_:TextField = null;
         if(!_loc5_)
         {
            if(this.§ !W§)
            {
               if(!_loc5_)
               {
                  this.§@"?§();
                  if(_loc6_ || _loc3_)
                  {
                     addr45:
                     _loc1_ = encodeURIComponent((§]"3§.getItemByName("TextField_Email_Input") as §-"E§).§-W§());
                  }
               }
               §§push(§-!l§);
               §§push(AngryBirdsFP11.§76§ + "/tournamentdraw/");
               if(_loc6_ || _loc1_)
               {
                  §§push(§§pop() + _loc1_);
               }
               _loc2_ = §§pop().§%""§(§§pop());
               if(!_loc5_)
               {
                  _loc2_.method = URLRequestMethod.POST;
               }
               _loc3_ = new §0]§(null,1);
               if(!_loc5_)
               {
                  _loc3_.addEventListener(Event.COMPLETE,this.§=%§);
                  while(true)
                  {
                     _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§75§);
                     loop4:
                     while(_loc6_ || _loc1_)
                     {
                        _loc3_.load(_loc2_);
                        if(!(_loc6_ || _loc3_))
                        {
                           continue;
                        }
                        if(!_loc5_)
                        {
                           addr110:
                           if(_loc6_ || _loc1_)
                           {
                              if(true)
                              {
                                 §§goto(addr192);
                              }
                              while(true)
                              {
                                 _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
                                 continue loop4;
                              }
                              addr119:
                           }
                           else
                           {
                              while(true)
                              {
                                 _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§75§);
                                 §§goto(addr110);
                              }
                              addr147:
                           }
                        }
                        while(true)
                        {
                           §§goto(addr119);
                        }
                     }
                  }
               }
               §§goto(addr147);
            }
            else
            {
               if((_loc4_ = (§]"3§.getItemByName("TextField_Email_Input") as §-"E§).mClip.text as TextField).text.length < 1)
               {
                  if(_loc6_)
                  {
                     _loc4_.text = "Invalid email.";
                     if(_loc5_)
                     {
                     }
                     §§goto(addr192);
                  }
               }
               _loc4_.textColor = 16711680;
            }
            addr192:
            return;
         }
         §§goto(addr45);
      }
      
      public function §=%§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = (param1.currentTarget as URLLoader).data;
         if(!(_loc4_ && param1))
         {
            if(_loc2_.toUpperCase() != "SUCCESS")
            {
               §%?§.§4!>§();
               loop0:
               for(; _loc3_; this.close(),if(_loc4_ && param1)
               {
                  continue;
               },§§goto(addr31))
               {
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     addr100:
                     §&O§.§3!w§ = true;
                  }
                  §3T§.§67§.§=!w§(§&O§.STATE_NAME);
                  while(true)
                  {
                     this.close();
                     break loop0;
                  }
               }
               while(!(_loc3_ || _loc3_))
               {
                  §§goto(addr95);
               }
               addr31:
               return;
            }
            §§goto(addr100);
         }
         §§goto(addr95);
      }
      
      public function §75§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §%?§.§4!>§();
         }
         do
         {
            this.close();
         }
         while(!(_loc2_ || this));
         
      }
      
      private function §2k§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§=!&§ = §]"3§.getItemByName("Checkbox_TermsAndConditions") as §=!&§;
         var _loc2_:§=!&§ = §]"3§.getItemByName("Enter_Button") as §=!&§;
         if(_loc4_)
         {
            §§push(this.§>t§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     _loc1_.setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  do
                  {
                     _loc2_.setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     while(true)
                     {
                        continue loop0;
                     }
                  }
                  while(!_loc4_);
                  
                  addr34:
                  return;
               }
               addr128:
               _loc1_.setComponentState(§=!&§.§ !s§);
               while(true)
               {
                  _loc2_.setComponentState(§=!&§.§ !s§);
                  addr120:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            _loc2_.mClip.mouseEnabled = true;
            §§goto(addr79);
         }
      }
      
      private function §?A§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push((§]"3§.getItemByName("TextField_Email_Input") as §-"E§).§-W§());
         if(_loc4_)
         {
            §§push(§§pop().toLowerCase());
         }
         var _loc1_:* = §§pop();
         var _loc2_:RegExp = /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/;
         return _loc2_.test(_loc1_);
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§"!T§.removeEventListener(§'"5§.§#2§,this.onUiInteraction);
         }
         do
         {
            super.close();
         }
         while(_loc1_);
         
      }
   }
}
