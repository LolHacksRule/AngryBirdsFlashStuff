package §9!k§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §=A§
   {
      
      public static const §1X§:int = 4;
      
      public static const §'%§:int = 2;
      
      public static const §8=§:int = 3;
      
      public static const §2!q§:int = 4;
      
      public static const §%F§:int = 0;
      
      public static const §!"§:int = 0;
      
      public static const §<!?§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1X§ = 4;
            loop0:
            while(true)
            {
               §'%§ = 2;
               loop1:
               while(true)
               {
                  §8=§ = 3;
                  loop2:
                  while(true)
                  {
                     §2!q§ = 4;
                     while(true)
                     {
                        §%F§ = 0;
                        continue loop0;
                        addr52:
                        while(!(_loc1_ && _loc1_))
                        {
                           if(!_loc1_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                           §<!?§ = 0;
                           if(_loc2_ || §=A§)
                           {
                              if(!_loc1_)
                              {
                                 return;
                                 addr37:
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §!"§ = 0;
            §§goto(addr52);
         }
         §§goto(addr37);
      }
      
      private var §?!Z§:ByteArray;
      
      private var §6f§:Vector.<Number>;
      
      private var §8!E§:Vector.<Number>;
      
      private var §3!Z§:Boolean;
      
      private var §@I§:int;
      
      private var §&Z§:Vector.<Number>;
      
      public function §=A§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§&Z§ = new Vector.<Number>(12,true);
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§?!Z§ = new ByteArray();
                  while(true)
                  {
                     if(!(_loc5_ || this))
                     {
                        break;
                        addr40:
                     }
                     while(true)
                     {
                        this.§?!Z§.endian = Endian.LITTLE_ENDIAN;
                        continue loop0;
                     }
                     addr31:
                     if(!(_loc4_ && param2))
                     {
                        while(false)
                        {
                           §§goto(addr40);
                        }
                        var _loc3_:int = 0;
                        loop6:
                        while(true)
                        {
                           if(_loc3_ >= param1 * §'%§)
                           {
                              if(!_loc4_)
                              {
                                 this.§6f§ = new Vector.<Number>(param1 * §1X§,true);
                              }
                              while(true)
                              {
                                 this.§8!E§ = new Vector.<Number>(param1 * §8=§,true);
                                 loop8:
                                 while(!_loc4_)
                                 {
                                    this.§3!Z§ = param2;
                                    while(true)
                                    {
                                       if(_loc4_ && param2)
                                       {
                                          _loc3_++;
                                          break;
                                       }
                                       addr182:
                                       this.§@I§ = param1;
                                       if(!_loc4_)
                                       {
                                          if(!(_loc4_ && param2))
                                          {
                                             if(_loc5_ || param2)
                                             {
                                                break loop6;
                                             }
                                             continue loop6;
                                          }
                                          continue loop8;
                                          continue loop8;
                                       }
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                           else
                           {
                              this.§?!Z§.writeFloat(0);
                           }
                           §§goto(addr182);
                        }
                        return;
                        addr38:
                     }
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      public function clone() : §=A§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§=A§ = new §=A§(0,this.§3!Z§);
         if(_loc3_)
         {
            _loc1_.§?!Z§.length = this.§?!Z§.length;
            loop0:
            while(true)
            {
               _loc1_.§?!Z§.writeBytes(this.§?!Z§);
               while(true)
               {
                  _loc1_.§6f§ = this.§6f§.concat();
                  while(!(_loc2_ && _loc1_))
                  {
                     if(_loc3_)
                     {
                        _loc1_.§6f§.fixed = true;
                        loop3:
                        while(true)
                        {
                           _loc1_.§8!E§ = this.§8!E§.concat();
                           loop4:
                           while(true)
                           {
                              _loc1_.§8!E§.fixed = true;
                              addr71:
                              while(true)
                              {
                                 _loc1_.§@I§ = this.§@I§;
                                 if(_loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                              }
                              §§goto(addr65);
                           }
                        }
                        if(!(_loc3_ || _loc3_))
                        {
                           continue;
                        }
                     }
                     continue loop0;
                     addr65:
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function copyTo(param1:§=A§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§8!E§;
         if(!(_loc18_ && this))
         {
            §§push(this.§@I§);
            loop0:
            while(true)
            {
               §§push(§8=§);
               loop1:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     while(true)
                     {
                        _loc6_ = §§pop();
                        addr120:
                        while(true)
                        {
                           §§push(param2);
                           if(_loc19_)
                           {
                              if(_loc18_ && this)
                              {
                                 break;
                              }
                              §§push(§8=§);
                              if(_loc19_ || param2)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc19_ || param2)
                                 {
                                    §§push(int(§§pop()));
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      public function append(param1:§=A§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:int = this.§?!Z§.length;
         if(!_loc9_)
         {
            this.§?!Z§.length += param1.§?!Z§.length;
         }
         loop0:
         while(true)
         {
            this.§?!Z§.position = _loc2_;
            loop1:
            while(true)
            {
               addr36:
               while(true)
               {
                  this.§?!Z§.writeBytes(param1.§?!Z§);
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(!(_loc8_ && this))
         {
            §§push(int(§§pop() * §8=§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§8!E§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§8!E§[_loc7_ = _loc5_++] = param3;
         if(_loc9_)
         {
            this.§8!E§[_loc5_] = param4;
         }
      }
      
      public function §[!J§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(int(§§pop() * §8=§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§8!E§[_loc5_ = _loc4_++] = param2;
         if(!(_loc7_ && param3))
         {
            this.§8!E§[_loc4_] = param3;
         }
      }
      
      public function §7!b§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && this))
         {
            §§push(int(§§pop() * §8=§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param1)
         {
            param2.x = this.§8!E§[_loc3_++];
            while(true)
            {
               param2.y = this.§8!E§[_loc3_++];
               while(!(_loc4_ && param2))
               {
                  param2.z = this.§8!E§[_loc3_];
                  if(!_loc5_)
                  {
                     continue;
                  }
                  return;
                  addr70:
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §!A§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            if(this.§3!Z§)
            {
               addr21:
               §§push(param3);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc8_)
                  {
                  }
                  addr33:
                  var _loc4_:*;
                  §§push(_loc4_ = §§pop());
                  if(!(_loc9_ && param1))
                  {
                     §§push(§§pop() / 255);
                     if(_loc8_ || param2)
                     {
                        §§push(Number(§§pop()));
                        if(_loc8_ || param2)
                        {
                           _loc4_ = §§pop();
                           §§push(§46§.§'!'§(param2) * _loc4_);
                           if(_loc8_ || param1)
                           {
                              addr82:
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     var _loc5_:* = §§pop();
                     §§push(§46§.§1!U§(param2) * _loc4_);
                     if(!(_loc9_ && param2))
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     §§push(§46§.§[]§(param2) * _loc4_);
                     if(!_loc9_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     if(!_loc9_)
                     {
                        this.§"8§(param1,1,_loc5_,_loc6_,_loc7_,param3);
                     }
                     return;
                  }
                  §§goto(addr82);
               }
               addr32:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(_loc8_)
               {
                  §§goto(addr32);
               }
            }
            §§goto(addr33);
         }
         §§goto(addr21);
      }
      
      private function §"8§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1);
         if(!_loc14_)
         {
            §§push(int(§§pop() * §1X§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(!(_loc14_ && param2))
         {
            §§push(int(§§pop() - 1));
         }
         var _loc8_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc8_);
            while(§§pop() >= 0)
            {
               var _loc9_:*;
               this.§6f§[_loc9_ = _loc7_++] = param3;
               if(!(_loc14_ && param3))
               {
                  var _loc10_:*;
                  this.§6f§[_loc10_ = _loc7_++] = param4;
                  if(_loc13_)
                  {
                     var _loc11_:*;
                     this.§6f§[_loc11_ = _loc7_++] = param5;
                     if(_loc13_)
                     {
                        var _loc12_:*;
                        this.§6f§[_loc12_ = _loc7_++] = param6;
                     }
                  }
               }
               if(_loc14_)
               {
                  break;
               }
               §§push(_loc8_);
               if(_loc13_ || param2)
               {
                  §§push(§§pop() - 1);
                  if(!(_loc13_ || param3))
                  {
                     continue;
                  }
               }
               _loc8_ = §§pop();
               if(!_loc13_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
      }
      
      private function §;O§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1);
         if(!(_loc8_ && _loc3_))
         {
            §§push(int(§§pop() * §1X§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§6f§[_loc4_ = _loc3_++] = this.§6f§[_loc4_] * param2;
         var _loc5_:*;
         this.§6f§[_loc5_ = _loc3_++] = this.§6f§[_loc5_] * param2;
         var _loc6_:*;
         this.§6f§[_loc6_ = _loc3_++] = this.§6f§[_loc6_] * param2;
         if(!(_loc8_ && this))
         {
            this.§6f§[_loc3_] *= param2;
         }
      }
      
      public function §?!c§(param1:int) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(param1);
         if(_loc7_)
         {
            §§push(int(§§pop() * §1X§));
         }
         var _loc2_:* = §§pop();
         if(_loc7_)
         {
            if(this.§3!Z§)
            {
               addr34:
               §§push(Number(this.§6f§[_loc2_ + 3]));
               if(_loc8_)
               {
               }
               addr48:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(_loc7_)
               {
                  §§goto(addr48);
               }
            }
            var _loc3_:* = §§pop();
            if(!_loc8_)
            {
               §§push(_loc3_);
               loop0:
               for(; §§pop() != 0; while(_loc7_ || _loc2_)
               {
                  §§goto(addr146);
                  §§push(Number(§§pop()));
               })
               {
                  loop1:
                  while(true)
                  {
                     §§push(255);
                     if(_loc8_ && param1)
                     {
                        break;
                     }
                     §§push(§§pop() / _loc3_);
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr180:
                        while(true)
                        {
                           §§push(this.§6f§[_loc2_] * _loc3_);
                           continue loop0;
                        }
                        addr93:
                        if(!(_loc8_ && _loc3_))
                        {
                           _loc6_ = §§pop();
                           if(!_loc8_)
                           {
                              if(!_loc8_)
                              {
                                 return §46§.§;!^§(_loc4_,_loc5_,_loc6_);
                              }
                              break loop0;
                           }
                           loop9:
                           while(!(_loc8_ && this))
                           {
                              if(!_loc8_)
                              {
                                 while(true)
                                 {
                                    §§push(this.§6f§[_loc2_ + 2] * _loc3_);
                                    if(_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    if(_loc7_ || _loc3_)
                                    {
                                       if(_loc7_)
                                       {
                                          §§goto(addr93);
                                       }
                                       else
                                       {
                                          while(_loc7_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             break loop9;
                                          }
                                          addr115:
                                          addr146:
                                       }
                                    }
                                    while(!_loc8_)
                                    {
                                       _loc5_ = §§pop();
                                       continue loop9;
                                    }
                                    continue loop0;
                                 }
                                 addr130:
                              }
                              else
                              {
                                 §§goto(addr180);
                              }
                           }
                           while(!(_loc8_ && this))
                           {
                              §§goto(addr115);
                              §§push(this.§6f§[_loc2_ + 1] * _loc3_);
                           }
                           continue loop1;
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr185);
               §§push(0);
            }
            §§goto(addr130);
         }
         §§goto(addr34);
      }
      
      public function §%$§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(!(_loc5_ && _loc3_))
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(§§pop() < 0.001)
               {
                  while(true)
                  {
                     §§push(0.001);
                     addr139:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr140:
                        while(true)
                        {
                           param2 = §§pop();
                           addr141:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr138:
               }
               while(true)
               {
                  if(this.§3!Z§)
                  {
                     if(!(_loc5_ && this))
                     {
                        if(!(_loc5_ && param1))
                        {
                           if(_loc4_ || this)
                           {
                              this.§!A§(param1,this.§?!c§(param1),param2);
                              break;
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr141);
                     }
                     break;
                  }
                  §§push(param1);
                  if(!(_loc5_ && this))
                  {
                     §§push(§§pop() * §1X§);
                     if(!(_loc5_ && this))
                     {
                        if(!_loc5_)
                        {
                           addr78:
                           §§push(§§pop() + 3);
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 addr83:
                                 _loc3_ = §§pop();
                                 addr84:
                                 if(_loc4_ || _loc3_)
                                 {
                                    this.§6f§[_loc3_] = param2;
                                    if(!(_loc4_ || this))
                                    {
                                       §§goto(addr84);
                                    }
                                    §§goto(addr26);
                                 }
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr83);
                  §§goto(addr139);
               }
            }
         }
         addr26:
      }
      
      public function §^D§(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop() * §1X§);
            if(_loc4_)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§6f§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_ || param2)
         {
            §§push(int(§§pop() * §'%§));
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && param1))
         {
            this.§?!Z§.position = _loc4_ * §2!q§;
            while(true)
            {
               this.§?!Z§.writeFloat(param2);
               loop1:
               while(!_loc6_)
               {
                  while(true)
                  {
                     this.§?!Z§.writeFloat(param3);
                     if(!(_loc6_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr80);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_)
         {
            §§push(int(§§pop() * §'%§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && _loc3_))
         {
            this.§?!Z§.position = _loc3_ * §2!q§;
            while(true)
            {
               param2.x = this.§?!Z§.readFloat();
               loop1:
               while(_loc4_ || this)
               {
                  while(true)
                  {
                     param2.y = this.§?!Z§.readFloat();
                     if(!_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §9!a§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(_loc8_ || this)
         {
            §§push(int(§§pop() * §8=§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§8!E§[_loc6_ = _loc5_++] = this.§8!E§[_loc6_] + param2;
         var _loc7_:*;
         this.§8!E§[_loc7_ = _loc5_++] = this.§8!E§[_loc7_] + param3;
         if(!_loc9_)
         {
            this.§8!E§[_loc5_] += param4;
         }
      }
      
      public function §03§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_)
         {
            §§push(int(§§pop() * §8=§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            this.§&Z§[0] = this.§8!E§[_loc3_];
            loop0:
            while(true)
            {
               this.§&Z§[1] = this.§8!E§[_loc3_ + 1];
               addr138:
               while(true)
               {
                  this.§&Z§[2] = this.§8!E§[_loc3_ + 2];
                  addr126:
                  while(true)
                  {
                     param2.transformVectors(this.§&Z§,this.§&Z§);
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§8!E§[_loc3_] = this.§&Z§[0];
            §§goto(addr85);
         }
      }
      
      public function §'f§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || this)
         {
            §§push(param2);
            if(!_loc8_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc7_ || _loc3_)
                  {
                     addr35:
                     §§push(0.001);
                     if(_loc7_ || param1)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                           param2 = §§pop();
                           if(!_loc8_)
                           {
                              addr49:
                              if(this.§3!Z§)
                              {
                                 addr52:
                                 §§push(param2);
                                 if(_loc7_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc7_ || param1)
                                    {
                                    }
                                    addr84:
                                    var _loc3_:* = §§pop();
                                    if(_loc7_ || param1)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop() / 255);
                                          if(_loc7_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc7_)
                                             {
                                                addr102:
                                                _loc3_ = §§pop();
                                                §§push(§46§.§'!'§(param1) * _loc3_);
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                          }
                                          var _loc4_:* = §§pop();
                                          §§push(§46§.§1!U§(param1) * _loc3_);
                                          if(_loc7_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc5_:* = §§pop();
                                          §§push(§46§.§[]§(param1) * _loc3_);
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc6_:* = §§pop();
                                          if(!(_loc8_ && param1))
                                          {
                                             this.§"8§(0,this.§@I§,_loc4_,_loc5_,_loc6_,param2);
                                          }
                                          return;
                                       }
                                    }
                                    §§goto(addr102);
                                 }
                              }
                              else
                              {
                                 §§push(Number(1));
                                 if(!(_loc8_ && this))
                                 {
                                    addr83:
                                    §§goto(addr84);
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr84);
                           }
                           §§goto(addr52);
                        }
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr52);
               }
               §§goto(addr49);
            }
            §§goto(addr84);
         }
         §§goto(addr35);
      }
      
      public function §78§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_)
         {
            §§push(param6);
            if(_loc14_)
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc13_)
                  {
                     §§push(0.001);
                     if(_loc14_ || param1)
                     {
                        §§push(Number(§§pop()));
                        if(_loc14_)
                        {
                           addr37:
                           param6 = §§pop();
                           §§goto(addr38);
                        }
                        §§goto(addr43);
                     }
                  }
                  §§goto(addr38);
               }
               addr38:
               §§push(param1);
               if(!_loc13_)
               {
                  addr43:
                  §§push(int(§§pop() * §1X§));
               }
               var _loc7_:* = §§pop();
               var _loc8_:int = 0;
               while(_loc8_ < param2)
               {
                  var _loc9_:*;
                  this.§6f§[_loc9_ = _loc7_++] = param3;
                  if(_loc14_)
                  {
                     var _loc10_:*;
                     this.§6f§[_loc10_ = _loc7_++] = param4;
                     if(_loc14_)
                     {
                        var _loc11_:*;
                        this.§6f§[_loc11_ = _loc7_++] = param5;
                        if(!_loc13_)
                        {
                           var _loc12_:*;
                           this.§6f§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(_loc13_ && this)
                  {
                     break;
                  }
                  _loc8_++;
                  if(_loc13_ && param3)
                  {
                     break;
                  }
               }
               return;
            }
         }
         §§goto(addr37);
      }
      
      public function §7!F§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         if(!(_loc5_ && param2))
         {
            §§push(param2);
            if(!_loc5_)
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc5_)
                  {
                     §§push(0.001);
                     if(_loc6_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc6_)
                        {
                        }
                        addr50:
                        if(§§pop() == 1)
                        {
                           if(_loc6_ || param1)
                           {
                              §§goto(addr59);
                           }
                        }
                        §§push(param1);
                        if(_loc6_)
                        {
                           addr65:
                           §§push(int(§§pop() * §1X§));
                        }
                        var _loc3_:* = §§pop();
                        if(!_loc5_)
                        {
                           if(!this.§3!Z§)
                           {
                              this.§6f§[_loc3_ + 3] *= param2;
                              if(!_loc6_)
                              {
                                 while(_loc5_)
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       if(!(_loc5_ && param2))
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             break;
                                          }
                                          addr210:
                                          while(true)
                                          {
                                             §§push(Number(this.§6f§[_loc3_ + 3]));
                                             loop6:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() / _loc4_);
                                                      if(_loc6_)
                                                      {
                                                         addr197:
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop6;
                                                      }
                                                      addr205:
                                                      _loc4_ = §§pop();
                                                      this.§6f§[_loc3_] *= _loc4_;
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop4;
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      addr206:
                                                      this.§6f§[_loc3_ + 1] *= _loc4_;
                                                      while(!_loc6_)
                                                      {
                                                         §§goto(addr174);
                                                         §§goto(addr178);
                                                      }
                                                      addr174:
                                                      addr178:
                                                      while(true)
                                                      {
                                                         this.§6f§[_loc3_ + 2] *= _loc4_;
                                                         continue loop1;
                                                      }
                                                      addr160:
                                                      addr162:
                                                   }
                                                   §§goto(addr197);
                                                }
                                                §§goto(addr205);
                                             }
                                          }
                                       }
                                       §§goto(addr160);
                                    }
                                    this.§6f§[_loc3_ + 3] = param2;
                                 }
                              }
                              return;
                           }
                           §§goto(addr210);
                        }
                        §§goto(addr162);
                     }
                     param2 = §§pop();
                     if(_loc6_ || param2)
                     {
                        addr47:
                        §§push(param2);
                        if(!_loc5_)
                        {
                           §§goto(addr50);
                        }
                        §§goto(addr65);
                     }
                     §§goto(addr50);
                  }
                  §§goto(addr59);
               }
               §§goto(addr47);
            }
            §§goto(addr50);
         }
         addr59:
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         if(_loc9_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != this.§3!Z§)
            {
               loop1:
               while(true)
               {
                  §§push(param2);
                  if(!_loc8_)
                  {
                     if(§§pop())
                     {
                        if(!_loc8_)
                        {
                           if(!_loc9_)
                           {
                              continue;
                           }
                           §§push(this.§@I§);
                           if(!_loc8_)
                           {
                              §§push(int(§§pop() * §1X§));
                           }
                           while(true)
                           {
                              _loc3_ = §§pop();
                           }
                           addr272:
                        }
                        while(true)
                        {
                           §§push(0);
                           if(_loc9_ || param2)
                           {
                              _loc4_ = §§pop();
                              if(!(_loc8_ && param2))
                              {
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr272);
                        }
                        if(_loc9_ || this)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(_loc4_);
                              if(_loc9_)
                              {
                                 if(!(_loc8_ && param1))
                                 {
                                    if(§§pop() >= _loc3_)
                                    {
                                       if(_loc9_ || this)
                                       {
                                          if(_loc9_ || this)
                                          {
                                             if(!(_loc8_ && param2))
                                             {
                                                break loop1;
                                             }
                                             loop4:
                                             while(true)
                                             {
                                                §§push(param1);
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§push(1);
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop8:
                                                            while(true)
                                                            {
                                                               _loc7_ = §§pop();
                                                               loop9:
                                                               while(!_loc8_)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(_loc9_)
                                                                  {
                                                                     if(§§pop() != 0)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           if(_loc8_ && _loc3_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           if(!_loc8_)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(§§pop() / _loc6_);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 addr156:
                                                                                 addr156:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    loop11:
                                                                                    while(_loc9_)
                                                                                    {
                                                                                       this.§;O§(_loc4_,_loc7_);
                                                                                       while(true)
                                                                                       {
                                                                                          addr87:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_++;
                                                                                             addr89:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                if(!(_loc9_ || param2))
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                if(!(_loc8_ && _loc3_))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                loop14:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§3!Z§);
                                                                                                   addr194:
                                                                                                   loop12:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         break loop9;
                                                                                                      }
                                                                                                      addr206:
                                                                                                      §§push(1);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr207:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr208:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  break loop12;
                                                                                                               }
                                                                                                               addr218:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr219:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc5_ = §§pop();
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                }
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr170:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       if(!(_loc8_ && this))
                                                                                       {
                                                                                          addr179:
                                                                                          §§push(Number(§§pop()));
                                                                                          while(!_loc8_)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             §§goto(addr219);
                                                                                          }
                                                                                          §§goto(addr208);
                                                                                          addr179:
                                                                                       }
                                                                                       §§goto(addr179);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr207);
                                                                              }
                                                                              addr204:
                                                                           }
                                                                           §§goto(addr179);
                                                                        }
                                                                        addr118:
                                                                     }
                                                                     §§goto(addr87);
                                                                  }
                                                                  §§goto(addr156);
                                                               }
                                                               §§push(_loc5_);
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  §§goto(addr204);
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               §§goto(addr207);
                                                            }
                                                         }
                                                      }
                                                      addr185:
                                                   }
                                                   §§goto(addr170);
                                                }
                                                §§goto(addr194);
                                             }
                                          }
                                          §§goto(addr89);
                                       }
                                       while(true)
                                       {
                                          if(_loc9_ || param2)
                                          {
                                             if(_loc9_ || param2)
                                             {
                                                break loop3;
                                             }
                                             §§goto(addr118);
                                          }
                                          §§goto(addr111);
                                       }
                                       addr72:
                                    }
                                    else
                                    {
                                       §§push(this.§^D§(0));
                                    }
                                    §§goto(addr218);
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr185);
                           }
                           return;
                        }
                        break loop0;
                     }
                     break;
                  }
                  continue loop0;
               }
               while(true)
               {
                  this.§3!Z§ = param1;
                  §§goto(addr72);
               }
            }
            return;
         }
         §§goto(addr265);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§3!Z§;
      }
      
      public function get §7?§() : int
      {
         return this.§@I§;
      }
      
      public function set §7?§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc6_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§'%§);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc5_)
                  {
                     §§push(§§pop() * §2!q§);
                     if(!(_loc5_ && this))
                     {
                        §§push(§§pop() - this.§?!Z§.length);
                     }
                  }
                  §§push(int(§§pop()));
                  while(true)
                  {
                     _loc2_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(int(this.§?!Z§.length));
                        loop4:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           while(true)
                           {
                              this.§?!Z§.length += _loc2_;
                              while(!_loc5_)
                              {
                                 §§push(_loc2_);
                                 continue loop4;
                                 loop8:
                                 for(; _loc6_ || this; _loc3_ = §§pop(),if(!(_loc6_ || _loc3_))
                                 {
                                    continue;
                                 },if(!_loc6_)
                                 {
                                    continue loop3;
                                 },loop48:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       loop50:
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop() / §2!q§)
                                          {
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   this.§6f§.fixed = false;
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(§1X§);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - this.§6f§.length);
                                                               while(true)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     while(!(_loc5_ && _loc2_))
                                                                     {
                                                                        §§push(0);
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           addr369:
                                                                           while(true)
                                                                           {
                                                                              addr343:
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 addr345:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    addr346:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue loop50;
                                                                                       }
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          this.§6f§.push(0);
                                                                                          _loc3_++;
                                                                                          continue loop21;
                                                                                          addr365:
                                                                                       }
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             addr353:
                                                                                             addr173:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                             }
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          loop27:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             addr324:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                addr325:
                                                                                                while(!_loc5_)
                                                                                                {
                                                                                                   if(§§pop() < §§pop())
                                                                                                   {
                                                                                                      this.§6f§.pop();
                                                                                                      _loc3_++;
                                                                                                      continue loop27;
                                                                                                      addr342:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§6f§.fixed = true;
                                                                                                      addr332:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§8!E§.fixed = false;
                                                                                                         addr307:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc6_ || this)
                                                                                                               {
                                                                                                                  §§push(param1);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                     §§goto(addr353);
                                                                                                                  }
                                                                                                                  continue loop19;
                                                                                                                  addr254:
                                                                                                               }
                                                                                                               continue loop48;
                                                                                                            }
                                                                                                            continue loop27;
                                                                                                         }
                                                                                                         continue loop48;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop14;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop50;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr394:
                                          }
                                          else
                                          {
                                             this.§?!Z§.writeFloat(0);
                                          }
                                          _loc3_++;
                                          continue loop48;
                                       }
                                       continue loop48;
                                    }
                                 })
                                 {
                                    while(true)
                                    {
                                       §§push(0);
                                       if(!_loc5_)
                                       {
                                          if(_loc6_)
                                          {
                                             continue loop8;
                                          }
                                          continue loop0;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr466);
      }
      
      public function get §>L§() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§?!Z§.position = 0;
         }
         return this.§?!Z§;
      }
      
      public function get §8q§() : Vector.<Number>
      {
         return this.§6f§;
      }
      
      public function get §3!+§() : Vector.<Number>
      {
         return this.§8!E§;
      }
   }
}
