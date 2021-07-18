package §_-ia§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   
   public class §_-dF§
   {
      
      public static const §_-YF§:int = 6;
      
      public static const §_-T6§:int = 3;
      
      public static const §_-TJ§:int = 0;
      
      public static const §_-RM§:int = 0;
      
      public static const §_-j4§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §_-YF§ = 6;
            if(!_loc2_)
            {
               §§goto(addr32);
            }
            §§goto(addr42);
         }
         addr32:
         if(_loc1_)
         {
            §_-TJ§ = 0;
            if(!_loc2_)
            {
               addr42:
               §_-RM§ = 0;
               if(_loc2_ && _loc1_)
               {
               }
               §§goto(addr62);
            }
            §_-j4§ = 4;
         }
         addr62:
      }
      
      private var §_-DU§:Vector.<Number>;
      
      private var §_-5G§:Vector.<Number>;
      
      private var §_-lF§:int;
      
      private var §_-q§:int;
      
      private var §_-Cr§:Boolean;
      
      public function §_-dF§(param1:int, param2:Boolean = false)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            if(_loc4_ || param1)
            {
               this.§_-DU§ = new Vector.<Number>(param1 * §_-YF§,false);
               if(!_loc3_)
               {
                  addr44:
                  this.§_-5G§ = new Vector.<Number>(param1 * §_-T6§,false);
                  if(_loc3_ && this)
                  {
                  }
                  §§goto(addr71);
               }
               this.§_-Cr§ = param2;
               addr71:
               return;
            }
         }
         §§goto(addr44);
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-lF§ = 0;
            if(_loc2_ || _loc2_)
            {
               this.§_-q§ = 0;
               if(_loc2_ || _loc1_)
               {
                  addr50:
                  this.§_-5G§.fixed = false;
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §_-Zi§(param1:§_-dF§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:Number = NaN;
         if(!_loc8_)
         {
            this.§_-DU§.fixed = false;
         }
         var _loc3_:int = 0;
         var _loc4_:* = param1.§_-DU§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(!_loc8_)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc3_,_loc4_);
                  if(_loc9_ || param1)
                  {
                     var _loc5_:*;
                     this.§_-DU§[_loc5_ = this.§_-lF§++] = _loc2_;
                  }
                  continue;
               }
               if(!_loc8_)
               {
                  if(!(_loc8_ && this))
                  {
                     if(!(_loc8_ && _loc3_))
                     {
                        this.§_-DU§.fixed = true;
                        if(_loc9_ || _loc2_)
                        {
                           this.§_-5G§.fixed = false;
                           if(!_loc8_)
                           {
                              _loc3_ = 0;
                              if(_loc9_ || _loc2_)
                              {
                                 _loc4_ = param1.§_-5G§;
                                 if(_loc8_)
                                 {
                                 }
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr160:
                                 if(!_loc9_)
                                 {
                                 }
                                 return;
                                 addr159:
                                 addr150:
                              }
                              §§goto(addr160);
                           }
                           this.§_-5G§.fixed = true;
                        }
                     }
                  }
                  §§goto(addr160);
               }
               §§goto(addr159);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc3_,_loc4_);
               if(_loc9_)
               {
                  this.§_-5G§[_loc5_ = this.§_-q§++] = _loc2_;
               }
               continue;
            }
            §§goto(addr160);
         }
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(!(_loc6_ && param2))
         {
            §§push(int(§§pop() * §_-T6§));
         }
         var _loc5_:* = §§pop();
         if(!_loc6_)
         {
            this.§_-5G§[_loc5_] = param2;
            if(!_loc6_)
            {
               this.§_-5G§[_loc5_ + 1] = param3;
            }
         }
      }
      
      public function §_-rO§(param1:int) : Vector3D
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop() * §_-T6§));
         }
         var _loc2_:* = §§pop();
         return new Vector3D(this.§_-5G§[_loc2_],this.§_-5G§[_loc2_ + 1],0);
      }
      
      public function §_-dy§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            if(this.§_-Cr§)
            {
               addr23:
               §§push(param3);
               if(_loc5_ || param1)
               {
                  §§goto(addr35);
               }
               §§goto(addr46);
            }
            else
            {
               §§push(1);
            }
            addr35:
            §§push(§§pop() / 255);
            if(!_loc6_)
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!(_loc6_ && this))
            {
               this.§_-C9§(this.§_-42§(param1) + §_-RM§,§_-xi§.§_-UI§(param2) * _loc4_,§_-xi§.§_-KU§(param2) * _loc4_,§_-xi§.§_-gf§(param2) * _loc4_,param3);
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function getColor(param1:int) : uint
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(this.§_-42§(param1));
         if(_loc8_)
         {
            §§push(int(§§pop() + §_-RM§));
         }
         var _loc2_:* = §§pop();
         if(_loc8_ || _loc3_)
         {
            if(this.§_-Cr§)
            {
               addr33:
               §§push(Number(this.§_-DU§[_loc2_ + 3]));
               if(_loc7_)
               {
               }
               addr47:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(!_loc7_)
               {
                  §§goto(addr47);
               }
            }
            var _loc3_:* = §§pop();
            if(!_loc7_)
            {
               §§push(_loc3_);
               if(_loc8_ || _loc2_)
               {
                  if(§§pop() == 0)
                  {
                     if(!_loc7_)
                     {
                        §§goto(addr63);
                     }
                  }
                  §§push(this.§_-DU§[_loc2_] / _loc3_);
                  if(_loc8_ || _loc2_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc4_:* = §§pop();
               §§push(this.§_-DU§[_loc2_ + 1] / _loc3_);
               if(!(_loc7_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(this.§_-DU§[_loc2_ + 2] / _loc3_);
               if(!(_loc7_ && param1))
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(§_-xi§);
               §§push(_loc4_);
               if(!_loc7_)
               {
                  §§push(§§pop() * 255);
               }
               §§push(_loc5_);
               if(_loc8_)
               {
                  §§push(§§pop() * 255);
               }
               §§push(_loc6_);
               if(_loc8_)
               {
                  §§push(§§pop() * 255);
               }
               return §§pop().§_-6F§(§§pop(),§§pop(),§§pop());
            }
            addr63:
            return 0;
         }
         §§goto(addr33);
      }
      
      public function §_-wk§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            if(this.§_-Cr§)
            {
               if(_loc4_)
               {
                  this.§_-dy§(param1,this.getColor(param1),param2);
                  if(_loc5_)
                  {
                     addr61:
                     this.§_-DU§[_loc3_] = param2;
                  }
                  else
                  {
                     addr38:
                  }
               }
               §§goto(addr38);
            }
            else
            {
               §§push(this.§_-42§(param1));
               if(_loc4_)
               {
                  §§push(§§pop() + §_-RM§);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 3);
                  }
                  §§push(int(§§pop()));
               }
               _loc3_ = §§pop();
               if(_loc4_)
               {
                  §§goto(addr61);
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function §_-Hy§(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§_-42§(param1));
         if(!_loc3_)
         {
            §§push(§§pop() + §_-RM§);
            if(_loc4_)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§_-DU§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§_-C9§(this.§_-42§(param1) + §_-j4§,param2,param3);
         }
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§_-42§(param1));
         if(!(_loc3_ && param1))
         {
            §§push(int(§§pop() + §_-j4§));
         }
         var _loc2_:* = §§pop();
         return new Point(this.§_-DU§[_loc2_],this.§_-DU§[_loc2_ + 1]);
      }
      
      public function clone() : §_-dF§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-dF§ = new §_-dF§(0,this.§_-Cr§);
         if(!(_loc2_ && _loc1_))
         {
            _loc1_.§_-DU§ = this.§_-DU§.concat();
            if(_loc3_ || _loc2_)
            {
               addr47:
               _loc1_.§_-DU§.fixed = true;
               if(_loc3_)
               {
                  _loc1_.§_-5G§ = this.§_-5G§.concat();
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.§_-5G§.fixed = true;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr47);
      }
      
      public function §_-w5§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(!(_loc6_ && param3))
         {
            §§push(int(§§pop() * §_-T6§));
         }
         var _loc5_:* = §§pop();
         if(_loc7_)
         {
            this.§_-5G§[_loc5_] += param2;
            if(!(_loc6_ && this))
            {
               this.§_-5G§[_loc5_ + 1] += param3;
            }
         }
      }
      
      public function §_-vF§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.transformVectors(this.§_-5G§,this.§_-5G§);
            if(_loc2_)
            {
               this.§_-5G§.fixed = true;
            }
         }
      }
      
      public function §_-7Z§(param1:int, param2:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Vector3D = null;
         var _loc4_:Vector3D = null;
         if(_loc5_)
         {
            if(param2)
            {
               addr30:
               _loc3_ = this.§_-rO§(param1);
               _loc4_ = param2.transformVector(_loc3_);
               if(!_loc6_)
               {
                  this.setPosition(param1,_loc4_.x,_loc4_.y,_loc4_.z);
               }
            }
            return;
         }
         §§goto(addr30);
      }
      
      public function setUniformColor(param1:uint, param2:Number = 1.0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§_-9D§(0,this.§_-4f§,param1,param2);
         }
      }
      
      public function §_-9D§(param1:int, param2:int, param3:uint, param4:Number = 1.0) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc12_)
         {
            if(this.§_-Cr§)
            {
               addr19:
               §§push(param4);
               if(!(_loc11_ && param2))
               {
                  addr31:
                  §§push(§§pop() / 255);
                  if(!(_loc11_ && param3))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               §§push(§_-xi§.§_-UI§(param3) * _loc5_);
               if(_loc12_ || param3)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(§_-xi§.§_-KU§(param3) * _loc5_);
               if(!(_loc11_ && param1))
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(§_-xi§.§_-gf§(param3) * _loc5_);
               if(!_loc11_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               §§push(this.§_-42§(param1));
               if(!_loc11_)
               {
                  §§push(int(§§pop()));
               }
               var _loc9_:* = §§pop();
               var _loc10_:int = 0;
               loop0:
               while(true)
               {
                  §§push(_loc10_);
                  loop1:
                  while(true)
                  {
                     §§push(param2);
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           this.§_-C9§(_loc9_ + §_-RM§,_loc6_,_loc7_,_loc8_,param4);
                           if(_loc11_)
                           {
                              break;
                           }
                           §§push(_loc9_);
                           if(_loc11_)
                           {
                              continue loop1;
                           }
                           §§push(§_-YF§);
                           if(!(_loc12_ || param2))
                           {
                              continue;
                           }
                           §§push(int(§§pop() + §§pop()));
                           if(_loc11_)
                           {
                              continue loop1;
                           }
                           _loc9_ = §§pop();
                           if(_loc11_)
                           {
                              break;
                           }
                           _loc10_++;
                           if(!_loc11_)
                           {
                              break;
                           }
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
            else
            {
               §§push(1);
            }
            §§goto(addr31);
         }
         §§goto(addr19);
      }
      
      public function §_-V§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_ || _loc3_)
         {
            if(this.§_-Cr§)
            {
               if(_loc5_ || _loc3_)
               {
                  §§push(this);
                  §§push(param1);
                  §§push(this.§_-Hy§(param1));
                  if(_loc5_ || param1)
                  {
                     §§push(§§pop() * param2);
                  }
                  §§pop().§_-wk§(§§pop(),§§pop());
                  if(!(_loc5_ || this))
                  {
                     this.§_-DU§[_loc3_] *= param2;
                     addr110:
                     return;
                     addr93:
                  }
                  §§goto(addr110);
               }
            }
            else
            {
               §§push(this.§_-42§(param1));
               if(!(_loc4_ && param2))
               {
                  §§push(§§pop() + §_-RM§);
                  if(_loc5_ || param1)
                  {
                     §§push(§§pop() + 3);
                  }
                  §§push(int(§§pop()));
               }
               _loc3_ = §§pop();
               if(_loc5_ || this)
               {
                  §§goto(addr93);
               }
            }
         }
         §§goto(addr110);
      }
      
      private function §_-C9§(param1:int, ... rest) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:int = rest.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            this.§_-DU§[param1 + _loc4_] = rest[_loc4_];
            if(_loc6_)
            {
               break;
            }
            _loc4_++;
            if(_loc6_)
            {
               break;
            }
         }
      }
      
      private function §_-42§(param1:int) : int
      {
         return param1 * §_-YF§;
      }
      
      public function set premultipliedAlpha(param1:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         if(!(_loc8_ && _loc3_))
         {
            if(param1 == this.§_-Cr§)
            {
               if(_loc7_)
               {
                  §§goto(addr32);
               }
            }
            var _loc2_:int = this.§_-DU§.length;
            §§push(§_-RM§);
            if(!(_loc8_ && this))
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            while(true)
            {
               §§push(_loc3_);
               loop1:
               while(true)
               {
                  §§push(_loc2_);
                  while(§§pop() < §§pop())
                  {
                     _loc4_ = this.§_-DU§[_loc3_ + 3];
                     if(_loc8_)
                     {
                        break loop1;
                     }
                     §§push(this.§_-Cr§);
                     if(!_loc8_)
                     {
                        if(§§pop())
                        {
                           if(_loc7_)
                           {
                              §§push(_loc4_);
                              if(!(_loc8_ && param1))
                              {
                                 addr88:
                                 §§push(Number(Number(§§pop())));
                                 if(_loc7_ || this)
                                 {
                                    _loc5_ = §§pop();
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§goto(addr112);
                                    }
                                    §§goto(addr183);
                                 }
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr148);
                        }
                        else
                        {
                           §§push(1);
                           if(_loc8_ && this)
                           {
                              continue loop1;
                           }
                           §§push(Number(§§pop()));
                           if(_loc7_)
                           {
                              §§goto(addr88);
                           }
                        }
                        §§goto(addr125);
                     }
                     addr112:
                     if(param1)
                     {
                        if(!_loc7_)
                        {
                           return;
                        }
                        addr125:
                        _loc6_ = _loc4_ / _loc5_;
                        §§goto(addr122);
                     }
                     §§push(1);
                     if(_loc8_)
                     {
                        continue loop1;
                     }
                     §§push(§§pop());
                     addr122:
                     §§push(_loc5_);
                     if(_loc7_)
                     {
                        if(§§pop() != 0)
                        {
                           if(!(_loc8_ && this))
                           {
                              this.§_-DU§[_loc3_] *= _loc6_;
                              addr148:
                              this.§_-DU§[_loc3_ + 1] *= _loc6_;
                              this.§_-DU§[_loc3_ + 2] *= _loc6_;
                              if(!(_loc7_ || _loc3_))
                              {
                                 break;
                              }
                              addr183:
                              §§push(_loc3_);
                              if(!(_loc7_ || _loc2_))
                              {
                                 continue loop1;
                              }
                              §§push(§_-YF§);
                              if(_loc8_ && param1)
                              {
                                 continue;
                              }
                              §§push(§§pop() + §§pop());
                           }
                        }
                        §§goto(addr183);
                     }
                     §§push(int(§§pop()));
                     if(_loc7_)
                     {
                        _loc3_ = §§pop();
                        break loop1;
                     }
                     continue loop1;
                     §§goto(addr217);
                  }
                  this.§_-Cr§ = param1;
                  addr217:
               }
            }
         }
         addr32:
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§_-Cr§;
      }
      
      public function get §_-4f§() : int
      {
         return this.§_-DU§.length / §_-YF§;
      }
      
      public function get data() : Vector.<Number>
      {
         return this.§_-DU§;
      }
      
      public function get §_-rc§() : Vector.<Number>
      {
         return this.§_-5G§;
      }
   }
}
