package §1p§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import §'!s§.Popup;
   import §'!s§.StatePopupManager;
   import §+N§.§@!]§;
   import §-!+§.§5!!§;
   import §2`§.§`"'§;
   import §3!7§.§?!F§;
   import §<a§.§!!m§;
   import §<a§.§+!B§;
   import §[!K§.§-k§;
   import §]!>§.§0!!§;
   import §]!A§.;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §,O§ extends Popup
   {
      
      protected static var §=F§:§0]§;
      
      protected static var §+!R§:Array;
      
      protected static var §2"<§:§,O§;
      
      protected static var §9j§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9j§ = [];
         }
      }
      
      protected var §8a§:§5!!§;
      
      protected var set:Array;
      
      public function §,O§(param1:§7!A§, param2:StatePopupManager, param3:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.set = [];
            while(true)
            {
               §2"<§ = this;
               loop1:
               while(!(_loc5_ && param1))
               {
                  while(true)
                  {
                     §§push(param3);
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §,!?§();
                              addr228:
                              while(!_loc5_)
                              {
                              }
                              continue loop1;
                           }
                           addr226:
                        }
                        while(true)
                        {
                           super(§ "A§.§4[§.Views.PopupView_GiftInbox[0],param1);
                           while(true)
                           {
                              §§push(this);
                              §§push(§§findproperty(§5!!§));
                              §§push(660);
                              §§push(280);
                              if(!_loc5_)
                              {
                                 §§pop().§8a§ = new §§pop().§5!!§(§§pop(),§§pop(),§+!R§ || [],§]"E§,0,15);
                                 continue;
                              }
                              §§goto(addr187);
                           }
                        }
                        while(true)
                        {
                           §§push(§6I§);
                           if(!_loc4_)
                           {
                              break;
                           }
                           if(!§§pop())
                           {
                              if(§+!R§.length > 0)
                              {
                                 if(!(_loc5_ && param3))
                                 {
                                    mClip.mcStatuses.visible = false;
                                 }
                                 §§goto(addr69);
                              }
                              else
                              {
                                 mClip.mcStatuses.gotoAndStop(2);
                              }
                              §§goto(addr46);
                           }
                           §§goto(addr98);
                           §§goto(addr78);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr242);
      }
      
      public static function §,!?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§=F§);
            while(!§§pop())
            {
               while(true)
               {
                  §+!R§ = [];
                  while(!(_loc2_ && _loc1_))
                  {
                     §=F§ = new §0]§();
                     while(true)
                     {
                        §§push(§=F§);
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,§5r§);
                           addr149:
                           loop5:
                           while(true)
                           {
                              §§push(§=F§);
                              loop6:
                              while(true)
                              {
                                 §§pop().addEventListener(IOErrorEvent.IO_ERROR,§`!0§);
                                 addr140:
                                 while(!_loc2_)
                                 {
                                    §§push(§=F§);
                                    continue loop6;
                                 }
                                 continue loop5;
                              }
                           }
                           while(!(_loc2_ && _loc2_))
                           {
                              §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                              §§goto(addr89);
                              §§goto(addr98);
                           }
                        }
                        if(_loc1_ || _loc1_)
                        {
                           return;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr149);
      }
      
      protected static function §`!0§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(param1.type != §+!D§.§25§)
            {
               §%?§.§4!>§();
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §=F§ = null;
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           return;
                        }
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(true)
            {
               §%?§.§6!7§(§-d§.§]x§);
            }
         }
         §§goto(addr75);
      }
      
      private static function §5r§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr65:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               addr67:
               while(true)
               {
                  addr36:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop0;
                  }
                  try
                  {
                     addr68:
                     var dataObject:Object = JSON.parse(§=F§.data);
                     if(!(_loc6_ && §,O§))
                     {
                        §9j§ = §9j§.concat(dataObject.brags);
                        if(_loc5_)
                        {
                           §+!R§ = dataObject.gifts.concat(§9j§);
                           addr145:
                           §=F§ = null;
                           addr159:
                           if(!_loc6_)
                           {
                              §§push(§2"<§);
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          addr140:
                                          §2"<§.§0"4§();
                                          if(!_loc6_)
                                          {
                                             §§goto(addr143);
                                          }
                                          §§goto(addr213);
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr143);
                                 }
                                 addr143:
                                 if(false)
                                 {
                                    §§goto(addr145);
                                 }
                                 var _loc3_:int = 0;
                                 if(!_loc6_)
                                 {
                                    var _loc4_:* = dataObject.brags;
                                    if(!_loc6_)
                                    {
                                       addr202:
                                       for each(bragObject in _loc4_)
                                       {
                                          if(_loc5_ || param1)
                                          {
                                             addr196:
                                             §@!]§.§9"'§("flashDeleteRequest",bragObject.r);
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr205);
                                    }
                                    §§goto(addr196);
                                 }
                                 addr205:
                                 if(!(_loc6_ && §,O§))
                                 {
                                    addr213:
                                    §=<§();
                                    §§goto(addr215);
                                 }
                                 addr215:
                                 return;
                              }
                              §§goto(addr140);
                           }
                        }
                        §§goto(addr213);
                     }
                  }
                  catch(e:Error)
                  {
                     addr83:
                     throw new Error("Error parsing JSON: " + §=F§.data,§!!m§.§4H§);
                  }
                  §§goto(addr213);
               }
            }
         }
      }
      
      public static function injectData(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §9j§ = §9j§.concat(param1.brags);
            while(true)
            {
               §+!R§ = param1.gifts.concat(§9j§);
               addr72:
               while(_loc2_)
               {
               }
            }
         }
         while(true)
         {
            §§push(§2"<§);
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     if(_loc2_)
                     {
                        §§push(§2"<§);
                        break;
                     }
                     §§goto(addr72);
                  }
                  addr64:
               }
               return;
            }
            break;
         }
         §§pop().§0"4§();
         §§goto(addr64);
      }
      
      public static function get §0"6§() : Boolean
      {
         return §+!R§.length > 0;
      }
      
      public static function get §6I§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§=F§ == null);
         if(!(_loc1_ && §,O§))
         {
            return !§§pop();
         }
      }
      
      protected static function §=<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§#6§.§ q§ as §3T§).§0#§.§5!,§(§,!g§);
         }
      }
      
      public static function get §,!g§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in §+!R§)
         {
            if(_loc6_ || _loc3_)
            {
               if(!_loc2_.lvl)
               {
                  §§push(!_loc2_.status);
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc6_ || _loc2_)
                           {
                              _loc1_++;
                           }
                           if(_loc5_)
                           {
                              while(true)
                              {
                                 §§push(_loc2_.status == §]"E§.§<!p§);
                                 if(!_loc5_)
                                 {
                                    continue loop1;
                                 }
                              }
                              continue loop1;
                              addr109:
                           }
                           if(_loc6_ || §,O§)
                           {
                              if(_loc6_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 addr113:
                                 _loc1_++;
                                 addr114:
                              }
                              break;
                           }
                           §§goto(addr114);
                        }
                        continue loop0;
                        addr67:
                     }
                     while(true)
                     {
                        §§pop();
                        §§goto(addr109);
                     }
                  }
               }
            }
            §§goto(addr113);
         }
         return _loc1_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
         }
         loop0:
         while(true)
         {
            if(§2"<§ != this)
            {
               loop3:
               while(true)
               {
                  preClose();
                  while(_loc2_)
                  {
                     §@!]§.§[">§("giftsSentToUsers",this.§<!_§);
                     if(!_loc1_)
                     {
                        if(!_loc1_)
                        {
                           break loop3;
                        }
                        continue loop0;
                     }
                  }
                  addr75:
                  while(true)
                  {
                     continue loop3;
                  }
               }
               return;
            }
         }
      }
      
      private function §`H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§@o§();
            loop0:
            while(true)
            {
               §§push(this.§8a§);
               loop1:
               while(true)
               {
                  §§pop().scrollerSprite.addEventListener(§`"'§.§^!z§,this.§,!M§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§8a§);
                     loop3:
                     while(_loc2_)
                     {
                        §§pop().scrollerSprite.addEventListener(§`"'§.§!T§,this.§`$§);
                        loop4:
                        while(true)
                        {
                           §§push(this.§8a§);
                           while(true)
                           {
                              §§pop().scrollerSprite.addEventListener(§`"'§.§+x§,this.§-"0§);
                              §§push(this.§8a§);
                              addr90:
                              continue loop4;
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(!_loc1_)
                                 {
                                    §§pop().scrollerSprite.addEventListener(§`"'§.§<#§,this.§@!,§);
                                    if(_loc2_)
                                    {
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(!_loc1_)
                                          {
                                             return;
                                             addr63:
                                          }
                                          continue loop0;
                                       }
                                       continue loop2;
                                    }
                                    continue loop4;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      private function §@o§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§8a§);
            while(true)
            {
               §§pop().scrollerSprite.removeEventListener(§`"'§.§^!z§,this.§,!M§);
            }
            addr97:
         }
         loop1:
         while(true)
         {
            §§push(this.§8a§);
            while(true)
            {
               §§pop().scrollerSprite.removeEventListener(§`"'§.§!T§,this.§`$§);
               loop3:
               while(!_loc2_)
               {
                  §§push(this.§8a§);
                  loop4:
                  while(true)
                  {
                     §§pop().scrollerSprite.removeEventListener(§`"'§.§+x§,this.§-"0§);
                     addr80:
                     while(!_loc2_)
                     {
                        continue loop4;
                     }
                     continue loop3;
                  }
               }
               continue loop1;
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               if(_loc1_)
               {
                  §§pop().scrollerSprite.removeEventListener(§`"'§.§<#§,this.§@!,§);
                  if(_loc2_)
                  {
                     §§goto(addr80);
                  }
                  return;
               }
               §§goto(addr97);
            }
         }
      }
      
      private function §9D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§'9§();
            while(true)
            {
               mClip.EasterEggButton4.addEventListener(MouseEvent.CLICK,this.§%n§);
               loop1:
               while(true)
               {
                  mClip.btnUp.addEventListener(MouseEvent.CLICK,this.§2!d§);
                  loop2:
                  while(true)
                  {
                     mClip.btnDown.addEventListener(MouseEvent.CLICK,this.§!?§);
                     loop3:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!a§);
                           do
                           {
                              mClip.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§@"#§);
                           }
                           while(_loc2_);
                           
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr64);
            }
         }
         §§goto(addr94);
      }
      
      private function §'9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            mClip.EasterEggButton4.removeEventListener(MouseEvent.CLICK,this.§%n§);
            while(true)
            {
               mClip.btnUp.removeEventListener(MouseEvent.CLICK,this.§2!d§);
               loop1:
               while(_loc1_)
               {
                  mClip.btnDown.removeEventListener(MouseEvent.CLICK,this.§!?§);
                  loop2:
                  while(true)
                  {
                     mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.§@!a§);
                     loop3:
                     while(_loc1_)
                     {
                        while(true)
                        {
                           mClip.btnSendGifts.removeEventListener(MouseEvent.CLICK,this.§@"#§);
                           if(_loc1_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.open(param1);
            while(true)
            {
               mClip.x = (mClip.stage.stageWidth - 716) / 2;
               addr119:
               while(true)
               {
                  mClip.y = (mClip.stage.stageHeight - 550) / 2;
               }
            }
            addr123:
         }
         while(true)
         {
            if(!(AngryBirdsFP11.sUserProgress as §[<§).§6M§("1000-4"))
            {
               if(_loc2_)
               {
                  continue;
               }
               addr95:
               while(true)
               {
                  if(!_loc3_)
                  {
                     do
                     {
                        §@!]§.addCallback("giftsSentToUsers",this.§<!_§);
                     }
                     while(_loc3_ && _loc3_);
                     
                     continue;
                  }
                  §§goto(addr123);
               }
               §§goto(addr119);
            }
            else
            {
               mClip.EasterEggButton4.visible = false;
            }
            while(true)
            {
               if(_loc2_)
               {
                  §§goto(addr63);
               }
               §§goto(addr119);
            }
         }
      }
      
      private function §,!M§(param1:§`"'§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            param1.data.status = §]"E§.§4!1§;
         }
         var _loc2_:int = 15;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            mClip.mcContainer.addChild(new GiftParticle(460 + Math.random() * 20,param1.target.y + 140 + Math.random() * 20));
            if(_loc6_ && param1)
            {
               break;
            }
            _loc3_++;
            if(!_loc5_)
            {
               break;
            }
         }
         var _loc4_:§0]§ = new §0]§();
         if(!(_loc6_ && this))
         {
            this.set.push({
               "loader":_loc4_,
               "data":param1.data
            });
            loop1:
            while(true)
            {
               _loc4_.addEventListener(Event.COMPLETE,this.§[§);
               addr171:
               while(true)
               {
                  _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§5"D§);
                  while(true)
                  {
                     _loc4_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5"D§);
                     addr131:
                     while(_loc5_ || _loc3_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         loop5:
         while(true)
         {
            _loc4_.addEventListener(§+!D§.§25§,this.§5"D§);
            while(!_loc6_)
            {
               §§push(_loc4_);
               §§push(§-!l§);
               §§push(AngryBirdsFP11.§76§ + "/acceptrequest/");
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() + param1.data.r);
               }
               §§pop().load(§§pop().§%""§(§§pop()));
               if(_loc6_)
               {
                  continue;
               }
               if(!_loc6_)
               {
                  break loop5;
               }
               §§goto(addr131);
            }
            §§goto(addr171);
         }
      }
      
      protected function §5"D§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1.type != §+!D§.§25§)
            {
               §%?§.§4!>§();
               if(_loc2_)
               {
                  if(!(_loc2_ || param1))
                  {
                     addr68:
                     §%?§.§6!7§(§-d§.§]x§);
                     addr72:
                  }
                  return;
               }
               §§goto(addr72);
            }
         }
         §§goto(addr68);
      }
      
      private function §[§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     for(; !(_loc5_ && _loc2_); while(true)
                     {
                        if(_loc5_ && _loc2_)
                        {
                           continue loop4;
                        }
                        §§push(§§newactivation());
                        if(!(_loc5_ && _loc3_))
                        {
                           continue loop3;
                        }
                        §§goto(addr52);
                     },continue loop3)
                     {
                        do
                        {
                           §§push(§§newactivation());
                           while(true)
                           {
                              §§pop().§§slot[1] = param1;
                              continue loop4;
                           }
                        }
                        while(false);
                        
                        addr189:
                        §§push(§§newactivation());
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              §§push(§§pop().§§slot[2]);
                              if(!(_loc5_ && _loc2_))
                              {
                                 if(_loc4_)
                                 {
                                    if(§§pop() >= this.set.length)
                                    {
                                       if(!(_loc4_ || param1))
                                       {
                                          addr231:
                                          if(!_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§goto(addr189);
                                                   }
                                                   addr351:
                                                   if(!_loc5_)
                                                   {
                                                      addr331:
                                                      §§push(§§newactivation());
                                                      if(!(_loc4_ || param1))
                                                      {
                                                         addr346:
                                                         §§pop().§§slot[4].content = responseData.itemId;
                                                         §§goto(addr351);
                                                      }
                                                      §§pop().§§slot[4].quantity = responseData.quantity;
                                                      addr313:
                                                      giftData.receivedItems = responseData.receivedItems;
                                                      §?!F§.§;"§.§4!J§(responseData.itemId,responseData.quantity);
                                                      addr343:
                                                      if(!_loc5_)
                                                      {
                                                         this.§8a§.§7C§();
                                                         §@!]§.§9"'§("flashDeleteRequest",giftData.completeFacebookRequestId);
                                                         addr290:
                                                         addr297:
                                                         if(_loc4_)
                                                         {
                                                            addr278:
                                                            this.set.splice(i,1);
                                                            addr280:
                                                            if(_loc4_)
                                                            {
                                                               this.§&N§(responseData.itemId,responseData.quantity);
                                                               addr263:
                                                               if(!_loc5_)
                                                               {
                                                                  if(!(_loc4_ || _loc2_))
                                                                  {
                                                                     §§goto(addr343);
                                                                  }
                                                                  §=<§();
                                                                  addr216:
                                                                  return;
                                                                  addr253:
                                                                  addr215:
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                            §§goto(addr297);
                                                            addr277:
                                                            addr276:
                                                         }
                                                         §§goto(addr343);
                                                      }
                                                      addr318:
                                                      §§goto(addr318);
                                                      addr353:
                                                   }
                                                   §§goto(addr346);
                                                   §§push(§§newactivation());
                                                   addr359:
                                                }
                                                §§goto(addr280);
                                             }
                                             §§goto(addr263);
                                          }
                                          §§goto(addr253);
                                       }
                                       §§goto(addr215);
                                    }
                                    §§push(this.set);
                                    if(_loc4_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc4_)
                                       {
                                          §§push(§§pop().§§slot[2]);
                                          if(!(_loc5_ && this))
                                          {
                                             if(§§pop()[§§pop()].loader == e.target)
                                             {
                                                if(!_loc5_)
                                                {
                                                   try
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         addr228:
                                                         var i:int = §§pop().§§slot[2] + 1;
                                                         addr226:
                                                         §§goto(addr231);
                                                      }
                                                      §§pop().§§slot[3] = JSON.parse((e.target as §0]§).data);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc4_)
                                                         {
                                                            §§pop().§§slot[4] = this.set[i].data;
                                                            if(_loc4_ || param1)
                                                            {
                                                               addr355:
                                                               giftData.status = §]"E§.§30§;
                                                               §§goto(addr359);
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         §§goto(addr346);
                                                      }
                                                   }
                                                   catch(error:Error)
                                                   {
                                                      throw new Error("Error parsing JSON: " + (e.target as §0]§).data,§!!m§.§4H§);
                                                   }
                                                   §§goto(addr226);
                                                }
                                                §§goto(addr353);
                                             }
                                             addr222:
                                             §§push(§§newactivation());
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§goto(addr226);
                                                }
                                                §§goto(addr331);
                                             }
                                             §§goto(addr313);
                                          }
                                          §§goto(addr278);
                                       }
                                       §§goto(addr277);
                                    }
                                    §§goto(addr276);
                                 }
                                 §§goto(addr226);
                              }
                              §§goto(addr228);
                           }
                           §§goto(addr355);
                        }
                        §§goto(addr222);
                     }
                     continue loop2;
                     if(_loc5_ && _loc2_)
                     {
                        continue;
                     }
                     if(!_loc4_)
                     {
                        continue loop0;
                     }
                     §§pop().§§slot[2] = 0;
                     if(!(_loc5_ && param1))
                     {
                        §§goto(addr48);
                     }
                     §§goto(addr54);
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §0"4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§8a§.data = §+!R§;
            while(true)
            {
               if(§+!R§.length > 0)
               {
                  continue;
               }
               mClip.mcStatuses.gotoAndStop(2);
               loop1:
               while(true)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     continue;
                  }
                  addr93:
                  addr93:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §@"#§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.close();
         }
         do
         {
            §%?§.§-'§();
         }
         while(!_loc3_);
         
      }
      
      private function §`$§(param1:§`"'§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            AngryBirdsFP11.§@<§.§#m§();
         }
         do
         {
            §@!]§.§9"'§("flashSendGiftFriend",(AngryBirdsFP11.sUserProgress as §[<§).userName,param1.data.i);
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      private function §<!_§(param1:Array) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         if(_loc10_)
         {
            if(!param1)
            {
               if(!(_loc9_ && _loc2_))
               {
                  return;
               }
            }
         }
         var _loc2_:Boolean = false;
         for each(_loc3_ in param1)
         {
            var _loc7_:int = 0;
            var _loc8_:* = this.§8a§.data;
            for(; §§hasnext(_loc8_,_loc7_); if(_loc3_ != _loc4_.i)
            {
               continue;
            },§§goto(addr113))
            {
               _loc4_ = §§nextvalue(_loc7_,_loc8_);
               if(_loc10_)
               {
                  continue;
               }
               addr113:
               loop2:
               while(true)
               {
                  _loc4_.status = §]"E§.§5"2§;
                  addr117:
                  while(true)
                  {
                     addr85:
                     while(true)
                     {
                        §0!!§.§;"§.§[!i§(_loc4_.i);
                        continue loop2;
                     }
                  }
               }
            }
         }
         if(_loc10_)
         {
            if(_loc2_)
            {
               if(!_loc9_)
               {
                  this.§8a§.§7C§();
               }
            }
         }
      }
      
      private function §-"0§(param1:§`"'§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§+!R§);
            loop0:
            while(true)
            {
               §§push(§+!R§);
               while(true)
               {
                  §§pop().splice(§§pop().indexOf(param1.data),1);
                  loop2:
                  while(true)
                  {
                     §§push(§9j§);
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     addr100:
                     while(true)
                     {
                        §§push(§9j§);
                        if(_loc2_)
                        {
                           break loop2;
                        }
                        §§pop().splice(§§pop().indexOf(param1.data),1);
                        loop3:
                        while(true)
                        {
                           addr62:
                           while(true)
                           {
                              §=<§();
                              while(true)
                              {
                                 this.§8a§.data = §+!R§;
                                 while(_loc3_)
                                 {
                                    continue loop3;
                                    this.§@!&§();
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          return;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      private function §@!,§(param1:§`"'§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!AngryBirdsFP11.sUserProgress.isLevelOpen(param1.data.lvl))
            {
               if(param1.data.lvl.indexOf("2000-") > -1)
               {
                  loop5:
                  while(true)
                  {
                     §§push(§3T§.§67§);
                     if(_loc3_)
                     {
                        §§pop().§=!w§(§-k§.STATE_NAME);
                        loop6:
                        while(true)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              loop0:
                              while(true)
                              {
                                 this.§-"0§(param1);
                                 loop1:
                                 while(true)
                                 {
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop5;
                                    }
                                    this.deActivate();
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    if(_loc2_ && param1)
                                    {
                                       continue loop6;
                                    }
                                    if(_loc3_)
                                    {
                                       break loop0;
                                    }
                                    addr108:
                                    while(true)
                                    {
                                       §§push(§3T§.§67§);
                                       break loop1;
                                    }
                                 }
                                 addr110:
                                 while(true)
                                 {
                                    §§pop().§5O§(param1.data.lvl);
                                 }
                              }
                              return;
                              addr54:
                           }
                           while(true)
                           {
                              §§goto(addr54);
                           }
                        }
                     }
                     §§goto(addr110);
                  }
                  addr86:
               }
               §§goto(addr54);
            }
            §§goto(addr108);
         }
         §§goto(addr86);
      }
      
      private function §%n§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            mClip.EasterEggButton4.visible = false;
         }
         do
         {
            (AngryBirdsFP11.sUserProgress as §[<§).§`"3§("1000-4");
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private function §2!d§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.scroll(-this.§8a§.§1!a§);
         }
      }
      
      private function §!?§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.scroll(this.§8a§.§1!a§);
         }
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(param1 != 0)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§8a§.scroll(param1);
               }
               do
               {
                  this.§@!&§();
               }
               while(_loc2_);
               
               addr44:
            }
            return;
         }
         §§goto(addr44);
      }
      
      private function §@!&§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§8a§.offset == 0);
         if(_loc4_ || _loc3_)
         {
            §§push(!§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.§8a§.offset == this.§8a§.data.length - this.§8a§.§1!a§);
         if(_loc4_)
         {
            §§push(!§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            mClip.btnUp.visible = _loc1_;
         }
         do
         {
            mClip.btnDown.visible = _loc2_;
         }
         while(!(_loc4_ || _loc3_));
         
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §=<§();
            do
            {
               this.deActivate();
            }
            while(!_loc3_);
            
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§'9§();
            loop0:
            while(true)
            {
               this.§@o§();
               while(true)
               {
                  this.§8a§.dispose();
                  while(_loc2_ || _loc2_)
                  {
                     continue loop0;
                     super.close();
                     if(!(_loc1_ && this))
                     {
                        return;
                        addr54:
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      private function §&N§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §+!B§.§2§(param1,param2);
         }
      }
   }
}
