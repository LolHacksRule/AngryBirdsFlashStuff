package §'y§
{
   import §+D§.§^"m§;
   import §,"N§.§""t§;
   import §,"N§.§@#B§;
   import §7K§.§,T§;
   import §="2§.§?!r§;
   import flash.display.MovieClip;
   
   public class §7!,§
   {
      
      private static const §^"u§:int = 261;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §7!,§)
         {
            §^"u§ = 261;
         }
      }
      
      public var view:§^"m§;
      
      private var §]!=§:String;
      
      private var §1>§:§,T§;
      
      private var §?!v§:Number;
      
      private var §2"O§:§""t§;
      
      public function §7!,§(param1:§^"m§, param2:String, param3:§,T§, param4:int)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            super();
            if(_loc7_)
            {
               this.view = param1;
               loop0:
               while(true)
               {
                  this.§]!=§ = this.dataID;
                  if(_loc7_)
                  {
                     this.§1>§ = param3;
                     if(_loc7_ || param3)
                     {
                        while(true)
                        {
                           while(true)
                           {
                              this.§?!v§ = param4;
                              if(!(_loc6_ && this))
                              {
                                 if(_loc6_)
                                 {
                                    continue loop0;
                                 }
                                 param1.mClip.purchaseComplete.gotoAndStop(1);
                                 if(!(_loc6_ && param3))
                                 {
                                    if(false)
                                    {
                                       continue;
                                    }
                                    addr124:
                                    param1.mClip.purchaseComplete.mouseEnabled = param1.mClip.purchaseComplete.mouseChildren = false;
                                    if(_loc6_)
                                    {
                                    }
                                    return;
                                    addr124:
                                 }
                              }
                              §§goto(addr124);
                           }
                        }
                        addr75:
                     }
                     this.§2"O§ = §@#B§(§4#;§.singleton.dataModel).§1!f§;
                     break;
                  }
                  break;
               }
               do
               {
                  this.refresh();
               }
               while(_loc6_ && param1);
               
            }
            §§goto(addr124);
         }
         §§goto(addr75);
      }
      
      public function set dataID(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]!=§ = param1;
         }
         do
         {
            this.refresh();
         }
         while(_loc2_ && param1);
         
      }
      
      public function get dataID() : String
      {
         return this.§]!=§;
      }
      
      public function set prices(param1:§,T§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§1>§ = param1;
            do
            {
               this.refresh();
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function get prices() : §,T§
      {
         return this.§1>§;
      }
      
      public function set singlePrice(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§?!v§ = param1;
            do
            {
               this.refresh();
            }
            while(!_loc3_);
            
         }
      }
      
      public function §3"&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.view.mClip.purchaseComplete.gotoAndPlay(1);
            do
            {
               §?!r§.§"#_§("black_shop_purchase");
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function §&5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.view.mClip.purchaseComplete.gotoAndStop(§^"u§);
         }
      }
      
      protected function §?"6§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push("<b>" + param1);
         if(!(_loc3_ && this))
         {
            return §§pop() + "</b>";
         }
      }
      
      protected function refresh() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var offerAmount:int = 0;
         if(_loc3_ || _loc2_)
         {
            if(this.§]!=§)
            {
               try
               {
                  addr33:
                  MovieClip(this.view.mClip.icon).gotoAndStop(this.§]!=§.toLowerCase());
                  if(!_loc4_)
                  {
                     addr393:
                     §§push(this.§1>§);
                     loop0:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(this.view);
                           loop1:
                           while(_loc3_)
                           {
                              §§pop().mClip.title.text = "";
                              loop2:
                              while(!_loc4_)
                              {
                                 §§push(this.view);
                                 loop3:
                                 for(; _loc3_; while(true)
                                 {
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue loop3;
                                    }
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    if(!(_loc4_ && this))
                                    {
                                       §§pop().mClip.offer.text = "";
                                       §§goto(addr167);
                                    }
                                    §§goto(addr255);
                                    §§goto(addr94);
                                 },§§pop().mClip.saleStamp.visible = false,§§goto(addr237))
                                 {
                                    §§pop().mClip.cost.text = "";
                                    while(true)
                                    {
                                       §§push(this.view);
                                       continue loop3;
                                       addr167:
                                       loop6:
                                       while(!(_loc4_ && _loc2_))
                                       {
                                          §§push(this.view);
                                          loop7:
                                          for(; _loc3_; §§push(this.view),if(_loc4_)
                                          {
                                             continue;
                                          },if(!(_loc3_ || _loc3_))
                                          {
                                             continue loop3;
                                          },if(!_loc4_)
                                          {
                                             §§goto(addr103);
                                          },§§goto(addr212))
                                          {
                                             §§pop().mClip.saleStamp.visible = false;
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc4_)
                                                {
                                                   continue loop2;
                                                }
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                if(_loc3_)
                                                {
                                                   if(!(_loc3_ || _loc3_))
                                                   {
                                                      addr302:
                                                      §§push(this.view);
                                                      break loop1;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§push(this.view);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§pop().mClip.cost.htmlText = this.§?"6§(this.§1>§.price.toString());
                                                      addr392:
                                                      §§push(§§newactivation());
                                                      §§push(this.§2"O§.§`§(this.§?!v§,this.§1>§));
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§push(int(§§pop()));
                                                      }
                                                      §§pop().§§slot[1] = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(this.view);
                                                         while(true)
                                                         {
                                                            §§pop().mClip.offer.htmlText = this.§?"6§(offerAmount == 0 ? "" : "+ " + offerAmount + " " + §4#;§.singleton.§4#,§.getLocalizedString("starcoin_free"));
                                                            break loop2;
                                                            addr272:
                                                            loop16:
                                                            while(!(_loc4_ && _loc3_))
                                                            {
                                                               §§pop().mClip.saleStamp.visible = true;
                                                               while(true)
                                                               {
                                                                  addr255:
                                                                  §§push(this.view);
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  §§pop().mClip.saleOldPrice.visible = true;
                                                                  if(_loc3_ || _loc1_)
                                                                  {
                                                                     addr85:
                                                                     return;
                                                                     addr268:
                                                                     addr185:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr324:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.view);
                                                                     break loop3;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr396:
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(this.view);
                                                            addr398:
                                                            while(true)
                                                            {
                                                               §§pop().mClip.title.htmlText = this.§?"6§("x" + this.§2"O§.§;C§(this.§?!v§,this.§1>§));
                                                               §§goto(addr422);
                                                               continue loop18;
                                                            }
                                                         }
                                                         addr244:
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§push(this.view);
                                                            continue loop11;
                                                         }
                                                      }
                                                   }
                                                   addr422:
                                                }
                                                §§goto(addr261);
                                                addr103:
                                                §§pop().mClip.saleOldPrice.visible = false;
                                                if(_loc4_ && this)
                                                {
                                                   continue;
                                                }
                                                if(_loc3_)
                                                {
                                                   §§goto(addr85);
                                                }
                                                else
                                                {
                                                   §§goto(addr392);
                                                }
                                             }
                                             if(!_loc3_)
                                             {
                                                while(_loc3_ || _loc1_)
                                                {
                                                   §§goto(addr244);
                                                }
                                                §§goto(addr283);
                                                addr237:
                                             }
                                             if(_loc4_)
                                             {
                                                while(true)
                                                {
                                                   §§goto(addr272);
                                                   §§push(this.view);
                                                   break loop3;
                                                }
                                                §§goto(addr268);
                                                addr294:
                                             }
                                             §§goto(addr185);
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop().mClip.saleOldPrice.priceField.text = this.§1>§.normalPrice;
                                    §§goto(addr294);
                                 }
                              }
                              if(!(_loc4_ && _loc2_))
                              {
                                 continue loop0;
                              }
                              §§goto(addr396);
                           }
                           while(true)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§pop().mClip.saleStamp.salePercentage.text = "-" + this.§2"O§.§<# §(this.§1>§) + "%";
                                 §§goto(addr324);
                              }
                              §§goto(addr398);
                              §§goto(addr302);
                           }
                        }
                        §§goto(addr396);
                     }
                     addr73:
                  }
                  §§goto(addr184);
               }
               catch(e:Error)
               {
                  var _loc2_:* = e;
                  if(!(_loc4_ && _loc1_))
                  {
                     MovieClip(view.mClip.icon).gotoAndStop(1);
                  }
               }
               §§goto(addr73);
            }
            else
            {
               MovieClip(this.view.mClip.icon).gotoAndStop(1);
               if(_loc3_)
               {
                  §§goto(addr393);
               }
            }
            §§goto(addr324);
         }
         §§goto(addr33);
      }
   }
}
