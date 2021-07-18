package §8#I§
{
   import §+D§.§^"m§;
   import §,"N§.§%"[§;
   import §,"N§.§?v§;
   import §,"N§.§@#B§;
   import §7K§.§,T§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import flash.text.TextField;
   
   public class §>#+§
   {
      
      public static const §2#W§:String = "friends";
      
      public static const § !0§:String = "normal";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §2#W§ = "friends";
         }
         do
         {
            § !0§ = "normal";
         }
         while(_loc1_ && _loc1_);
         
      }
      
      private var §^"N§:§5"H§;
      
      private var §8!J§:§%"[§;
      
      public var view:§^"m§;
      
      private var §]!=§:String;
      
      private var §1>§:§,T§;
      
      private var §;"-§:String;
      
      private var §]"u§:Boolean;
      
      private var §?!v§:Number;
      
      private var §!#A§:int;
      
      public function §>#+§(param1:§^"m§, param2:§5"H§, param3:§%"[§, param4:int, param5:String, param6:§,T§, param7:String, param8:int)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc11_)
         {
            super();
            while(true)
            {
               this.view = param1;
               loop1:
               while(true)
               {
                  this.§]!=§ = param5;
                  loop2:
                  while(true)
                  {
                     this.§1>§ = param6;
                     loop3:
                     while(_loc10_)
                     {
                        this.§!#A§ = param4;
                        loop4:
                        while(true)
                        {
                           this.§;"-§ = param7;
                           while(true)
                           {
                              if(_loc10_)
                              {
                                 this.§?!v§ = param8;
                                 if(_loc11_ && param3)
                                 {
                                    break;
                                 }
                                 if(!_loc11_)
                                 {
                                    if(!_loc11_)
                                    {
                                       this.§^"N§ = param2;
                                       continue;
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           §§goto(addr152);
                        }
                     }
                     continue loop1;
                  }
               }
               if(_loc11_ && this)
               {
                  continue;
               }
               if(false)
               {
                  while(true)
                  {
                     this.§8!J§ = param3;
                     if(_loc10_)
                     {
                        param1.mClip.purchaseComplete.gotoAndStop(1);
                        if(!(_loc11_ && param2))
                        {
                           §§goto(addr32);
                        }
                        break;
                     }
                     break;
                  }
                  addr150:
                  this.refresh();
                  addr152:
                  return;
                  addr48:
               }
               param1.mClip.purchaseComplete.mouseEnabled = param1.mClip.purchaseComplete.mouseChildren = false;
               if(!_loc11_)
               {
                  §§goto(addr150);
               }
               §§goto(addr152);
            }
         }
         while(true)
         {
            §§goto(addr48);
         }
      }
      
      public function set dataID(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]!=§ = param1;
         }
      }
      
      public function get dataID() : String
      {
         return this.§]!=§;
      }
      
      public function set prices(param1:§,T§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1>§ = param1;
         }
      }
      
      public function get prices() : §,T§
      {
         return this.§1>§;
      }
      
      public function get type() : String
      {
         return this.§;"-§;
      }
      
      public function set isDisabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§]"u§ = param1;
         }
      }
      
      public function get isDisabled() : Boolean
      {
         return this.§]"u§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.view.visible = param1;
         }
      }
      
      public function get visible() : Boolean
      {
         return this.view.visible;
      }
      
      public function set singlePrice(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§?!v§ = param1;
            do
            {
               this.refresh();
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      public function §3"&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.view.mClip.purchaseComplete.gotoAndPlay(1);
         }
         do
         {
            §?!r§.§"#_§("black_shop_purchase");
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      protected function §?"6§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push("<b>" + param1);
         if(!_loc3_)
         {
            return §§pop() + "</b>";
         }
      }
      
      public function refresh() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc5_ || this)
         {
            if(this.§]"u§)
            {
               if(_loc5_ || _loc2_)
               {
                  §§push(this.view);
                  if(_loc5_)
                  {
                     §§push(§1"z§.COMPONENT_STATE_DISABLED);
                     if(_loc5_)
                     {
                        §§pop().setComponentState(§§pop());
                        if(_loc5_ || _loc2_)
                        {
                           addr58:
                           var _loc1_:§?v§ = §@#B§(§4#;§.singleton.dataModel).§^"J§;
                           §§push(this.§;"-§);
                           loop0:
                           while(true)
                           {
                              var _loc3_:* = §§pop();
                              if(_loc5_)
                              {
                                 §§push(§2#W§);
                                 if(_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_ || _loc1_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_ || this)
                                          {
                                             addr617:
                                             §§push(0);
                                             if(_loc4_ && _loc1_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr629:
                                             §§push(1);
                                             if(_loc5_ || _loc3_)
                                             {
                                             }
                                          }
                                          addr652:
                                          loop1:
                                          while(true)
                                          {
                                             loop34:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   §§push(this.§]!=§);
                                                   if(_loc5_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc5_ || _loc1_)
                                                      {
                                                         addr588:
                                                         if(§§pop())
                                                         {
                                                            break;
                                                         }
                                                         addr559:
                                                         if(§§pop())
                                                         {
                                                            addr563:
                                                            this.view.mClip.title.htmlText = this.§^"N§.§@"n§("shop_friends_title");
                                                            addr533:
                                                            if(!_loc5_)
                                                            {
                                                               addr558:
                                                               §§goto(addr559);
                                                               §§push(Boolean(this.§1>§));
                                                               addr590:
                                                            }
                                                            this.view.mClip.quantity.text = "";
                                                            §§push(this.view);
                                                            if(_loc4_ && this)
                                                            {
                                                               §§goto(addr533);
                                                            }
                                                            §§pop().mClip.offer.text = "";
                                                            TextField(this.view.mClip.title).mouseEnabled = false;
                                                            TextField(this.view.mClip.offer).mouseEnabled = false;
                                                            TextField(this.view.mClip.quantity).mouseEnabled = false;
                                                            return;
                                                            addr561:
                                                            addr494:
                                                            addr514:
                                                            addr529:
                                                            addr504:
                                                         }
                                                         addr543:
                                                         §§push(this.view);
                                                         if(_loc4_ && _loc1_)
                                                         {
                                                            §§goto(addr563);
                                                         }
                                                         §§pop().mClip.title.text = "";
                                                         addr554:
                                                         §§goto(addr533);
                                                      }
                                                      break;
                                                   }
                                                   continue loop0;
                                                case 1:
                                                default:
                                                   §§push(this.§1>§);
                                                   loop2:
                                                   for(; !(_loc4_ && _loc3_); §§push(this.§1>§),if(!_loc5_)
                                                   {
                                                      continue;
                                                   },§§push(Boolean(§§pop())),if(_loc5_ || this)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr304);
                                                      }
                                                      §§goto(addr401);
                                                   },§§goto(addr334))
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop3:
                                                      while(_loc5_)
                                                      {
                                                         §§push(§§pop());
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§]"u§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!(_loc4_ && _loc1_))
                                                                           {
                                                                              §§push(!§§pop());
                                                                              while(true)
                                                                              {
                                                                                 addr443:
                                                                                 loop7:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§push(this.view);
                                                                                       loop8:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().mClip.cost.text = "";
                                                                                          loop9:
                                                                                          while(true)
                                                                                          {
                                                                                             addr367:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§]!=§);
                                                                                                if(!(_loc5_ || this))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                }
                                                                                                addr401:
                                                                                                addr401:
                                                                                                loop30:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr402:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc5_ || _loc3_))
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      if(_loc5_ || _loc2_)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      continue loop30;
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                }
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr207:
                                                                                          if(_loc4_ && _loc2_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§pop().mClip.quantity.text = "";
                                                                                          loop13:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(this.view);
                                                                                                loop14:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc5_ || _loc1_))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_ || _loc2_)
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§goto(addr207);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().mClip.diamondIcon.gotoAndStop(_loc2_);
                                                                                                                  addr288:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.view);
                                                                                                                     break loop14;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr284:
                                                                                                            }
                                                                                                         }
                                                                                                         addr224:
                                                                                                         while(!_loc4_)
                                                                                                         {
                                                                                                            §§pop().mClip.offer.htmlText = this.§?"6§(this.§`§() == 0 ? "Crystals" : "Crystals +" + this.§`§() + " " + this.§^"N§.getLocalizedString("starcoin_free"));
                                                                                                            if(_loc5_ || _loc3_)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  loop16:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     TextField(this.view.mClip.cost).mouseEnabled = false;
                                                                                                                     loop17:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc5_ || _loc1_)
                                                                                                                        {
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                           if(_loc4_ && _loc3_)
                                                                                                                           {
                                                                                                                              while(_loc5_ || this)
                                                                                                                              {
                                                                                                                                 §§push(this.§!#A§);
                                                                                                                                 if(_loc5_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() == 0);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          continue loop5;
                                                                                                                                       }
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          §§goto(addr337);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(2);
                                                                                                                                          if(!(_loc5_ || this))
                                                                                                                                          {
                                                                                                                                             break loop16;
                                                                                                                                          }
                                                                                                                                          §§goto(addr351);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr334:
                                                                                                                                 }
                                                                                                                                 §§goto(addr351);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                              addr306:
                                                                                                                           }
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              loop18:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 TextField(this.view.mClip.offer).mouseEnabled = false;
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       TextField(this.view.mClip.quantity).mouseEnabled = false;
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             continue loop18;
                                                                                                                                          }
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr563);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             §§push(1);
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                addr351:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      break loop16;
                                                                                                                                                   }
                                                                                                                                                   _loc2_ = §§pop();
                                                                                                                                                   while(!(_loc4_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr284);
                                                                                                                                                            §§push(this.view);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr561);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr533);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr494);
                                                                                                                                                }
                                                                                                                                                addr351:
                                                                                                                                             }
                                                                                                                                             §§goto(addr351);
                                                                                                                                          }
                                                                                                                                          §§goto(addr554);
                                                                                                                                       }
                                                                                                                                       addr337:
                                                                                                                                    }
                                                                                                                                    §§goto(addr563);
                                                                                                                                 }
                                                                                                                                 §§goto(addr514);
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr402);
                                                                                                                           §§goto(addr351);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc5_ || _loc1_)
                                                                                                                              {
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                           §§goto(addr529);
                                                                                                                           addr145:
                                                                                                                        }
                                                                                                                        §§goto(addr288);
                                                                                                                     }
                                                                                                                     §§goto(addr504);
                                                                                                                  }
                                                                                                                  addr259:
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               §§goto(addr533);
                                                                                                            }
                                                                                                            §§goto(addr563);
                                                                                                         }
                                                                                                         §§goto(addr543);
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      continue loop8;
                                                                                                      addr198:
                                                                                                   }
                                                                                                   if(_loc4_ && this)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§pop().mClip.offer.text = "";
                                                                                                      if(_loc5_ || _loc2_)
                                                                                                      {
                                                                                                         if(_loc5_ || _loc1_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr533);
                                                                                                   }
                                                                                                   §§goto(addr563);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§pop().mClip.quantity.htmlText = this.§?"6§(this.§;C§().toString());
                                                                                                      if(_loc5_ || _loc2_)
                                                                                                      {
                                                                                                         §§goto(addr224);
                                                                                                         §§push(this.view);
                                                                                                      }
                                                                                                      §§goto(addr563);
                                                                                                   }
                                                                                                   addr446:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().mClip.cost.htmlText = this.§?"6§(this.§1>§.price.toString());
                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                      {
                                                                                                         §§goto(addr367);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr563);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr355);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr446);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr442:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr559);
                                                                           }
                                                                           §§goto(addr563);
                                                                        }
                                                                        §§goto(addr443);
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                               }
                                                               §§goto(addr442);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr588);
                                                            }
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr401);
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§goto(addr198);
                                                                  §§push(this.view);
                                                               }
                                                               §§goto(addr306);
                                                            }
                                                         }
                                                         §§goto(addr559);
                                                      }
                                                      break loop34;
                                                   }
                                                   §§goto(addr558);
                                             }
                                             §§pop();
                                             §§goto(addr590);
                                          }
                                       }
                                       else
                                       {
                                          addr628:
                                          if(§ !0§ === _loc3_)
                                          {
                                             §§goto(addr629);
                                          }
                                          else
                                          {
                                             §§push(2);
                                          }
                                          §§goto(addr652);
                                       }
                                       §§goto(addr629);
                                    }
                                 }
                                 §§goto(addr628);
                              }
                              §§goto(addr617);
                           }
                           addr52:
                        }
                     }
                     §§goto(addr58);
                  }
                  else
                  {
                     addr55:
                     §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
                  §§pop().setComponentState(§§pop());
                  §§goto(addr58);
               }
               §§goto(addr52);
            }
            else
            {
               §§push(this.view);
            }
            §§goto(addr55);
         }
         §§goto(addr58);
      }
      
      protected function §;C§() : int
      {
         return this.§1>§.quantity - this.§`§();
      }
      
      protected function §`§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§?!v§ == -1)
            {
               if(_loc1_)
               {
                  §§goto(addr34);
               }
            }
            return Math.floor(this.§1>§.quantity - this.§1>§.price / this.§?!v§);
         }
         addr34:
         return 0;
      }
   }
}
