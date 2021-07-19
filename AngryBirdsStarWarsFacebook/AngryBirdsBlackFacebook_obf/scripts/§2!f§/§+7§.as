package §2!f§
{
   import §+D§.§^"m§;
   import §,"N§.§%"[§;
   import §>@§.§5"H§;
   import §^"?§.§["i§;
   import flash.display.MovieClip;
   
   public class §+7§
   {
       
      
      private var §^"N§:§5"H§;
      
      private var §8!J§:§%"[§;
      
      public var view:§^"m§;
      
      private var §1>§:§["i§;
      
      private var §!#A§:int;
      
      private var §`!e§:MovieClip;
      
      private var §?!v§:Number;
      
      public function §+7§(param1:§^"m§, param2:§5"H§, param3:§%"[§, param4:int, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super();
            loop0:
            while(true)
            {
               this.view = param1;
               loop1:
               while(true)
               {
                  this.§!#A§ = param4;
                  while(true)
                  {
                     this.§^"N§ = param2;
                     continue loop0;
                     loop5:
                     while(_loc6_ || param1)
                     {
                        param1.mClip.mouseChildren = false;
                        loop6:
                        for(; !_loc7_; while(_loc6_ || param3)
                        {
                           if(_loc6_)
                           {
                              this.refresh();
                              if(_loc7_)
                              {
                                 continue;
                              }
                              if(!_loc7_)
                              {
                                 §§goto(addr30);
                              }
                              §§goto(addr61);
                              continue;
                           }
                           continue loop1;
                        })
                        {
                           MovieClip(param1.mClip.icon).visbile = true;
                           while(!_loc7_)
                           {
                              MovieClip(param1.mClip.icon).gotoAndStop(this.§!#A§ + 1);
                              while(true)
                              {
                                 if(_loc6_ || param1)
                                 {
                                    while(true)
                                    {
                                       this.§`!e§ = MovieClip(param1.mClip.checkMark);
                                       addr61:
                                       while(!_loc7_)
                                       {
                                          this.§`!e§.gotoAndStop(1);
                                          continue loop6;
                                       }
                                       continue loop5;
                                    }
                                    return;
                                    addr37:
                                    addr92:
                                 }
                                 break;
                                 addr30:
                                 if(_loc7_ && param3)
                                 {
                                    continue;
                                 }
                                 §§goto(addr37);
                              }
                           }
                           while(true)
                           {
                              this.§?!v§ = param5;
                              continue loop5;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public function set prices(param1:§["i§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1>§ = param1;
         }
         do
         {
            this.refresh();
         }
         while(_loc2_);
         
      }
      
      public function get prices() : §["i§
      {
         return this.§1>§;
      }
      
      public function set singlePrice(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§?!v§ = param1;
            do
            {
               this.refresh();
            }
            while(!_loc3_);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§^"N§ = null;
         }
      }
      
      public function notifyPurchase() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§`!e§.gotoAndPlay(1);
         }
      }
      
      protected function refresh() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = 0;
         if(_loc2_ || _loc3_)
         {
            if(!this.§1>§)
            {
               §§push(this.view);
               loop0:
               while(true)
               {
                  §§pop().mClip.title.text = "";
                  loop1:
                  while(true)
                  {
                     §§push(this.view);
                     loop2:
                     for(; _loc2_; §§push(this.view),if(!(_loc3_ && _loc2_))
                     {
                        continue loop0;
                     })
                     {
                        §§pop().mClip.cost.text = "";
                        while(_loc2_ || this)
                        {
                           continue loop2;
                           §§pop().mClip.offer.text = "";
                           if(_loc2_ || this)
                           {
                              if(!(_loc3_ && _loc1_))
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                        loop8:
                        while(true)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr179:
                              if(_loc2_ || this)
                              {
                                 §§push(this.§`§());
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc1_ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.view);
                                    addr117:
                                    while(true)
                                    {
                                       §§pop().mClip.offer.text = _loc1_ == 0 ? "" : "+ " + this.§`§() + " " + this.§^"N§.getLocalizedString("starcoin_free");
                                       continue loop6;
                                    }
                                 }
                                 addr26:
                                 return;
                                 addr186:
                                 addr146:
                              }
                              else
                              {
                                 addr190:
                              }
                              while(true)
                              {
                                 §§push(this.view);
                                 break loop2;
                              }
                           }
                           addr209:
                           while(true)
                           {
                              §§push(this.view);
                              addr163:
                              while(true)
                              {
                                 §§pop().mClip.cost.text = this.§8!J§.§<H§(this.§1>§.price);
                                 continue loop8;
                              }
                           }
                           §§goto(addr179);
                        }
                     }
                     while(true)
                     {
                        §§pop().mClip.title.text = "x " + this.§;C§();
                        §§goto(addr209);
                        §§goto(addr190);
                     }
                     §§goto(addr186);
                  }
                  if(_loc3_)
                  {
                     §§goto(addr139);
                  }
                  §§goto(addr26);
                  if(_loc3_ && _loc1_)
                  {
                     continue;
                  }
                  if(_loc2_ || _loc3_)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr56);
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr117);
               }
            }
            §§goto(addr190);
         }
         §§goto(addr146);
      }
      
      protected function §;C§() : int
      {
         return this.§1>§.quantity - this.§`§();
      }
      
      protected function §`§() : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(this.§?!v§ == -1)
            {
               if(!_loc6_)
               {
                  addr25:
                  §§push(0);
                  if(!(_loc6_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr34:
                  §§push(int(Math.floor(this.§1>§.quantity - (this.§1>§.price + §]!J§.§ "2§) / this.§?!v§)));
               }
               var _loc1_:* = §§pop();
               if(_loc7_)
               {
                  §§push(_loc1_);
                  if(_loc7_ || _loc3_)
                  {
                     if(§§pop() == 0)
                     {
                        addr64:
                        §§push(1);
                        if(!_loc6_)
                        {
                           addr87:
                           §§push(int(§§pop()));
                        }
                     }
                     else
                     {
                        §§push(Math.log(_loc1_) / Math.log(10));
                        if(_loc7_)
                        {
                           §§push(§§pop() + 1);
                        }
                        §§push(int(§§pop()));
                        if(_loc7_ || _loc1_)
                        {
                           §§goto(addr87);
                        }
                     }
                  }
                  var _loc2_:* = §§pop();
                  var _loc3_:* = "1";
                  var _loc4_:int = 0;
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(_loc2_);
                        if(_loc7_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(int(parseInt(_loc3_)));
                              break;
                           }
                           _loc3_ += "0";
                           if(!(_loc6_ && _loc2_))
                           {
                              _loc4_++;
                           }
                           continue;
                        }
                        addr134:
                        var _loc5_:* = §§pop();
                        if(_loc7_ || this)
                        {
                           if(§§pop() > 100)
                           {
                              if(_loc7_)
                              {
                                 §§push(100);
                                 if(_loc7_ || _loc1_)
                                 {
                                    addr167:
                                    §§push(int(§§pop()));
                                    if(!_loc6_)
                                    {
                                       addr170:
                                       _loc5_ = §§pop();
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(int(Math.round(_loc1_ / _loc5_) * _loc5_));
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             addr203:
                                             _loc1_ = §§pop();
                                             addr204:
                                             §§push(_loc1_);
                                          }
                                       }
                                       §§goto(addr204);
                                    }
                                    §§goto(addr203);
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr203);
                           }
                           else
                           {
                              §§push(_loc5_);
                              if(_loc7_)
                              {
                                 §§push(int(§§pop()));
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§goto(addr167);
                                 }
                                 addr205:
                                 return §§pop();
                              }
                           }
                           §§goto(addr203);
                        }
                        §§goto(addr170);
                     }
                     break;
                  }
                  §§goto(addr134);
                  §§push(§§pop());
               }
               §§goto(addr64);
            }
            §§goto(addr34);
         }
         §§goto(addr25);
      }
   }
}
