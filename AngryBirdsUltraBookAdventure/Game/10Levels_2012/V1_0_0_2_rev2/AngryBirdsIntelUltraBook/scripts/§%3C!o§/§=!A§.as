package §<!o§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §=!A§ extends EventDispatcher implements §8!h§
   {
       
      
      private var §0!R§:Object;
      
      private var §3d§:String;
      
      private var §>K§:Vector.<String>;
      
      private var §%&§:Vector.<Number>;
      
      private var §<!S§:Vector.<Number>;
      
      private var §9Z§:Function;
      
      private var §,=§:Function;
      
      private var §@V§:Function;
      
      private var §6E§:Array;
      
      private var §!'§:Array;
      
      private var §9!@§:Array;
      
      private var §[!F§:Number;
      
      private var §0t§:Number;
      
      private var §1!o§:Number;
      
      private var §>!Q§:Boolean;
      
      public function §=!A§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super();
            while(true)
            {
               this.§0!R§ = param1;
               loop1:
               for(; _loc4_ || param2; while(!(_loc5_ && param3))
               {
                  while(true)
                  {
                     this.§>!Q§ = false;
                     §§goto(addr94);
                  }
                  §§goto(addr48);
               })
               {
                  this.§0t§ = 0;
                  loop2:
                  while(true)
                  {
                     this.§[!F§ = Math.max(0.0001,param2);
                     loop3:
                     while(true)
                     {
                        this.§1!o§ = 0;
                        while(!_loc5_)
                        {
                           this.§3d§ = param3;
                           continue loop1;
                           addr82:
                           if(_loc4_ || param2)
                           {
                              this.§%&§ = new Vector.<Number>(0);
                              do
                              {
                                 this.§<!S§ = new Vector.<Number>(0);
                              }
                              while(!(_loc4_ || this));
                              
                              addr89:
                              if(_loc5_)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       §§goto(addr82);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§>K§ = new Vector.<String>(0);
                                          continue loop8;
                                       }
                                       addr94:
                                    }
                                 }
                                 continue loop1;
                              }
                              if(!_loc5_)
                              {
                                 return;
                                 addr48:
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
         §§goto(addr106);
      }
      
      public function §<!G§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§0!R§ != null)
            {
               loop0:
               while(true)
               {
                  this.§>K§.push(param1);
                  while(true)
                  {
                     this.§%&§.push(Number.NaN);
                     while(_loc4_)
                     {
                        if(_loc4_ || this)
                        {
                           this.§<!S§.push(param2);
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(!(_loc3_ && this))
                           {
                              return;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr86);
      }
      
      public function §&6§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<!G§("scaleX",param1);
            do
            {
               this.§<!G§("scaleY",param1);
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§<!G§("x",param1);
         }
         do
         {
            this.§<!G§("y",param2);
         }
         while(_loc4_);
         
      }
      
      public function §@f§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<!G§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Function = null;
         var _loc10_:* = NaN;
         if(!(_loc11_ && _loc2_))
         {
            §§push(param1);
            if(_loc12_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc11_ && _loc3_))
                  {
                     return;
                  }
                  addr48:
                  §§push(this.§0t§);
                  if(_loc12_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr48);
            }
            var _loc2_:* = §§pop();
            if(_loc12_)
            {
               §§push(this);
               §§push(this.§0t§);
               if(!(_loc11_ && param1))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§0t§ = §§pop();
               loop0:
               while(true)
               {
                  §§push(this.§0t§);
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
                                       if(!_loc11_)
                                       {
                                          if(!_loc12_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() >= this.§[!F§);
                                          while(true)
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(this.§]![§);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(null);
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc12_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc12_)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc12_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  §§push(§§pop());
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr175:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr176:
                                                                           while(true)
                                                                           {
                                                                              addr131:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() <= §§pop());
                                                                                       addr137:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc11_ && _loc2_)
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr136:
                                                                                 }
                                                                                 addr225:
                                                                                 var _loc3_:* = §§pop();
                                                                                 var _loc4_:int = this.§%&§.length;
                                                                                 var _loc5_:int = 0;
                                                                                 addr409:
                                                                                 if(_loc5_ < _loc4_)
                                                                                 {
                                                                                    if(isNaN(this.§%&§[_loc5_]))
                                                                                    {
                                                                                       if(_loc12_ || param1)
                                                                                       {
                                                                                          this.§%&§[_loc5_] = this.§0!R§[this.§>K§[_loc5_]] as Number;
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             addr267:
                                                                                             §§push(Number(this.§%&§[_loc5_]));
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                _loc6_ = §§pop();
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(Number(this.§<!S§[_loc5_]));
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         _loc7_ = §§pop();
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            addr248:
                                                                                                            §§push(_loc6_);
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     if(!(_loc11_ && param1))
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr267);
                                                                                                                        }
                                                                                                                        _loc9_ = §6!;§.§9!I§(this.§3d§);
                                                                                                                        if(!(_loc11_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr407:
                                                                                                                           _loc10_ = Number(_loc6_ + _loc9_(_loc3_) * _loc8_);
                                                                                                                           addr408:
                                                                                                                           addr399:
                                                                                                                           addr406:
                                                                                                                           if(this.§>!Q§)
                                                                                                                           {
                                                                                                                              addr369:
                                                                                                                              §§push(Number(Math.round(_loc10_)));
                                                                                                                              if(!(_loc11_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(_loc12_)
                                                                                                                                 {
                                                                                                                                    if(_loc12_ || param1)
                                                                                                                                    {
                                                                                                                                       _loc10_ = §§pop();
                                                                                                                                       addr390:
                                                                                                                                       if(!(_loc11_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr341:
                                                                                                                                          this.§0!R§[this.§>K§[_loc5_]] = _loc10_;
                                                                                                                                          if(!(_loc11_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(!(_loc11_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                _loc5_++;
                                                                                                                                                if(_loc12_)
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr341);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr409);
                                                                                                                                                }
                                                                                                                                                §§goto(addr341);
                                                                                                                                             }
                                                                                                                                             §§goto(addr369);
                                                                                                                                          }
                                                                                                                                          §§goto(addr390);
                                                                                                                                          addr397:
                                                                                                                                       }
                                                                                                                                       §§goto(addr408);
                                                                                                                                    }
                                                                                                                                    §§goto(addr399);
                                                                                                                                 }
                                                                                                                                 §§goto(addr406);
                                                                                                                              }
                                                                                                                              §§goto(addr407);
                                                                                                                           }
                                                                                                                           §§goto(addr341);
                                                                                                                        }
                                                                                                                        §§goto(addr397);
                                                                                                                     }
                                                                                                                     addr511:
                                                                                                                     this.onComplete.apply(null,this.§9!@§);
                                                                                                                     addr506:
                                                                                                                     addr509:
                                                                                                                     addr508:
                                                                                                                     if(_loc11_ && _loc3_)
                                                                                                                     {
                                                                                                                        addr559:
                                                                                                                        §§push(this.onComplete);
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           addr483:
                                                                                                                           §§push(null);
                                                                                                                           if(!(_loc11_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(§§pop() != §§pop())
                                                                                                                              {
                                                                                                                                 if(_loc12_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc11_ && param1))
                                                                                                                                    {
                                                                                                                                       §§goto(addr506);
                                                                                                                                    }
                                                                                                                                    addr567:
                                                                                                                                    §§push(this.§0t§);
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       addr525:
                                                                                                                                       §§push(this.§[!F§);
                                                                                                                                       if(_loc12_ || param1)
                                                                                                                                       {
                                                                                                                                          addr544:
                                                                                                                                          §§push(§§pop() >= §§pop());
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             if(!_loc11_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr549);
                                                                                                                                             }
                                                                                                                                             §§goto(addr564);
                                                                                                                                          }
                                                                                                                                          §§goto(addr566);
                                                                                                                                       }
                                                                                                                                       addr563:
                                                                                                                                       addr564:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          addr566:
                                                                                                                                          §§pop();
                                                                                                                                          §§goto(addr567);
                                                                                                                                       }
                                                                                                                                       addr549:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             dispatchEvent(new Event(Event.§]!%§));
                                                                                                                                          }
                                                                                                                                          §§goto(addr559);
                                                                                                                                       }
                                                                                                                                       return;
                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                    }
                                                                                                                                    §§goto(addr563);
                                                                                                                                    §§push(this.§[!F§);
                                                                                                                                 }
                                                                                                                                 §§goto(addr506);
                                                                                                                              }
                                                                                                                              §§goto(addr549);
                                                                                                                           }
                                                                                                                           §§goto(addr509);
                                                                                                                        }
                                                                                                                        §§goto(addr508);
                                                                                                                     }
                                                                                                                     addr519:
                                                                                                                     §§goto(addr549);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr567);
                                                                                                            }
                                                                                                            §§goto(addr563);
                                                                                                         }
                                                                                                         §§goto(addr525);
                                                                                                      }
                                                                                                      §§goto(addr544);
                                                                                                   }
                                                                                                   §§goto(addr248);
                                                                                                }
                                                                                                §§goto(addr559);
                                                                                             }
                                                                                             §§goto(addr567);
                                                                                          }
                                                                                          addr439:
                                                                                          §§push(this.§]!v§);
                                                                                          if(!(_loc11_ && this))
                                                                                          {
                                                                                             §§push(null);
                                                                                             if(!(_loc11_ && _loc2_))
                                                                                             {
                                                                                                addr456:
                                                                                                §§push(this.§!'§);
                                                                                                if(_loc12_ || this)
                                                                                                {
                                                                                                   §§pop().apply(§§pop(),§§pop());
                                                                                                   if(_loc12_ || _loc3_)
                                                                                                   {
                                                                                                      addr560:
                                                                                                      §§goto(addr567);
                                                                                                      §§push(_loc2_);
                                                                                                   }
                                                                                                   §§goto(addr519);
                                                                                                }
                                                                                                §§goto(addr511);
                                                                                             }
                                                                                             §§goto(addr506);
                                                                                          }
                                                                                          §§goto(addr483);
                                                                                       }
                                                                                       §§goto(addr559);
                                                                                    }
                                                                                    §§goto(addr267);
                                                                                 }
                                                                                 if(_loc12_ || _loc2_)
                                                                                 {
                                                                                    §§push(this.§]!v§);
                                                                                    if(_loc12_ || _loc3_)
                                                                                    {
                                                                                       §§push(null);
                                                                                       if(!(_loc11_ && param1))
                                                                                       {
                                                                                          if(§§pop() != §§pop())
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§goto(addr439);
                                                                                             }
                                                                                             §§goto(addr506);
                                                                                          }
                                                                                          §§goto(addr560);
                                                                                       }
                                                                                       §§goto(addr456);
                                                                                    }
                                                                                    §§goto(addr483);
                                                                                 }
                                                                                 §§goto(addr511);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr175:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc11_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        if(!_loc12_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    §§goto(addr188);
                                                                                 }
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§push(this.§0t§);
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc12_ || this)
                                                                                    {
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§push(§§pop() >= §§pop());
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             while(§§pop())
                                                                                             {
                                                                                                if(_loc12_ || _loc2_)
                                                                                                {
                                                                                                   §§push(this.§]![§);
                                                                                                   if(_loc11_ && this)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   §§push(null);
                                                                                                   if(!(_loc12_ || _loc2_))
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   §§pop().apply(§§pop(),this.§6E§);
                                                                                                }
                                                                                                if(!(_loc12_ || _loc2_))
                                                                                                {
                                                                                                   continue loop15;
                                                                                                }
                                                                                                if(_loc12_ || _loc2_)
                                                                                                {
                                                                                                   if(!(_loc12_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   if(true)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr176);
                                                                                                }
                                                                                                §§goto(addr131);
                                                                                             }
                                                                                             §§push(Math.min(this.§[!F§,this.§0t§) / this.§[!F§);
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                §§goto(addr225);
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             §§goto(addr225);
                                                                                             addr79:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr175);
                                                                                          }
                                                                                          §§goto(addr176);
                                                                                       }
                                                                                       §§goto(addr137);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr225);
                                                                              }
                                                                              §§goto(addr136);
                                                                           }
                                                                        }
                                                                        §§goto(addr79);
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr175);
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                }
                                                §§goto(addr188);
                                             }
                                          }
                                       }
                                       §§goto(addr225);
                                    }
                                    continue loop1;
                                 }
                              }
                              §§goto(addr186);
                           }
                        }
                     }
                  }
               }
            }
            addr188:
            return;
         }
         §§goto(addr48);
      }
      
      public function get §1!Y§() : Boolean
      {
         return this.§0t§ >= this.§[!F§;
      }
      
      public function get target() : Object
      {
         return this.§0!R§;
      }
      
      public function get §?!Q§() : String
      {
         return this.§3d§;
      }
      
      public function get §with§() : Number
      {
         return this.§[!F§;
      }
      
      public function get §%p§() : Number
      {
         return this.§0t§;
      }
      
      public function get delay() : Number
      {
         return this.§1!o§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this);
            §§push(this.§0t§);
            if(!_loc2_)
            {
               §§push(this.§1!o§);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() + §§pop());
                  if(_loc3_)
                  {
                     addr79:
                     §§push(§§pop() - param1);
                  }
                  §§pop().§0t§ = §§pop();
                  do
                  {
                     this.§1!o§ = param1;
                  }
                  while(!(_loc3_ || _loc2_));
                  
                  return;
                  addr60:
               }
            }
            §§goto(addr79);
         }
         §§goto(addr60);
      }
      
      public function get §%5§() : Boolean
      {
         return this.§>!Q§;
      }
      
      public function set §%5§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§>!Q§ = param1;
         }
      }
      
      public function get §]![§() : Function
      {
         return this.§9Z§;
      }
      
      public function set §]![§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§9Z§ = param1;
         }
      }
      
      public function get §]!v§() : Function
      {
         return this.§,=§;
      }
      
      public function set §]!v§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,=§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§@V§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§@V§ = param1;
         }
      }
      
      public function get §#p§() : Array
      {
         return this.§6E§;
      }
      
      public function set §#p§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6E§ = param1;
         }
      }
      
      public function get §5!r§() : Array
      {
         return this.§!'§;
      }
      
      public function set §5!r§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!'§ = param1;
         }
      }
      
      public function get §[!H§() : Array
      {
         return this.§9!@§;
      }
      
      public function set §[!H§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9!@§ = param1;
         }
      }
   }
}
