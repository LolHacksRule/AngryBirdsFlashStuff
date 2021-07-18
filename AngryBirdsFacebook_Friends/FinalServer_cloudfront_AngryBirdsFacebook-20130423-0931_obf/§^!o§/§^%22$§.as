package §^!o§
{
   import §&S§.§&!l§;
   import §&S§.§6!F§;
   import §+!c§.§9"H§;
   import §,l§.§#!,§;
   import §30§.§'"+§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §59§.§#l§;
   import §59§.§=!]§;
   import §59§.§="C§;
   import §9@§.§3,§;
   import §9@§.§4d§;
   import §9@§.§@q§;
   import §`"%§.§`_§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.utils.Timer;
   
   public class §^"$§ extends Popup implements §&!l§, §4d§
   {
      
      public static const §1!J§:String = "Not enough coins!";
      
      public static const §2_§:String = "Bird Coin shop";
      
      protected static const §10§:int = 6;
      
      protected static const §9"X§:String = "Button_Buy";
      
      private static const §0"B§:String = "In-app Shop Coins";
      
      private static var §]!7§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1!J§ = "Not enough coins!";
            loop0:
            while(true)
            {
               §2_§ = "Bird Coin shop";
               loop1:
               do
               {
                  §10§ = 6;
                  while(_loc2_)
                  {
                     §9"X§ = "Button_Buy";
                     while(_loc2_ || _loc1_)
                     {
                        §0"B§ = "In-app Shop Coins";
                        do
                        {
                           §]!7§ = §`"$§;
                        }
                        while(!(_loc2_ || §^"$§));
                        
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
               while(_loc1_ && _loc1_);
               
            }
         }
      }
      
      private var §^i§:Timer;
      
      private var §""Z§:Boolean = false;
      
      private var §,M§:String;
      
      private var §<Z§:int;
      
      private var §4"?§:Boolean = false;
      
      private var § W§:Boolean = false;
      
      private var §1<§:Boolean = false;
      
      private var § !b§:MovieClip;
      
      private var §4!u§:§6!F§;
      
      public function §^"$§(param1:§`_§, param2:StatePopupManager, param3:String = "", param4:XML = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(param4 == null)
            {
               if(_loc6_ || param1)
               {
                  param4 = §9"H§.§5!h§(§]!7§);
                  addr34:
                  super(param4,param1);
                  if(!_loc5_)
                  {
                     param1.getItemByName("Container_CoinShopPopup").setVisibility(true);
                     loop0:
                     while(true)
                     {
                        if(mClip.Container_CoinShopPopup.Button_ShopClose)
                        {
                           while(true)
                           {
                              mClip.Container_CoinShopPopup.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§1'§);
                              addr130:
                              while(_loc6_)
                              {
                              }
                              continue loop0;
                              addr94:
                              if(!(_loc6_ || param1))
                              {
                                 continue;
                              }
                              addr115:
                              §§push(§2_§);
                              if(_loc6_)
                              {
                                 §§push(§§pop());
                              }
                              param3 = §§pop();
                              while(true)
                              {
                                 §§goto(addr65);
                              }
                              addr116:
                           }
                        }
                        while(true)
                        {
                           §§push(param3);
                           if(!(_loc5_ && this))
                           {
                              if(§§pop() == "")
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc6_ || this)
                                    {
                                       §§goto(addr94);
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr116);
                              }
                              addr65:
                              mClip.Container_CoinShopPopup.coinShopTitle.text = param3;
                              §§goto(addr64);
                           }
                           break;
                        }
                        §§goto(addr115);
                     }
                     addr40:
                  }
                  §§goto(addr115);
               }
               §§goto(addr40);
            }
            §§goto(addr34);
         }
         addr64:
         do
         {
            if(_loc6_)
            {
               continue;
            }
            continue loop4;
         }
         while(this.§^i§ = new Timer(2000,1), !_loc6_);
         
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:DisplayObject = null;
         if(_loc5_ || _loc3_)
         {
            super.open(param1);
            if(_loc5_ || param1)
            {
               addr37:
               this.§?!f§(new §6!F§(this,false));
            }
            var _loc2_:int = 0;
            while(_loc2_ < §10§)
            {
               _loc3_ = mClip.Container_CoinShopPopup[§9"X§ + _loc2_];
               if(!(_loc4_ && param1))
               {
                  _loc3_.visible = false;
                  if(_loc5_ || param1)
                  {
                     _loc2_++;
                  }
               }
            }
            if(_loc5_)
            {
               §§push(§%"S§.§!C§);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop().§9"%§);
                  if(_loc5_)
                  {
                     §§push(§§pop().§1!!§);
                     if(_loc5_ || _loc2_)
                     {
                        if(!§§pop().§<$§)
                        {
                           if(!_loc4_)
                           {
                              addr116:
                              §%"S§.§!C§.§9"%§.§1!!§.addEventListener(Event.COMPLETE,this.§6I§);
                              if(_loc5_ || _loc3_)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    §§push(this.§ W§);
                                    loop2:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §'"+§.addCallback("purchaseComplete",this.§@M§);
                                             loop4:
                                             while(!_loc4_)
                                             {
                                                this.§ W§ = true;
                                                while(true)
                                                {
                                                   addr144:
                                                   if(_loc5_ || this)
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            return;
                                                            addr165:
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                             continue loop1;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(this.§1<§);
                                          if(_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          if(!§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §'"+§.addCallback("purchaseFailed",this.§!!%§);
                                                addr206:
                                                while(true)
                                                {
                                                   this.§1<§ = true;
                                                   loop9:
                                                   while(_loc5_ || _loc3_)
                                                   {
                                                      continue loop7;
                                                      while(true)
                                                      {
                                                         §@q§.trackPageView(this);
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop9;
                                                      }
                                                      §§goto(addr144);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr133);
                                       }
                                       §§goto(addr165);
                                    }
                                 }
                                 addr128:
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr128);
                        }
                        else
                        {
                           this.§6I§(null,§%"S§.§!C§.§9"%§.§1!!§.§<$§);
                        }
                        §§goto(addr233);
                     }
                  }
               }
               §§goto(addr116);
            }
            §§goto(addr165);
         }
         §§goto(addr37);
      }
      
      public function §?!f§(param1:§6!F§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4!u§ = param1;
         }
      }
      
      public function §!U§(param1:§6!F§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §;"Z§() : §6!F§
      {
         return this.§4!u§;
      }
      
      public function get walletContainer() : Sprite
      {
         return mClip;
      }
      
      private function §!!%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§,M§ = null;
         }
         do
         {
            this.§<Z§ = 0;
         }
         while(_loc1_);
         
      }
      
      protected function §@M§(param1:String, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§=!]§ = null;
         var _loc4_:* = NaN;
         if(_loc5_ || param2)
         {
            this.§4"?§ = false;
            if(!(_loc6_ && param1))
            {
               if(this.§ !b§)
               {
                  if(_loc5_ || this)
                  {
                     addr48:
                     _loc3_ = new §=!]§();
                     if(!(_loc6_ && _loc3_))
                     {
                        mClip.addChild(_loc3_);
                     }
                     while(true)
                     {
                        while(true)
                        {
                           _loc3_.x = this.§ !b§.x + this.§ !b§.width / 2 + 50;
                           do
                           {
                              _loc3_.y = this.§ !b§.y + this.§ !b§.height / 2;
                           }
                           while(_loc6_ && param2);
                           
                           if(_loc6_ && _loc3_)
                           {
                              break;
                           }
                           if(false)
                           {
                              continue;
                           }
                           addr117:
                           this.§""Z§ = false;
                           if(_loc5_ || param1)
                           {
                              if(this.§,M§)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§'#§(this.§,M§));
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    _loc4_ = §§pop();
                                    loop4:
                                    while(true)
                                    {
                                       §@q§.§3"-§(this.§,M§,this.§<Z§);
                                       loop5:
                                       while(true)
                                       {
                                          §@q§.trackPageView(this,§@q§.§7!K§);
                                          addr200:
                                          addr202:
                                          while(_loc6_)
                                          {
                                             continue loop6;
                                          }
                                          while(true)
                                          {
                                             §@q§.trackTransaction(param1,§0"B§,this.§,M§,this.§,M§,this.§<Z§ + " x",_loc4_,1,0);
                                             loop1:
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   while(true)
                                                   {
                                                      this.§,M§ = null;
                                                      addr155:
                                                      addr164:
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            addr157:
                                                            if(_loc5_ || param1)
                                                            {
                                                               break;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop5;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§<Z§ = 0;
                                                         if(_loc5_ || param2)
                                                         {
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               break;
                                                            }
                                                            continue loop1;
                                                         }
                                                         §§goto(addr155);
                                                         §§goto(addr157);
                                                      }
                                                   }
                                                   addr183:
                                                }
                                                else
                                                {
                                                   §§goto(addr200);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              return;
                           }
                           §§goto(addr183);
                        }
                     }
                  }
                  §§goto(addr164);
               }
               §§goto(addr117);
            }
            §§goto(addr202);
         }
         §§goto(addr48);
      }
      
      private function §'#§(param1:String) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:§="C§ = null;
         var _loc4_:§#l§ = null;
         var _loc2_:int = parseInt(param1.replace("VirtualCurrency_",""));
         if(_loc9_)
         {
            if(§%"S§.§!C§.§9"%§.§1!!§.§<$§)
            {
               addr38:
               for each(_loc3_ in §%"S§.§!C§.§9"%§.§1!!§.§<$§)
               {
                  if(!_loc10_)
                  {
                     if(_loc3_.id != "VirtualCurrency")
                     {
                        continue;
                     }
                     if(_loc10_)
                     {
                        continue;
                     }
                  }
                  var _loc7_:int = 0;
                  if(!(_loc10_ && _loc3_))
                  {
                     var _loc8_:* = _loc3_.§9r§;
                     loop1:
                     while(true)
                     {
                        for each(_loc4_ in _loc8_)
                        {
                           §§push(_loc4_.§ !?§);
                           if(_loc10_ && param1)
                           {
                              addr120:
                              break loop1;
                           }
                           §§push(_loc2_);
                           if(_loc10_)
                           {
                              return §§pop() / §§pop();
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!_loc10_)
                              {
                                 §§push(_loc4_.price);
                                 break loop1;
                              }
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr120);
                     §§push(10);
                  }
               }
            }
            return 0;
         }
         §§goto(addr38);
      }
      
      private function §6I§(param1:Event = null, param2:Vector.<§="C§> = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            if(param1)
            {
               if(!_loc4_)
               {
                  §§push(§%"S§.§!C§);
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop().§9"%§);
                     if(_loc3_ || this)
                     {
                        §§push(§§pop().§1!!§);
                        if(_loc3_ || _loc3_)
                        {
                           param2 = §§pop().§<$§;
                           addr75:
                           this.injectData(param2[0]);
                           §§goto(addr91);
                        }
                        §§pop().removeEventListener(Event.COMPLETE,this.§6I§);
                        §§goto(addr91);
                     }
                  }
                  §§goto(addr85);
               }
               addr91:
               if(_loc3_)
               {
                  addr85:
                  §§push(§%"S§.§!C§.§9"%§.§1!!§);
               }
               return;
            }
         }
         §§goto(addr75);
      }
      
      public function injectData(param1:§="C§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(_loc7_)
         {
            mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
         }
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < §10§)
         {
            _loc3_ = mClip.Container_CoinShopPopup[§9"X§ + _loc2_];
            if(_loc7_ || this)
            {
               §§push(param1.getPricePoint(_loc2_));
               loop1:
               while(true)
               {
                  §§push(§§pop().§#!-§());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        _loc4_ = §§pop();
                        while(true)
                        {
                           §§push(§3,§.§3!Y§(param1.getPricePoint(_loc2_).§ !?§));
                           if(!(_loc6_ && _loc3_))
                           {
                              if(!(_loc7_ || this))
                              {
                                 break;
                              }
                              §§push(§§pop());
                           }
                           if(!(_loc6_ && param1))
                           {
                              _loc5_ = §§pop();
                              while(!_loc6_)
                              {
                                 _loc3_.title.text = "x " + _loc5_;
                                 while(_loc7_ || this)
                                 {
                                    continue loop1;
                                    loop7:
                                    while(!(_loc6_ && _loc2_))
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          _loc3_.cost.text = §%"S§.§!C§.§9"%§.§@!K§.§=";§(param1.getPricePoint(_loc2_).price);
                                          loop9:
                                          while(true)
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                _loc3_.visible = true;
                                                loop10:
                                                while(true)
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      _loc3_.addEventListener(MouseEvent.CLICK,this.§8q§);
                                                      while(_loc7_)
                                                      {
                                                         _loc2_++;
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break loop11;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue loop9;
                                                         }
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   _loc3_.offer.text = "(" + _loc4_ + " free)";
                                                   continue loop8;
                                                }
                                                addr140:
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr148);
         }
      }
      
      protected function §8q§(param1:MouseEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:String = param1.currentTarget.name;
         §§push(_loc2_);
         if(!_loc7_)
         {
            §§push(§§pop().charAt(_loc2_.length - 1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = int(_loc3_);
         var _loc5_:String = §%"S§.§!C§.§9"%§.§1!!§.§<$§[0].id;
         if(_loc6_ || _loc3_)
         {
            this.§ !b§ = param1.currentTarget as MovieClip;
            while(true)
            {
               this.buyItem(_loc5_,§%"S§.§!C§.§9"%§.§1!!§.§<$§[0].getPricePoint(_loc4_));
               loop1:
               while(!_loc7_)
               {
                  while(true)
                  {
                     §@q§.trackPageView(this,_loc5_);
                     if(_loc6_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr105);
      }
      
      private function §2!]§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§^i§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§2!]§);
         }
         do
         {
            this.§""Z§ = false;
         }
         while(_loc3_);
         
      }
      
      protected function buyItem(param1:String, param2:§#l§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(ExternalInterface.available)
            {
               loop0:
               for(; !this.§""Z§; if(!(_loc3_ || _loc3_))
               {
                  continue;
               },this.§""Z§ = true,§§goto(addr110))
               {
                  loop1:
                  while(true)
                  {
                     this.§4"?§ = true;
                     loop2:
                     while(true)
                     {
                        this.§<Z§ = param2.§ !?§;
                        addr166:
                        loop3:
                        while(true)
                        {
                           §§push(this);
                           §§push(param1 + "_");
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(§§pop() + param2.§ !?§);
                           }
                           §§pop().§,M§ = §§pop();
                           while(true)
                           {
                              AngryBirdsFP11.§>m§.§^X§();
                              loop5:
                              while(true)
                              {
                                 §'"+§.§'!#§("placeOrder",this.§,M§);
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop3;
                                    loop8:
                                    while(_loc3_ || _loc3_)
                                    {
                                       this.§^i§.start();
                                       loop9:
                                       do
                                       {
                                          this.§^i§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§2!]§);
                                          while(true)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                continue loop5;
                                             }
                                             addr110:
                                             while(!_loc4_)
                                             {
                                                this.§^i§.reset();
                                                continue loop8;
                                             }
                                             continue loop2;
                                             addr88:
                                             §@q§.§<!S§(this.§,M§,this.§<Z§);
                                             if(_loc3_ || this)
                                             {
                                                continue loop9;
                                             }
                                          }
                                          continue loop5;
                                       }
                                       while(_loc4_ && param2);
                                       
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             break loop0;
                                          }
                                          break loop6;
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                              if(_loc4_ && this)
                              {
                                 continue;
                              }
                              §§goto(addr88);
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr166);
      }
      
      override public function deActivate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = null;
         if(!(_loc4_ && _loc3_))
         {
            §'"+§.§"!6§("purchaseComplete",this.§@M§);
            while(true)
            {
               §'"+§.§"!6§("purchaseFailed",this.§!!%§);
            }
            addr110:
         }
         loop1:
         while(true)
         {
            this.§ W§ = false;
            loop2:
            while(true)
            {
               this.§1<§ = false;
               while(_loc3_)
               {
                  while(this.§4"?§)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        continue loop2;
                     }
                     continue loop1;
                     if(true)
                     {
                        break;
                     }
                  }
                  var _loc1_:int = 0;
                  addr154:
                  if(_loc1_ < §10§)
                  {
                     _loc2_ = mClip.Container_CoinShopPopup["Button_Buy" + _loc1_];
                     if(_loc3_ || _loc1_)
                     {
                        _loc2_.removeEventListener(MouseEvent.CLICK,this.§8q§);
                        if(!(_loc4_ && _loc1_))
                        {
                           _loc1_++;
                        }
                     }
                     §§goto(addr154);
                  }
                  if(_loc3_)
                  {
                     §%"S§.§!C§.§9"%§.§1!!§.removeEventListener(Event.COMPLETE,this.§6I§);
                     if(!_loc4_)
                     {
                        addr170:
                        preClose();
                     }
                     return;
                  }
                  §§goto(addr170);
                  if(_loc4_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr45);
               }
               §§goto(addr110);
            }
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§!U§(this.§4!u§);
            do
            {
               super.close();
            }
            while(!_loc2_);
            
         }
      }
      
      private function §1'§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.deActivate();
         }
      }
      
      public function §=,§() : String
      {
         return §@q§.§["G§;
      }
      
      public function §8"3§() : String
      {
         return §@q§.§+!+§;
      }
   }
}
