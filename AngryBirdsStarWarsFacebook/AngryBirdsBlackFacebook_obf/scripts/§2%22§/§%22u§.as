package §2"§
{
   import § "4§.§4!?§;
   import §!"e§.EnergyOutPopup;
   import §!"e§.§`"W§;
   import §+!!§.§9"i§;
   import §,!,§.§4§;
   import §,"N§.§=!1§;
   import §,"N§.§?v§;
   import §,"N§.§@#B§;
   import §,"N§.§^"o§;
   import §7!$§.§&$§;
   import §7#W§.§2&§;
   import §7#W§.§6!W§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §="V§.§""v§;
   import §?m§.§[#;§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import §[!m§.§[!j§;
   import §`!o§.§+"k§;
   import §`!o§.§<9§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §"u§ extends AbstractPopup
   {
       
      
      private var §-r§:§4#9§;
      
      private var §&"-§:§=!1§;
      
      private var §^"V§:§4!?§;
      
      protected var §>!x§:Array;
      
      private var §+!b§:§[#;§;
      
      private var §!L§:int;
      
      private var §2z§:§^"o§;
      
      public function §"u§(param1:§[#;§, param2:int, param3:int)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§>!x§ = [];
            loop0:
            while(true)
            {
               this.§+!b§ = param1;
               loop1:
               while(true)
               {
                  this.§2z§ = §@#B§(§4#;§.singleton.dataModel).§6!G§;
                  while(true)
                  {
                     this.§&"-§ = §@#B§(§4#;§.singleton.dataModel).§;!A§;
                     loop3:
                     while(_loc5_ || param1)
                     {
                        while(true)
                        {
                           this.§^"V§ = §@#B§(§4#;§.singleton.dataModel).§9!N§;
                           while(_loc5_)
                           {
                              super(param2,param3,§&$§.§@8§.Popups.Popup_Inbox[0],"inbox");
                              if(_loc5_)
                              {
                                 if(_loc5_ || param1)
                                 {
                                    continue loop0;
                                 }
                                 continue loop3;
                                 continue loop3;
                              }
                           }
                           continue loop1;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      protected static function §"!8§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §@!m§(§4#;§.singleton).§""s§.§-"-§(param1);
         }
      }
      
      override protected function init() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && _loc2_))
         {
            super.init();
            while(true)
            {
               §""v§.addCallback("giftsSentToUsers",this.§+#F§);
               loop1:
               while(true)
               {
                  §5!"§.§;y§(this.§+!b§);
                  addr189:
                  while(true)
                  {
                     this.§-r§ = new §4#9§(660,225,null,§5!"§,0,15);
                     continue loop1;
                  }
               }
               if(_loc6_ && _loc1_)
               {
                  continue;
               }
               §§push(this.§-r§);
               if(_loc5_)
               {
                  if(_loc5_)
                  {
                     if(_loc5_)
                     {
                        if(_loc5_)
                        {
                           §§pop().scrollerSprite.addEventListener(§%r§.§8"L§,this.§2##§);
                           if(_loc5_ || _loc2_)
                           {
                              §§goto(addr48);
                           }
                           §§goto(addr68);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr83);
               }
               §§goto(addr62);
            }
         }
         §§goto(addr57);
      }
      
      private function §+t§(param1:§%r§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §?!r§.§"#_§("misc_menubuttonproceed_1");
            if(_loc3_)
            {
               param1.data.status = §5!"§.§!!i§;
            }
         }
         var _loc2_:§+"k§ = new §+"k§();
         if(!_loc4_)
         {
            this.§>!x§.push({
               "loader":_loc2_,
               "data":param1.data
            });
            while(true)
            {
               _loc2_.addEventListener(Event.COMPLETE,this.§^n§);
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push(§<9§);
                     §§push(§4#;§.SERVER_ROOT + "/acceptrequest/");
                     if(_loc3_)
                     {
                        §§push(§§pop() + param1.data.r);
                     }
                     §§pop().load(§§pop().§""I§(§§pop()));
                     if(_loc3_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr86);
      }
      
      private function §^n§(param1:Event) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:§?v§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§>!x§.length)
         {
            if(this.§>!x§[_loc2_].loader == param1.target)
            {
               if(_loc9_)
               {
                  _loc3_ = §+"k§(param1.target).data;
                  (_loc4_ = this.§>!x§[_loc2_].data).status = §5!"§.§]K§;
                  if(!(_loc8_ && param1))
                  {
                     _loc4_.content = _loc3_.itemId;
                     if(!(_loc8_ && this))
                     {
                        _loc4_.quantity = _loc3_.quantity;
                        loop1:
                        while(true)
                        {
                           loop2:
                           while(true)
                           {
                              _loc4_.receivedItems = _loc3_.receivedItems;
                              if(!_loc9_)
                              {
                                 break;
                              }
                              if(!_loc8_)
                              {
                                 this.§2z§.gifts.splice(this.§2z§.gifts.indexOf(_loc4_),1);
                                 if(_loc9_)
                                 {
                                    while(true)
                                    {
                                       if(true)
                                       {
                                          if(_loc3_.itemId == "Energy")
                                          {
                                             if(_loc9_)
                                             {
                                                break loop2;
                                             }
                                             break;
                                          }
                                          §@#B§(§4#;§.singleton.dataModel).§]"<§.§#!+§(_loc3_.itemId,_loc3_.quantity);
                                       }
                                       continue loop2;
                                    }
                                    addr164:
                                    this.§-r§.refresh();
                                    if(!_loc8_)
                                    {
                                       §""v§.§&R§("flashDeleteRequest",_loc4_.completeFacebookRequestId);
                                       if(_loc9_ || _loc3_)
                                       {
                                          addr181:
                                          this.§>!x§.splice(_loc2_,1);
                                          if(_loc9_)
                                          {
                                             addr188:
                                             §§push(§§findproperty(§"!8§));
                                             var _loc6_:*;
                                             §§push((_loc6_ = this).§!L§);
                                             if(_loc9_)
                                             {
                                                §§push(§§pop() - 1);
                                                if(_loc9_ || _loc3_)
                                                {
                                                   var _loc7_:*;
                                                   §§push(_loc7_ = §§pop());
                                                   if(_loc9_ || this)
                                                   {
                                                      _loc6_.§!L§ = _loc7_;
                                                   }
                                                }
                                             }
                                             §§pop().§"!8§(§§pop());
                                          }
                                          break loop0;
                                       }
                                    }
                                    §§goto(addr188);
                                    addr79:
                                 }
                                 break;
                              }
                              continue loop1;
                           }
                        }
                     }
                     (_loc5_ = §@#B§(§4#;§.singleton.dataModel).§^"J§).§@#K§(_loc3_.quantity);
                     if(_loc9_ || _loc3_)
                     {
                        §@!m§(§4#;§.singleton).§""s§.§5!Z§();
                        if(_loc9_)
                        {
                           §§goto(addr164);
                        }
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr79);
               }
               break;
            }
            _loc2_++;
            if(!_loc9_)
            {
               break;
            }
         }
      }
      
      private function §2##§(param1:§%r§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            param1.data.status = §5!"§.§2!N§;
         }
         var _loc2_:§+"k§ = new §+"k§();
         if(!_loc4_)
         {
            this.§>!x§.push({
               "loader":_loc2_,
               "data":param1.data
            });
            while(true)
            {
               _loc2_.addEventListener(Event.COMPLETE,this.§6j§);
               addr75:
               if(_loc4_ && _loc2_)
               {
                  continue;
               }
               return;
               addr82:
            }
         }
         while(true)
         {
            §§push(_loc2_);
            §§push(§<9§);
            §§push(§4#;§.SERVER_ROOT + "/acceptrequest/");
            if(_loc3_)
            {
               §§push(§§pop() + param1.data.r);
               if(_loc3_ || _loc3_)
               {
                  addr69:
                  §§push(§§pop() + "/true");
               }
               §§pop().load(§§pop().§""I§(§§pop()));
               if(_loc4_)
               {
                  continue;
               }
               §§goto(addr75);
            }
            §§goto(addr69);
         }
         §§goto(addr82);
      }
      
      private function §6j§(param1:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§>!x§.length)
         {
            if(this.§>!x§[_loc2_].loader != param1.target)
            {
               _loc2_++;
               if(!(_loc7_ || _loc2_))
               {
                  break;
               }
               continue;
            }
            if(!(_loc7_ || this))
            {
               continue;
            }
            _loc3_ = §+"k§(param1.target).data;
            (_loc4_ = this.§>!x§[_loc2_].data).status = §5!"§.§8l§;
            if(!_loc8_)
            {
               _loc4_.content = _loc3_.itemId;
               loop1:
               while(true)
               {
                  _loc4_.quantity = _loc3_.quantity;
                  loop2:
                  while(true)
                  {
                     _loc4_.receivedItems = _loc3_.receivedItems;
                     if(!_loc8_)
                     {
                        §§push(this.§2z§.inviteGifts);
                        loop3:
                        while(true)
                        {
                           §§pop().splice(this.§2z§.inviteGifts.indexOf(_loc4_),1);
                           if(_loc7_)
                           {
                              §@#B§(§4#;§.singleton.dataModel).§]"<§.§#!+§(_loc3_.itemId,_loc3_.quantity);
                              if(_loc7_)
                              {
                                 this.§-r§.refresh();
                                 loop4:
                                 while(_loc7_)
                                 {
                                    while(true)
                                    {
                                       §""v§.§&R§("flashDeleteRequest",_loc4_.completeFacebookRequestId);
                                       while(true)
                                       {
                                          if(!_loc8_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop4;
                                          addr72:
                                          §§pop().splice(_loc2_,1);
                                          if(!(_loc7_ || param1))
                                          {
                                             break;
                                          }
                                          if(_loc7_)
                                          {
                                             continue loop1;
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     addr192:
                     break loop0;
                  }
               }
            }
            while(true)
            {
               if(false)
               {
                  §§goto(addr93);
               }
               else
               {
                  §§push(§§findproperty(§"!8§));
                  var _loc5_:*;
                  §§push((_loc5_ = this).§!L§);
                  if(_loc7_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc7_ || param1)
                     {
                        addr182:
                        var _loc6_:*;
                        §§push(_loc6_ = §§pop());
                        if(!_loc8_)
                        {
                           _loc5_.§!L§ = _loc6_;
                        }
                     }
                     §§pop().§"!8§(§§pop());
                     §§goto(addr192);
                  }
                  §§goto(addr182);
               }
            }
         }
      }
      
      private function §,#"§(param1:§%r§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §?!r§.§"#_§("misc_menubuttonproceed_1");
            do
            {
               §4#;§.singleton.§<#'§();
               do
               {
                  §""v§.§&R§("flashSendGiftFriend",this.§^"V§.name,param1.data.i);
               }
               while(!_loc3_);
               
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      private function §`#]§(param1:§%r§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §?!r§.§"#_§("misc_menubuttonproceed_1");
            do
            {
               §4#;§.singleton.§<#'§();
               do
               {
                  §""v§.§&R§("flashSendGiftFriend",this.§^"V§.name,param1.data.i);
               }
               while(_loc2_);
               
            }
            while(_loc2_);
            
         }
      }
      
      private function §!"1§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Array = null;
         var _loc1_:MovieClip = §^c§.getItemByName("Container_Content").mClip;
         if(_loc5_ || _loc1_)
         {
            §§push(this.§2z§);
            loop0:
            while(true)
            {
               §§push(§§pop().§7#X§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           if(!(_loc4_ && _loc3_))
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§2z§);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop().§7#X§);
                                    if(!_loc4_)
                                    {
                                       if(_loc4_ && _loc3_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop().§8!Q§);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr111:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(!(_loc4_ && _loc1_))
                                             {
                                                if(!_loc4_)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§2z§);
                                                            addr125:
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§7#X§);
                                                               addr126:
                                                               while(true)
                                                               {
                                                                  §§pop().§%5§ = true;
                                                                  addr128:
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  continue loop10;
                                                               }
                                                            }
                                                         }
                                                         addr123:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§2z§);
                                                         if(_loc4_ && _loc3_)
                                                         {
                                                            break loop4;
                                                         }
                                                         if(!(_loc4_ && this))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop5;
                                                         }
                                                         §§goto(addr125);
                                                         §§goto(addr128);
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr327:
                                                   return;
                                                   addr121:
                                                }
                                                break;
                                             }
                                             continue loop3;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    §§goto(addr126);
                                 }
                                 break;
                              }
                              _loc2_ = §§pop().§4!s§();
                              if(_loc5_ || _loc1_)
                              {
                                 this.§!L§ = _loc2_.length;
                                 addr324:
                                 §§push(Boolean(this.§2z§.§7#X§));
                                 if(Boolean(this.§2z§.§7#X§))
                                 {
                                    addr308:
                                    §§pop();
                                    addr319:
                                    §§push(this.§2z§);
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       §§push(§§pop().§7#X§);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop().§8!Q§ == 0);
                                          if(_loc5_)
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr286:
                                                if(§§pop())
                                                {
                                                   if(_loc5_ || _loc1_)
                                                   {
                                                      §"!8§(_loc2_.length - 1);
                                                   }
                                                   addr241:
                                                   _loc1_.mcStatuses.stop();
                                                   addr235:
                                                   _loc1_.mcStatuses.visible = false;
                                                   this.§-r§.data = _loc2_;
                                                   addr300:
                                                   addr245:
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(_loc5_ || _loc1_)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               if(!(_loc4_ && _loc1_))
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr235);
                                                                  }
                                                                  addr325:
                                                                  this.§9!V§();
                                                                  §§goto(addr327);
                                                               }
                                                               §§goto(addr319);
                                                            }
                                                            §§goto(addr300);
                                                         }
                                                         addr253:
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            §§goto(addr241);
                                                         }
                                                         §§goto(addr324);
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                   addr240:
                                                   §§goto(addr240);
                                                }
                                                §"!8§(_loc2_.length);
                                                §§goto(addr253);
                                             }
                                             §§goto(addr324);
                                          }
                                          §§goto(addr308);
                                       }
                                    }
                                    §§goto(addr324);
                                 }
                                 §§goto(addr286);
                              }
                              §§goto(addr308);
                           }
                           break;
                        }
                        §§goto(addr325);
                     }
                     §§goto(addr121);
                  }
               }
            }
         }
         §§goto(addr128);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§[!j§ = null;
         if(_loc6_ || param1)
         {
            §§push(param2);
            while(true)
            {
               if(!§§pop())
               {
                  continue;
               }
            }
         }
         §§goto(addr125);
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1 != 0)
            {
               if(!_loc3_)
               {
                  this.§-r§.scroll(param1);
                  do
                  {
                     this.§9!V§();
                  }
                  while(!(_loc2_ || _loc3_));
                  
                  addr68:
               }
               §§goto(addr68);
            }
            return;
         }
         §§goto(addr68);
      }
      
      private function §9!V§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§-r§);
            if(!_loc3_)
            {
               §§push(Boolean(§§pop().data));
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        addr39:
                        addr37:
                        §§push(this.§-r§.offset == 0);
                        if(_loc3_ && _loc2_)
                        {
                        }
                        addr58:
                        var _loc1_:Boolean = §§pop();
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(this.§-r§);
                           if(!(_loc3_ && _loc1_))
                           {
                              §§push(Boolean(§§pop().data));
                              if(!(_loc3_ && this))
                              {
                                 §§push(§§pop());
                                 if(_loc4_ || _loc1_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr110:
                                          §§pop();
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             §§push(this.§-r§);
                                             if(_loc4_ || _loc1_)
                                             {
                                                addr127:
                                                §§push(§§pop().data.length > 0);
                                                if(_loc4_ || _loc1_)
                                                {
                                                   addr138:
                                                   addr139:
                                                   if(§§pop())
                                                   {
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         §§pop();
                                                         addr150:
                                                         §§push(this.§-r§.offset == this.§-r§.data.length - this.§-r§.visibleItemsCount);
                                                         if(_loc4_ || this)
                                                         {
                                                            addr167:
                                                            §§push(!§§pop());
                                                            if(_loc4_ || _loc1_)
                                                            {
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                      }
                                                   }
                                                   addr176:
                                                   var _loc2_:* = §§pop();
                                                   if(!(_loc3_ && this))
                                                   {
                                                      §^c§.getItemByName("Button_ScrollUp").visible = _loc1_;
                                                      do
                                                      {
                                                         §^c§.getItemByName("Button_ScrollDown").visible = _loc2_;
                                                      }
                                                      while(_loc3_ && _loc3_);
                                                      
                                                   }
                                                   return;
                                                   §§push(Boolean(§§pop()));
                                                }
                                                §§goto(addr167);
                                             }
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr150);
                     }
                     §§push(!§§pop());
                     if(_loc3_ && _loc1_)
                     {
                     }
                  }
               }
               §§goto(addr58);
            }
            §§goto(addr39);
         }
         §§goto(addr37);
      }
      
      private function §2!h§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!"1§();
         }
      }
      
      private function §+#F§(param1:Array) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         if(_loc12_)
         {
            if(!param1)
            {
               if(!_loc11_)
               {
                  §§goto(addr29);
               }
            }
            var _loc2_:* = false;
            for each(_loc3_ in param1)
            {
               if(!(_loc11_ && this))
               {
                  var _loc7_:int = 0;
                  if(_loc12_)
                  {
                     loop1:
                     for each(_loc4_ in this.§-r§.data)
                     {
                        if(_loc12_)
                        {
                           if(_loc3_ != _loc4_.i)
                           {
                              continue;
                           }
                           loop2:
                           while(true)
                           {
                              if(_loc4_.status != §5!"§.§8l§)
                              {
                                 if(_loc4_.status != §5!"§.§]K§)
                                 {
                                    if(_loc4_.status == §5!"§.§8!!§)
                                    {
                                       if(!(_loc11_ && param1))
                                       {
                                          if(_loc12_ || param1)
                                          {
                                             if(!_loc11_)
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   _loc4_.status = §5!"§.§["D§;
                                                   if(!(_loc12_ || _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         if(false)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(true);
                                                               if(!_loc11_)
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     addr212:
                                                                     this.§&"-§.§!7§(_loc4_.i);
                                                                     break loop6;
                                                                     addr131:
                                                                  }
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     addr150:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           if(_loc12_)
                                                                           {
                                                                              break loop3;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        addr164:
                                                                        while(true)
                                                                        {
                                                                           _loc4_.status = §5!"§.§?S§;
                                                                           if(_loc12_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           addr208:
                                                                           §§push(true);
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                  }
                                                                  §§goto(addr212);
                                                                  §§goto(addr212);
                                                               }
                                                               _loc2_ = §§pop();
                                                               if(_loc11_)
                                                               {
                                                                  break loop6;
                                                               }
                                                               §§goto(addr212);
                                                            }
                                                            addr125:
                                                         }
                                                         else
                                                         {
                                                            §§push(§§findproperty(§"!8§));
                                                            var _loc9_:*;
                                                            §§push((_loc9_ = this).§!L§);
                                                            if(_loc12_ || _loc2_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                               if(!_loc11_)
                                                               {
                                                                  var _loc10_:*;
                                                                  §§push(_loc10_ = §§pop());
                                                                  if(_loc12_ || _loc2_)
                                                                  {
                                                                     _loc9_.§!L§ = _loc10_;
                                                                  }
                                                               }
                                                            }
                                                            §§pop().§"!8§(§§pop());
                                                            if(_loc12_ || param1)
                                                            {
                                                               §§goto(addr208);
                                                            }
                                                            §§goto(addr212);
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               _loc4_.status = §5!"§.§>!s§;
                                                               while(true)
                                                               {
                                                                  §§goto(addr125);
                                                               }
                                                               addr146:
                                                            }
                                                         }
                                                         addr140:
                                                      }
                                                      §§goto(addr150);
                                                   }
                                                }
                                                continue loop1;
                                                addr94:
                                             }
                                             §§goto(addr146);
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr105);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr164);
                           }
                        }
                        §§goto(addr94);
                     }
                  }
               }
            }
            if(!(_loc11_ && this))
            {
               if(_loc2_)
               {
                  if(!_loc11_)
                  {
                     addr246:
                     this.§-r§.refresh();
                  }
               }
               return;
            }
            §§goto(addr246);
         }
         addr29:
      }
      
      private function §1G§(param1:§%r§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         if(_loc4_ || this)
         {
            §?!r§.§"#_§("misc_menubuttonproceed_1");
         }
         var _loc2_:§?v§ = §@#B§(§4#;§.singleton.dataModel).§^"J§;
         if(_loc4_)
         {
            §§push(§4#;§.singleton);
            loop0:
            while(true)
            {
               if(§§pop().dataModel.userProgress.isLevelOpen(param1.data.lvl))
               {
                  if(_loc4_ || _loc2_)
                  {
                     if(param1.data.lvl.indexOf("2000-") < 0)
                     {
                        §@!m§(§4#;§.singleton).§%"#§(param1.data.lvl);
                        loop1:
                        while(true)
                        {
                           if(_loc4_ || this)
                           {
                              loop9:
                              while(true)
                              {
                                 this.removeRequest(param1.data);
                                 while(!(_loc5_ && _loc3_))
                                 {
                                    close(false);
                                    if(_loc4_)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 addr208:
                                 addr207:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc4_ || param1))
                                    {
                                       break;
                                    }
                                    if(§§pop() > 0)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    §§goto(addr208);
                                 }
                                 addr76:
                                 loop4:
                                 while(true)
                                 {
                                    continue loop9;
                                    addr107:
                                    while(true)
                                    {
                                       continue loop4;
                                    }
                                 }
                              }
                              return;
                              addr62:
                              addr63:
                           }
                           while(true)
                           {
                              if(_loc4_ || this)
                              {
                                 §@!m§(§4#;§.singleton).§%"#§(param1.data.lvl);
                                 loop3:
                                 while(true)
                                 {
                                    §§goto(addr76);
                                    addr136:
                                    addr112:
                                    while(true)
                                    {
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          close(false);
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    return;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                 }
                                 addr204:
                              }
                              §§goto(addr207);
                           }
                        }
                     }
                  }
                  §§goto(addr204);
               }
               §§goto(addr63);
            }
         }
         §§goto(addr107);
      }
      
      private function §'l§(param1:§%r§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §?!r§.§"#_§("misc_menubuttonproceed_1");
            while(true)
            {
               this.removeRequest(param1.data);
               loop1:
               for(; !(_loc3_ && _loc2_); while(!(_loc3_ && _loc2_))
               {
                  §@!m§(§4#;§.singleton).§ g§(§6!W§.§^!7§);
                  if(!(_loc3_ && this))
                  {
                     return;
                  }
               })
               {
                  while(true)
                  {
                     close(false);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      private function get §^T§() : Boolean
      {
         return §@!m§(§4#;§.singleton).§]?§() == §2&§.§^!7§;
      }
      
      private function §@#V§(param1:§%r§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §?!r§.§"#_§("misc_menubuttonproceed_1");
            do
            {
               this.removeRequest(param1.data);
            }
            while(_loc2_);
            
         }
      }
      
      private function removeRequest(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:int = 0;
         if(!(_loc5_ && param1))
         {
            §§push(this.§2z§);
            if(!(_loc5_ && param1))
            {
               §§push(§§pop().brags);
               if(!(_loc5_ && _loc2_))
               {
                  if(§§pop().indexOf(param1) != -1)
                  {
                     while(true)
                     {
                        §§push(this.§2z§);
                        addr194:
                        addr58:
                        while(true)
                        {
                           §§push(§§pop().brags);
                           addr195:
                           while(true)
                           {
                              §§push(this.§2z§);
                              addr197:
                              while(true)
                              {
                                 §§push(§§pop().brags);
                                 addr198:
                                 while(true)
                                 {
                                    §§pop().splice(§§pop().indexOf(param1),1);
                                    addr202:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                        }
                        if(!(_loc6_ || this))
                        {
                           continue;
                        }
                        if(false)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(this.§-r§);
                              loop8:
                              while(!_loc5_)
                              {
                                 §§pop().data.splice(this.§-r§.data.indexOf(param1),1);
                                 loop9:
                                 for(; _loc6_; if(_loc6_ || this)
                                 {
                                    continue loop7;
                                 })
                                 {
                                    §§push(this.§-r§);
                                    if(_loc5_ && _loc2_)
                                    {
                                       continue loop8;
                                    }
                                    addr37:
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§pop().setData(this.§-r§.data,false);
                                       if(_loc5_)
                                       {
                                          this.scroll(_loc2_);
                                       }
                                       else
                                       {
                                          addr258:
                                          addr255:
                                       }
                                       continue;
                                       return;
                                    }
                                    addr102:
                                    while(true)
                                    {
                                       _loc2_ = §§pop().offset;
                                       break loop9;
                                       §§goto(addr37);
                                    }
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       addr112:
                                       if(_loc6_ || param1)
                                       {
                                          continue loop7;
                                       }
                                       addr142:
                                       while(true)
                                       {
                                          §§push(this.§2z§);
                                          addr144:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                break loop6;
                                             }
                                             §§push(§§pop().challenges);
                                             while(!(_loc5_ && _loc3_))
                                             {
                                                §§push(this.§2z§);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop().challenges);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      §§pop().splice(§§pop().indexOf(param1),1);
                                                      addr170:
                                                      while(true)
                                                      {
                                                      }
                                                      addr170:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr198);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§-r§);
                                                      break loop8;
                                                      §§goto(addr170);
                                                   }
                                                   addr83:
                                                }
                                                else
                                                {
                                                   §§goto(addr197);
                                                }
                                                §§goto(addr198);
                                             }
                                             §§goto(addr195);
                                          }
                                          §§goto(addr112);
                                       }
                                    }
                                    §§goto(addr170);
                                 }
                                 §§goto(addr194);
                              }
                              while(§§pop().data.indexOf(param1) != -1)
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§goto(addr102);
                                       §§push(this.§-r§);
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr105);
                              }
                              §§goto(addr258);
                           }
                           continue;
                        }
                        §§push(§§findproperty(§"!8§));
                        var _loc3_:*;
                        §§push((_loc3_ = this).§!L§);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(§§pop() - 1);
                           if(!(_loc5_ && _loc3_))
                           {
                              var _loc4_:*;
                              §§push(_loc4_ = §§pop());
                              if(!(_loc5_ && _loc2_))
                              {
                                 _loc3_.§!L§ = _loc4_;
                              }
                           }
                        }
                        §§pop().§"!8§(§§pop());
                        if(_loc6_ || _loc2_)
                        {
                           §§goto(addr255);
                        }
                        §§goto(addr258);
                     }
                  }
                  while(true)
                  {
                     §§push(this.§2z§);
                     if(_loc6_)
                     {
                        §§push(§§pop().challenges);
                        if(_loc6_)
                        {
                           if(§§pop().indexOf(param1) != -1)
                           {
                              §§goto(addr142);
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr144);
                     §§goto(addr202);
                  }
               }
               §§goto(addr195);
            }
            §§goto(addr194);
         }
         §§goto(addr202);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.dispose();
            while(true)
            {
               §""v§.§&z§("giftsSentToUsers",this.§+#F§);
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     this.§2z§.removeEventListener(Event.CHANGE,this.§2!h§);
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
   }
}
