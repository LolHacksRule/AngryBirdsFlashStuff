package § each§
{
   import §!K§.Item;
   import §-!+§.§;!B§;
   import §0p§.§3!D§;
   import §3!7§.§2G§;
   import §3!7§.§>,§;
   import §]!A§.§&A§;
   import §^!r§.§=!x§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §+z§ extends §;!B§
   {
       
      
      private var §#!U§:MovieClip;
      
      private var §9m§:SimpleButton;
      
      private var §"!N§:TextField;
      
      public function §+z§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               this.§#!U§ = new §8B§.§6"C§("ShopItemRendererAsset")();
               while(true)
               {
                  addChild(this.§#!U§);
                  while(!_loc1_)
                  {
                     continue loop0;
                     if(!(_loc1_ && _loc2_))
                     {
                        return;
                        addr57:
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§"!N§ = this.§#!U§.TextField;
            while(!_loc1_)
            {
               this.§#!U§.btnShop.addEventListener(MouseEvent.CLICK,this.§?!5§);
               if(!(_loc2_ || this))
               {
                  continue;
               }
               §§goto(addr50);
            }
         }
         §§goto(addr57);
      }
      
      private function §?!5§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(Boolean(§>">§));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr72:
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§>">§.id));
                        if(!_loc3_)
                        {
                           while(§§pop())
                           {
                              if(_loc2_)
                              {
                                 dispatchEvent(new §=!x§(§=!x§.§!m§,§>">§.id,true));
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           return;
                           addr49:
                        }
                     }
                  }
                  addr71:
               }
               §§goto(addr49);
            }
            §§goto(addr71);
         }
         §§goto(addr72);
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(false);
            loop1:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[3] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(!_loc5_)
                           {
                              §§push(null);
                              loop7:
                              for(; !_loc5_; while(true)
                              {
                                 §§push(null);
                                 if(!(_loc6_ || _loc2_))
                                 {
                                    break;
                                 }
                                 §§pop().§§slot[5] = §§pop();
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop3;
                                 }
                                 addr30:
                                 if(_loc6_ || param1)
                                 {
                                    continue loop6;
                                 }
                              })
                              {
                                 §§pop().§§slot[4] = §§pop();
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop7;
                                 }
                              }
                              continue loop4;
                              if(!(_loc6_ || _loc2_))
                              {
                                 continue;
                              }
                              §§push(false);
                              if(!(_loc6_ || _loc2_))
                              {
                                 continue loop1;
                              }
                              §§pop().§§slot[2] = §§pop();
                              addr53:
                              if(!_loc5_)
                              {
                                 if(false)
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       visible = data != null;
                                       addr64:
                                       while(true)
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             if(§>">§)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc5_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§goto(addr30);
                                                }
                                                §§goto(addr53);
                                             }
                                             break;
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                while(!_loc5_)
                                                {
                                                   super.data = value;
                                                   continue loop13;
                                                }
                                                continue loop5;
                                                addr102:
                                             }
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc5_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop14;
                                                }
                                                §§goto(addr127);
                                             }
                                          }
                                          continue loop2;
                                          §§goto(addr117);
                                       }
                                       §§goto(addr534);
                                    }
                                 }
                                 try
                                 {
                                    this.§#!U§.gotoAndStop("Unknown");
                                    if(!_loc5_)
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc5_ && this))
                                       {
                                          §§pop().§§slot[2] = true;
                                          if(!(_loc5_ && this))
                                          {
                                             addr175:
                                             §§push(§§newactivation());
                                             if(_loc6_)
                                             {
                                                §§pop().§§slot[3] = §3!D§.§ @§(String(§>">§.id));
                                                if(!_loc5_)
                                                {
                                                   addr379:
                                                   if(item != null)
                                                   {
                                                      addr382:
                                                      this.§#!U§.gotoAndStop("Empty");
                                                      addr386:
                                                      if(this.§#!U§.numChildren <= 0)
                                                      {
                                                         addr355:
                                                         var clip:MovieClip = item.§@!j§();
                                                         addr354:
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            addr337:
                                                            clip.scaleX = 0.65;
                                                            if(!(_loc5_ && this))
                                                            {
                                                               addr320:
                                                               §§push(§§newactivation());
                                                               if(_loc6_ || this)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§pop().§§slot[4].scaleY = 0.65;
                                                                     addr332:
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr301:
                                                                        clip.y += 25;
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!(_loc5_ && _loc2_))
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§pop().§§slot[4].x = clip.x + 50;
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             this.§#!U§.addChild(clip);
                                                                                             this.§#!U§.addChild(this.§9m§);
                                                                                             addr263:
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   if(!(_loc6_ || _loc3_))
                                                                                                   {
                                                                                                      §§goto(addr332);
                                                                                                   }
                                                                                                   this.§#!U§.addChild(this.§"!N§);
                                                                                                   if(!(_loc5_ && _loc3_))
                                                                                                   {
                                                                                                      addr205:
                                                                                                      this.§"!N§.text = item.mName;
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr190:
                                                                                                         this.§#!U§.SaleTag.visible = false;
                                                                                                         if(_loc6_ || _loc2_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr205);
                                                                                                            }
                                                                                                            if(§>">§.prices)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  addr392:
                                                                                                                  §§push(0);
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     var _loc3_:* = §§pop();
                                                                                                                     if(!(_loc5_ && param1))
                                                                                                                     {
                                                                                                                        var _loc4_:* = §>">§.prices;
                                                                                                                        if(!(_loc5_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr442:
                                                                                                                           if(§§hasnext(_loc4_,_loc3_))
                                                                                                                           {
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc6_ || this)
                                                                                                                              {
                                                                                                                                 §§pop().§§slot[5] = §§nextvalue(_loc3_,_loc4_);
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    addr432:
                                                                                                                                    if(price.cp)
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          this.§#!U§.SaleTag.visible = true;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr442);
                                                                                                                              }
                                                                                                                              §§goto(addr432);
                                                                                                                           }
                                                                                                                           addr445:
                                                                                                                           if(_loc6_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr488:
                                                                                                                              this.§>![§(§>">§.id);
                                                                                                                              _loc3_ = §>">§.id;
                                                                                                                              addr477:
                                                                                                                              addr492:
                                                                                                                              if(_loc6_ || param1)
                                                                                                                              {
                                                                                                                                 if(§>v§.§`!M§ === _loc3_)
                                                                                                                                 {
                                                                                                                                    addr510:
                                                                                                                                    §§push(0);
                                                                                                                                    if(_loc5_ && param1)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr524:
                                                                                                                                    switch(§§pop())
                                                                                                                                    {
                                                                                                                                       case 0:
                                                                                                                                          this.§#!U§.gotoAndStop(§>v§.§`!M§);
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             this.§#!U§.TextField.text = §&A§.§`!M§;
                                                                                                                                             if(_loc6_ || param1)
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && this))
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr477);
                                                                                                                                                   }
                                                                                                                                                   addr573:
                                                                                                                                                   if(this.§#!U§.currentFrameLabel == "Unknown")
                                                                                                                                                   {
                                                                                                                                                      addr578:
                                                                                                                                                      if(this.§#!U§.numChildren <= 0)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               addr563:
                                                                                                                                                               this.§?$§();
                                                                                                                                                               break;
                                                                                                                                                               addr562:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr578);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      this.§#!U§.removeChildAt(0);
                                                                                                                                                      addr584:
                                                                                                                                                      §§goto(addr578);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr562);
                                                                                                                                                }
                                                                                                                                                §§goto(addr492);
                                                                                                                                             }
                                                                                                                                             §§goto(addr573);
                                                                                                                                             addr487:
                                                                                                                                          }
                                                                                                                                          §§goto(addr563);
                                                                                                                                       default:
                                                                                                                                          §§goto(addr573);
                                                                                                                                    }
                                                                                                                                    if(!(_loc6_ || _loc2_))
                                                                                                                                    {
                                                                                                                                       §§goto(addr584);
                                                                                                                                    }
                                                                                                                                    addr534:
                                                                                                                                    return;
                                                                                                                                    addr523:
                                                                                                                                    addr572:
                                                                                                                                 }
                                                                                                                                 §§goto(addr523);
                                                                                                                                 §§push(1);
                                                                                                                              }
                                                                                                                              §§goto(addr510);
                                                                                                                              addr453:
                                                                                                                           }
                                                                                                                           §§goto(addr572);
                                                                                                                        }
                                                                                                                        §§goto(addr432);
                                                                                                                     }
                                                                                                                     §§goto(addr445);
                                                                                                                  }
                                                                                                                  §§goto(addr524);
                                                                                                               }
                                                                                                               §§goto(addr510);
                                                                                                            }
                                                                                                            §§goto(addr488);
                                                                                                         }
                                                                                                         §§goto(addr563);
                                                                                                      }
                                                                                                      §§goto(addr488);
                                                                                                   }
                                                                                                   §§goto(addr563);
                                                                                                }
                                                                                                §§goto(addr263);
                                                                                             }
                                                                                             §§goto(addr453);
                                                                                          }
                                                                                          §§goto(addr386);
                                                                                       }
                                                                                       §§goto(addr510);
                                                                                    }
                                                                                    §§goto(addr337);
                                                                                 }
                                                                                 §§goto(addr320);
                                                                              }
                                                                              §§goto(addr301);
                                                                              addr317:
                                                                           }
                                                                           §§goto(addr382);
                                                                        }
                                                                        §§goto(addr584);
                                                                     }
                                                                     §§goto(addr354);
                                                                  }
                                                                  §§goto(addr379);
                                                               }
                                                               §§goto(addr355);
                                                            }
                                                            §§goto(addr392);
                                                         }
                                                         §§goto(addr488);
                                                      }
                                                      this.§#!U§.removeChildAt(0);
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr382);
                                                      }
                                                      §§goto(addr487);
                                                   }
                                                   §§goto(addr190);
                                                }
                                                §§goto(addr510);
                                             }
                                             §§goto(addr355);
                                          }
                                          §§goto(addr317);
                                       }
                                       §§goto(addr379);
                                    }
                                    §§goto(addr392);
                                 }
                                 catch(e:Error)
                                 {
                                    _loc3_ = e;
                                    §§goto(addr175);
                                 }
                                 §§goto(addr510);
                              }
                              §§goto(addr64);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §>![§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§2G§ = §>,§.§'!i§(param1);
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(_loc3_ || this)
               {
                  this.§#!U§.gotoAndStop(_loc2_.§]6§);
               }
               do
               {
                  this.§#!U§.TextField.text = _loc2_.§7!5§;
               }
               while(!(_loc3_ || _loc2_));
               
               addr62:
            }
            return;
         }
         §§goto(addr62);
      }
      
      protected function §?$§() : void
      {
      }
      
      override public function get width() : Number
      {
         return 80;
      }
   }
}
