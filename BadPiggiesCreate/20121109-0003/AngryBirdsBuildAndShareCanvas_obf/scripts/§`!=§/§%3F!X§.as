package §`!=§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §?!X§
   {
      
      public static const §-p§:int = 4;
      
      public static const §5;§:int = 2;
      
      public static const §0[§:int = 3;
      
      public static const §"c§:int = 4;
      
      public static const §^!5§:int = 0;
      
      public static const §-!e§:int = 0;
      
      public static const §<[§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-p§ = 4;
            loop0:
            while(true)
            {
               §5;§ = 2;
               while(true)
               {
                  §0[§ = 3;
                  loop2:
                  for(; !(_loc2_ && §?!X§); while(_loc1_ || _loc2_)
                  {
                     while(true)
                     {
                        §-!e§ = 0;
                        §§goto(addr46);
                     }
                     §§goto(addr41);
                     §§goto(addr34);
                  })
                  {
                     §"c§ = 4;
                     while(_loc1_)
                     {
                        §^!5§ = 0;
                        continue loop2;
                        while(!(_loc2_ && _loc1_))
                        {
                           §<[§ = 0;
                           if(_loc1_ || _loc1_)
                           {
                              addr34:
                              if(!(_loc2_ && _loc2_))
                              {
                                 return;
                                 addr41:
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      private var §,]§:ByteArray;
      
      private var §#!7§:Vector.<Number>;
      
      private var §4i§:Vector.<Number>;
      
      private var §[!k§:Boolean;
      
      private var §?!C§:int;
      
      private var §!L§:Vector.<Number>;
      
      public function §?!X§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§!L§ = new Vector.<Number>(12,true);
            while(true)
            {
               super();
               while(_loc4_ || param1)
               {
                  this.§,]§ = new ByteArray();
                  loop2:
                  for(; !_loc5_; while(true)
                  {
                     if(_loc4_ || param2)
                     {
                        this.§,]§.length = param1 * §5;§ * §"c§;
                        if(!_loc5_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop2;
                  },while(false)
                  {
                     §§goto(addr32);
                  },var _loc3_:int = 0,loop6:
                  while(true)
                  {
                     if(_loc3_ >= param1 * §5;§)
                     {
                        loop7:
                        while(true)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              this.§#!7§ = new Vector.<Number>(param1 * §-p§,true);
                              loop8:
                              while(_loc4_)
                              {
                                 this.§4i§ = new Vector.<Number>(param1 * §0[§,true);
                                 while(!(_loc5_ && this))
                                 {
                                    this.§[!k§ = param2;
                                    while(!(_loc5_ && param1))
                                    {
                                       this.§?!C§ = param1;
                                       if(_loc4_)
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             return;
                                          }
                                          continue loop8;
                                          continue loop8;
                                       }
                                    }
                                 }
                                 continue loop7;
                              }
                              continue loop6;
                           }
                        }
                     }
                     else
                     {
                        this.§,]§.writeFloat(0);
                     }
                     _loc3_++;
                  })
                  {
                     while(true)
                     {
                        this.§,]§.endian = Endian.LITTLE_ENDIAN;
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr30);
      }
      
      public function clone() : §?!X§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§?!X§ = new §?!X§(0,this.§[!k§);
         if(_loc3_ || this)
         {
            _loc1_.§,]§.length = this.§,]§.length;
            loop0:
            while(true)
            {
               _loc1_.§,]§.writeBytes(this.§,]§);
               while(true)
               {
                  _loc1_.§#!7§ = this.§#!7§.concat();
                  while(_loc3_)
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     _loc1_.§#!7§.fixed = true;
                     while(true)
                     {
                        _loc1_.§4i§ = this.§4i§.concat();
                        addr81:
                        while(_loc3_)
                        {
                        }
                     }
                     addr67:
                     if(!(_loc2_ && _loc1_))
                     {
                        _loc1_.§?!C§ = this.§?!C§;
                        addr74:
                        if(_loc2_ && _loc2_)
                        {
                           while(_loc3_)
                           {
                              §§goto(addr67);
                              §§goto(addr74);
                           }
                           §§goto(addr81);
                           addr65:
                        }
                        return _loc1_;
                     }
                  }
               }
            }
         }
         while(true)
         {
            _loc1_.§4i§.fixed = true;
            §§goto(addr65);
         }
      }
      
      public function copyTo(param1:§?!X§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§4i§;
         if(!_loc19_)
         {
            §§push(this.§?!C§);
            loop0:
            while(true)
            {
               §§push(§0[§);
               loop1:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop3:
                     while(true)
                     {
                        _loc6_ = §§pop();
                        while(true)
                        {
                           §§push(param2);
                           if(_loc18_)
                           {
                              if(!_loc18_)
                              {
                                 break;
                              }
                              §§push(§0[§);
                              if(_loc19_)
                              {
                                 continue loop1;
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc19_)
                              {
                                 continue loop2;
                              }
                              §§push(int(§§pop()));
                           }
                           while(true)
                           {
                              _loc7_ = §§pop();
                              while(true)
                              {
                                 §§push(0);
                                 if(!(_loc18_ || param1))
                                 {
                                    break;
                                 }
                                 if(!(_loc19_ && param3))
                                 {
                                    continue;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      public function append(param1:§?!X§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:int = this.§,]§.length;
         if(_loc10_ || _loc2_)
         {
            this.§,]§.length += param1.§,]§.length;
            while(true)
            {
               this.§,]§.position = _loc2_;
               loop1:
               for(; _loc10_ || _loc2_; while(true)
               {
                  if(!(_loc9_ && _loc2_))
                  {
                     this.§#!7§.fixed = false;
                     if(_loc10_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               },while(false)
               {
                  §§goto(addr39);
               },var _loc3_:Vector.<Number> = param1.§#!7§,var _loc4_:int = _loc3_.length,var _loc5_:int = 0,while(true)
               {
                  if(_loc5_ >= _loc4_)
                  {
                     if(!_loc9_)
                     {
                        this.§#!7§.fixed = true;
                     }
                     do
                     {
                        this.§4i§.fixed = false;
                     }
                     while(!(_loc10_ || this));
                     
                     if(!(_loc9_ && param1))
                     {
                        if(!(_loc9_ && _loc2_))
                        {
                           if(true)
                           {
                              break;
                           }
                           continue;
                        }
                        _loc5_++;
                        addr148:
                     }
                     continue;
                  }
                  this.§#!7§.push(_loc3_[_loc5_]);
                  §§goto(addr148);
               },var _loc6_:Vector.<Number>,var _loc7_:int = (_loc6_ = param1.§4i§).length,var _loc8_:int = 0,if(_loc10_)
               {
                  while(true)
                  {
                     if(_loc8_ >= _loc7_)
                     {
                        if(!(_loc9_ && _loc3_))
                        {
                           this.§4i§.fixed = true;
                        }
                        do
                        {
                           this.§?!C§ += param1.§8!B§;
                        }
                        while(!(_loc10_ || _loc3_));
                        
                        if(_loc9_)
                        {
                           continue;
                        }
                        if(!_loc9_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§4i§.push(_loc6_[_loc8_]);
                     }
                     _loc8_++;
                  }
               },return)
               {
                  while(true)
                  {
                     this.§,]§.writeBytes(param1.§,]§);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(!_loc8_)
         {
            §§push(int(§§pop() * §0[§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§4i§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§4i§[_loc7_ = _loc5_++] = param3;
         if(!(_loc8_ && param1))
         {
            this.§4i§[_loc5_] = param4;
         }
      }
      
      public function §;![§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(_loc6_ || param1)
         {
            §§push(int(§§pop() * §0[§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§4i§[_loc5_ = _loc4_++] = param2;
         if(!_loc7_)
         {
            this.§4i§[_loc4_] = param3;
         }
      }
      
      public function §]5§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || this)
         {
            §§push(int(§§pop() * §0[§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            param2.x = this.§4i§[_loc3_++];
            do
            {
               param2.y = this.§4i§[_loc3_++];
               do
               {
                  param2.z = this.§4i§[_loc3_];
               }
               while(!_loc5_);
               
            }
            while(!_loc5_);
            
         }
      }
      
      public function §5!U§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param3))
         {
            if(this.§[!k§)
            {
               addr27:
               §§push(param3);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(_loc8_)
                  {
                  }
                  §§goto(addr44);
               }
               addr43:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(_loc9_ || param3)
               {
                  §§goto(addr43);
               }
            }
            addr44:
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(_loc9_ || param1)
            {
               §§push(§§pop() / 255);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc8_)
                  {
                     §§goto(addr70);
                  }
               }
               §§goto(addr83);
            }
            addr70:
            _loc4_ = §§pop();
            §§push(§9q§.§@g§(param2) * _loc4_);
            if(_loc9_ || param1)
            {
               addr83:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(§9q§.§!e§(param2) * _loc4_);
            if(_loc9_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(§9q§.§6!1§(param2) * _loc4_);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(_loc9_ || param3)
            {
               this.§[!S§(param1,1,_loc5_,_loc6_,_loc7_,param3);
            }
            return;
         }
         §§goto(addr27);
      }
      
      private function §[!S§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1);
         if(!(_loc14_ && param3))
         {
            §§push(int(§§pop() * §-p§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(!(_loc14_ && this))
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
               this.§#!7§[_loc9_ = _loc7_++] = param3;
               if(!_loc14_)
               {
                  var _loc10_:*;
                  this.§#!7§[_loc10_ = _loc7_++] = param4;
                  if(_loc13_ || this)
                  {
                     var _loc11_:*;
                     this.§#!7§[_loc11_ = _loc7_++] = param5;
                     if(!(_loc14_ && this))
                     {
                        var _loc12_:*;
                        this.§#!7§[_loc12_ = _loc7_++] = param6;
                     }
                  }
               }
               if(_loc14_)
               {
                  break;
               }
               §§push(_loc8_);
               if(!(_loc14_ && param1))
               {
                  §§push(§§pop() - 1);
                  if(!_loc14_)
                  {
                     continue loop0;
                  }
                  continue;
               }
               continue loop0;
            }
            addr145:
            return;
         }
      }
      
      private function §^K§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1);
         if(_loc7_)
         {
            §§push(int(§§pop() * §-p§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§#!7§[_loc4_ = _loc3_++] = this.§#!7§[_loc4_] * param2;
         var _loc5_:*;
         this.§#!7§[_loc5_ = _loc3_++] = this.§#!7§[_loc5_] * param2;
         var _loc6_:*;
         this.§#!7§[_loc6_ = _loc3_++] = this.§#!7§[_loc6_] * param2;
         if(_loc7_ || this)
         {
            this.§#!7§[_loc3_] *= param2;
         }
      }
      
      public function §`!+§(param1:int) : uint
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         §§push(param1);
         if(_loc8_)
         {
            §§push(int(§§pop() * §-p§));
         }
         var _loc2_:* = §§pop();
         if(_loc8_ || param1)
         {
            if(this.§[!k§)
            {
               addr40:
               §§push(Number(this.§#!7§[_loc2_ + 3]));
               if(!_loc8_)
               {
               }
               addr59:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(!(_loc7_ && _loc3_))
               {
                  §§goto(addr59);
               }
            }
            var _loc3_:* = §§pop();
            if(_loc8_)
            {
               §§push(_loc3_);
               loop0:
               while(true)
               {
                  if(§§pop() == 0)
                  {
                     addr210:
                     return 0;
                  }
                  else
                  {
                     while(true)
                     {
                        §§push(255);
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(§§pop() / _loc3_);
                        loop2:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop3:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr206:
                              while(true)
                              {
                                 §§push(this.§#!7§[_loc2_] * _loc3_);
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop6:
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       addr187:
                                       while(true)
                                       {
                                          §§push(this.§#!7§[_loc2_ + 1] * _loc3_);
                                          while(true)
                                          {
                                             if(!_loc7_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop6;
                                             addr116:
                                             if(!(_loc7_ && this))
                                             {
                                                continue loop2;
                                             }
                                          }
                                          continue loop0;
                                       }
                                    }
                                    addr91:
                                    if(_loc7_ && param1)
                                    {
                                       continue;
                                    }
                                    if(!(_loc8_ || param1))
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr116);
                                    return Number(§§pop());
                                 }
                              }
                           }
                        }
                     }
                  }
                  return §§pop();
               }
            }
            §§goto(addr140);
         }
         §§goto(addr40);
      }
      
      public function §0"+§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(!(_loc4_ && param2))
         {
            §§push(param2);
            if(_loc5_)
            {
               if(§§pop() < 0.001)
               {
                  addr124:
                  while(true)
                  {
                     §§push(0.001);
                     addr125:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr126:
                        while(true)
                        {
                           param2 = §§pop();
                           addr127:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr124:
               }
               loop0:
               while(true)
               {
                  if(!this.§[!k§)
                  {
                     §§push(param1);
                     if(!_loc4_)
                     {
                        §§push(§§pop() * §-p§);
                        if(_loc5_)
                        {
                           §§push(§§pop() + 3);
                        }
                        if(!_loc4_)
                        {
                           if(!(_loc4_ && this))
                           {
                              addr86:
                              _loc3_ = §§pop();
                              while(!_loc4_)
                              {
                                 this.§#!7§[_loc3_] = param2;
                                 if(!_loc4_)
                                 {
                                    if(!(_loc5_ || param1))
                                    {
                                       addr94:
                                       this.§5!U§(param1,this.§`!+§(param1),param2);
                                    }
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§goto(addr27);
                                    }
                                    continue loop0;
                                    break;
                                 }
                              }
                              if(!(_loc4_ && param1))
                              {
                                 break;
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr94);
               }
               addr27:
               return;
            }
            §§goto(addr125);
         }
         §§goto(addr124);
      }
      
      public function §-!n§(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop() * §-p§);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§#!7§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_ || param1)
         {
            §§push(int(§§pop() * §5;§));
         }
         var _loc4_:* = §§pop();
         if(_loc6_ || param1)
         {
            this.§,]§.position = _loc4_ * §"c§;
            while(true)
            {
               this.§,]§.writeFloat(param2);
               loop1:
               while(_loc6_)
               {
                  while(true)
                  {
                     this.§,]§.writeFloat(param3);
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
         §§goto(addr76);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(int(§§pop() * §5;§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && param2))
         {
            this.§,]§.position = _loc3_ * §"c§;
            while(true)
            {
               param2.x = this.§,]§.readFloat();
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     param2.y = this.§,]§.readFloat();
                     if(!(_loc4_ && param2))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §^d§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(!_loc9_)
         {
            §§push(int(§§pop() * §0[§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§4i§[_loc6_ = _loc5_++] = this.§4i§[_loc6_] + param2;
         var _loc7_:*;
         this.§4i§[_loc7_ = _loc5_++] = this.§4i§[_loc7_] + param3;
         if(!_loc9_)
         {
            this.§4i§[_loc5_] += param4;
         }
      }
      
      public function §7F§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_)
         {
            §§push(int(§§pop() * §0[§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            this.§!L§[0] = this.§4i§[_loc3_];
         }
         loop0:
         do
         {
            this.§!L§[1] = this.§4i§[_loc3_ + 1];
            loop1:
            while(true)
            {
               this.§!L§[2] = this.§4i§[_loc3_ + 2];
               do
               {
                  param2.transformVectors(this.§!L§,this.§!L§);
                  continue loop1;
               }
               while(_loc4_);
               
               continue loop0;
            }
         }
         while(_loc4_ && param2);
         
      }
      
      public function §1!X§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param2))
         {
            §§push(param2);
            if(!(_loc7_ && this))
            {
               if(§§pop() < 0.001)
               {
                  if(_loc8_)
                  {
                     §§push(0.001);
                     if(!(_loc7_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(_loc8_ || param2)
                        {
                        }
                        §§goto(addr95);
                     }
                     param2 = §§pop();
                     if(_loc8_ || param2)
                     {
                        addr60:
                        if(!this.§[!k§)
                        {
                           §§push(Number(1));
                           if(!(_loc7_ && this))
                           {
                              addr94:
                              addr95:
                              var _loc3_:* = §§pop();
                              if(!(_loc7_ && this))
                              {
                                 §§push(_loc3_);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() / 255);
                                    if(!_loc7_)
                                    {
                                       addr110:
                                       §§push(Number(§§pop()));
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          _loc3_ = §§pop();
                                          §§goto(addr119);
                                       }
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr110);
                              }
                              addr119:
                              §§push(§9q§.§@g§(param1) * _loc3_);
                              if(!_loc7_)
                              {
                                 addr126:
                                 §§push(Number(§§pop()));
                              }
                              var _loc4_:* = §§pop();
                              §§push(§9q§.§!e§(param1) * _loc3_);
                              if(_loc8_ || param1)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc5_:* = §§pop();
                              §§push(§9q§.§6!1§(param1) * _loc3_);
                              if(_loc8_ || param1)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              if(_loc8_)
                              {
                                 this.§[!S§(0,this.§?!C§,_loc4_,_loc5_,_loc6_,param2);
                              }
                              return;
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr95);
                     }
                     §§push(param2);
                     if(!(_loc7_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr94);
                  }
               }
               §§goto(addr60);
            }
            §§goto(addr95);
         }
         §§goto(addr60);
      }
      
      public function §"!<§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(!_loc13_)
         {
            §§push(param6);
            if(_loc14_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc14_ || param3)
                  {
                     addr31:
                     §§push(0.001);
                     if(_loc14_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc13_)
                        {
                           param6 = §§pop();
                        }
                        addr49:
                        var _loc7_:int = §§pop();
                        var _loc8_:int = 0;
                     }
                     §§goto(addr48);
                  }
               }
               §§push(param1);
               if(!(_loc13_ && param1))
               {
                  addr48:
                  while(_loc8_ < param2)
                  {
                     var _loc9_:*;
                     this.§#!7§[_loc9_ = _loc7_++] = param3;
                     if(_loc14_)
                     {
                        var _loc10_:*;
                        this.§#!7§[_loc10_ = _loc7_++] = param4;
                        if(_loc14_ || param1)
                        {
                           var _loc11_:*;
                           this.§#!7§[_loc11_ = _loc7_++] = param5;
                           if(!_loc13_)
                           {
                              var _loc12_:*;
                              this.§#!7§[_loc12_ = _loc7_++] = param6;
                           }
                        }
                     }
                     if(_loc13_ && param1)
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
                  §§push(§§pop() * §-p§);
               }
            }
            §§goto(addr49);
         }
         §§goto(addr31);
      }
      
      public function §1#§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         if(!(_loc5_ && param1))
         {
            §§push(param2);
            if(_loc6_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc6_ || param2)
                  {
                     §§push(0.001);
                     if(_loc6_ || this)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc5_)
                        {
                           addr49:
                           param2 = §§pop();
                           if(_loc6_)
                           {
                              addr52:
                              §§push(param2);
                              if(!_loc5_)
                              {
                                 addr55:
                                 if(§§pop() == 1)
                                 {
                                    if(_loc6_)
                                    {
                                       return;
                                    }
                                    addr60:
                                    §§push(param1);
                                    if(!(_loc5_ && param1))
                                    {
                                       addr70:
                                       §§push(int(§§pop() * §-p§));
                                    }
                                    var _loc3_:* = §§pop();
                                    if(!(_loc5_ && this))
                                    {
                                       if(this.§[!k§)
                                       {
                                          if(_loc6_)
                                          {
                                             §§push(Number(this.§#!7§[_loc3_ + 3]));
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                             }
                                             addr222:
                                          }
                                          while(true)
                                          {
                                             §§push(param2);
                                             if(_loc5_ && this)
                                             {
                                                break;
                                             }
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() / _loc4_);
                                                if(_loc6_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   break;
                                                }
                                                break;
                                             }
                                             §§goto(addr222);
                                          }
                                          _loc4_ = §§pop();
                                          this.§#!7§[_loc3_] *= _loc4_;
                                          loop1:
                                          while(true)
                                          {
                                             this.§#!7§[_loc3_ + 1] *= _loc4_;
                                             addr169:
                                             while(true)
                                             {
                                                this.§#!7§[_loc3_ + 2] *= _loc4_;
                                                addr151:
                                                while(!_loc6_)
                                                {
                                                   continue loop1;
                                                }
                                                this.§#!7§[_loc3_ + 3] = param2;
                                             }
                                          }
                                          addr223:
                                          addr199:
                                       }
                                       else
                                       {
                                          this.§#!7§[_loc3_ + 3] *= param2;
                                          if(!_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr223);
                                                      }
                                                      else
                                                      {
                                                         addr126:
                                                      }
                                                      §§goto(addr80);
                                                   }
                                                   §§goto(addr199);
                                                }
                                                §§goto(addr169);
                                             }
                                             §§goto(addr151);
                                          }
                                       }
                                       addr80:
                                       return;
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr60);
                              }
                           }
                           §§goto(addr60);
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr49);
                  }
                  §§goto(addr60);
               }
               §§goto(addr52);
            }
            §§goto(addr55);
         }
         §§goto(addr60);
      }
      
      public function §0!-§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         if(_loc8_ || this)
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() == this.§[!k§)
               {
                  addr277:
               }
               while(true)
               {
                  §§push(param2);
                  if(_loc9_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     loop2:
                     for(; _loc8_ || _loc3_; if(!(_loc8_ || _loc3_))
                     {
                        continue;
                     },loop31:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc8_)
                        {
                           if(!_loc9_)
                           {
                              if(§§pop() >= _loc3_)
                              {
                                 if(_loc8_ || param2)
                                 {
                                    if(!_loc9_)
                                    {
                                       while(true)
                                       {
                                          this.§[!k§ = param1;
                                          §§goto(addr59);
                                       }
                                       addr55:
                                    }
                                    §§goto(addr107);
                                 }
                                 addr59:
                                 loop6:
                                 while(true)
                                 {
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       if(!(_loc9_ && this))
                                       {
                                          if(_loc8_ || _loc3_)
                                          {
                                             break;
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(!_loc9_)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(1);
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop10:
                                                         while(!_loc9_)
                                                         {
                                                            _loc7_ = §§pop();
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_);
                                                               if(_loc8_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(§§pop() != 0)
                                                                     {
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           if(_loc8_)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc8_ || this)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(§§pop() / _loc6_);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          addr129:
                                                                                          §§push(Number(§§pop()));
                                                                                          while(_loc8_)
                                                                                          {
                                                                                             if(_loc9_ && this)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             if(!(_loc9_ && _loc3_))
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                loop15:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§^K§(_loc4_,_loc7_);
                                                                                                   addr91:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc8_ || param1))
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc4_++;
                                                                                                         addr83:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               continue loop31;
                                                                                                            }
                                                                                                            addr214:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§[!k§);
                                                                                                               addr197:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        addr199:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           break loop11;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr198:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(1);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr203:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr202:
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr199);
                                                                                          }
                                                                                          continue loop10;
                                                                                          addr140:
                                                                                       }
                                                                                       §§goto(addr140);
                                                                                    }
                                                                                    while(!(_loc9_ && param1))
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    continue loop7;
                                                                                    addr179:
                                                                                 }
                                                                                 §§goto(addr129);
                                                                              }
                                                                              §§goto(addr198);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 break loop12;
                                                                              }
                                                                              addr163:
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 §§goto(addr179);
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    §§goto(addr214);
                                                                                 }
                                                                                 addr213:
                                                                              }
                                                                           }
                                                                           §§goto(addr203);
                                                                        }
                                                                        addr107:
                                                                     }
                                                                     §§goto(addr81);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr129);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr203);
                                                            }
                                                         }
                                                         addr212:
                                                         while(true)
                                                         {
                                                            §§goto(addr213);
                                                         }
                                                      }
                                                   }
                                                   addr188:
                                                }
                                                §§goto(addr163);
                                             }
                                             §§goto(addr197);
                                          }
                                       }
                                       §§goto(addr91);
                                    }
                                    §§goto(addr83);
                                 }
                                 return;
                              }
                              §§push(this.§-!n§(0));
                              §§goto(addr212);
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr188);
                     })
                     {
                        if(_loc9_ && param2)
                        {
                           §§goto(addr277);
                        }
                        §§push(this.§?!C§);
                        if(_loc8_ || param2)
                        {
                           §§push(int(§§pop() * §-p§));
                        }
                        loop3:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr272:
                           while(true)
                           {
                              §§push(0);
                              if(!_loc9_)
                              {
                                 _loc4_ = §§pop();
                                 if(!_loc9_)
                                 {
                                    continue loop2;
                                 }
                                 continue;
                              }
                              continue loop3;
                           }
                        }
                     }
                     continue;
                  }
                  §§goto(addr55);
               }
               continue;
               return;
            }
         }
         §§goto(addr272);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§[!k§;
      }
      
      public function get §8!B§() : int
      {
         return this.§?!C§;
      }
      
      public function set §8!B§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_loc5_)
         {
            §§push(param1);
            while(true)
            {
               §§push(§5;§);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_)
                  {
                     §§push(§§pop() * §"c§);
                     if(!_loc6_)
                     {
                        addr514:
                        §§push(§§pop() - this.§,]§.length);
                     }
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr520:
                        while(true)
                        {
                           §§push(int(this.§,]§.length));
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr514);
               }
            }
         }
         §§goto(addr441);
      }
      
      public function get §3!T§() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§,]§.position = 0;
         }
         return this.§,]§;
      }
      
      public function get §3!e§() : Vector.<Number>
      {
         return this.§#!7§;
      }
      
      public function get §#5§() : Vector.<Number>
      {
         return this.§4i§;
      }
   }
}
