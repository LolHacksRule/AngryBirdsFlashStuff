package §<"F§
{
   import §%i§.§4"9§;
   import §0!i§.§]q§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §5!Y§.§9"6§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §6!H§.§6!e§;
   import §9!n§.LevelManager;
   import §;u§.§5<§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   
   public class §"i§ extends Popup
   {
      
      private static const §!"%§:String = "";
      
      private static const §'8§:String = "Email successfully submited!";
      
      private static const §80§:String = "An error occured while submitting your email.";
      
      private static const §;!2§:String = "You have already entered the competition!";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §"i§))
         {
            §!"%§ = "";
            while(true)
            {
               §'8§ = "Email successfully submited!";
               loop2:
               while(!(_loc1_ && _loc1_))
               {
                  §;!2§ = "You have already entered the competition!";
                  if(!_loc1_)
                  {
                     addr55:
                     if(_loc1_)
                     {
                        while(true)
                        {
                           §80§ = "An error occured while submitting your email.";
                           continue loop2;
                           §§goto(addr55);
                        }
                        addr74:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      private var §9!a§:Boolean = false;
      
      private var §>"P§:StatePopupManager;
      
      private var §5O§:Boolean = false;
      
      private var §!!w§:String = "";
      
      public function §"i§(param1:§`_§, param2:StatePopupManager, param3:Boolean)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(§ "<§.§%I§.Views.PopupView_EnterCompetitionPopup[0],param1);
            while(true)
            {
               mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§if §);
            }
            addr69:
         }
         loop1:
         while(true)
         {
            addr39:
            addr70:
            while(true)
            {
               this.§>"P§ = param2;
               continue loop1;
            }
            var _loc4_:TextField;
            if((_loc4_ = (§[w§.getItemByName("TextField_Email_Input") as §4"9§).mClip.text) != null)
            {
               if(!_loc5_)
               {
                  _loc4_.addEventListener(Event.CHANGE,this.§26§);
                  if(_loc6_ || param1)
                  {
                     addr307:
                     this.§06§();
                     loop25:
                     while(true)
                     {
                        §§push(§%"S§.§!C§);
                        loop21:
                        while(true)
                        {
                           §§push(§§pop().§9"%§);
                           loop22:
                           while(true)
                           {
                              §§push(§§pop().§7"T§);
                              loop20:
                              while(true)
                              {
                                 §§push(§§pop().email);
                                 loop19:
                                 while(true)
                                 {
                                    §§push(§§pop() == "");
                                    loop18:
                                    while(§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             this.§8!p§(§%"S§.§!C§.§9"%§.§7"T§.email);
                                             loop23:
                                             while(true)
                                             {
                                                this.§,!$§();
                                                loop24:
                                                while(true)
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §[w§.getItemByName("Textfield_ReadAndAgreeTerms").setVisibility(!param3);
                                                      loop12:
                                                      while(!_loc5_)
                                                      {
                                                         §[w§.getItemByName("CheckBox_Empty").setVisibility(!param3);
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(_loc6_ || this)
                                                            {
                                                               if(_loc6_ || this)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §[w§.getItemByName("Checkbox_TermsAndConditions").setVisibility(!param3);
                                                                  loop14:
                                                                  while(_loc6_ || param3)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop25;
                                                                     }
                                                                     §[w§.getItemByName("Enter_Button").setVisibility(!param3);
                                                                     loop15:
                                                                     while(_loc6_)
                                                                     {
                                                                        §[w§.getItemByName("Button_TermsAndConditions").setVisibility(!param3);
                                                                        loop16:
                                                                        while(_loc6_)
                                                                        {
                                                                           §[w§.getItemByName("Button_ChangeEmail").setVisibility(param3);
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              §§push(§%"S§.§!C§);
                                                                              if(_loc6_ || param2)
                                                                              {
                                                                                 §§push(§§pop().§9"%§);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(_loc5_ && param2)
                                                                                    {
                                                                                       continue loop22;
                                                                                    }
                                                                                    §§push(§§pop().§7"T§);
                                                                                    if(_loc6_ || param1)
                                                                                    {
                                                                                       §§pop().addEventListener(§]q§.§!"D§,this.§&U§);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(_loc6_ || param2)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                return;
                                                                                             }
                                                                                             continue loop15;
                                                                                          }
                                                                                          continue loop16;
                                                                                          continue loop16;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          §§push(§§pop().email);
                                                                                          if(!(_loc5_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() == null);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                break loop18;
                                                                                             }
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                             continue loop18;
                                                                                          }
                                                                                          continue loop19;
                                                                                       }
                                                                                       continue loop20;
                                                                                    }
                                                                                    addr259:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr259);
                                                                                 }
                                                                                 addr258:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 §§goto(addr258);
                                                                                 §§push(§§pop().§9"%§);
                                                                                 §§goto(addr165);
                                                                              }
                                                                              addr165:
                                                                           }
                                                                           continue loop22;
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§<![§();
                                                                        break loop12;
                                                                     }
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               continue loop23;
                                                            }
                                                            continue loop24;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr255);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop11;
                                                      }
                                                   }
                                                }
                                             }
                                             addr251:
                                          }
                                          §§goto(addr292);
                                       }
                                    }
                                    §§pop();
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr306);
               }
               §§goto(addr251);
            }
            §§goto(addr307);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.open(param1);
         }
      }
      
      private function §26§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§5O§ = this.§="H§();
            while(this.§5O§)
            {
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     ((§[w§.getItemByName("TextField_Email_Input") as §4"9§).mClip.text as TextField).textColor = 0;
                     addr67:
                     break;
                  }
                  continue;
               }
               §§goto(addr67);
            }
            return;
         }
         §§goto(addr67);
      }
      
      private function §<![§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§3d§ = null;
         var _loc1_:String = §?l§.§ "G§.stage.loaderInfo.parameters.accessToken;
         §§push(§9!7§);
         §§push("https://graph.facebook.com/me?fields=email&access_token=");
         if(!(_loc5_ && this))
         {
            §§push(§§pop() + _loc1_);
            if(!(_loc5_ && _loc2_))
            {
               addr45:
               §§push(§§pop() + "&format=json");
            }
            var _loc2_:URLRequest = §§pop().§,!l§(§§pop());
            if(_loc4_ || _loc3_)
            {
               _loc2_.method = URLRequestMethod.POST;
            }
            _loc3_ = new §3d§(null,1);
            if(!(_loc5_ && this))
            {
               _loc3_.addEventListener(Event.COMPLETE,this.§&+§);
               loop0:
               while(true)
               {
                  _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§,!G§);
                  while(true)
                  {
                     _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§,!G§);
                     addr108:
                     if(!(_loc5_ && _loc2_))
                     {
                        if(!_loc5_)
                        {
                           _loc3_.load(_loc2_);
                           addr127:
                           if(!(_loc5_ && _loc1_))
                           {
                              return;
                           }
                           loop3:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 §§goto(addr108);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
                                    continue loop3;
                                 }
                                 addr135:
                              }
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr135);
         }
         §§goto(addr45);
      }
      
      public function §&+§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc4_ && param1))
         {
            §§pop().§§slot[2] = null;
            if(_loc5_)
            {
               addr35:
               var e:Event = param1;
            }
            try
            {
               var returnObject:Object = JSON.parse((e.currentTarget as URLLoader).data);
               if(_loc5_)
               {
                  this.§8!p§(returnObject.email);
               }
               while(true)
               {
                  while(true)
                  {
                     this.§,!$§();
                     do
                     {
                        this.§26§(null);
                     }
                     while(_loc4_ && _loc3_);
                     
                     if(!(_loc5_ || _loc2_))
                     {
                        break;
                     }
                     if(true)
                     {
                        return;
                     }
                     addr120:
                  }
               }
            }
            catch(e:Error)
            {
               if(!_loc4_)
               {
                  §,!G§(null);
               }
            }
            §§goto(addr120);
         }
         §§goto(addr35);
      }
      
      private function §8!p§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§!!w§ = param1;
         }
         do
         {
            (§[w§.getItemByName("TextField_Email_Input") as §4"9§).setText(this.§!!w§);
            do
            {
               this.§26§(null);
            }
            while(!(_loc2_ || _loc2_));
            
         }
         while(_loc3_);
         
      }
      
      public function §,!G§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§[w§.getItemByName("TextField_Email_Input") as §4"9§).setText(§!"%§);
            do
            {
               this.§,!$§();
            }
            while(_loc2_ && this);
            
         }
      }
      
      private function §,!$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            (§[w§.getItemByName("MovieClip_Popup_Loading") as §!!G§).visible = false;
         }
      }
      
      private function §-"!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§[w§.getItemByName("MovieClip_Popup_Loading") as §!!G§).visible = true;
         }
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.close();
         }
      }
      
      private function onUiInteraction(param1:§6!e§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.uiInteractionHandler(param1.§0!!§,param1.§,§,param1.§`]§);
         }
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || param1)
         {
            §§push("CHECKBOX_CHANGE");
            if(!(_loc6_ && this))
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || param2)
                     {
                        §§push(0);
                        if(_loc6_ && param1)
                        {
                           addr154:
                        }
                     }
                     else
                     {
                        addr151:
                        §§push(1);
                        if(!_loc6_)
                        {
                           §§goto(addr154);
                        }
                     }
                  }
                  else
                  {
                     §§push("TERMS_AND_CONDITIONS");
                     if(!(_loc6_ && param1))
                     {
                        addr130:
                        §§push(_loc4_);
                        if(_loc5_ || this)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_)
                              {
                                 §§goto(addr151);
                              }
                           }
                           else
                           {
                              addr157:
                              if("SUBMIT_NAME_TO_COMPETITION" !== _loc4_)
                              {
                                 addr171:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       §§push(this);
                                       §§push(this.§9!a§);
                                       if(!(_loc6_ && param2))
                                       {
                                          §§push(!§§pop());
                                       }
                                       §§pop().§9!a§ = §§pop();
                                       this.§06§();
                                       addr47:
                                       break;
                                       addr71:
                                       addr56:
                                    case 1:
                                       §9"6§.§?B§();
                                       break;
                                       addr52:
                                    case 2:
                                       this.§,!'§();
                                       if(!(_loc6_ && param1))
                                       {
                                          if(_loc5_ || param2)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(_loc5_ || param3)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr71);
                                                }
                                                §§goto(addr47);
                                             }
                                             §§goto(addr56);
                                          }
                                          else
                                          {
                                             §§goto(addr52);
                                          }
                                       }
                                 }
                                 return;
                                 §§push(3);
                              }
                           }
                           §§goto(addr171);
                           §§goto(addr171);
                        }
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr171);
               }
               §§goto(addr157);
            }
            §§goto(addr130);
         }
         §§goto(addr151);
      }
      
      private function §,!'§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:TextField = null;
         if(!_loc3_)
         {
            if(this.§5O§)
            {
               loop0:
               while(true)
               {
                  this.§-"!§();
                  while(true)
                  {
                     addr66:
                     while(true)
                     {
                        _loc1_ = encodeURIComponent((§[w§.getItemByName("TextField_Email_Input") as §4"9§).§ do§());
                        do
                        {
                           §%"S§.§!C§.§9"%§.§7"T§.§-!8§(_loc1_);
                        }
                        while(!(_loc4_ || _loc3_));
                        
                        if(!(_loc4_ || _loc3_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            else
            {
               _loc2_ = (§[w§.getItemByName("TextField_Email_Input") as §4"9§).mClip.text as TextField;
               if(!_loc3_)
               {
                  if(_loc2_.text.length < 1)
                  {
                     if(!_loc3_)
                     {
                        _loc2_.text = "Invalid email.";
                        if(!_loc4_)
                        {
                        }
                        §§goto(addr123);
                     }
                  }
               }
               _loc2_.textColor = 16711680;
            }
            addr123:
            return;
         }
         §§goto(addr64);
      }
      
      protected function §&U§(param1:§]q§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(AngryBirdsFP11.sUserProgress);
            if(_loc3_)
            {
               if(!§§pop().hasTutorialBeenSeen(§#!$§.§4"P§ + §["M§.§0<§))
               {
                  loop0:
                  while(true)
                  {
                     §§push(AngryBirdsFP11.sUserProgress);
                     addr96:
                     while(true)
                     {
                        (§§pop() as §#!$§).saveTutorialSeen(§#!$§.§4"P§ + §["M§.§0<§);
                        loop5:
                        while(true)
                        {
                           LevelManager.§,m§ = 6;
                           addr65:
                           while(true)
                           {
                              if(_loc2_ && this)
                              {
                                 continue loop5;
                              }
                              while(true)
                              {
                                 §%"S§.§!C§.§`H§(§5<§.STATE_NAME);
                                 continue loop0;
                              }
                              continue loop5;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  this.close();
                  if(_loc3_)
                  {
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr53);
                  §§goto(addr53);
               }
               return;
            }
            §§goto(addr96);
         }
         §§goto(addr82);
      }
      
      public function §@S§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §9"6§.§#!o§();
         }
         do
         {
            this.close();
         }
         while(_loc2_ && this);
         
      }
      
      private function §06§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§!!G§ = §[w§.getItemByName("Checkbox_TermsAndConditions") as §!!G§;
         var _loc2_:§!!G§ = §[w§.getItemByName("Enter_Button") as §!!G§;
         if(_loc4_ || this)
         {
            §§push(this.§9!a§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     _loc1_.setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  loop1:
                  while(true)
                  {
                     _loc2_.setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     while(true)
                     {
                        continue loop0;
                        addr94:
                        while(_loc4_ || _loc1_)
                        {
                           _loc2_.mClip.mouseEnabled = false;
                           if(_loc3_ && _loc3_)
                           {
                              continue;
                           }
                           if(_loc4_ || this)
                           {
                              if(!(_loc3_ && _loc1_))
                              {
                                 if(_loc4_ || _loc1_)
                                 {
                                    §§goto(addr39);
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    _loc2_.mClip.alpha = 1;
                                    loop9:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          _loc2_.mClip.mouseEnabled = true;
                                          while(true)
                                          {
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                continue loop9;
                                             }
                                             if(_loc4_)
                                             {
                                                addr39:
                                                return;
                                             }
                                             while(true)
                                             {
                                                _loc2_.setComponentState(§!!G§.§@!T§);
                                             }
                                             addr158:
                                             §§goto(addr144);
                                          }
                                          addr144:
                                          addr107:
                                       }
                                       continue loop1;
                                    }
                                 }
                                 addr128:
                              }
                              while(true)
                              {
                                 continue loop0;
                              }
                              addr150:
                           }
                           §§goto(addr107);
                        }
                     }
                  }
               }
               else
               {
                  _loc1_.setComponentState(§!!G§.§@!T§);
                  §§goto(addr158);
               }
            }
         }
         §§goto(addr128);
      }
      
      private function §="H§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push((§[w§.getItemByName("TextField_Email_Input") as §4"9§).§ do§());
         if(_loc3_)
         {
            §§push(§§pop().toLowerCase());
         }
         var _loc1_:* = §§pop();
         var _loc2_:RegExp = /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/;
         return _loc2_.test(_loc1_);
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §%"S§.§!C§.§9"%§.§7"T§.removeEventListener(§]q§.§!"D§,this.§&U§);
         }
         while(true)
         {
            this.§>"P§.removeEventListener(§6!e§.§1" §,this.onUiInteraction);
            while(_loc1_)
            {
               super.close();
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
   }
}
