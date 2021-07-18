package §!"e§
{
   import § "4§.§4!?§;
   import §#!'§.§6"]§;
   import §%!!§.§!!m§;
   import §+D§.§^"m§;
   import §,"N§.§""t§;
   import §,"N§.§%"[§;
   import §,"N§.§=o§;
   import §,"N§.§@#B§;
   import §1#R§.§+#[§;
   import §2!f§.§]!J§;
   import §7!$§.§&$§;
   import §7K§.§`!z§;
   import §8b§.§=#&§;
   import §;! §.§2!P§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="V§.§""v§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import §[!m§.§[!j§;
   import §^"?§.§["i§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §[!'§ extends AbstractPopup
   {
      
      public static const §%!h§:String = "ExclusiveSales";
      
      private static const §0[§:int = 0;
      
      private static const §-!;§:int = 1;
      
      private static const §]m§:int = 500;
      
      public static var §-![§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §%!h§ = "ExclusiveSales";
            while(true)
            {
               §0[§ = 0;
               loop1:
               while(!(_loc1_ && §[!'§))
               {
                  §-!;§ = 1;
                  while(true)
                  {
                     §]m§ = 500;
                     do
                     {
                        §-![§ = false;
                     }
                     while(!(_loc2_ || _loc2_));
                     
                     if(_loc2_ || §[!'§)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      private var §+I§:§`!z§;
      
      private var §3;§:§=#&§;
      
      private var §]!h§:§^"m§;
      
      protected var §=!b§:§!!m§;
      
      protected var §1J§:Timer;
      
      private var §2"O§:§""t§;
      
      private var §@!E§:§=o§;
      
      public function §[!'§(param1:int, param2:int, param3:§`!z§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super(param1,param2,§&$§.§@8§.Popups.Popup_ExclusiveSales[0],§%!h§);
            loop0:
            while(true)
            {
               this.§+I§ = param3;
               loop1:
               while(true)
               {
                  this.§2"O§ = §@#B§(§4#;§.singleton.dataModel).§1!f§;
                  while(true)
                  {
                     this.§@!E§ = §@#B§(§4#;§.singleton.dataModel).§`!W§;
                     while(_loc5_)
                     {
                        continue loop1;
                        this.§=!b§ = new §!!m§(§4#;§.SERVER_ROOT);
                        if(_loc5_ || param3)
                        {
                           if(_loc5_)
                           {
                              return;
                              addr45:
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      override protected function init() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §^c§.getItemByName("Container_Content").mClip;
         if(!(_loc5_ && this))
         {
            _loc2_.mask = _loc1_;
            loop0:
            while(true)
            {
               addr56:
               while(true)
               {
                  this.§]!h§ = §^c§.getItemByName("Button_Buy") as §^"m§;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            _loc2_.icons.gotoAndStop(this.§+I§.prices[0].itemID.toLowerCase());
            if(!(_loc5_ && _loc2_))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr56);
            }
            §§goto(addr64);
         }
         §§push(this.§2"O§.§`§(this.§+I§.prices[0].singlePrice,this.§+I§.prices[0]));
         if(!(_loc5_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            _loc2_.salesOffer.text = §^"N§.getLocalizedString("shop_" + this.§+I§.prices[0].itemID.toLowerCase() + "_title");
            while(true)
            {
               _loc2_.salesOffer.text += " x " + this.§2"O§.§;C§(this.§+I§.prices[0].singlePrice,this.§+I§.prices[0]);
               while(_loc4_)
               {
                  loop7:
                  for(; !(_loc5_ && _loc1_); loop9:
                  for(; _loc4_ || _loc2_; if(_loc5_ && _loc1_)
                  {
                     continue;
                  },§§goto(addr102))
                  {
                     _loc2_.normalPrice.text = this.§+I§.prices[0].normalPrice;
                     do
                     {
                        if(!_loc5_)
                        {
                           if(this.§;#5§() == §-!;§)
                           {
                              continue;
                           }
                           §§push(this.§]!h§);
                           if(_loc4_)
                           {
                              §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              if(!_loc5_)
                              {
                                 §§pop().setComponentState(§§pop());
                                 if(!_loc4_)
                                 {
                                    addr136:
                                    if(_loc5_ && _loc3_)
                                    {
                                       this.§=!b§.§`h§(this.§8#C§);
                                       §§goto(addr136);
                                       addr171:
                                    }
                                 }
                                 else
                                 {
                                    addr102:
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop9;
                                 }
                                 continue;
                                 return;
                              }
                              addr170:
                              §§pop().setComponentState(§§pop());
                              §§goto(addr171);
                           }
                           else
                           {
                              addr168:
                              §§push(§1"z§.COMPONENT_STATE_DISABLED);
                           }
                           §§goto(addr170);
                        }
                        else
                        {
                           §§goto(addr217);
                        }
                     }
                     while(_loc5_ && this);
                     
                     §§goto(addr168);
                     §§push(this.§]!h§);
                  })
                  {
                     _loc2_.percentage.text = this.§2"O§.§<# §(this.§+I§.prices[0]) + "% off";
                     while(true)
                     {
                        _loc2_.price.text = this.§+I§.prices[0].price;
                        continue loop7;
                     }
                  }
               }
            }
         }
         while(true)
         {
            _loc2_.salesOffer.text += _loc3_ == 0 ? "" : " + " + _loc3_ + " " + §^"N§.getLocalizedString("starcoin_free");
            §§goto(addr243);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.show(param1);
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.hide(param1);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2.toUpperCase();
         if(!_loc6_)
         {
            if("BUY" === _loc4_)
            {
               addr152:
               §§push(0);
               if(!_loc5_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  §§push(this.§@!E§);
                  if(_loc5_ || this)
                  {
                     §§push(this.§+I§);
                     if(!_loc6_)
                     {
                        if(!§§pop().§1#9§(§§pop().prices[0].price))
                        {
                           this.§[#T§();
                           if(_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 loop0:
                                 for(; !(_loc5_ || param1); while(true)
                                 {
                                    §§pop().§12§(§§pop().prices[0].price);
                                    this.§2"O§.§9?§(this.§+I§.prices[0]);
                                    continue loop0;
                                 })
                                 {
                                    while(true)
                                    {
                                       §§push(this.§@!E§);
                                       addr134:
                                       while(true)
                                       {
                                          §§push(this.§+I§);
                                          continue loop0;
                                       }
                                    }
                                 }
                                 §6"]§.§@E§(this.§+I§.prices[0].itemID,this.§+I§.prices[0].price,!!§-![§ ? 0 : -1);
                                 if(_loc6_ && param1)
                                 {
                                    break;
                                 }
                                 dispatchEvent(new §+#[§(§+#[§.CLOSE,this));
                              }
                              return;
                           }
                           break;
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr134);
               default:
                  super.onUIInteraction(param1,param2,param3);
            }
            return;
         }
         §§goto(addr152);
      }
      
      private function §;#5§() : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4!?§ = §@#B§(§4#;§.singleton.dataModel).§9!N§;
         var _loc2_:int = parseInt(_loc1_.id.charAt(_loc1_.id.length - 1));
         var _loc3_:* = _loc2_ % 2 == 0;
         if(!(_loc5_ && _loc1_))
         {
            if(_loc3_)
            {
               addr60:
               §§push(§0[§);
               if(_loc4_ || _loc3_)
               {
                  §§push(int(§§pop()));
                  if(!_loc5_)
                  {
                  }
                  §§goto(addr91);
               }
            }
            else
            {
               §§push(§-!;§);
               if(!(_loc5_ && _loc2_))
               {
                  §§goto(addr91);
               }
            }
            addr91:
            return int(§§pop());
         }
         §§goto(addr60);
      }
      
      protected function §[#T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§;#5§() != §0[§)
            {
               this.§ #F§();
               if(!(_loc1_ && _loc2_))
               {
                  if(!_loc2_)
                  {
                     addr68:
                     this.§7"r§();
                     addr70:
                  }
                  return;
               }
               §§goto(addr70);
            }
         }
         §§goto(addr68);
      }
      
      private function §2!&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§1J§)
            {
               if(!(_loc1_ && this))
               {
                  addr77:
                  this.§1J§.reset();
               }
               while(true)
               {
                  this.§1J§.removeEventListener(TimerEvent.TIMER,this.§2!#§);
                  addr56:
                  while(true)
                  {
                  }
                  addr30:
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr47:
               }
            }
            while(true)
            {
               this.§1J§ = null;
               if(_loc1_)
               {
                  continue;
               }
               §§goto(addr30);
            }
            §§goto(addr47);
         }
         §§goto(addr77);
      }
      
      private function §?!e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§]!h§.setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
      
      private function §2!#§(param1:TimerEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§%"[§ = §@#B§(§4#;§.singleton.dataModel).§&"9§;
         if(!_loc3_)
         {
            if(_loc2_.isLoaded)
            {
               if(!(_loc3_ && param1))
               {
                  addr73:
                  this.§?!e§();
               }
               do
               {
                  this.§2!&§();
               }
               while(!(_loc4_ || _loc2_));
               
            }
            return;
         }
         §§goto(addr73);
      }
      
      private function §8#C§(param1:§=#&§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§%"[§ = null;
         if(_loc3_)
         {
            if(param1)
            {
               if(!_loc4_)
               {
                  this.§3;§ = param1;
                  §§goto(addr28);
               }
               addr28:
               _loc2_ = §@#B§(§4#;§.singleton.dataModel).§&"9§;
               if(!(_loc4_ && _loc3_))
               {
                  if(!_loc2_.isLoaded)
                  {
                     this.§2!&§();
                     loop0:
                     while(true)
                     {
                        this.§1J§ = new Timer(§]m§,0);
                        loop1:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              do
                              {
                                 this.§1J§.addEventListener(TimerEvent.TIMER,this.§2!#§);
                                 while(_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              while(false);
                              
                              §§goto(addr119);
                           }
                        }
                        §§goto(addr118);
                     }
                  }
               }
               this.§?!e§();
               addr118:
               §§goto(addr119);
            }
            addr119:
            return;
         }
         §§goto(addr28);
      }
      
      protected function § #F§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §6"]§.§##7§(this.§+I§.prices[0].itemID,1);
            if(_loc3_ || _loc3_)
            {
               §""v§.addCallback("purchaseComplete",this.§]"O§);
            }
         }
         §§push(this.§<"1§());
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:§["i§ = new §["i§(§["i§.§`!f§,_loc1_,-1,"");
         if(!(_loc4_ && _loc1_))
         {
            §2!P§.§2"G§(_loc2_);
         }
      }
      
      private function §<"1§() : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = 0;
         var _loc1_:int = this.§+I§.prices[0].price - this.§@!E§.starCoins;
         var _loc2_:* = int(int.MAX_VALUE);
         var _loc3_:* = -1;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc6_ && this))
            {
               if(§§pop() >= this.§3;§.items.length)
               {
                  if(_loc7_)
                  {
                     if(!(_loc6_ && _loc1_))
                     {
                        §§push(_loc3_);
                        loop11:
                        while(_loc7_)
                        {
                           if(_loc7_ || _loc1_)
                           {
                              §§push(§§pop() > this.§+I§.prices[0].price);
                              if(_loc7_ || _loc1_)
                              {
                                 if(_loc7_ || _loc1_)
                                 {
                                    §§push(§§pop());
                                    if(_loc7_)
                                    {
                                       if(!§§pop())
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             §§pop();
                                             addr202:
                                             loop4:
                                             while(_loc7_)
                                             {
                                                §§push(_loc3_);
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§push(-1);
                                                      if(!(_loc6_ && this))
                                                      {
                                                         if(!(_loc6_ && this))
                                                         {
                                                            if(!(_loc6_ && _loc1_))
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(!(_loc7_ || _loc3_))
                                                               {
                                                                  continue loop12;
                                                               }
                                                               if(_loc7_)
                                                               {
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           if(!(_loc6_ && _loc1_))
                                                                           {
                                                                              if(!(_loc6_ && _loc2_))
                                                                              {
                                                                                 §§push(int(this.§+I§.prices[0].price));
                                                                                 loop8:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                       addr125:
                                                                                    }
                                                                                    addr124:
                                                                                    _loc3_ = §§pop();
                                                                                    while(_loc7_ || this)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                break loop5;
                                                                                             }
                                                                                             continue loop11;
                                                                                          }
                                                                                          continue loop8;
                                                                                       }
                                                                                       §§goto(addr124);
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 addr122:
                                                                              }
                                                                              addr274:
                                                                              §§push(_loc5_);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr233:
                                                                                 if(§§pop() < _loc2_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       addr236:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             addr244:
                                                                                             _loc3_ = int(§§pop());
                                                                                             §§goto(addr124);
                                                                                             §§push(_loc3_);
                                                                                             addr245:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                addr266:
                                                                                                addr267:
                                                                                                §§push(_loc5_ = §§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   addr268:
                                                                                                   §§push(§§pop() >= _loc1_);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      addr272:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr273:
                                                                                                         §§pop();
                                                                                                         §§goto(addr274);
                                                                                                      }
                                                                                                      §§goto(addr233);
                                                                                                   }
                                                                                                   §§goto(addr273);
                                                                                                }
                                                                                             }
                                                                                             addr255:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr233);
                                                                                       §§goto(addr233);
                                                                                    }
                                                                                    addr235:
                                                                                 }
                                                                                 addr205:
                                                                                 _loc4_++;
                                                                                 break loop4;
                                                                              }
                                                                              §§goto(addr236);
                                                                           }
                                                                           §§goto(addr245);
                                                                        }
                                                                        §§goto(addr125);
                                                                     }
                                                                     §§goto(addr40);
                                                                  }
                                                                  return §§pop();
                                                                  addr92:
                                                               }
                                                               §§goto(addr273);
                                                            }
                                                            §§goto(addr266);
                                                         }
                                                         §§goto(addr268);
                                                      }
                                                      §§goto(addr233);
                                                   }
                                                   §§goto(addr236);
                                                }
                                                §§goto(addr122);
                                             }
                                             continue loop0;
                                          }
                                          addr201:
                                       }
                                       §§goto(addr92);
                                    }
                                    §§goto(addr272);
                                 }
                                 §§goto(addr233);
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr244);
                        }
                        while(true)
                        {
                           if(!(_loc6_ && _loc2_))
                           {
                              addr218:
                              _loc2_ = §§pop();
                              while(true)
                              {
                                 if(_loc6_ && this)
                                 {
                                    §§goto(addr235);
                                 }
                                 §§goto(addr205);
                                 §§goto(addr218);
                              }
                              addr219:
                           }
                           §§goto(addr267);
                        }
                        addr167:
                     }
                     §§goto(addr219);
                  }
                  §§goto(addr202);
               }
               else
               {
                  §§push(int(this.§3;§.items[_loc4_].quantity));
               }
               §§goto(addr255);
            }
            §§goto(addr167);
         }
      }
      
      private function §]"O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§@!E§.§12§(this.§+I§.prices[0].price);
         }
         do
         {
            this.§2"O§.§9?§(this.§+I§.prices[0]);
            do
            {
               §6"]§.§@E§(this.§+I§.prices[0].itemID,this.§+I§.prices[0].price,1);
               do
               {
                  dispatchEvent(new §+#[§(§+#[§.CLOSE,this));
               }
               while(_loc2_ && _loc2_);
               
            }
            while(_loc2_);
            
         }
         while(_loc2_);
         
      }
      
      protected function §7"r§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            §-![§ = true;
            if(_loc2_)
            {
               §6"]§.§##7§(this.§+I§.prices[0].itemID,0);
            }
         }
         var _loc1_:§[!j§ = §]!J§.§9P§(§`"W§.§+v§,§+5§.TOP,§]!J§.§[!v§);
         if(_loc2_ || _loc3_)
         {
            §4#;§.singleton.popupManager.openPopup(_loc1_,true,true);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§2!&§();
            while(true)
            {
               this.§=!b§.dispose();
               while(!(_loc1_ && _loc1_))
               {
                  §""v§.§&z§("purchaseComplete",this.§]"O§);
                  do
                  {
                     super.dispose();
                  }
                  while(!_loc2_);
                  
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr41:
               }
            }
         }
         §§goto(addr41);
      }
   }
}
