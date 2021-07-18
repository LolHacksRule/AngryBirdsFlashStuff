package §^"#§
{
   import §,"&§.§9q§;
   import §=u§.§!D§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §]!"§ extends Sprite
   {
      
      public static const §"!L§:int = 0;
      
      public static const §#g§:int = 1;
      
      public static const §4$§:int = 2;
      
      public static const §];§:int = 3;
      
      private static const §-@§:String = "all";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §"!L§ = 0;
            do
            {
               §#g§ = 1;
               loop1:
               do
               {
                  §4$§ = 2;
                  while(true)
                  {
                     §];§ = 3;
                     while(!(_loc1_ && §]!"§))
                     {
                        §-@§ = "all";
                        if(_loc2_ || _loc1_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(_loc1_ && §]!"§);
               
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private const §2!_§:uint = 40;
      
      private const §@"0§:Number = 0.3;
      
      private const §#!r§:Number = 25;
      
      private const §4!4§:Number = 10;
      
      private const §finally§:Number = 9;
      
      private var §-_§:int;
      
      private var §9_§:int;
      
      private var §5!=§:Vector.<§?M§>;
      
      private var §&!%§:Vector.<§?M§>;
      
      private var §0!Q§:Point;
      
      private var §,!§:int;
      
      public function §]!"§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:§?M§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         if(!_loc15_)
         {
            super();
         }
         while(true)
         {
            while(true)
            {
               this.§-_§ = param1;
               do
               {
                  this.§9_§ = param2;
               }
               while(_loc15_ && this);
               
               if(_loc15_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc8_:Number = Math.min(§9q§.§+w§,§9q§.§9!$§);
               var _loc9_:Number = Math.max(§9q§.§+w§,§9q§.§9!$§);
               if(!_loc15_)
               {
                  §§push(param3);
                  if(_loc14_)
                  {
                     §§push(§9q§.§9!$§);
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        addr191:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                        }
                        addr158:
                        §§push(§9q§.§+w§);
                        if(_loc15_ && param3)
                        {
                           continue;
                        }
                        §§push(§§pop() / §§pop());
                        if(_loc14_ || param3)
                        {
                           if(!(_loc15_ && param1))
                           {
                              addr183:
                              param4 = §§pop();
                              while(true)
                              {
                                 this.§,!§ = param5;
                                 while(true)
                                 {
                                    this.§0!Q§ = new Point(param3,param4);
                                    addr126:
                                    while(true)
                                    {
                                       §§goto(addr100);
                                    }
                                    addr84:
                                    if(_loc15_ && param3)
                                    {
                                       continue;
                                    }
                                    if(!(_loc15_ && param2))
                                    {
                                       if(false)
                                       {
                                          addr100:
                                          §§goto(addr194);
                                       }
                                       else
                                       {
                                          addr194:
                                          §§goto(addr258);
                                       }
                                       loop12:
                                       while(_loc13_ < param6)
                                       {
                                          §§push(§§findproperty(§?M§));
                                          §§push(Math.random() * 40);
                                          if(_loc14_)
                                          {
                                             §§push(§§pop() + 10);
                                          }
                                          (_loc10_ = new §§pop().§?M§(§§pop(),param7)).x = -2000;
                                          if(_loc14_ || param1)
                                          {
                                             _loc10_.y = -2000;
                                             while(true)
                                             {
                                                this.addChild(_loc10_);
                                                while(_loc14_)
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      this.§5!=§[_loc13_] = _loc10_;
                                                      do
                                                      {
                                                         _loc13_++;
                                                      }
                                                      while(!(_loc14_ || param1));
                                                      
                                                      if(!(_loc14_ || param2))
                                                      {
                                                         break;
                                                         addr238:
                                                      }
                                                      while(false)
                                                      {
                                                         continue loop15;
                                                      }
                                                      continue loop12;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr238);
                                       }
                                       if(!_loc15_)
                                       {
                                          this.scaleX = _loc9_;
                                          if(_loc14_)
                                          {
                                             this.scaleY = _loc9_;
                                          }
                                       }
                                       return;
                                    }
                                    while(true)
                                    {
                                       §§push(param4);
                                       if(!(_loc15_ && param2))
                                       {
                                          if(!(_loc14_ || param1))
                                          {
                                             break;
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr183);
                                    }
                                    §§goto(addr191);
                                    addr193:
                                 }
                              }
                           }
                           while(true)
                           {
                              param3 = §§pop();
                              §§goto(addr193);
                           }
                           addr192:
                        }
                        §§goto(addr183);
                     }
                  }
                  §§goto(addr192);
               }
               §§goto(addr126);
            }
         }
      }
      
      public function §;"F§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§?M§ = null;
         while(this.§5!=§.length > 0)
         {
            _loc1_ = this.§5!=§.shift();
            if(_loc2_ || _loc3_)
            {
               _loc1_.§;"F§();
            }
         }
         if(!(_loc3_ && _loc2_))
         {
            while(this.§&!%§.length > 0)
            {
               _loc1_ = this.§&!%§.shift();
               if(_loc2_)
               {
                  _loc1_.§;"F§();
               }
            }
            if(!_loc3_)
            {
               this.§5!=§ = new Vector.<§?M§>(0);
               if(_loc2_)
               {
                  this.§&!%§ = new Vector.<§?M§>(0);
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:* = false;
         var _loc5_:§?M§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§?M§ = null;
         if(!(_loc16_ && _loc2_))
         {
            §§push(param1);
            if(!(_loc16_ && _loc3_))
            {
               §§push(§§pop() / 20);
               if(!_loc16_)
               {
                  addr59:
                  §§push(Number(§§pop()));
               }
               param1 = §§pop();
               addr61:
               while(this.§5!=§.length > 0)
               {
                  _loc5_ = this.§5!=§.shift();
                  if(_loc15_ || this)
                  {
                     §§push(Math.random() * (this.§#!r§ - this.§4!4§));
                     loop1:
                     while(true)
                     {
                        §§push(this.§4!4§);
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop4:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 while(true)
                                 {
                                    §§push(this.§,!§);
                                    while(true)
                                    {
                                       §§push(§"!L§);
                                       loop7:
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(this.§,!§);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(§#g§);
                                             addr617:
                                             addr625:
                                             while(true)
                                             {
                                                if(!(_loc16_ && param1))
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      break;
                                                   }
                                                   §§push(this.§,!§);
                                                   continue loop8;
                                                }
                                                continue loop7;
                                             }
                                             while(true)
                                             {
                                                §§push(Math.PI * (Math.random() - 0.5));
                                                while(true)
                                                {
                                                   §§push(0.5);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      loop46:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         while(true)
                                                         {
                                                            _loc7_ = §§pop();
                                                            loop67:
                                                            while(true)
                                                            {
                                                               §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                               while(true)
                                                               {
                                                                  if(!_loc15_)
                                                                  {
                                                                     continue loop46;
                                                                  }
                                                                  if(!(_loc16_ && _loc2_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  loop31:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                                           while(_loc15_)
                                                                           {
                                                                              if(!_loc15_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              _loc8_ = §§pop();
                                                                              addr647:
                                                                              _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 §§push(_loc8_);
                                                                                 if(_loc15_ || _loc2_)
                                                                                 {
                                                                                    §§push(§§pop() * _loc6_);
                                                                                 }
                                                                                 §§pop().§&n§ = §§pop();
                                                                                 loop16:
                                                                                 while(!_loc16_)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    §§push(_loc9_);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       §§push(§§pop() * _loc6_);
                                                                                    }
                                                                                    §§pop().§7!S§ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc15_ || this)
                                                                                       {
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             _loc5_.x = this.§0!Q§.x;
                                                                                             while(!(_loc16_ && _loc3_))
                                                                                             {
                                                                                                _loc5_.y = this.§0!Q§.y;
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      if(!(_loc15_ || this))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      this.§&!%§.push(_loc5_);
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop16;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc15_ || _loc3_))
                                                                                                   {
                                                                                                      break loop7;
                                                                                                   }
                                                                                                   §§goto(addr370);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   continue loop15;
                                                                                                }
                                                                                                continue loop67;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                             addr610:
                                                                                          }
                                                                                          §§goto(addr590);
                                                                                       }
                                                                                       break;
                                                                                       if(_loc16_ && _loc3_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       _loc5_.§^!5§.play();
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          §§goto(addr82);
                                                                                       }
                                                                                       §§goto(addr118);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr328);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc15_ || this)
                                                                                    {
                                                                                       §§goto(addr437);
                                                                                       §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                    }
                                                                                    §§goto(addr525);
                                                                                 }
                                                                              }
                                                                              addr648:
                                                                              addr664:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc15_)
                                                                              {
                                                                                 §§push(§§pop() * Math.random());
                                                                                 continue loop31;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop67;
                                                               }
                                                               _loc8_ = §§pop();
                                                               §§goto(addr610);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr674);
                                       }
                                       if(!(_loc15_ || param1))
                                       {
                                          continue;
                                       }
                                       §§goto(addr477);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr552);
               }
               var _loc2_:int = this.§&!%§.length;
               §§push(_loc2_);
               if(_loc15_)
               {
                  §§push(int(§§pop() - 1));
               }
               var _loc4_:* = §§pop();
               if(_loc15_)
               {
                  loop68:
                  while(_loc4_ >= 0)
                  {
                     _loc3_ = false;
                     if(_loc16_)
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc5_ = this.§&!%§[_loc4_];
                        §§push(_loc5_);
                        §§push(_loc5_.§7!S§);
                        if(_loc15_ || _loc3_)
                        {
                           §§push(this.§@"0§);
                           if(_loc15_)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().§7!S§ = §§pop();
                        if(!(_loc16_ && this))
                        {
                           if(_loc5_.§7!S§ > this.§finally§)
                           {
                              if(_loc15_)
                              {
                                 addr934:
                                 _loc5_.§7!S§ = this.§finally§;
                                 loop81:
                                 while(true)
                                 {
                                    addr916:
                                    while(true)
                                    {
                                       _loc5_.x += _loc5_.§&n§ * param1;
                                       loop71:
                                       while(true)
                                       {
                                          _loc5_.y += _loc5_.§7!S§ * param1;
                                          loop72:
                                          while(true)
                                          {
                                             _loc5_.rotation += 5 * param1;
                                             loop73:
                                             while(true)
                                             {
                                                if(_loc5_.x >= -_loc5_.width / 2)
                                                {
                                                   if(_loc5_.x > this.§-_§ + _loc5_.width / 2)
                                                   {
                                                      if(_loc15_ || param1)
                                                      {
                                                         §§push(true);
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            if(_loc16_)
                                                            {
                                                               continue loop68;
                                                            }
                                                         }
                                                         addr872:
                                                      }
                                                      while(true)
                                                      {
                                                         addr803:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   else if(_loc5_.y > this.§9_§ + _loc5_.height / 2)
                                                   {
                                                      if(!(_loc15_ || param1))
                                                      {
                                                         continue loop68;
                                                      }
                                                      if(!(_loc16_ && this))
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                            §§push(true);
                                                            loop74:
                                                            while(true)
                                                            {
                                                               if(!(_loc16_ && this))
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  if(!(_loc15_ || _loc3_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc15_)
                                                                  {
                                                                     continue loop71;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§&!%§.length > 0);
                                                                     if(!(_loc16_ && _loc2_))
                                                                     {
                                                                        continue loop74;
                                                                     }
                                                                     addr782:
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§pop();
                                                                        if(_loc16_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc15_ || _loc3_)
                                                                        {
                                                                           continue loop73;
                                                                        }
                                                                        continue loop72;
                                                                     }
                                                                     §§goto(addr803);
                                                                  }
                                                                  (_loc14_ = this.§&!%§.splice(_loc4_,1)[0]).§;"F§();
                                                                  if(!(_loc16_ && param1))
                                                                  {
                                                                     _loc5_.x = -2000;
                                                                     if(!(_loc16_ && param1))
                                                                     {
                                                                        addr984:
                                                                        _loc5_.y = -2000;
                                                                     }
                                                                     addr997:
                                                                     §§push(_loc4_);
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                     break;
                                                                  }
                                                                  §§goto(addr984);
                                                                  addr753:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr872);
                                                               }
                                                               §§goto(addr753);
                                                            }
                                                            continue loop68;
                                                         }
                                                         continue loop81;
                                                      }
                                                      addr885:
                                                      §§push(true);
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         continue loop72;
                                                      }
                                                   }
                                                   §§goto(addr956);
                                                }
                                                §§goto(addr885);
                                             }
                                             continue loop81;
                                          }
                                       }
                                       continue loop81;
                                    }
                                 }
                              }
                              §§goto(addr956);
                           }
                           §§goto(addr916);
                        }
                        §§goto(addr934);
                     }
                  }
                  return;
               }
               §§goto(addr721);
            }
            §§goto(addr59);
         }
         §§goto(addr61);
      }
   }
}
