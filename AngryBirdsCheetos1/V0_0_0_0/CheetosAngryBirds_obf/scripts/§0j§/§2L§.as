package §0j§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §2L§ extends EventDispatcher implements §,!Z§
   {
       
      
      private var §5!F§:Object;
      
      private var §6!@§:String;
      
      private var §8b§:Vector.<String>;
      
      private var §@;§:Vector.<Number>;
      
      private var §8p§:Vector.<Number>;
      
      private var §`b§:Function;
      
      private var §]8§:Function;
      
      private var §-!1§:Function;
      
      private var §0!X§:Array;
      
      private var §7>§:Array;
      
      private var §+u§:Array;
      
      private var §"3§:Number;
      
      private var §;!$§:Number;
      
      private var §;W§:Number;
      
      private var §7!,§:Boolean;
      
      public function §2L§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.§5!F§ = param1;
               loop1:
               while(true)
               {
                  this.§;!$§ = 0;
                  loop2:
                  while(true)
                  {
                     this.§"3§ = Math.max(0.0001,param2);
                     loop3:
                     while(true)
                     {
                        this.§;W§ = 0;
                        loop4:
                        while(true)
                        {
                           this.§6!@§ = param3;
                           while(true)
                           {
                              this.§7!,§ = false;
                              continue loop4;
                              addr85:
                              loop7:
                              while(_loc5_ || param1)
                              {
                                 if(_loc5_)
                                 {
                                    while(true)
                                    {
                                       this.§@;§ = new Vector.<Number>(0);
                                       do
                                       {
                                          this.§8p§ = new Vector.<Number>(0);
                                       }
                                       while(!_loc5_);
                                       
                                       if(!(_loc4_ && this))
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop2;
                                             }
                                             continue loop3;
                                          }
                                          continue loop4;
                                       }
                                       continue loop7;
                                    }
                                    return;
                                    continue;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      public function §!!G§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            if(this.§5!F§ != null)
            {
               loop0:
               while(true)
               {
                  this.§8b§.push(param1);
                  while(true)
                  {
                     if(_loc3_ && _loc3_)
                     {
                        continue loop0;
                     }
                     if(!_loc3_)
                     {
                        this.§@;§.push(Number.NaN);
                        do
                        {
                           this.§8p§.push(param2);
                        }
                        while(!(_loc4_ || param1));
                        
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                  }
                  §§goto(addr53);
               }
            }
            return;
         }
         addr53:
      }
      
      public function §^d§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!!G§("scaleX",param1);
            do
            {
               this.§!!G§("scaleY",param1);
            }
            while(_loc2_ && param1);
            
         }
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§!!G§("x",param1);
         }
         do
         {
            this.§!!G§("y",param2);
         }
         while(!_loc4_);
         
      }
      
      public function §!b§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!!G§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Function = null;
         var _loc10_:* = NaN;
         if(!(_loc12_ && this))
         {
            §§push(param1);
            if(_loc11_ || _loc2_)
            {
               if(§§pop() == 0)
               {
                  if(_loc11_ || this)
                  {
                     §§goto(addr51);
                  }
               }
               §§push(this.§;!$§);
               if(_loc11_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(_loc11_ || param1)
            {
               §§push(this);
               §§push(this.§;!$§);
               if(!_loc12_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§;!$§ = §§pop();
            }
            loop0:
            while(true)
            {
               §§push(this.§;!$§);
               loop1:
               while(true)
               {
                  §§push(0);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    loop7:
                                    while(!_loc12_)
                                    {
                                       §§push(§§pop() >= this.§"3§);
                                       addr132:
                                       if(!(_loc11_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       §§push(0);
                                       loop19:
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                          loop20:
                                          while(true)
                                          {
                                             if(!(_loc12_ && this))
                                             {
                                                addr148:
                                                if(_loc11_ || this)
                                                {
                                                   addr155:
                                                   if(!(_loc11_ || param1))
                                                   {
                                                      break;
                                                   }
                                                   loop21:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc11_ || _loc3_)
                                                      {
                                                         if(_loc12_ && _loc2_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            loop22:
                                                            while(!_loc12_)
                                                            {
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(this.§;!$§);
                                                                     if(_loc11_ || _loc2_)
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc11_)
                                                                        {
                                                                           if(_loc12_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() >= §§pop());
                                                                           if(_loc12_ && param1)
                                                                           {
                                                                              continue loop22;
                                                                           }
                                                                           if(!(_loc11_ || _loc3_))
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           if(_loc11_ || _loc3_)
                                                                           {
                                                                              while(§§pop())
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    §§goto(addr107);
                                                                                 }
                                                                                 §§goto(addr124);
                                                                              }
                                                                              §§goto(addr242);
                                                                              addr103:
                                                                           }
                                                                           §§goto(addr190);
                                                                           continue loop22;
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                     addr258:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  else
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§5Z§);
                                                                        addr188:
                                                                        while(true)
                                                                        {
                                                                           §§push(null);
                                                                           addr189:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              addr190:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc12_ && param1)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§push(!§§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    addr199:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          continue loop21;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr201:
                                                                                          while(_loc11_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   §§goto(addr132);
                                                                                                }
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr148);
                                                                                 }
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr259:
                                                                  var _loc3_:* = §§pop();
                                                                  var _loc4_:int = this.§@;§.length;
                                                                  var _loc5_:int = 0;
                                                                  addr443:
                                                                  if(_loc5_ < _loc4_)
                                                                  {
                                                                     if(isNaN(this.§@;§[_loc5_]))
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           this.§@;§[_loc5_] = this.§5!F§[this.§8b§[_loc5_]] as Number;
                                                                           if(_loc11_)
                                                                           {
                                                                              addr331:
                                                                              §§push(Number(this.§@;§[_loc5_]));
                                                                              if(_loc11_ || param1)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§push(Number(this.§8p§[_loc5_]));
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc11_ || this)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             if(_loc11_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!(_loc12_ && _loc3_))
                                                                                                {
                                                                                                   addr313:
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc11_ || param1)
                                                                                                   {
                                                                                                   }
                                                                                                   addr580:
                                                                                                   §§push(§§pop() < this.§"3§);
                                                                                                   if(_loc11_ || _loc3_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr600:
                                                                                                         §§pop();
                                                                                                         addr601:
                                                                                                         §§push(this.§;!$§);
                                                                                                         if(!(_loc12_ && _loc2_))
                                                                                                         {
                                                                                                            addr556:
                                                                                                            §§push(this.§"3§);
                                                                                                            if(!(_loc12_ && _loc3_))
                                                                                                            {
                                                                                                               addr565:
                                                                                                               §§push(§§pop() >= §§pop());
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  addr568:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr570:
                                                                                                                     dispatchEvent(new Event(Event.§<@§));
                                                                                                                     addr576:
                                                                                                                     §§push(this.onComplete);
                                                                                                                     if(!(_loc12_ && this))
                                                                                                                     {
                                                                                                                        addr507:
                                                                                                                        §§push(null);
                                                                                                                        if(_loc11_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr515:
                                                                                                                           if(§§pop() != §§pop())
                                                                                                                           {
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 if(_loc11_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc11_ || param1)
                                                                                                                                    {
                                                                                                                                       addr537:
                                                                                                                                       this.onComplete.apply(null,this.§+u§);
                                                                                                                                       addr538:
                                                                                                                                       if(_loc12_ && param1)
                                                                                                                                       {
                                                                                                                                          §§goto(addr576);
                                                                                                                                       }
                                                                                                                                       return;
                                                                                                                                       addr535:
                                                                                                                                       addr534:
                                                                                                                                       addr545:
                                                                                                                                    }
                                                                                                                                    §§goto(addr601);
                                                                                                                                 }
                                                                                                                                 §§goto(addr570);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr538);
                                                                                                                        }
                                                                                                                        §§goto(addr535);
                                                                                                                     }
                                                                                                                     §§goto(addr534);
                                                                                                                  }
                                                                                                                  §§goto(addr538);
                                                                                                               }
                                                                                                               §§goto(addr600);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr580);
                                                                                                      }
                                                                                                      §§goto(addr568);
                                                                                                   }
                                                                                                   §§goto(addr600);
                                                                                                }
                                                                                                _loc8_ = §§pop();
                                                                                                if(_loc11_ || _loc3_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr331);
                                                                                                   }
                                                                                                   _loc9_ = §[f§.§,0§(this.§6!@§);
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      addr441:
                                                                                                      §§push(_loc6_);
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         addr440:
                                                                                                         §§push(Number(§§pop() + _loc9_(_loc3_) * _loc8_));
                                                                                                      }
                                                                                                      _loc10_ = §§pop();
                                                                                                      addr442:
                                                                                                      if(this.§7!,§)
                                                                                                      {
                                                                                                         if(!(_loc12_ && _loc2_))
                                                                                                         {
                                                                                                            addr413:
                                                                                                            §§push(Number(Math.round(_loc10_)));
                                                                                                            if(!_loc12_)
                                                                                                            {
                                                                                                               if(!(_loc12_ && _loc2_))
                                                                                                               {
                                                                                                                  _loc10_ = §§pop();
                                                                                                                  addr427:
                                                                                                                  if(!_loc12_)
                                                                                                                  {
                                                                                                                     addr392:
                                                                                                                     this.§5!F§[this.§8b§[_loc5_]] = _loc10_;
                                                                                                                     _loc5_++;
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              §§goto(addr392);
                                                                                                                           }
                                                                                                                           §§goto(addr443);
                                                                                                                        }
                                                                                                                        §§goto(addr427);
                                                                                                                     }
                                                                                                                     addr401:
                                                                                                                     §§goto(addr401);
                                                                                                                  }
                                                                                                                  §§goto(addr442);
                                                                                                               }
                                                                                                               §§goto(addr440);
                                                                                                            }
                                                                                                            §§goto(addr441);
                                                                                                         }
                                                                                                         §§goto(addr427);
                                                                                                      }
                                                                                                      §§goto(addr392);
                                                                                                   }
                                                                                                   §§goto(addr413);
                                                                                                }
                                                                                                addr473:
                                                                                                §§push(this.§?'§);
                                                                                                if(!(_loc12_ && _loc2_))
                                                                                                {
                                                                                                   §§push(null);
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      §§push(this.§7>§);
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         §§pop().apply(§§pop(),§§pop());
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            addr577:
                                                                                                            §§goto(addr580);
                                                                                                            §§push(_loc2_);
                                                                                                            addr492:
                                                                                                         }
                                                                                                         §§goto(addr570);
                                                                                                      }
                                                                                                      §§goto(addr537);
                                                                                                   }
                                                                                                   §§goto(addr515);
                                                                                                }
                                                                                                §§goto(addr507);
                                                                                             }
                                                                                             §§goto(addr565);
                                                                                          }
                                                                                          §§goto(addr556);
                                                                                       }
                                                                                       §§goto(addr565);
                                                                                    }
                                                                                    §§goto(addr313);
                                                                                 }
                                                                                 addr448:
                                                                                 §§push(this.§?'§);
                                                                                 if(!(_loc12_ && _loc2_))
                                                                                 {
                                                                                    §§push(null);
                                                                                    if(_loc11_ || param1)
                                                                                    {
                                                                                       if(§§pop() != §§pop())
                                                                                       {
                                                                                          if(!(_loc12_ && param1))
                                                                                          {
                                                                                             §§goto(addr473);
                                                                                          }
                                                                                          §§goto(addr600);
                                                                                       }
                                                                                       §§goto(addr577);
                                                                                    }
                                                                                    §§goto(addr537);
                                                                                 }
                                                                                 §§goto(addr507);
                                                                              }
                                                                              §§goto(addr313);
                                                                           }
                                                                           §§goto(addr570);
                                                                        }
                                                                        §§goto(addr492);
                                                                     }
                                                                     §§goto(addr331);
                                                                  }
                                                                  if(_loc11_)
                                                                  {
                                                                     §§goto(addr448);
                                                                  }
                                                                  addr107:
                                                                  §§goto(addr545);
                                                                  if(!(_loc11_ || _loc3_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(this.§5Z§);
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(null);
                                                                     if(!_loc12_)
                                                                     {
                                                                        §§pop().apply(§§pop(),this.§0!X§);
                                                                        addr124:
                                                                        if(!_loc12_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr128);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr242:
                                                                              §§push(Math.min(this.§"3§,this.§;!$§) / this.§"3§);
                                                                              if(!(_loc12_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr258);
                                                                              }
                                                                           }
                                                                           §§goto(addr259);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr201);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr189);
                                                                     }
                                                                     §§goto(addr201);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr188);
                                                                  }
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop3;
                                                         }
                                                         §§goto(addr103);
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr198);
                                             }
                                             §§goto(addr200);
                                          }
                                          addr212:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr185);
                                             §§goto(addr155);
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr212);
                           }
                        }
                     }
                  }
               }
            }
         }
         addr51:
      }
      
      public function get §;!§() : Boolean
      {
         return this.§;!$§ >= this.§"3§;
      }
      
      public function get target() : Object
      {
         return this.§5!F§;
      }
      
      public function get §2!<§() : String
      {
         return this.§6!@§;
      }
      
      public function get §'"§() : Number
      {
         return this.§"3§;
      }
      
      public function get §>!Y§() : Number
      {
         return this.§;!$§;
      }
      
      public function get delay() : Number
      {
         return this.§;W§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§;!$§);
            if(!_loc3_)
            {
               §§push(this.§;W§);
               if(!_loc3_)
               {
                  addr74:
                  §§push(§§pop() + §§pop());
                  if(_loc2_ || this)
                  {
                     §§push(param1);
                  }
                  §§pop().§;!$§ = §§pop();
                  do
                  {
                     this.§;W§ = param1;
                  }
                  while(!(_loc2_ || param1));
                  
                  return;
                  addr44:
               }
               §§push(§§pop() - §§pop());
            }
            §§goto(addr74);
         }
         §§goto(addr44);
      }
      
      public function get §9§() : Boolean
      {
         return this.§7!,§;
      }
      
      public function set §9§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7!,§ = param1;
         }
      }
      
      public function get §5Z§() : Function
      {
         return this.§`b§;
      }
      
      public function set §5Z§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`b§ = param1;
         }
      }
      
      public function get §?'§() : Function
      {
         return this.§]8§;
      }
      
      public function set §?'§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§]8§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§-!1§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-!1§ = param1;
         }
      }
      
      public function get §>H§() : Array
      {
         return this.§0!X§;
      }
      
      public function set §>H§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§0!X§ = param1;
         }
      }
      
      public function get §&l§() : Array
      {
         return this.§7>§;
      }
      
      public function set §&l§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§7>§ = param1;
         }
      }
      
      public function get §^§() : Array
      {
         return this.§+u§;
      }
      
      public function set §^§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§+u§ = param1;
         }
      }
   }
}
