package § each§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §#^§.§7!A§;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import §'!s§.Popup;
   import §'!s§.StatePopupManager;
   import §,V§.§'"5§;
   import §-!+§.§<i§;
   import §2!i§.§'M§;
   import §3!7§.§>,§;
   import §6o§.§5!C§;
   import §<a§.§!!m§;
   import §<a§.§+!B§;
   import §^!r§.§=!x§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §>v§ extends Popup
   {
      
      public static const §`!M§:String = "PowerupBundle";
      
      public static const §89§:Array;
      
      public static const §9!#§:int = 3;
      
      public static const §4!-§:Number = 800;
      
      private static var §%K§:Class;
      
      private static var §,U§:String = null;
      
      public static var §@",§:Array;
      
      public static var §=F§:§0]§;
      
      public static var § [§:String;
      
      private static var §#"@§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`!M§ = "PowerupBundle";
            while(true)
            {
               §89§ = [§>,§.§^Q§.§]6§,§>,§.§7!C§.§]6§,§>,§.§%!X§.§]6§,§>,§.§&m§.§]6§,§>,§.§^t§.§]6§,§`!M§];
               loop1:
               while(true)
               {
                  §9!#§ = 3;
                  addr94:
                  while(true)
                  {
                     §4!-§ = 800;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      private var §"!T§:StatePopupManager;
      
      private var §46§:§<i§;
      
      private var mPowerUpsItemsScroller2:§<i§;
      
      private var §=!H§:Number;
      
      private var §7V§:String;
      
      private var §=S§:Array;
      
      private var § p§:Array;
      
      private var §>!C§:Boolean;
      
      public function §>v§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§=S§ = [];
            while(true)
            {
               this.§ p§ = [];
               while(!_loc4_)
               {
                  §§push(§,U§);
                  loop2:
                  while(true)
                  {
                     §§push(null);
                     addr197:
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           while(true)
                           {
                              §,U§ = "SHOP_POPUP_TAB_POWERUPS";
                              addr201:
                              while(true)
                              {
                              }
                           }
                           addr198:
                        }
                        while(true)
                        {
                           this.§"!T§ = param2;
                           addr193:
                           while(true)
                           {
                              super(§5!C§.§9G§(§%K§),param1);
                              addr188:
                              while(true)
                              {
                                 param1.getItemByName("Container_Popup").setVisibility(true);
                                 addr180:
                                 while(true)
                                 {
                                    this.§"!T§.addEventListener(§'"5§.§#2§,this.onUiInteraction);
                                 }
                                 addr145:
                                 while(_loc3_ || this)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    §§goto(addr198);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr163);
      }
      
      public static function § !y§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            § [§ = param1;
            do
            {
               §%?§.§6!x§(null);
            }
            while(_loc2_);
            
         }
      }
      
      private function §0!5§() : void
      {
      }
      
      private function §0L§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Array = §@",§.concat();
         loop0:
         while(true)
         {
            if(_loc1_.length <= 0)
            {
               loop1:
               while(true)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§=S§);
                        loop3:
                        for(; _loc3_; if(!(_loc3_ || _loc2_))
                        {
                           continue;
                        },if(§§pop().length >= this.§=S§.length)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr41);
                           }
                           §§goto(addr98);
                        },§§goto(addr89),§§push(this.§ p§))
                        {
                           if(§§pop().length % §9!#§ != 0)
                           {
                              §§push(this.§=S§);
                              break;
                           }
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(this.§ p§);
                                 if(_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 addr89:
                                 §§push(null);
                                 if(!(_loc2_ && this))
                                 {
                                    §§pop().push(§§pop());
                                    addr98:
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 addr118:
                                 §§pop().push(§§pop());
                                 continue loop2;
                              }
                              addr151:
                              continue loop0;
                              addr41:
                              if(_loc3_ || _loc3_)
                              {
                                 if(_loc3_ || this)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       return;
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        §§goto(addr118);
                     }
                  }
                  else
                  {
                     if(_loc1_.length <= 0)
                     {
                        continue loop0;
                     }
                     if(!(_loc2_ && _loc1_))
                     {
                        this.§ p§ = this.§ p§.concat(_loc1_.splice(0,§9!#§));
                     }
                     addr163:
                  }
                  §§goto(addr151);
               }
            }
            else
            {
               this.§=S§ = this.§=S§.concat(_loc1_.splice(0,§9!#§));
            }
            §§goto(addr163);
         }
      }
      
      private function §3!b§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.scroll(-1);
         }
      }
      
      private function §>`§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.scroll(1);
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
               if(!(_loc2_ && this))
               {
                  addr44:
                  this.§46§.scroll(param1);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      private function onBuyItemClicked(param1:§=!x§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         for each(_loc2_ in §89§)
         {
            while(param1.target.data.id == _loc2_)
            {
               loop2:
               while(_loc6_)
               {
                  §%?§.§#!p§ = param1.target.data;
                  loop3:
                  while(true)
                  {
                     this.§>!C§ = false;
                     while(!_loc5_)
                     {
                        while(true)
                        {
                           this.deActivate();
                           do
                           {
                              §#"@§ = true;
                           }
                           while(!(_loc6_ || param1));
                           
                           if(_loc5_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      private function §?!m§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         var _loc3_:int = 0;
         for each(_loc2_ in §89§)
         {
            loop1:
            while(param1.id == _loc2_)
            {
               loop2:
               while(true)
               {
                  §%?§.§#!p§ = param1;
                  while(_loc6_)
                  {
                     while(true)
                     {
                        this.§>!C§ = true;
                        do
                        {
                           this.deActivate();
                        }
                        while(_loc5_ && _loc3_);
                        
                        if(_loc5_ && _loc2_)
                        {
                           break;
                        }
                        if(_loc6_)
                        {
                           continue;
                        }
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §4!"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(§=F§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr209:
                        do
                        {
                           §§push(Boolean(§@",§));
                           if(!(_loc1_ || _loc1_))
                           {
                              continue loop2;
                           }
                        }
                        while(_loc1_);
                        
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           §=F§ = new §0]§();
                           loop6:
                           while(true)
                           {
                              §§push(§=F§);
                              loop7:
                              while(true)
                              {
                                 §§pop().addEventListener(Event.COMPLETE,this.§5!B§);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§=F§);
                                    while(true)
                                    {
                                       §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.§5M§);
                                       continue loop6;
                                       loop13:
                                       while(_loc1_ || _loc1_)
                                       {
                                          §§pop().addEventListener(§+!D§.§25§,this.§5M§);
                                          loop14:
                                          while(_loc1_ || _loc1_)
                                          {
                                             §§push(§=F§);
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   continue loop13;
                                                }
                                                if(!_loc2_)
                                                {
                                                   continue loop7;
                                                }
                                                addr133:
                                                while(true)
                                                {
                                                   §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5M§);
                                                   break loop14;
                                                }
                                                addr108:
                                                §§push(§=F§);
                                                if(!_loc2_)
                                                {
                                                   addr32:
                                                   §§pop().load(§-!l§.§%""§(AngryBirdsFP11.§76§ + "/shoplisting"));
                                                   if(!(_loc2_ && this))
                                                   {
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         if(!(_loc2_ && this))
                                                         {
                                                            if(_loc1_ || this)
                                                            {
                                                               return;
                                                            }
                                                            addr203:
                                                            addr203:
                                                            return;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop14;
                                                      continue loop14;
                                                   }
                                                   addr101:
                                                   while(_loc1_ || this)
                                                   {
                                                      §§goto(addr108);
                                                      §§goto(addr32);
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          while(_loc1_)
                                          {
                                             §§push(§=F§);
                                             continue loop13;
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§goto(addr209);
                  }
               }
            }
         }
         this.§@!D§();
         §§goto(addr203);
      }
      
      protected function §5M§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(param1.type == §+!D§.§25§)
            {
               if(!(_loc3_ && param1))
               {
                  §%?§.§6!7§(§-d§.§]x§);
               }
               while(true)
               {
                  §§goto(addr38);
               }
               addr84:
            }
            else
            {
               §%?§.§4!>§();
            }
            while(true)
            {
               if(!(_loc3_ && this))
               {
                  §§goto(addr67);
               }
               else
               {
                  §§goto(addr84);
               }
               return;
            }
         }
         §§goto(addr67);
      }
      
      private function §5!B§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr60:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               addr62:
               while(true)
               {
                  addr38:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private function § !F§(param1:Array) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Object = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(_loc7_ || _loc3_)
            {
               if(!_loc3_.h)
               {
                  if(_loc7_ || param1)
                  {
                     _loc2_.push(_loc3_);
                  }
               }
            }
         }
         return _loc2_;
      }
      
      private function §@!D§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §@",§ = this.§ !F§(§@",§);
            loop0:
            while(true)
            {
               addr32:
               while(true)
               {
                  this.§=!H§ = 0;
                  addr36:
                  while(_loc4_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§0L§();
            if(!(_loc3_ && _loc2_))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr32);
            }
            §§goto(addr36);
         }
         var _loc1_:int = -15;
         var _loc2_:int = 110;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this);
            §§push(§§findproperty(§<i§));
            §§push(§4!-§);
            §§push(200);
            if(_loc4_ || _loc2_)
            {
               §§pop().§46§ = new §§pop().§<i§(§§pop(),§§pop(),this.§=S§ || [],§+z§,70,140);
               while(true)
               {
                  §§push(this.§46§);
                  loop5:
                  while(true)
                  {
                     §§pop().scrollerSprite.addEventListener(§=!x§.§!m§,this.onBuyItemClicked);
                     loop6:
                     while(true)
                     {
                        §§push(this.§46§);
                        while(_loc4_)
                        {
                           §§pop().scrollerSprite.x = _loc1_;
                           while(true)
                           {
                              §§push(this.§46§);
                              if(!(_loc4_ || this))
                              {
                                 break;
                              }
                              §§pop().scrollerSprite.y = _loc2_;
                              continue loop6;
                           }
                        }
                        continue loop5;
                     }
                  }
               }
            }
            §§goto(addr267);
         }
         §§goto(addr112);
      }
      
      private function onUiInteraction(param1:§'"5§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.uiInteractionHandler(param1.§"!k§,param1.§[2§,param1.§1!`§);
         }
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§1]§(param2);
         }
         var _loc4_:* = param2;
         if(_loc6_ || param2)
         {
            §§push("SHOP_POPUP_CLOSE");
            if(!_loc5_)
            {
               §§push(_loc4_);
               if(!(_loc5_ && this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_)
                     {
                        addr118:
                        §§push(0);
                        if(!_loc6_)
                        {
                           addr128:
                        }
                     }
                     else
                     {
                        addr125:
                        §§push(1);
                        if(_loc6_)
                        {
                           §§goto(addr128);
                        }
                     }
                     §§goto(addr133);
                  }
                  else
                  {
                     §§goto(addr124);
                  }
               }
               §§goto(addr124);
            }
            addr124:
            if("HALLOWEEN_SHOP" === _loc4_)
            {
               §§goto(addr125);
            }
            else
            {
               §§push(2);
            }
            addr133:
            loop1:
            switch(§§pop())
            {
               case 0:
                  this.§>!C§ = true;
                  this.deActivate();
                  break;
                  addr77:
                  addr70:
               case 1:
                  §%?§.§ ]§("standardShop");
                  if(!(_loc5_ && param3))
                  {
                     if(!_loc5_)
                     {
                        while(true)
                        {
                           this.§>!C§ = false;
                           if(!_loc5_)
                           {
                              this.deActivate();
                              if(_loc6_ || param3)
                              {
                                 if(!_loc5_)
                                 {
                                    if(true)
                                    {
                                       break loop1;
                                    }
                                    continue;
                                 }
                              }
                              break loop1;
                           }
                           break loop1;
                        }
                        break;
                     }
                     §§goto(addr77);
                     §§goto(addr70);
                  }
            }
            return;
         }
         §§goto(addr118);
      }
      
      private function §1]§(param1:String) : void
      {
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§46§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§push(this.mPowerUpsItemsScroller2);
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop9:
                           while(true)
                           {
                              this.§"!T§.removeEventListener(§'"5§.§#2§,this.onUiInteraction);
                              loop10:
                              while(true)
                              {
                                 if(!this.§>!C§)
                                 {
                                    close();
                                    loop11:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc1_)
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§=F§);
                                                loop13:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop14:
                                                      while(!_loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§push(§=F§);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§pop().removeEventListener(Event.COMPLETE,this.§5!B§);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               if(_loc2_ && _loc1_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§push(§=F§);
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.§5M§);
                                                                  while(true)
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     if(_loc2_ && _loc1_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§=F§);
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§pop().removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5M§);
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(§=F§);
                                                                           if(_loc2_ && _loc2_)
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           if(!_loc1_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           if(!_loc1_)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           if(!_loc1_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§pop().removeEventListener(§+!D§.§25§,this.§5M§);
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc2_ && this))
                                                                              {
                                                                                 if(_loc1_ || this)
                                                                                 {
                                                                                    if(_loc2_ && this)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §=F§ = null;
                                                                                    loop22:
                                                                                    while(_loc1_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§>!C§ = false;
                                                                                          if(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             continue loop21;
                                                                                          }
                                                                                          continue loop22;
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                              continue loop20;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              preClose();
                                                                              continue loop12;
                                                                           }
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  addr198:
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     addr237:
                                                                     while(true)
                                                                     {
                                                                        mClip.Container_Popup.removeChild(this.§46§.scrollerSprite);
                                                                        break loop8;
                                                                     }
                                                                     §§goto(addr130);
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop11;
                                                   }
                                                   §§goto(addr28);
                                                }
                                             }
                                             addr138:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                mClip.Container_Popup.removeChild(this.mPowerUpsItemsScroller2.scrollerSprite);
                                                continue loop5;
                                             }
                                             addr220:
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr138);
                                       }
                                    }
                                 }
                                 §§goto(addr175);
                              }
                           }
                        }
                        §§goto(addr220);
                     }
                  }
               }
               §§goto(addr237);
            }
         }
         §§goto(addr175);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.open(param1);
            while(true)
            {
               mClip.x = (mClip.stage.stageWidth - 750) / 2;
               addr103:
               while(true)
               {
                  mClip.y = (mClip.stage.stageHeight - 525) / 2;
                  addr64:
                  if(_loc3_ || this)
                  {
                     §§goto(addr20);
                  }
               }
            }
            addr107:
         }
         while(true)
         {
            if(!§#"@§)
            {
               if(_loc3_ || param1)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §+!B§.§<!w§();
               }
            }
            else
            {
               §#"@§ = false;
               if(_loc3_ || this)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr107);
               }
               else
               {
                  §§goto(addr64);
               }
            }
            §§goto(addr64);
         }
         addr20:
      }
   }
}
