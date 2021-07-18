package §+!!§
{
   import §!"e§.§`"W§;
   import §"k§.§=!g§;
   import §"k§.§]"V§;
   import §#!'§.§6"]§;
   import §+D§.§]B§;
   import §+D§.§^"m§;
   import §,!,§.§4§;
   import §,"N§.§=!1§;
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   import §,"N§.§`#&§;
   import §1!i§.§,#_§;
   import §1!i§.§26§;
   import §5";§.§%#"§;
   import §7!$§.§&$§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §="V§.§""v§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import §[!m§.§[!j§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §9"i§ extends AbstractPopup
   {
      
      public static const §<s§:String = "invite";
      
      public static const §%?§:String = "sendgifts";
      
      public static const §%!§:String = "energy";
      
      public static const §8i§:String = "challenge";
      
      protected static const §&!§:int = 50;
      
      protected static var §7##§:int = 10;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §<s§ = "invite";
            loop0:
            while(true)
            {
               §%?§ = "sendgifts";
               while(true)
               {
                  §%!§ = "energy";
                  while(true)
                  {
                     §8i§ = "challenge";
                     addr57:
                     if(!(_loc1_ && _loc2_))
                     {
                        return;
                        addr64:
                     }
                  }
                  loop4:
                  while(_loc2_ || _loc2_)
                  {
                     if(!_loc1_)
                     {
                        §7##§ = 10;
                        if(!(_loc2_ || §9"i§))
                        {
                           continue;
                        }
                        addr40:
                        if(!(_loc1_ && §9"i§))
                        {
                           §§goto(addr57);
                        }
                        while(true)
                        {
                           §&!§ = 50;
                           continue loop4;
                           §§goto(addr40);
                        }
                        §§goto(addr64);
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      protected var §;"-§:String;
      
      protected var §="J§:§<"`§;
      
      protected var §=#Q§:Boolean;
      
      private var §+Q§:§4#9§;
      
      private var §"#$§:§`#&§;
      
      private var §3"q§:§,#_§;
      
      private var §9"+§:§,#_§;
      
      private var §&"-§:§=!1§;
      
      private var §8"-§:MovieClip;
      
      private var §]"'§:int = 0;
      
      private var §#w§:int;
      
      private var §2"8§:Array;
      
      private var §32§:TextField;
      
      private var §2!b§:TextField;
      
      private var §-9§:Boolean;
      
      private var §3#R§:§]B§;
      
      private var §4"3§:§%#"§;
      
      private var §>!O§:Array;
      
      private var §;!p§:Boolean = false;
      
      private var §'9§:Boolean = false;
      
      public function §9"i§(param1:int, param2:int, param3:String, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§;"-§ = param3;
            loop0:
            while(true)
            {
               this.§=#Q§ = param4;
               while(true)
               {
                  this.§&"-§ = §@#B§(§4#;§.singleton.dataModel).§;!A§;
                  loop2:
                  while(!(_loc6_ && param1))
                  {
                     while(true)
                     {
                        super(param1,param2,§&$§.§@8§.Popups.Popup_Requests[0],"requests");
                        if(!_loc6_)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§"#$§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr80:
                     this.§"#$§.removeEventListener(Event.COMPLETE,this.§ ]§);
                  }
                  while(true)
                  {
                     this.§"#$§ = null;
                     addr60:
                     while(true)
                     {
                     }
                     addr48:
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     return;
                     addr55:
                  }
               }
               while(true)
               {
                  super.dispose();
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  §§goto(addr48);
               }
               §§goto(addr55);
            }
            §§goto(addr80);
         }
         §§goto(addr60);
      }
      
      protected function addEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§=#Q§)
            {
               loop0:
               while(true)
               {
                  this.§32§.addEventListener(Event.CHANGE,this.§+"X§);
                  loop1:
                  while(true)
                  {
                     this.§32§.addEventListener(FocusEvent.FOCUS_IN,this.§>p§);
                     loop2:
                     while(true)
                     {
                        this.§3#R§.§[!8§.addEventListener(Event.CHANGE,this.§`!#§);
                        addr261:
                        while(true)
                        {
                           loop14:
                           while(!(_loc2_ && this))
                           {
                              this.§8"-§.btnQuickInvite.addEventListener(MouseEvent.CLICK,this.§,!Q§);
                              loop15:
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    §""v§.addCallback("giftsSentToUsers",this.§+#F§);
                                    continue;
                                 }
                                 loop13:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       if(!_loc2_)
                                       {
                                          this.§8"-§.btnQuickSendGift.addEventListener(MouseEvent.CLICK,this.§,!Q§);
                                          if(!(_loc1_ || this))
                                          {
                                             continue loop14;
                                          }
                                          §§goto(addr64);
                                          continue loop14;
                                       }
                                       continue loop2;
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          this.§8"-§.btnQuickChallenge.addEventListener(MouseEvent.CLICK,this.§,!Q§);
                                          continue loop13;
                                       }
                                       addr249:
                                       addr164:
                                       while(true)
                                       {
                                          if(_loc1_)
                                          {
                                             addr166:
                                             if(!(_loc2_ && this))
                                             {
                                                addr173:
                                                if(!(_loc1_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                this.§8"-§.btnChallengeFriendsMore.addEventListener(MouseEvent.CLICK,this.§,!Q§);
                                                continue loop12;
                                             }
                                             addr210:
                                             addr239:
                                             while(!_loc2_)
                                             {
                                                this.§8"-§.btnAsk.addEventListener(MouseEvent.CLICK,this.§,!Q§);
                                                §§goto(addr166);
                                             }
                                             while(true)
                                             {
                                                this.§8"-§.btnInvite.addEventListener(MouseEvent.CLICK,this.§,!Q§);
                                                break loop15;
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§8"-§.btnAskMore.addEventListener(MouseEvent.CLICK,this.§,!Q§);
                                             break loop13;
                                          }
                                       }
                                       while(_loc1_)
                                       {
                                          this.§8"-§.btnSendMore.addEventListener(MouseEvent.CLICK,this.§,!Q§);
                                          §§goto(addr239);
                                          §§goto(addr173);
                                       }
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    this.§8"-§.btnChallengeFriends.addEventListener(MouseEvent.CLICK,this.§,!Q§);
                                    §§goto(addr164);
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               this.§8"-§.btnSend.addEventListener(MouseEvent.CLICK,this.§,!Q§);
               §§goto(addr249);
               §§goto(addr261);
            }
         }
         §§goto(addr43);
      }
      
      protected function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(!this.§=#Q§)
            {
               while(true)
               {
                  this.§32§.removeEventListener(Event.CHANGE,this.§+"X§);
                  addr296:
                  while(true)
                  {
                     this.§32§.removeEventListener(FocusEvent.FOCUS_IN,this.§>p§);
                     addr275:
                     while(true)
                     {
                        this.§3#R§.§[!8§.removeEventListener(Event.CHANGE,this.§`!#§);
                        addr266:
                        while(true)
                        {
                        }
                     }
                  }
               }
               addr289:
            }
            loop4:
            while(true)
            {
               this.§8"-§.btnSend.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
               loop5:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§8"-§.btnSendMore.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
                     loop7:
                     while(!(_loc2_ && _loc2_))
                     {
                        this.§8"-§.btnInvite.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
                        loop8:
                        while(true)
                        {
                           this.§8"-§.btnInviteMore.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
                           loop9:
                           for(; _loc1_; while(_loc1_ || _loc1_)
                           {
                              §""v§.§&z§("helpRequestSentToUsers",this.§]">§);
                              §§goto(addr68);
                              §§goto(addr41);
                           })
                           {
                              this.§8"-§.btnAsk.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
                              loop10:
                              while(!_loc2_)
                              {
                                 this.§8"-§.btnAskMore.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
                                 loop11:
                                 while(!_loc2_)
                                 {
                                    this.§8"-§.btnChallengeFriends.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
                                    while(_loc1_)
                                    {
                                       this.§8"-§.btnChallengeFriendsMore.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
                                       loop13:
                                       while(!_loc2_)
                                       {
                                          this.§8"-§.btnQuickChallenge.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
                                          while(true)
                                          {
                                             this.§8"-§.btnQuickSendGift.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
                                             loop15:
                                             while(!(_loc2_ && _loc2_))
                                             {
                                                this.§8"-§.btnQuickInvite.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
                                                while(true)
                                                {
                                                   §""v§.§&z§("giftsSentToUsers",this.§+#F§);
                                                   while(_loc1_ || _loc2_)
                                                   {
                                                      §""v§.§&z§("invitationBatchSent",this.§`!Y§);
                                                      continue loop9;
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  return;
                                                               }
                                                               continue loop10;
                                                            }
                                                            continue loop13;
                                                         }
                                                         continue loop15;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr289);
                                    while(true)
                                    {
                                       if(!(_loc2_ && this))
                                       {
                                          continue loop8;
                                       }
                                       continue loop11;
                                       addr82:
                                       §""v§.§&z§("challengeSent",this.§-#V§);
                                       if(_loc2_ && _loc1_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc1_ || _loc1_))
                                       {
                                          continue loop9;
                                       }
                                       §§goto(addr48);
                                    }
                                    continue loop8;
                                 }
                                 continue loop7;
                              }
                              continue loop5;
                           }
                           continue loop4;
                        }
                     }
                     §§goto(addr296);
                  }
               }
               §§goto(addr275);
            }
         }
         §§goto(addr256);
      }
      
      override protected function init() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || _loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               this.§8"-§ = §^c§.getItemByName("Container_Content").mClip;
               if(!(_loc6_ || _loc3_))
               {
                  break;
               }
               if(!(_loc6_ || _loc3_))
               {
                  continue;
               }
               this.§8"-§.gotoAndStop(!!this.§=#Q§ ? "quick_" + this.§;"-§ : this.§;"-§);
               loop1:
               while(true)
               {
                  this.§-!?§();
                  loop2:
                  while(true)
                  {
                     this.§-9§ = this.§8"-§.chkSelectAll.visible;
                     if(!(_loc7_ && _loc2_))
                     {
                        if(!_loc6_)
                        {
                           continue loop1;
                        }
                        (§^c§.getItemByName("Button_ScrollUp") as §^"m§).setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
                        loop3:
                        while(true)
                        {
                           (§^c§.getItemByName("Button_ScrollDown") as §^"m§).setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
                           while(true)
                           {
                              this.§32§ = this.§8"-§.txtSearch;
                              if(!(_loc6_ || this))
                              {
                                 break loop0;
                              }
                              §§push(this.§=#Q§);
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc6_ || _loc1_)
                                    {
                                       this.§2!b§ = this.§8"-§.friendsCounter.txtFriendsSelected;
                                       if(!_loc6_)
                                       {
                                       }
                                       break loop0;
                                    }
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(this.§=#Q§);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 while(_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§pop();
                                          if(_loc7_ && this)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             continue loop7;
                                          }
                                       }
                                       var _loc1_:MovieClip = this.§8"-§.chkSelectAll;
                                       addr283:
                                       if(!_loc7_)
                                       {
                                          this.§3#R§ = new §]B§(_loc1_);
                                          loop10:
                                          while(true)
                                          {
                                             addr316:
                                             while(true)
                                             {
                                                this.§"#$§ = §@#B§(§4#;§.singleton.dataModel).§`"N§;
                                                continue loop10;
                                             }
                                          }
                                          addr331:
                                       }
                                       while(true)
                                       {
                                          this.§3"q§ = §@#B§(§4#;§.singleton.dataModel).§ #W§;
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                          if(!_loc7_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr331);
                                          }
                                          §§goto(addr316);
                                       }
                                       var _loc2_:MovieClip = §^c§.getItemByName("Container_FriendsType").mClip;
                                       if(_loc6_ || _loc2_)
                                       {
                                          §§push(this.§;"-§);
                                          if(_loc6_ || _loc1_)
                                          {
                                             §§push(§<s§);
                                             if(!_loc7_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      this.§>!O§ = [§<"`§.§&#T§,§<"`§.§9#=§];
                                                      loop19:
                                                      while(true)
                                                      {
                                                         addr406:
                                                         addr541:
                                                         loop13:
                                                         while(true)
                                                         {
                                                            this.§4"3§ = new §%#"§(_loc2_,§5-§,this.§>!O§);
                                                            if(_loc6_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  continue loop19;
                                                               }
                                                               §§push(this.§4"3§);
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(240);
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§pop().§>#_§ = §§pop();
                                                                     if(!(_loc6_ || _loc3_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§4"3§);
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(60);
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§>"b§ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§4"3§);
                                                                                 if(_loc6_ || _loc3_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    if(!(_loc6_ || _loc1_))
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    §§pop().§3"1§ = §§pop();
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(!(_loc7_ && this))
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             _loc2_.selectedValue.mouseEnabled = _loc2_.selectedValue.mouseChildren = false;
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                _loc2_.arrow.mouseEnabled = false;
                                                                                                this.addEventListeners();
                                                                                                loop22:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§;"-§);
                                                                                                   addr545:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§8i§);
                                                                                                      addr546:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() != §§pop())
                                                                                                         {
                                                                                                            this.§0#N§();
                                                                                                            loop26:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  addr529:
                                                                                                                  do
                                                                                                                  {
                                                                                                                     §§push(this.§4"3§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().§3"1§ = this.§>!O§.indexOf(§<"`§.§&#T§);
                                                                                                                        addr510:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                           if(!(_loc6_ || _loc3_))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              break loop15;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(false);
                                                                                                                  
                                                                                                                  var _loc3_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
                                                                                                                  var _loc4_:MovieClip;
                                                                                                                  (_loc4_ = §^c§.getItemByName("Container_Content").mClip).mask = _loc3_;
                                                                                                                  return;
                                                                                                                  addr501:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr547:
                                                                                                               }
                                                                                                               addr547:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§3M§();
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc2_.visible = false;
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                     addr556:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr565);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr547);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr565:
                                                                                             }
                                                                                          }
                                                                                          continue loop16;
                                                                                          break loop13;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr529);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr492:
                                                                        §§pop().addEventListener(Event.CHANGE,this.§1#3§);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr499);
                                                                        }
                                                                        §§goto(addr510);
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  §§push(this.§4"3§);
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                     §§goto(addr492);
                                                                  }
                                                                  §§goto(addr504);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr501);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr547);
                                                }
                                                else
                                                {
                                                   this.§>!O§ = [§<"`§.§&#T§,§<"`§.§>#=§,§<"`§.§9#=§];
                                                   if(!(_loc7_ && _loc2_))
                                                   {
                                                      §§goto(addr406);
                                                   }
                                                }
                                                §§goto(addr556);
                                             }
                                             §§goto(addr546);
                                          }
                                          §§goto(addr545);
                                       }
                                       §§goto(addr541);
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          this.§8"-§.sentCheckmark.stop();
                                          if(_loc6_)
                                          {
                                             if(true)
                                             {
                                                this.§8"-§.sentCheckmark.mouseEnabled = this.§8"-§.sentCheckmark.mouseChildren = false;
                                                if(_loc6_ || this)
                                                {
                                                   break loop2;
                                                }
                                                break loop0;
                                             }
                                             §§goto(addr33);
                                          }
                                       }
                                       else
                                       {
                                          addr24:
                                       }
                                       if(_loc7_)
                                       {
                                          continue loop3;
                                       }
                                       if(_loc7_)
                                       {
                                          continue loop2;
                                       }
                                       this.§8"-§.txtCoinReward.text = String(this.§8"-§.txtCoinReward.text).replace("${coins}",§@#B§(§4#;§.singleton.dataModel).§!!C§.prizePerFriend);
                                       if(_loc7_ && _loc2_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    this.§8"-§.btnGetFriends.addEventListener(MouseEvent.CLICK,this.§>c§);
                                    if(_loc6_)
                                    {
                                       break loop0;
                                    }
                                    §§goto(addr283);
                                 }
                              }
                           }
                        }
                     }
                     break;
                  }
                  this.§8"-§.btnGetFriends.visible = false;
                  if(!(_loc7_ && _loc3_))
                  {
                     §§goto(addr262);
                  }
                  §§goto(addr283);
               }
            }
            this.§8"-§.tabEnabled = this.§8"-§.tabChildren = false;
            §§goto(addr283);
         }
         §§goto(addr110);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Graphics = null;
         if(_loc3_)
         {
            if(!this.§;!p§)
            {
               if(!(_loc4_ && _loc2_))
               {
                  addr31:
                  _loc2_ = §^c§.mClip.graphics;
                  if(_loc3_ || _loc2_)
                  {
                     _loc2_.beginFill(0,0);
                  }
                  while(true)
                  {
                     _loc2_.drawRect(0,0,§^c§.mClip.width,§^c§.mClip.height);
                     loop1:
                     while(true)
                     {
                        addr67:
                        addr112:
                        while(true)
                        {
                           _loc2_.endFill();
                           continue loop1;
                        }
                        super.show(param1);
                     }
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     this.§;!p§ = true;
                     if(!(_loc4_ && _loc3_))
                     {
                        if(false)
                        {
                           §§goto(addr67);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr70);
                  }
               }
               return;
            }
            §§goto(addr112);
         }
         §§goto(addr31);
      }
      
      private function §1#3§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§"#$§.removeEventListener(Event.COMPLETE,this.§ ]§);
         }
         do
         {
            this.§+Q§.clear();
         }
         while(!_loc4_);
         
         var _loc2_:* = this.§4"3§.§]#5§;
         if(!_loc3_)
         {
            if(§<"`§.§&#T§ === _loc2_)
            {
               if(_loc4_ || _loc2_)
               {
                  addr100:
                  §§push(0);
                  if(_loc3_)
                  {
                  }
                  §§goto(addr136);
               }
               else
               {
                  §§goto(addr115);
               }
            }
            else
            {
               if(§<"`§.§>#=§ === _loc2_)
               {
                  if(_loc4_ || this)
                  {
                     addr115:
                     §§push(1);
                     if(_loc3_ && this)
                     {
                     }
                  }
               }
               else if(§<"`§.§9#=§ !== _loc2_)
               {
                  addr136:
                  switch(§§pop())
                  {
                     case 0:
                        this.§0#N§();
                        if(_loc4_ || _loc2_)
                        {
                           addr29:
                           break;
                        }
                        §§goto(addr162);
                     case 1:
                        this.§3M§();
                        if(_loc4_ || param1)
                        {
                           break;
                        }
                        §§goto(addr162);
                     case 2:
                        this.§5P§();
                        if(!_loc3_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr29);
                        }
                        §§goto(addr162);
                  }
                  if(this.§8"k§)
                  {
                     if(_loc4_)
                     {
                        this.§![§();
                     }
                  }
                  addr162:
                  return;
                  §§push(3);
               }
               §§goto(addr136);
               if(!_loc3_)
               {
                  §§goto(addr131);
               }
            }
            §§goto(addr136);
         }
         §§goto(addr100);
      }
      
      private function §3M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§="J§ = §<"`§.§>#=§;
         }
         do
         {
            this.§>b§(this.§<!R§(this.§3"q§));
            do
            {
               this.§#O§();
            }
            while(!(_loc2_ || _loc2_));
            
         }
         while(_loc1_ && _loc1_);
         
      }
      
      private function §5P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§="J§ = §<"`§.§9#=§;
         }
         do
         {
            this.§>b§(this.§<!R§(this.abfFriends));
            do
            {
               this.§#O§();
            }
            while(_loc1_);
            
         }
         while(!_loc2_);
         
      }
      
      private function get abfFriends() : §,#_§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:String = null;
         if(!(_loc5_ && _loc1_))
         {
            if(!this.§9"+§)
            {
               if(_loc4_ || this)
               {
                  this.§9"+§ = new §,#_§();
                  for each(_loc1_ in §@#B§(§4#;§.singleton.dataModel).abfFriends)
                  {
                     if(!_loc5_)
                     {
                        if(this.§"#$§.friends[_loc1_])
                        {
                           if(!_loc5_)
                           {
                              this.§9"+§[_loc1_] = this.§"#$§.friends[_loc1_];
                           }
                        }
                     }
                  }
                  addr40:
               }
               §§goto(addr40);
            }
            return this.§9"+§;
         }
         §§goto(addr40);
      }
      
      private function §0#N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§="J§ = §<"`§.§&#T§;
            loop0:
            while(true)
            {
               §§push(this.§"#$§);
               loop1:
               while(true)
               {
                  if(§§pop().friends != null)
                  {
                     this.§!"l§();
                     if(_loc2_ || this)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr20);
                        }
                        loop2:
                        while(true)
                        {
                           if(_loc2_ || this)
                           {
                              continue loop0;
                           }
                           loop3:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 this.§2!b§.text = "Loading...";
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§"#$§);
                                          continue loop1;
                                       }
                                       continue loop1;
                                       addr122:
                                    }
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       break loop3;
                                    }
                                    addr141:
                                    while(true)
                                    {
                                       §§push(this.§"#$§);
                                       addr143:
                                       while(true)
                                       {
                                          §§pop().addEventListener(Event.COMPLETE,this.§ ]§);
                                          addr158:
                                          addr84:
                                          while(true)
                                          {
                                             §§push(this.§"#$§);
                                             if(_loc2_ || _loc2_)
                                             {
                                                continue loop1;
                                             }
                                          }
                                          if(§§pop().§2!b§ == null)
                                          {
                                             break loop3;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          §§pop().§->§();
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop3;
                                             }
                                          }
                                          addr132:
                                       }
                                       else
                                       {
                                          §§goto(addr143);
                                       }
                                       §§goto(addr158);
                                    }
                                    continue loop1;
                                 }
                                 addr93:
                              }
                              §§goto(addr132);
                           }
                           while(true)
                           {
                              this.§'!J§(false);
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                     addr45:
                     while(!(_loc2_ || _loc1_))
                     {
                     }
                     addr20:
                     return;
                     §§goto(addr93);
                  }
                  §§goto(addr141);
               }
            }
         }
         while(true)
         {
            this.§8"-§.chkSelectAll.visible = false;
            §§goto(addr45);
         }
      }
      
      private function § ]§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'!J§(true);
         }
         while(true)
         {
            this.§8"-§.chkSelectAll.visible = this.§-9§;
            loop1:
            while(true)
            {
               §§push(§^c§.getItemByName("Button_ScrollUp") as §^"m§);
               §§push(this.§=#Q§);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(!§§pop());
               }
               §§pop().visible = §§pop();
               addr101:
               while(true)
               {
                  §§push(§^c§.getItemByName("Button_ScrollDown") as §^"m§);
                  §§push(this.§=#Q§);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
                  continue loop1;
               }
            }
         }
      }
      
      private function §!"l§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Array = this.§<!R§(this.§"#$§.friends);
         if(_loc2_ || _loc2_)
         {
            if(this.§=#Q§)
            {
               if(!_loc3_)
               {
                  addr35:
                  _loc1_ = _loc1_.filter(this.§'+§);
                  _loc1_ = §26§.§"2§(_loc1_);
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.sort(this.§0D§);
                  }
                  _loc1_ = _loc1_.slice(0,21);
                  addr73:
                  this.§>b§(_loc1_);
                  if(_loc2_ || this)
                  {
                     this.§#O§();
                  }
                  do
                  {
                     this.§2!,§(true);
                  }
                  while(!_loc2_);
                  
               }
               return;
            }
            §§goto(addr73);
         }
         §§goto(addr35);
      }
      
      private function §#O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§=#Q§)
            {
               this.§2!,§(true);
               if(!_loc1_)
               {
                  addr66:
               }
               return;
            }
            if(!_loc2_)
            {
               addr62:
               this.§3#R§.§0" § = true;
            }
            §§goto(addr66);
         }
         §§goto(addr62);
      }
      
      private function §>p§(param1:FocusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§32§.text == "Search...")
            {
               if(!_loc2_)
               {
                  this.§32§.text = "";
               }
            }
         }
      }
      
      private function §0Q§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§`"b§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§2"8§)
         {
            if(!_loc6_)
            {
               if(!_loc2_.§0" §)
               {
                  continue;
               }
               if(_loc6_ && _loc1_)
               {
                  continue;
               }
            }
            _loc1_++;
         }
         if(!_loc6_)
         {
            if(this.§]"'§ == 0)
            {
               if(_loc5_ || _loc1_)
               {
                  if(this.§2!b§ != null)
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        this.§2!b§.text = _loc1_.toString() + "/" + this.§2"8§.length + " Friends selected";
                        addr122:
                        while(true)
                        {
                        }
                        addr122:
                     }
                     §§goto(addr122);
                  }
               }
               §§goto(addr122);
            }
            while(true)
            {
               this.§'!J§(_loc1_ > 0);
               if(_loc5_)
               {
                  break;
               }
               §§goto(addr122);
            }
            return;
         }
         §§goto(addr122);
      }
      
      private function §+"X§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§![§();
         }
      }
      
      private function get §8"k§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§32§.text == "");
            if(_loc2_ || this)
            {
               §§push(!§§pop());
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§pop();
                        addr54:
                        §§push(this.§32§.text == "Search...");
                        if(!(_loc1_ && this))
                        {
                           addr76:
                           return !§§pop();
                        }
                     }
                  }
               }
            }
            §§goto(addr76);
         }
         §§goto(addr54);
      }
      
      private function §![§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:§`"b§ = null;
         var _loc1_:String = this.§32§.text;
         if(!_loc6_)
         {
            if(!this.§8"k§)
            {
               addr33:
               _loc2_ = this.§2"8§;
            }
            else
            {
               _loc2_ = [];
               for each(_loc3_ in this.§2"8§)
               {
                  if(_loc7_)
                  {
                     if(_loc3_.name.toLowerCase().indexOf(_loc1_.toLowerCase()) == -1)
                     {
                        _loc3_.§0" § = false;
                        if(_loc7_ || _loc2_)
                        {
                           if(true)
                           {
                              continue;
                           }
                           loop1:
                           while(true)
                           {
                              _loc3_.§0" § = true;
                              addr102:
                              while(true)
                              {
                                 continue loop1;
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc7_)
                           {
                              if(!_loc6_)
                              {
                                 break;
                              }
                              addr99:
                              while(true)
                              {
                                 _loc2_.push(_loc3_);
                              }
                           }
                           §§goto(addr102);
                        }
                        continue;
                        addr90:
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr90);
               }
            }
            this.§+Q§.data = this.§[!G§(_loc2_,2);
            if(_loc7_ || _loc2_)
            {
               if(!this.§8"k§)
               {
                  while(true)
                  {
                     this.§2!,§(this.§3#R§.§0" §);
                     addr168:
                     while(true)
                     {
                     }
                     addr142:
                     if(_loc7_ || _loc1_)
                     {
                        this.§0Q§();
                        if(_loc6_ && this)
                        {
                           while(_loc7_)
                           {
                              §§goto(addr142);
                           }
                           §§goto(addr168);
                           addr140:
                        }
                        return;
                     }
                  }
               }
               while(true)
               {
                  this.§9!V§();
                  §§goto(addr140);
                  §§goto(addr168);
               }
            }
            §§goto(addr168);
         }
         §§goto(addr33);
      }
      
      private function §`!#§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2!,§(this.§3#R§.§0" §);
         }
      }
      
      private function §2!,§(param1:Boolean) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:§`"b§ = null;
         for each(_loc2_ in this.§+Q§.data)
         {
            if(_loc9_)
            {
               var _loc6_:int = 0;
               if(!_loc8_)
               {
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc9_)
                     {
                        if(!_loc3_)
                        {
                           continue;
                        }
                        if(!(_loc9_ || param1))
                        {
                           continue;
                        }
                     }
                     _loc3_.§0" § = param1;
                  }
               }
            }
         }
         if(!_loc8_)
         {
            this.§+Q§.refresh();
         }
         do
         {
            this.§0Q§();
         }
         while(_loc8_ && _loc2_);
         
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param2)
         {
            if("UP" === _loc4_)
            {
               if(!(_loc5_ && this))
               {
                  §§push(0);
                  if(_loc5_ && param1)
                  {
                  }
               }
               else
               {
                  addr173:
                  §§push(1);
                  if(!_loc6_)
                  {
                     addr198:
                  }
               }
            }
            else
            {
               if("DOWN" === _loc4_)
               {
                  if(!_loc5_)
                  {
                     §§goto(addr173);
                  }
                  else
                  {
                     addr180:
                     §§push(2);
                     if(_loc6_ || param3)
                     {
                        §§goto(addr198);
                     }
                  }
               }
               else if("FRIEND_TYPE_DROPDOWN" === _loc4_)
               {
                  §§goto(addr180);
               }
               else
               {
                  §§push(3);
               }
               §§goto(addr180);
            }
            loop1:
            switch(§§pop())
            {
               case 0:
                  §?!r§.§"#_§("misc_menubuttonproceed_1");
                  if(_loc6_)
                  {
                     this.scroll(-this.§+Q§.visibleItemsCount);
                     break;
                     addr130:
                  }
                  break;
               case 1:
                  §?!r§.§"#_§("misc_menubuttonproceed_1");
                  if(_loc6_ || param2)
                  {
                     this.scroll(this.§+Q§.visibleItemsCount);
                     break;
                     addr108:
                  }
                  break;
               case 2:
                  §§push(this.§4"3§);
                  while(true)
                  {
                     if(§§pop().isOpen)
                     {
                        if(_loc6_ || param3)
                        {
                           §§push(this.§4"3§);
                           break;
                        }
                        break loop1;
                     }
                     §§push(this.§4"3§);
                     if(!(_loc6_ || param3))
                     {
                        break;
                     }
                     if(_loc6_ || param3)
                     {
                        §§pop().open();
                        if(_loc6_ || param3)
                        {
                           addr18:
                           break loop1;
                        }
                        break loop1;
                     }
                  }
                  §§pop().close();
                  if(!(_loc5_ && param3))
                  {
                     if(_loc6_ || this)
                     {
                        addr32:
                        §§goto(addr18);
                     }
                     else
                     {
                        §§goto(addr108);
                     }
                  }
                  break;
               default:
                  super.onUIInteraction(param1,param2,param3);
                  if(!_loc5_)
                  {
                     if(!_loc5_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr32);
                     }
                     else
                     {
                        §§goto(addr130);
                     }
                  }
            }
            return;
         }
         §§goto(addr180);
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+Q§.scroll(param1);
         }
         do
         {
            this.§9!V§();
         }
         while(!_loc2_);
         
      }
      
      private function §9!V§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§+Q§.offset == 0);
         if(!_loc3_)
         {
            §§push(!§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.§+Q§.offset == this.§+Q§.data.length - this.§+Q§.visibleItemsCount);
         if(_loc4_)
         {
            §§push(!§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            §§push(§^c§.getItemByName("Button_ScrollUp") as §^"m§);
            if(_loc4_)
            {
               if(_loc1_)
               {
                  addr105:
                  §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(_loc4_ || _loc2_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(§1"z§.COMPONENT_STATE_DISABLED);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop());
                  }
               }
               §§pop().setComponentState(§§pop());
               do
               {
                  §§push(§^c§.getItemByName("Button_ScrollDown") as §^"m§);
                  if(!_loc3_)
                  {
                     if(!_loc2_)
                     {
                        §§push(§1"z§.COMPONENT_STATE_DISABLED);
                        if(_loc4_)
                        {
                           §§push(§§pop());
                        }
                        continue;
                     }
                  }
                  §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  if(_loc4_)
                  {
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                     }
                  }
               }
               while(§§pop().setComponentState(§§pop()), _loc3_ && this);
               
               return;
               addr95:
            }
            §§goto(addr105);
         }
         §§goto(addr95);
      }
      
      protected function §-!?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this);
            §§push(§§findproperty(§4#9§));
            §§push(600);
            §§push(209);
            §§push(null);
            if(_loc1_ || _loc2_)
            {
               §§pop().§+Q§ = new §§pop().§4#9§(§§pop(),§§pop(),§§pop(),!!this.§=#Q§ ? §-!-§ : §6#7§,0,2);
               do
               {
                  this.§8"-§.mcItems.addChild(this.§+Q§.scrollerSprite);
                  do
                  {
                     this.§+Q§.scrollerSprite.addEventListener(§8";§.§&!b§,this.§1"h§,true);
                  }
                  while(!(_loc1_ || _loc2_));
                  
               }
               while(!_loc1_);
               
               return;
               addr52:
            }
            §§goto(addr77);
         }
         §§goto(addr52);
      }
      
      private function §1"h§(param1:§8";§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.stopImmediatePropagation();
            loop0:
            while(true)
            {
               §§push(this.§3#R§);
               addr78:
               loop1:
               while(true)
               {
                  if(!§§pop().§0" §)
                  {
                     do
                     {
                        this.§0Q§();
                        if(!_loc2_)
                        {
                           loop4:
                           while(true)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              addr74:
                              while(true)
                              {
                                 this.§8"-§.chkSelectAll.addEventListener(Event.CHANGE,this.§`!#§);
                                 continue loop4;
                              }
                           }
                           if(_loc2_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                     }
                     while(_loc3_ && this);
                     
                     return;
                  }
                  while(true)
                  {
                     this.§8"-§.chkSelectAll.removeEventListener(Event.CHANGE,this.§`!#§);
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§3#R§);
            if(!_loc3_)
            {
               §§pop().§0" § = false;
               §§goto(addr74);
            }
            §§goto(addr78);
         }
      }
      
      protected function §>b§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2"8§ = param1.filter(this.§'+§);
            while(true)
            {
               this.§2"8§.sortOn("name");
               loop1:
               for(; _loc3_; while(_loc3_ || _loc2_)
               {
                  this.§9!V§();
                  §§goto(addr42);
                  §§goto(addr29);
               })
               {
                  this.§8"-§.btnGetFriends.visible = this.§;"-§ != §<s§ && this.§2"8§.length <= 6;
                  while(true)
                  {
                     this.§#w§ = this.§2"8§.length;
                     addr102:
                     addr42:
                     while(true)
                     {
                        §§push(this.§+Q§);
                        §§push(this);
                        §§push(this.§2"8§);
                        if(_loc3_ || this)
                        {
                           if(this.§=#Q§)
                           {
                              addr76:
                              §§push(3);
                              if(_loc3_ || _loc3_)
                              {
                              }
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§pop().data = §§pop().§[!G§(§§pop(),§§pop());
                           continue loop1;
                        }
                        §§goto(addr76);
                     }
                     loop5:
                     while(_loc3_ || this)
                     {
                        while(true)
                        {
                           this.§0Q§();
                           if(_loc2_)
                           {
                              continue loop5;
                           }
                           if(_loc2_ && _loc2_)
                           {
                              continue loop1;
                           }
                           if(_loc3_)
                           {
                              break;
                           }
                           §§goto(addr102);
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      private function §0D§(param1:§`"b§, param2:§`"b§) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.§3"q§);
            loop0:
            while(true)
            {
               §§push(param1.id);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()[§§pop()]));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr297:
                              while(true)
                              {
                                 §§push(this.§3"q§);
                                 addr267:
                                 while(true)
                                 {
                                    §§push(param2.id);
                                    addr269:
                                    while(true)
                                    {
                                       §§push(!§§pop()[§§pop()]);
                                    }
                                 }
                              }
                           }
                           addr296:
                        }
                        while(true)
                        {
                           loop9:
                           while(!§§pop())
                           {
                              loop10:
                              while(true)
                              {
                                 §§push(this.§3"q§);
                                 loop11:
                                 while(!_loc3_)
                                 {
                                    §§push(param1.id);
                                    loop12:
                                    while(true)
                                    {
                                       if(_loc4_ || this)
                                       {
                                          if(_loc3_ && _loc3_)
                                          {
                                             break;
                                          }
                                          §§push(!§§pop()[§§pop()]);
                                          loop13:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop14:
                                             while(_loc4_)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      loop18:
                                                      while(!§§pop())
                                                      {
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(this.abfFriends);
                                                            loop20:
                                                            while(true)
                                                            {
                                                               §§push(param1.id);
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()[§§pop()]));
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr203:
                                                                           while(_loc4_)
                                                                           {
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.abfFriends);
                                                                                 addr161:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param2.id);
                                                                                    addr163:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop()[§§pop()]);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop13;
                                                                           addr203:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           loop24:
                                                                           while(!§§pop())
                                                                           {
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.abfFriends);
                                                                                 loop26:
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    §§push(param1.id);
                                                                                    loop27:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop()[§§pop()]);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop22;
                                                                                          }
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop29:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.abfFriends);
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop26;
                                                                                                            }
                                                                                                            §§push(param2.id);
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  continue loop29;
                                                                                                               }
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            §§goto(addr163);
                                                                                                            addr76:
                                                                                                            if(!(_loc4_ || _loc3_))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(!(_loc3_ && param1))
                                                                                                            {
                                                                                                               §§goto(addr91);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§3"q§);
                                                                                                               if(_loc3_ && param2)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  continue loop12;
                                                                                                               }
                                                                                                               §§goto(addr267);
                                                                                                            }
                                                                                                            continue loop11;
                                                                                                            addr263:
                                                                                                         }
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      §§goto(addr296);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§goto(addr263);
                                                                                                      }
                                                                                                      addr262:
                                                                                                   }
                                                                                                   §§goto(addr267);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr203);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr206);
                                                                                          }
                                                                                          while(§§pop())
                                                                                          {
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                §§goto(addr76);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                if(!(_loc3_ && param1))
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      break loop24;
                                                                                                   }
                                                                                                   if(!(_loc3_ && param2))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop10;
                                                                                                }
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(!(_loc4_ || param2))
                                                                                                      {
                                                                                                         break loop18;
                                                                                                      }
                                                                                                      continue loop25;
                                                                                                   }
                                                                                                   continue loop19;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr206);
                                                                                          }
                                                                                          §§push(0);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             return §§pop();
                                                                                          }
                                                                                          addr91:
                                                                                          §§push(1);
                                                                                          if(!(_loc3_ && param2))
                                                                                          {
                                                                                             return §§pop();
                                                                                          }
                                                                                          §§goto(addr175);
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr161);
                                                                              }
                                                                           }
                                                                           if(_loc3_ && _loc3_)
                                                                           {
                                                                              break loop9;
                                                                           }
                                                                           addr175:
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              §§goto(addr276);
                                                                           }
                                                                           addr233:
                                                                           return §§pop();
                                                                           §§push(-1);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr203);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr233);
                                                   }
                                                   addr230:
                                                }
                                                §§goto(addr262);
                                             }
                                             continue loop3;
                                          }
                                       }
                                       §§goto(addr269);
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                           }
                           if(_loc4_)
                           {
                              break;
                           }
                           §§goto(addr297);
                        }
                        addr276:
                        return §§pop();
                     }
                  }
               }
            }
         }
         §§goto(addr174);
      }
      
      private function §'+§(param1:§`"b§, param2:int, param3:Array) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function §71§(param1:String) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§]"V§ = null;
         var _loc2_:§@"b§ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
         var _loc4_:int = 0;
         var _loc5_:* = _loc2_.§'"?§.data;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!_loc6_)
               {
                  §§push(_loc3_ is §=!g§);
                  if(!_loc6_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc6_)
                        {
                           addr62:
                           continue;
                        }
                     }
                     else
                     {
                        if(_loc3_.userId != param1)
                        {
                           continue;
                        }
                        if(_loc6_)
                        {
                           continue;
                        }
                     }
                     §§push(true);
                     break;
                  }
                  break;
               }
               §§goto(addr62);
            }
            return false;
         }
         return §§pop();
      }
      
      private function §,!Q§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §?!r§.§"#_§("misc_menubuttonproceed_1");
            do
            {
               this.§`@§();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private function §>c§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §?!r§.§"#_§("misc_menubuttonproceed_1");
         }
         var _loc2_:§[!j§ = new §9"i§(§`"W§.§+v§,§+5§.§>!g§,§9"i§.§<s§);
         if(_loc3_ || _loc3_)
         {
            §4#;§.singleton.popupManager.openPopup(_loc2_,true,true,true,true);
         }
      }
      
      private function §`@§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§`"b§ = null;
         var _loc1_:Array = [];
         var _loc2_:Array = this.§2"8§.concat().sort(this.§0D§);
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            if(_loc4_.§0" §)
            {
               if(_loc7_)
               {
                  _loc1_.push(_loc4_.id);
                  if(!(_loc8_ && _loc2_))
                  {
                     _loc3_++;
                     if(!_loc8_)
                     {
                        if(_loc3_ < §&!§)
                        {
                           continue;
                        }
                     }
                  }
               }
               break;
            }
         }
         if(_loc7_)
         {
            §4#;§.singleton.§<#'§();
            loop1:
            while(true)
            {
               var _loc5_:* = this.§;"-§;
               if(_loc7_ || _loc2_)
               {
                  §§push(§%!§);
                  if(!(_loc8_ && _loc3_))
                  {
                     §§push(_loc5_);
                     if(!(_loc8_ && _loc2_))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc8_ && _loc3_))
                           {
                              §§push(0);
                              if(_loc8_)
                              {
                              }
                           }
                           else
                           {
                              addr265:
                              §§push(3);
                              if(_loc7_ || this)
                              {
                                 addr273:
                              }
                           }
                           addr278:
                           switch(§§pop())
                           {
                              case 0:
                                 §""v§.§&R§("flashSendHelpRequestToFriends",§@#B§(§4#;§.singleton.dataModel).§9!N§.name,JSON.stringify(_loc1_));
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 break loop1;
                              case 1:
                                 §""v§.§&R§("flashInviteFriendsHandler",JSON.stringify(_loc1_));
                                 if(_loc8_ && _loc1_)
                                 {
                                    break loop1;
                                 }
                                 continue;
                              case 2:
                                 §""v§.§&R§("flashSendGiftToFriends",§@#B§(§4#;§.singleton.dataModel).§9!N§.name,JSON.stringify(_loc1_));
                                 if(_loc7_ || _loc2_)
                                 {
                                    break;
                                 }
                                 while(this.§=#Q§)
                                 {
                                    if(_loc8_ && _loc3_)
                                    {
                                       break loop1;
                                    }
                                    if(!_loc8_)
                                    {
                                       close();
                                       break loop1;
                                    }
                                 }
                                 addr283:
                                 return;
                                 addr317:
                              case 3:
                                 §""v§.§&R§("flashSendChallengeToFriends",§@#B§(§4#;§.singleton.dataModel).§9!N§.name,JSON.stringify(_loc1_));
                                 if(_loc7_ || _loc3_)
                                 {
                                    if(false)
                                    {
                                       addr99:
                                       break;
                                    }
                                    break;
                                 }
                           }
                           this.§ !H§(_loc1_.length);
                           §§goto(addr317);
                        }
                        else
                        {
                           §§push(§<s§);
                           if(_loc7_)
                           {
                              §§push(_loc5_);
                              if(_loc7_ || _loc2_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(1);
                                       if(!_loc7_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr253:
                                       §§push(2);
                                       if(_loc7_ || this)
                                       {
                                       }
                                    }
                                    §§goto(addr278);
                                 }
                                 else
                                 {
                                    §§push(§%?§);
                                    if(_loc7_)
                                    {
                                       addr247:
                                       §§push(_loc5_);
                                       if(_loc7_)
                                       {
                                          addr250:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc7_)
                                             {
                                                §§goto(addr253);
                                             }
                                             else
                                             {
                                                §§goto(addr265);
                                             }
                                          }
                                          else
                                          {
                                             §§push(§8i§);
                                          }
                                          §§goto(addr265);
                                       }
                                       addr264:
                                       if(§§pop() === §§pop())
                                       {
                                          §§goto(addr265);
                                       }
                                       else
                                       {
                                          §§goto(addr278);
                                          §§push(4);
                                       }
                                       §§goto(addr278);
                                    }
                                    §§goto(addr264);
                                    §§push(_loc5_);
                                 }
                                 §§goto(addr278);
                              }
                              §§goto(addr250);
                           }
                           §§goto(addr247);
                        }
                     }
                  }
                  §§goto(addr247);
               }
               §§goto(addr265);
            }
         }
         §§goto(addr283);
      }
      
      private function §-#V§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         if(!_loc5_)
         {
            if(!param1)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
         }
         for each(_loc2_ in param1)
         {
            if(_loc6_)
            {
               this.§&"-§.§4T§(_loc2_);
            }
         }
         if(_loc6_)
         {
            this.§1#-§(param1.length);
         }
      }
      
      private function §`!Y§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         if(!_loc5_)
         {
            if(!param1)
            {
               if(_loc6_ || _loc2_)
               {
                  return;
               }
            }
         }
         for each(_loc2_ in param1)
         {
            if(_loc6_)
            {
               this.§&"-§.§^#K§(_loc2_);
            }
         }
         if(_loc6_)
         {
            this.§1#-§(param1.length);
         }
      }
      
      private function §+#F§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         if(!(_loc6_ && this))
         {
            if(!param1)
            {
               if(!(_loc6_ && _loc2_))
               {
                  §§goto(addr45);
               }
            }
            for each(_loc2_ in param1)
            {
               if(_loc5_)
               {
                  this.§&"-§.§!7§(_loc2_);
               }
            }
            if(!(_loc6_ && _loc2_))
            {
               this.§1#-§(param1.length);
            }
            return;
         }
         addr45:
      }
      
      private function §]">§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         if(!(_loc6_ && _loc2_))
         {
            if(!param1)
            {
               if(_loc5_ || _loc2_)
               {
                  return;
               }
            }
         }
         for each(_loc2_ in param1)
         {
            if(!(_loc6_ && this))
            {
               this.§&"-§.§3!8§(_loc2_);
            }
         }
         if(_loc5_)
         {
            this.§1#-§(param1.length);
         }
      }
      
      private function §1#-§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!this.§=#Q§)
            {
               loop0:
               while(true)
               {
                  this.§2"8§ = this.§2"8§.filter(this.§'+§);
                  while(true)
                  {
                     this.§![§();
                     loop2:
                     while(true)
                     {
                        this.§]"'§ += param1;
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              continue loop2;
                           }
                           if(_loc4_)
                           {
                              continue;
                           }
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                        }
                        §§goto(addr182);
                     }
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     if(!_loc3_)
                     {
                        var _loc2_:* = this.§;"-§;
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§%!§);
                           if(!_loc3_)
                           {
                              §§push(_loc2_);
                              if(_loc4_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(0);
                                       if(!_loc4_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr258:
                                       §§push(3);
                                       if(_loc4_ || param1)
                                       {
                                          addr266:
                                       }
                                    }
                                    §§goto(addr271);
                                 }
                                 else
                                 {
                                    §§push(§<s§);
                                    if(!_loc3_)
                                    {
                                       §§goto(addr212);
                                    }
                                    §§goto(addr256);
                                 }
                              }
                              §§goto(addr215);
                           }
                           addr212:
                           §§push(_loc2_);
                           if(!_loc3_)
                           {
                              addr215:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    addr223:
                                    §§push(1);
                                    if(!_loc4_)
                                    {
                                       §§goto(addr266);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr258);
                                 }
                                 §§goto(addr271);
                              }
                              else
                              {
                                 §§push(§%?§);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc3_ && this))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(2);
                                             if(!(_loc4_ || _loc2_))
                                             {
                                                §§goto(addr266);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr258);
                                          }
                                          §§goto(addr271);
                                       }
                                       else
                                       {
                                          addr256:
                                          §§push(§8i§);
                                          §§push(_loc2_);
                                       }
                                       §§goto(addr258);
                                    }
                                 }
                                 §§goto(addr256);
                              }
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr258);
                           }
                           else
                           {
                              §§push(4);
                           }
                           addr271:
                           switch(§§pop())
                           {
                              case 0:
                                 this.§2!b§.text = this.§]"'§.toString() + "/" + this.§#w§ + " Requests sent";
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 this.§'!J§(false);
                                 §§goto(addr323);
                              case 1:
                                 this.§2!b§.text = this.§]"'§.toString() + "/" + this.§#w§ + " Invites sent";
                                 if(_loc4_)
                                 {
                                    addr45:
                                    break;
                                 }
                                 addr280:
                                 break;
                              case 2:
                                 this.§2!b§.text = this.§]"'§.toString() + "/" + this.§#w§ + " Gifts sent";
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§goto(addr319);
                              case 3:
                                 this.§2!b§.text = this.§]"'§.toString() + "/" + this.§#w§ + " Friends challenged";
                                 if(_loc4_ || this)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    §§goto(addr45);
                                 }
                                 else
                                 {
                                    §§goto(addr280);
                                 }
                           }
                           if(this.§2"8§.length == 0)
                           {
                              if(_loc4_ || param1)
                              {
                                 addr319:
                                 this.§3#R§.§0" § = false;
                                 §§goto(addr323);
                              }
                              addr323:
                              if(_loc3_ && this)
                              {
                                 §§goto(addr323);
                              }
                              §§goto(addr281);
                           }
                           addr281:
                           return;
                        }
                        §§goto(addr223);
                     }
                     else
                     {
                        §§goto(addr182);
                     }
                  }
               }
            }
            close(true);
         }
         addr182:
      }
      
      private function §[!G§(param1:Array, param2:int) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:Array = null;
         var _loc6_:* = 0;
         var _loc3_:Array = [];
         if(_loc8_ || _loc3_)
         {
            §§push(param1);
            if(!_loc7_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc7_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!(_loc7_ && this))
                     {
                        §§pop();
                        if(!_loc7_)
                        {
                           §§goto(addr61);
                        }
                        §§goto(addr69);
                     }
                  }
               }
               addr61:
               §§goto(addr58);
            }
            addr58:
            §§goto(addr57);
         }
         addr57:
         if(param1.length > 0)
         {
            if(_loc8_ || _loc3_)
            {
               addr69:
               _loc4_ = 0;
            }
            while(_loc4_ < param1.length)
            {
               _loc5_ = [];
               if(!(_loc7_ && _loc3_))
               {
                  §§push(_loc4_);
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc6_ = §§pop();
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(_loc6_);
                              loop5:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop() < §§pop() + param2)
                                    {
                                       §§push(_loc6_);
                                       break;
                                    }
                                    if(_loc8_ || this)
                                    {
                                       if(_loc8_ || param1)
                                       {
                                          _loc3_.push(_loc5_);
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(_loc8_)
                                             {
                                                §§push(param2);
                                                if(_loc7_)
                                                {
                                                   continue loop6;
                                                }
                                                §§push(int(§§pop() + §§pop()));
                                             }
                                             if(_loc8_)
                                             {
                                                if(!(_loc8_ || param1))
                                                {
                                                   break loop6;
                                                }
                                                continue;
                                             }
                                             continue loop5;
                                          }
                                          addr155:
                                          _loc6_++;
                                          addr154:
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr154);
                                 }
                                 if(_loc7_ && this)
                                 {
                                    continue loop2;
                                 }
                                 if(_loc7_)
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop() < param1.length)
                                 {
                                    §§goto(addr174);
                                 }
                                 §§goto(addr155);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr129);
            }
         }
         return _loc3_;
      }
      
      private function §<!R§(param1:§,#_§) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            if(!_loc7_)
            {
               _loc2_.push(new §`"b§(_loc3_,param1[_loc3_]));
            }
         }
         return _loc2_;
      }
      
      private function §'!J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this.§=#Q§)
            {
               loop0:
               while(true)
               {
                  this.§8"-§.btnSend.alpha = !!param1 ? 1 : 0.2;
                  loop1:
                  while(true)
                  {
                     this.§8"-§.btnSendMore.alpha = !!param1 ? 1 : 0.2;
                     while(true)
                     {
                        this.§8"-§.btnInvite.alpha = !!param1 ? 1 : 0.2;
                        loop3:
                        while(!_loc3_)
                        {
                           this.§8"-§.btnInviteMore.alpha = !!param1 ? 1 : 0.2;
                           loop4:
                           while(true)
                           {
                              this.§8"-§.btnAsk.alpha = !!param1 ? 1 : 0.2;
                              while(true)
                              {
                                 this.§8"-§.btnAskMore.alpha = !!param1 ? 1 : 0.2;
                                 loop6:
                                 while(_loc2_)
                                 {
                                    while(true)
                                    {
                                       this.§8"-§.btnChallengeFriends.alpha = !!param1 ? 1 : 0.2;
                                       while(true)
                                       {
                                          this.§8"-§.btnChallengeFriendsMore.alpha = !!param1 ? 1 : 0.2;
                                          loop9:
                                          while(!_loc3_)
                                          {
                                             this.§8"-§.btnSend.mouseEnabled = param1;
                                             while(!_loc3_)
                                             {
                                                this.§8"-§.btnSendMore.mouseEnabled = param1;
                                                do
                                                {
                                                   this.§8"-§.btnInvite.mouseEnabled = param1;
                                                   loop12:
                                                   do
                                                   {
                                                      this.§8"-§.btnInviteMore.mouseEnabled = param1;
                                                      loop13:
                                                      while(!_loc3_)
                                                      {
                                                         this.§8"-§.btnAsk.mouseEnabled = param1;
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               this.§8"-§.btnAskMore.mouseEnabled = param1;
                                                               while(!_loc3_)
                                                               {
                                                                  this.§8"-§.btnChallengeFriends.mouseEnabled = param1;
                                                                  continue loop14;
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop13;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop9;
                                                   }
                                                   while(!_loc2_);
                                                   
                                                }
                                                while(!_loc2_);
                                                
                                                if(!_loc2_)
                                                {
                                                   continue;
                                                }
                                             }
                                             continue loop6;
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr167);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.removeEventListeners();
            do
            {
               super.hide(param1,param2);
            }
            while(!(_loc4_ || param2));
            
         }
      }
      
      private function § !H§(param1:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = "";
         if(_loc4_ || this)
         {
            if(this.§=#Q§)
            {
               §§push(this.§;"-§);
               if(!_loc5_)
               {
                  var _loc3_:* = §§pop();
                  if(_loc4_)
                  {
                     §§push(§<s§);
                     if(!_loc5_)
                     {
                        §§push(_loc3_);
                        if(_loc4_ || _loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc5_ && param1))
                              {
                                 §§push(0);
                                 if(_loc5_)
                                 {
                                 }
                                 addr201:
                                 if(_loc4_)
                                 {
                                    loop0:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          addr91:
                                          §§push(§6"]§.§4!§);
                                          if(_loc4_ || _loc2_)
                                          {
                                             _loc2_ = §§pop();
                                             addr374:
                                             §§push(_loc2_);
                                             break;
                                             addr282:
                                             addr100:
                                             addr67:
                                          }
                                          break;
                                       case 1:
                                          §§push(§6"]§.§@!O§);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop());
                                             if(_loc4_ || param1)
                                             {
                                                _loc2_ = §§pop();
                                                §§goto(addr282);
                                                addr83:
                                             }
                                             else
                                             {
                                                addr297:
                                                _loc3_ = §§pop();
                                                if(!_loc5_)
                                                {
                                                   §§push(§%?§);
                                                   if(!_loc5_)
                                                   {
                                                      addr303:
                                                      §§push(_loc3_);
                                                      if(!_loc5_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               addr309:
                                                               §§push(0);
                                                               if(_loc4_)
                                                               {
                                                                  addr312:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr350:
                                                               §§push(2);
                                                               if(!(_loc4_ || _loc2_))
                                                               {
                                                                  addr365:
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(§<s§);
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               addr321:
                                                               §§push(_loc3_);
                                                               if(_loc4_)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc5_ && _loc2_))
                                                                     {
                                                                        addr332:
                                                                        §§push(1);
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr370:
                                                                           switch(§§pop())
                                                                           {
                                                                              case 0:
                                                                                 addr288:
                                                                                 _loc2_ = §6"]§.§""x§;
                                                                                 break;
                                                                                 addr289:
                                                                                 addr287:
                                                                              case 1:
                                                                                 §§push(§6"]§.§^S§);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr271:
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          addr278:
                                                                                          _loc2_ = §§pop();
                                                                                          addr279:
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr247:
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr288);
                                                                                       }
                                                                                       §§goto(addr289);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr287);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr271);
                                                                              case 2:
                                                                                 §§push(§6"]§.§]_§);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr256:
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr271);
                                                                                    }
                                                                                 }
                                                                                 addr257:
                                                                                 _loc2_ = §§pop();
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 break;
                                                                              case 3:
                                                                                 §§push(§6"]§.§@!Y§);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc5_ && this)
                                                                                       {
                                                                                       }
                                                                                       break loop0;
                                                                                    }
                                                                                    §§goto(addr257);
                                                                                 }
                                                                                 _loc2_ = §§pop();
                                                                                 if(!(_loc5_ && _loc2_))
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr279);
                                                                                    }
                                                                                    §§goto(addr247);
                                                                                 }
                                                                                 §§goto(addr393);
                                                                           }
                                                                           §§goto(addr374);
                                                                           addr370:
                                                                        }
                                                                        §§goto(addr370);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr350);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(§%!§);
                                                                     if(_loc4_)
                                                                     {
                                                                        addr339:
                                                                        §§push(_loc3_);
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           addr347:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§goto(addr350);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr361:
                                                                              if(§8i§ !== _loc3_)
                                                                              {
                                                                                 §§goto(addr370);
                                                                                 §§push(4);
                                                                              }
                                                                           }
                                                                           §§goto(addr370);
                                                                           §§goto(addr370);
                                                                        }
                                                                        §§goto(addr361);
                                                                     }
                                                                  }
                                                                  §§goto(addr370);
                                                               }
                                                               §§goto(addr347);
                                                            }
                                                            §§goto(addr361);
                                                         }
                                                         §§goto(addr370);
                                                      }
                                                      §§goto(addr347);
                                                   }
                                                   §§goto(addr321);
                                                }
                                                §§goto(addr332);
                                             }
                                             §§goto(addr374);
                                          }
                                          §§goto(addr288);
                                       case 2:
                                          §§push(§6"]§.§-"O§);
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§push(§§pop());
                                             if(_loc4_)
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc4_ || this)
                                                         {
                                                            if(true)
                                                            {
                                                            }
                                                            §§goto(addr374);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr100);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr83);
                                                      }
                                                      §§goto(addr374);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr288);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr91);
                                                }
                                                §§goto(addr374);
                                             }
                                             else
                                             {
                                                §§goto(addr278);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr257);
                                          }
                                          §§goto(addr374);
                                       default:
                                          §§goto(addr374);
                                    }
                                    §§goto(addr385);
                                 }
                                 §§goto(addr370);
                              }
                              §§goto(addr309);
                           }
                           else
                           {
                              §§push(§%!§);
                              if(!(_loc5_ && this))
                              {
                                 §§push(_loc3_);
                                 if(_loc4_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(1);
                                          if(_loc4_)
                                          {
                                             §§goto(addr201);
                                          }
                                          §§goto(addr365);
                                       }
                                       §§goto(addr350);
                                    }
                                    else
                                    {
                                       §§push(§8i§);
                                       if(!_loc5_)
                                       {
                                          addr155:
                                          §§push(_loc3_);
                                          if(_loc4_ || this)
                                          {
                                             addr163:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   addr171:
                                                   §§push(2);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      §§goto(addr201);
                                                   }
                                                   §§goto(addr365);
                                                }
                                                §§goto(addr309);
                                             }
                                             else
                                             {
                                                §§push(3);
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§goto(addr201);
                                                }
                                             }
                                             §§goto(addr312);
                                          }
                                          §§goto(addr347);
                                       }
                                    }
                                    §§goto(addr303);
                                 }
                                 §§goto(addr163);
                              }
                           }
                           §§goto(addr339);
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr171);
               }
               §§goto(addr256);
               addr87:
            }
            else
            {
               §§push(this.§;"-§);
               if(!_loc5_)
               {
                  §§goto(addr297);
               }
            }
            addr385:
            if(§§pop() != "")
            {
               if(_loc4_)
               {
                  §6"]§.§8#2§(_loc2_,param1);
               }
            }
            addr393:
            return;
         }
         §§goto(addr87);
      }
   }
}
