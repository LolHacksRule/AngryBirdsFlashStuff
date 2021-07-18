package §2!f§
{
   import §!"e§.ShutdownPopup;
   import §!"e§.§`"W§;
   import §%!!§.§!!m§;
   import §+D§.§0"$§;
   import §+D§.§^"m§;
   import §,"N§.§%"[§;
   import §,"N§.§=o§;
   import §,"N§.§@#B§;
   import §7!$§.§&$§;
   import §8b§.§=#&§;
   import §;! §.§2!P§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §="V§.§""v§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import §[!m§.§[!j§;
   import §^"?§.§["i§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §]!J§ extends AbstractPopup
   {
      
      public static const §8Z§:int = 1;
      
      public static const §[!v§:int = 2;
      
      private static const §<!j§:String = "Button_Buy";
      
      private static const §'§:int = 6;
      
      private static const §]m§:int = 500;
      
      public static const § "2§:int = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §8Z§ = 1;
         }
         loop0:
         while(true)
         {
            §[!v§ = 2;
            loop1:
            while(true)
            {
               §<!j§ = "Button_Buy";
               while(true)
               {
                  §'§ = 6;
                  while(_loc1_ || _loc2_)
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     continue loop1;
                     §]m§ = 500;
                     do
                     {
                        § "2§ = 1;
                     }
                     while(!_loc1_);
                     
                     if(_loc1_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      protected var §!#Z§:int = -1;
      
      protected var §2y§:§!!m§;
      
      protected var §'! §:§0"$§;
      
      protected var §"!X§:Vector.<§+7§>;
      
      protected var §@!E§:§=o§;
      
      protected var § #;§:int;
      
      protected var §3#+§:MovieClip;
      
      protected var §1J§:Timer;
      
      public function §]!J§(param1:int, param2:int, param3:int = 2)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2,§&$§.§@8§.Popups.Popup_StarCoin[0]);
            while(true)
            {
               this.§2y§ = new §!!m§(§4#;§.SERVER_ROOT);
               addr40:
               if(!(_loc5_ || param3))
               {
                  continue;
               }
               return;
               addr57:
            }
         }
         while(true)
         {
            this.§ #;§ = param3;
            while(_loc5_ || param1)
            {
               this.§@!E§ = §@#B§(§4#;§.singleton.dataModel).§`!W§;
               if(!(_loc5_ || param2))
               {
                  continue;
               }
               §§goto(addr40);
            }
         }
         §§goto(addr57);
      }
      
      public static function §9P§(param1:int, param2:int, param3:int) : §[!j§
      {
         return new ShutdownPopup(§`"W§.§+v§,§+5§.DEFAULT);
      }
      
      override protected function init() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§^"m§ = null;
         if(!(_loc6_ && _loc3_))
         {
            this.§'! § = §0"$§(§^c§.getItemByName("MovieClip_Loading"));
            if(!(_loc6_ && _loc2_))
            {
               this.§"!X§ = new Vector.<§+7§>();
            }
         }
         var _loc2_:int = 0;
         while(_loc2_ < §'§)
         {
            _loc1_ = §^"m§(§^c§.getItemByName(§<!j§ + _loc2_));
            if(_loc5_)
            {
               this.§"!X§.push(new §+7§(_loc1_,§^"N§,§@#B§(§4#;§.singleton.dataModel).§&"9§,_loc2_,-1));
               if(_loc5_ || _loc1_)
               {
                  _loc2_++;
               }
            }
         }
         if(_loc5_ || _loc1_)
         {
            this.§2y§.§`h§(this.§8#C§);
            if(!(_loc6_ && this))
            {
               addr116:
               §""v§.addCallback("purchaseComplete",this.§]"O§);
            }
            var _loc3_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
            var _loc4_:MovieClip;
            (_loc4_ = §^c§.getItemByName("Container_Content").mClip).mask = _loc3_;
            if(!(_loc6_ && _loc1_))
            {
               this.§3#+§ = §^c§.getItemByName("MovieClip_Title").mClip;
               do
               {
                  this.§3#+§.gotoAndStop(this.§ #;§);
               }
               while(_loc6_);
               
            }
            return;
         }
         §§goto(addr116);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§2!&§();
            while(true)
            {
               this.§2y§.dispose();
               §§goto(addr89);
            }
         }
         addr89:
         while(true)
         {
            §""v§.§&z§("purchaseComplete",this.§]"O§);
            do
            {
               this.§"!X§.length = 0;
               do
               {
                  this.§@!E§ = null;
                  do
                  {
                     super.dispose();
                  }
                  while(!_loc1_);
                  
               }
               while(_loc2_ && _loc2_);
               
            }
            while(!(_loc1_ || this));
            
            if(_loc1_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §2!&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§1J§)
            {
               if(!(_loc1_ && this))
               {
                  this.§1J§.reset();
                  addr85:
                  loop2:
                  while(true)
                  {
                     this.§1J§.removeEventListener(TimerEvent.TIMER,this.§2!#§);
                     addr54:
                     addr61:
                     while(_loc1_ && _loc1_)
                     {
                        continue loop2;
                     }
                  }
                  addr85:
               }
               §§goto(addr85);
            }
            while(true)
            {
               this.§1J§ = null;
               if(!(_loc1_ && _loc2_))
               {
                  break;
               }
               §§goto(addr54);
               §§goto(addr61);
            }
            return;
         }
         §§goto(addr85);
      }
      
      private function §2!#§(param1:TimerEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§%"[§ = §@#B§(§4#;§.singleton.dataModel).§&"9§;
         if(_loc4_)
         {
            if(_loc2_.isLoaded)
            {
               if(!_loc3_)
               {
                  addr63:
                  this.§'! §.setVisibility(false);
               }
               do
               {
                  this.§2!&§();
               }
               while(!_loc4_);
               
            }
            return;
         }
         §§goto(addr63);
      }
      
      private function §8#C§(param1:§=#&§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:int = 0;
         var _loc4_:§%"[§ = null;
         var _loc5_:§+7§ = null;
         if(!_loc6_)
         {
            if(param1)
            {
               if(_loc7_ || _loc3_)
               {
                  addr38:
                  §§push(this.§9"$§(param1));
                  if(!_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc2_ = §§pop();
                  if(!(_loc6_ && this))
                  {
                     _loc3_ = 0;
                  }
               }
               while(_loc3_ < this.§"!X§.length)
               {
                  _loc5_ = this.§"!X§[_loc3_];
                  if(!(_loc6_ && _loc3_))
                  {
                     if(_loc3_ < param1.items.length)
                     {
                        _loc5_.singlePrice = _loc2_;
                        loop1:
                        while(true)
                        {
                           addr90:
                           while(true)
                           {
                              _loc5_.prices = param1.items[_loc3_];
                              while(true)
                              {
                                 if(!(_loc7_ || _loc3_))
                                 {
                                    while(true)
                                    {
                                       if(_loc6_ && this)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(_loc5_.view);
                                             if(!_loc6_)
                                             {
                                                §§push(false);
                                                if(_loc7_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             addr146:
                                             while(true)
                                             {
                                                §§push(false);
                                                continue loop6;
                                             }
                                          }
                                          continue;
                                       }
                                       addr138:
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc3_++;
                                    if(_loc6_ && _loc3_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                    §§goto(addr138);
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr146);
                  }
               }
               if((_loc4_ = §@#B§(§4#;§.singleton.dataModel).§&"9§).isLoaded)
               {
                  if(_loc7_ || param1)
                  {
                     this.§'! §.setVisibility(false);
                     if(!_loc7_)
                     {
                     }
                     §§goto(addr232);
                  }
                  while(true)
                  {
                     loop11:
                     while(true)
                     {
                        this.§1J§.addEventListener(TimerEvent.TIMER,this.§2!#§);
                        while(_loc7_ || _loc3_)
                        {
                           this.§1J§.start();
                           if(!(_loc6_ && _loc3_))
                           {
                              if(true)
                              {
                                 break loop11;
                              }
                              continue loop11;
                           }
                        }
                     }
                     §§goto(addr232);
                  }
                  addr227:
               }
               else
               {
                  this.§2!&§();
                  while(true)
                  {
                     this.§1J§ = new Timer(§]m§,0);
                  }
                  addr231:
               }
               while(_loc6_)
               {
                  §§goto(addr231);
               }
               §§goto(addr227);
            }
            addr232:
            return;
         }
         §§goto(addr38);
      }
      
      private function §9"$§(param1:§=#&§) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§["i§ = null;
         var _loc2_:* = Number(1);
         var _loc4_:int = 0;
         do
         {
            if(_loc4_ >= param1.items.length)
            {
               if(_loc6_)
               {
                  if(_loc3_)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     addr122:
                     return _loc2_;
                     addr121:
                  }
                  §§goto(addr121);
               }
               break;
            }
            if(!_loc3_)
            {
               _loc3_ = param1.items[_loc4_];
               continue;
            }
            if(_loc6_ || param1)
            {
               if(param1.items[_loc4_].quantity < _loc3_.quantity)
               {
                  if(!(_loc6_ || _loc3_))
                  {
                     break;
                  }
                  _loc3_ = param1.items[_loc4_];
               }
               continue;
            }
            §§goto(addr121);
         }
         while(_loc4_++, !(_loc5_ && param1));
         
         §§push((_loc3_.price + § "2§) / _loc3_.quantity);
         if(!(_loc5_ && this))
         {
            §§push(Number(§§pop()));
            if(!_loc5_)
            {
               _loc2_ = §§pop();
               §§goto(addr121);
            }
         }
         §§goto(addr122);
      }
      
      private function §]"O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §?!r§.§"#_§("black_shop_purchase");
            loop0:
            while(this.§!#Z§ != -1)
            {
               loop1:
               while(true)
               {
                  this.§"!X§[this.§!#Z§].notifyPurchase();
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        this.§!#Z§ = -1;
                        if(!(_loc1_ && _loc1_))
                        {
                           if(!_loc1_)
                           {
                              break loop0;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr76);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:§["i§ = null;
         if(!_loc6_)
         {
            if(param2.toLowerCase().indexOf("buy") == 0)
            {
               if(!_loc6_)
               {
                  §?!r§.§"#_§("misc_menubuttonproceed_1");
                  if(!(_loc6_ && param2))
                  {
                     _loc4_ = parseInt(param2.substr(3));
                     addr42:
                     if(!(_loc6_ && param1))
                     {
                        _loc5_ = this.§"!X§[_loc4_].prices;
                        if(!_loc6_)
                        {
                           this.§!#Z§ = _loc4_;
                           do
                           {
                              §2!P§.§2"G§(_loc5_);
                           }
                           while(!(_loc7_ || param3));
                           
                        }
                        return;
                     }
                  }
               }
               §§goto(addr42);
            }
            else
            {
               super.onUIInteraction(param1,param2,param3);
            }
            return;
         }
         §§goto(addr42);
      }
   }
}
