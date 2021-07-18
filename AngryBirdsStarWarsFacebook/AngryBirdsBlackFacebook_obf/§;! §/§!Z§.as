package §;! §
{
   import §!"W§.§="g§;
   import §!"e§.§`"W§;
   import §#!'§.§6"]§;
   import §'y§.§^!B§;
   import §+!!§.§9"i§;
   import §+D§.§ #^§;
   import §,"N§.§""t§;
   import §,"N§.§%"[§;
   import §,"N§.§=o§;
   import §,"N§.§@#B§;
   import §-#a§.§>,§;
   import §2!f§.§]!J§;
   import §7!$§.§&$§;
   import §7K§.§,T§;
   import §8#I§.§ q§;
   import §;"Y§.§&#X§;
   import §;@§.§5!U§;
   import §<o§.§^i§;
   import §="2§.§?!r§;
   import §>"$§.§?g§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import §[!m§.§[!j§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §!Z§ extends AbstractPopup implements §>,§
   {
      
      public static var §%!h§:String = "shop";
      
      private static const §]m§:int = 500;
      
      public static var §]"y§:int = 0;
      
      public static var §1#]§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%!h§ = "shop";
            while(true)
            {
               §]m§ = 500;
               while(_loc1_)
               {
                  §]"y§ = 0;
                  while(!(_loc2_ && _loc2_))
                  {
                     §1#]§ = "";
                     if(_loc1_)
                     {
                        return;
                        addr39:
                     }
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      protected var §+!F§:Vector.<§5!U§>;
      
      protected var §6"d§:MovieClip;
      
      protected var §#M§:§4!l§;
      
      protected var §2"O§:§""t§;
      
      protected var §@!E§:§=o§;
      
      protected var §[!;§:Boolean;
      
      protected var §6#L§:§?g§;
      
      protected var §1J§:Timer;
      
      public function §!Z§(param1:int, param2:int, param3:int = -1, param4:String = "")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            super(param1,param2,§&$§.§@8§.Popups.Popup_Shop[0],§%!h§);
            while(true)
            {
               this.§2"O§ = §@#B§(§4#;§.singleton.dataModel).§1!f§;
               loop1:
               while(!(_loc5_ && param2))
               {
                  while(true)
                  {
                     this.§@!E§ = §@#B§(§4#;§.singleton.dataModel).§`!W§;
                     loop3:
                     while(true)
                     {
                        if(param3 >= 0)
                        {
                           continue;
                        }
                        loop6:
                        while(true)
                        {
                           §1#]§ = param4;
                           if(_loc6_ || param2)
                           {
                              if(_loc6_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           addr69:
                           while(true)
                           {
                              continue loop6;
                           }
                        }
                        if(!_loc5_)
                        {
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      public function get isLoaded() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(!this.§+!F§)
            {
               if(!(_loc3_ && this))
               {
                  §§goto(addr33);
               }
            }
            var _loc1_:int = 0;
            while(true)
            {
               if(_loc1_ >= this.§+!F§.length)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(true);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                     addr93:
                     return §§pop();
                  }
                  addr94:
               }
               else if(!this.§+!F§[_loc1_].isLoaded)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr94);
               }
               _loc1_++;
            }
            §§goto(addr93);
            §§push(false);
         }
         addr33:
         return false;
      }
      
      override protected function init() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§6"d§ = § #^§(§^c§.getItemByName("Container_Tabs")).mClip;
         }
         var _loc1_:§^!B§ = new §^!B§(§ #^§(§^c§.getItemByName("Container_PowerUpsTab")),§^"N§);
         if(_loc3_)
         {
            _loc1_.addEventListener(§^i§.§-#>§,this.§1"Q§);
            loop0:
            while(true)
            {
               addr57:
               while(true)
               {
                  _loc1_.addEventListener(§^i§.§+]§,this.§3!7§);
                  continue loop0;
               }
            }
            addr71:
         }
         while(true)
         {
            _loc1_.addEventListener(§^i§.§5!B§,this.§`#6§);
            if(!_loc3_)
            {
               continue;
            }
            if(_loc3_ || _loc1_)
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
            §§goto(addr57);
         }
         var _loc2_:§ q§ = new § q§(§ #^§(§^c§.getItemByName("Container_EnergyTab")),§^"N§);
         if(!_loc4_)
         {
            _loc2_.addEventListener(§^i§.§-#>§,this.§1"Q§);
            loop3:
            while(true)
            {
               _loc2_.addEventListener(§^i§.§?!A§,this.§3!7§);
               while(true)
               {
                  _loc2_.addEventListener(§^i§.§5!B§,this.§`#6§);
                  while(true)
                  {
                     _loc2_.addEventListener(§^i§.§@"v§,this.§-;§);
                     continue loop3;
                     loop8:
                     while(!(_loc4_ && _loc2_))
                     {
                        this.§+!F§.push(_loc2_);
                        loop9:
                        for(; _loc3_ || _loc2_; if(_loc4_ && _loc3_)
                        {
                           continue;
                        },§§goto(addr148),§§push(this.§2"O§))
                        {
                           this.§#M§ = new §4!l§(§ #^§(§^c§.getItemByName("Container_StarCoin")));
                           while(true)
                           {
                              this.§[!;§ = false;
                              while(true)
                              {
                                 §§push(this.§2"O§);
                                 loop12:
                                 while(true)
                                 {
                                    §§push(§="g§.§?6§);
                                    loop13:
                                    while(true)
                                    {
                                       §§pop().addEventListener(§§pop(),this.§?#P§);
                                       loop14:
                                       while(true)
                                       {
                                          §§push(this.§2"O§);
                                          loop15:
                                          while(true)
                                          {
                                             §§push(§="g§.§=#2§);
                                             if(_loc4_)
                                             {
                                                continue loop13;
                                             }
                                             §§pop().addEventListener(§§pop(),this.§?K§);
                                             loop16:
                                             while(true)
                                             {
                                                §§push(this.§2"O§);
                                                addr116:
                                                addr85:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(§§pop().§9"'§())
                                                      {
                                                         break;
                                                      }
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         continue loop14;
                                                      }
                                                      continue loop16;
                                                   }
                                                   continue loop12;
                                                }
                                                addr85:
                                                return;
                                             }
                                             addr148:
                                             while(true)
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   if(§§pop().§^5§)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr159);
                                                      }
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop15;
                                             }
                                             §§goto(addr177);
                                          }
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           this.§+!F§.push(_loc1_);
                           continue loop8;
                           §§goto(addr223);
                        }
                        addr223:
                     }
                  }
               }
            }
         }
         §§goto(addr217);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.show(param1);
            while(true)
            {
               §6"]§.§>!=§();
               §§goto(addr60);
            }
         }
         addr60:
         while(true)
         {
            this.§&#`§(§]"y§);
            if(!_loc3_)
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.hide(param1);
         }
      }
      
      private function §?#P§(param1:§="g§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§&!f§(param1.§^5§);
         }
      }
      
      private function §?K§(param1:§="g§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§[!;§ = false;
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
               while(true)
               {
                  this.§1J§.reset();
                  while(true)
                  {
                     this.§1J§.removeEventListener(TimerEvent.TIMER,this.§2!#§);
                     addr56:
                     while(!(_loc1_ && _loc2_))
                     {
                     }
                  }
                  addr30:
                  if(_loc1_ && _loc2_)
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
               if(_loc2_)
               {
                  §§goto(addr30);
               }
               §§goto(addr56);
            }
         }
         §§goto(addr47);
      }
      
      private function §2!#§(param1:TimerEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:§5!U§ = null;
         var _loc2_:§%"[§ = §@#B§(§4#;§.singleton.dataModel).§&"9§;
         if(_loc5_ || this)
         {
            if(_loc2_.isLoaded)
            {
               if(!(_loc6_ && this))
               {
                  this.§2!&§();
                  if(_loc6_ && _loc3_)
                  {
                  }
                  §§goto(addr77);
               }
               if(this.§6#L§)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     _loc3_ = 0;
                  }
                  §§goto(addr77);
               }
            }
            §§goto(addr119);
         }
         addr77:
         while(_loc3_ < this.§+!F§.length)
         {
            (_loc4_ = this.§+!F§[_loc3_]).initData(this.§6#L§);
            if(_loc5_ || param1)
            {
               _loc3_++;
            }
         }
         if(_loc5_ || param1)
         {
            addr119:
            this.§6#L§ = null;
            §§goto(addr122);
         }
         addr122:
      }
      
      private function §&!f§(param1:§?g§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§%"[§ = null;
         var _loc3_:int = 0;
         var _loc4_:§5!U§ = null;
         if(!_loc6_)
         {
            if(param1)
            {
               addr28:
               _loc2_ = §@#B§(§4#;§.singleton.dataModel).§&"9§;
               if(!(_loc6_ && this))
               {
                  if(_loc2_.isLoaded)
                  {
                     if(!_loc6_)
                     {
                        _loc3_ = 0;
                        addr50:
                        while(_loc3_ < this.§+!F§.length)
                        {
                           (_loc4_ = this.§+!F§[_loc3_]).initData(param1);
                           if(_loc5_ || _loc2_)
                           {
                              _loc3_++;
                           }
                        }
                        if(_loc5_ || _loc3_)
                        {
                           §§goto(addr140);
                        }
                     }
                     §§goto(addr50);
                  }
                  else
                  {
                     this.§6#L§ = param1;
                     if(!_loc6_)
                     {
                        this.§2!&§();
                        while(true)
                        {
                           this.§1J§ = new Timer(§]m§,0);
                        }
                        addr139:
                     }
                  }
                  while(true)
                  {
                     while(true)
                     {
                        this.§1J§.addEventListener(TimerEvent.TIMER,this.§2!#§);
                        do
                        {
                           this.§1J§.start();
                        }
                        while(_loc6_);
                        
                        if(!_loc5_)
                        {
                           break;
                        }
                        if(_loc5_)
                        {
                           if(false)
                           {
                              continue;
                           }
                           §§goto(addr140);
                        }
                        else
                        {
                           §§goto(addr139);
                        }
                     }
                  }
               }
               §§goto(addr50);
            }
            addr140:
            return;
         }
         §§goto(addr28);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super.onUIInteraction(param1,param2,param3);
         }
      }
      
      protected function §1"Q§(param1:§^i§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §?!r§.§"#_§("misc_menubuttonproceed_1");
         }
         do
         {
            this.§&#`§(this.§+!F§.indexOf(§5!U§(param1.currentTarget)));
         }
         while(!_loc3_);
         
      }
      
      protected function §3!7§(param1:§^i§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§5!U§ = §5!U§(param1.currentTarget);
         §§push(this.§8@§(param1.prices));
         if(_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            _loc2_.purchaseAccepted(_loc3_);
         }
      }
      
      protected function §`#6§(param1:§^i§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §2!P§.§;%§(param1.prices);
         }
      }
      
      protected function §-;§(param1:§^i§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[!j§ = new §9"i§(§`"W§.§+v§,§+5§.TOP,§9"i§.§%!§);
         if(_loc4_)
         {
            §4#;§.singleton.popupManager.openPopup(_loc2_,true,true,true);
         }
      }
      
      protected function §8@§(param1:§,T§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§[!;§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§@!E§);
                     if(_loc2_ || param1)
                     {
                        §§push(param1.price);
                        if(_loc2_)
                        {
                           §§push(§§pop().§1#9§(§§pop()));
                           loop2:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(!§§pop())
                                 {
                                    loop3:
                                    do
                                    {
                                       this.§7"r§();
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       if(_loc2_ || this)
                                       {
                                          if(_loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push(false);
                                                if(_loc2_ || this)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop2;
                                             }
                                             continue loop1;
                                          }
                                          loop4:
                                          while(true)
                                          {
                                             this.§[!;§ = true;
                                             addr130:
                                             while(true)
                                             {
                                                §§pop().§12§(§§pop());
                                                continue loop4;
                                             }
                                          }
                                       }
                                       while(!(_loc2_ || _loc3_))
                                       {
                                       }
                                       while(true)
                                       {
                                          this.§2"O§.§9?§(param1);
                                          break loop3;
                                       }
                                    }
                                    while(!(_loc3_ && _loc2_));
                                    
                                    while(true)
                                    {
                                       §§push(true);
                                       continue loop2;
                                    }
                                 }
                                 while(_loc2_)
                                 {
                                    §§push(this.§@!E§);
                                    while(true)
                                    {
                                       §§goto(addr130);
                                    }
                                 }
                                 addr135:
                                 return false;
                              }
                           }
                           return §§pop();
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr118);
                  }
               }
               §§goto(addr135);
            }
         }
         §§goto(addr95);
      }
      
      protected function §7"r§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§[!j§ = §]!J§.§9P§(§`"W§.§+v§,§+5§.TOP,§]!J§.§[!v§);
         if(_loc3_)
         {
            §4#;§.singleton.popupManager.openPopup(_loc1_,true,true);
         }
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§5!U§ = null;
         if(_loc4_ || _loc3_)
         {
            this.§2!&§();
            loop0:
            while(true)
            {
               addr61:
               while(true)
               {
                  §§push(this.§2"O§);
                  loop2:
                  while(true)
                  {
                     §§push(§="g§.§?6§);
                     loop3:
                     while(true)
                     {
                        §§pop().removeEventListener(§§pop(),this.§?#P§);
                        while(true)
                        {
                           §§push(this.§2"O§);
                           if(_loc3_ && _loc3_)
                           {
                              break;
                           }
                           §§push(§="g§.§=#2§);
                           if(_loc4_)
                           {
                              §§pop().removeEventListener(§§pop(),this.§?K§);
                              if(_loc4_ || _loc3_)
                              {
                                 continue loop0;
                              }
                              continue;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr61);
         }
         var _loc1_:int = 0;
         loop6:
         for(; _loc1_ < this.§+!F§.length; if(true)
         {
            continue;
         },§§goto(addr119))
         {
            _loc2_ = this.§+!F§[_loc1_];
            if(_loc4_ || this)
            {
               _loc2_.removeEventListener(§^i§.§-#>§,this.§1"Q§);
               while(true)
               {
                  _loc2_.removeEventListener(§^i§.§+]§,this.§3!7§);
               }
               addr184:
            }
            while(true)
            {
               _loc2_.removeEventListener(§^i§.§?!A§,this.§3!7§);
               loop9:
               for(; !(_loc3_ && _loc1_); loop11:
               while(_loc4_ || _loc3_)
               {
                  while(true)
                  {
                     _loc2_.dispose();
                     while(!(_loc3_ && this))
                     {
                        if(!_loc3_)
                        {
                           _loc1_++;
                           if(_loc3_ && _loc1_)
                           {
                              continue;
                           }
                           §§goto(addr100);
                        }
                        else
                        {
                           §§goto(addr184);
                        }
                     }
                     continue loop11;
                  }
                  continue loop6;
               })
               {
                  _loc2_.removeEventListener(§^i§.§5!B§,this.§`#6§);
                  while(true)
                  {
                     _loc2_.removeEventListener(§^i§.§@"v§,this.§-;§);
                     continue loop9;
                     addr100:
                     if(_loc4_ || _loc2_)
                     {
                        continue loop6;
                     }
                  }
               }
            }
         }
         if(!_loc3_)
         {
            this.§+!F§ = null;
            if(_loc4_ || _loc2_)
            {
               this.§#M§.dispose();
               loop14:
               while(true)
               {
                  this.§#M§ = null;
                  do
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        continue;
                     }
                     continue loop14;
                  }
                  while(super.dispose(), _loc3_);
                  
                  §§goto(addr212);
               }
            }
         }
         addr212:
      }
      
      public function §&#`§(param1:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§5!U§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§+!F§.length)
         {
            _loc2_ = this.§+!F§[_loc3_];
            if(!(_loc5_ && this))
            {
               if(_loc3_ != param1)
               {
                  _loc2_.disable();
                  loop1:
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        while(true)
                        {
                           continue loop1;
                        }
                        addr81:
                     }
                  }
               }
               while(true)
               {
                  §]"y§ = _loc3_;
                  §§goto(addr127);
               }
            }
            §§goto(addr81);
         }
      }
   }
}
