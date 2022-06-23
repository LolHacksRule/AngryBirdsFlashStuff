package §@e§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §;2§
   {
      
      public static const §-Z§:int = 4;
      
      public static const §%]§:int = 2;
      
      public static const §%0§:int = 3;
      
      public static const §;;§:int = 4;
      
      public static const §-!8§:int = 0;
      
      public static const §>,§:int = 0;
      
      public static const § !<§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-Z§ = 4;
            §%]§ = 2;
            if(_loc2_ || §;2§)
            {
               §%0§ = 3;
               §;;§ = 4;
               if(_loc2_)
               {
                  addr50:
                  §-!8§ = 0;
                  §>,§ = 0;
                  § !<§ = 0;
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      private var §38§:ByteArray;
      
      private var §"L§:Vector.<Number>;
      
      private var §3H§:Vector.<Number>;
      
      private var §+!8§:Boolean;
      
      private var §2!2§:int;
      
      private var §%x§:Vector.<Number>;
      
      public function §;2§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            this.§%x§ = new Vector.<Number>(12,true);
            if(!(_loc4_ && this))
            {
               super();
               if(_loc5_ || _loc3_)
               {
                  §§goto(addr48);
               }
            }
            §§goto(addr71);
         }
         addr48:
         this.§38§ = new ByteArray();
         if(!_loc4_)
         {
            this.§38§.endian = Endian.LITTLE_ENDIAN;
            if(!_loc4_)
            {
               addr71:
               this.§38§.length = param1 * §%]§ * §;;§;
            }
         }
         var _loc3_:int = 0;
         do
         {
            if(_loc3_ >= param1 * §%]§)
            {
               this.§"L§ = new Vector.<Number>(param1 * §-Z§,true);
               this.§3H§ = new Vector.<Number>(param1 * §%0§,true);
               if(!_loc4_)
               {
                  this.§+!8§ = param2;
                  break;
               }
               §§goto(addr140);
            }
            this.§38§.writeFloat(0);
            if(!_loc5_)
            {
               break;
            }
            _loc3_++;
         }
         while(!(_loc4_ && param2));
         
         this.§2!2§ = param1;
         addr140:
      }
      
      public function clone() : §;2§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§;2§ = new §;2§(0,this.§+!8§);
         if(_loc2_)
         {
            _loc1_.§38§.length = this.§38§.length;
            _loc1_.§38§.writeBytes(this.§38§);
            if(!_loc3_)
            {
               _loc1_.§"L§ = this.§"L§.concat();
               if(!(_loc3_ && _loc1_))
               {
                  _loc1_.§"L§.fixed = true;
                  if(_loc2_ || _loc1_)
                  {
                     _loc1_.§3H§ = this.§3H§.concat();
                     §§goto(addr86);
                  }
               }
            }
            §§goto(addr97);
         }
         addr86:
         _loc1_.§3H§.fixed = true;
         if(_loc2_ || this)
         {
            addr97:
            _loc1_.§2!2§ = this.§2!2§;
         }
         return _loc1_;
      }
      
      public function copyTo(param1:§;2§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§3H§;
         if(!(_loc19_ && param1))
         {
            §§push(this.§2!2§);
            if(!(_loc19_ && this))
            {
               §§push(§%0§);
               if(!_loc19_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc19_ && param3))
                  {
                     §§push(int(§§pop()));
                     if(!(_loc19_ && param3))
                     {
                        _loc6_ = §§pop();
                        if(!(_loc19_ && param3))
                        {
                           addr76:
                           §§push(param2);
                           if(_loc18_ || this)
                           {
                              addr86:
                              §§push(int(§§pop() * §%0§));
                              if(!_loc19_)
                              {
                                 addr89:
                                 _loc7_ = §§pop();
                                 if(_loc18_ || param3)
                                 {
                                    if(param5)
                                    {
                                       if(_loc18_ || param1)
                                       {
                                          addr106:
                                          param5.transformVectors(this.§3H§,this.§%x§);
                                          if(_loc18_ || param1)
                                          {
                                             addr120:
                                             _loc8_ = 0;
                                             addr119:
                                          }
                                          loop0:
                                          while(true)
                                          {
                                             §§push(_loc8_);
                                             if(!_loc18_)
                                             {
                                                addr172:
                                                _loc8_ = §§pop();
                                                break;
                                             }
                                             §§push(_loc6_);
                                             if(_loc18_ || param3)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   var _loc14_:*;
                                                   _loc9_[_loc14_ = _loc7_++] = this.§%x§[_loc8_];
                                                   if(!(_loc19_ && param3))
                                                   {
                                                      if(!(_loc19_ && param1))
                                                      {
                                                         continue;
                                                      }
                                                      addr163:
                                                   }
                                                   else
                                                   {
                                                      loop1:
                                                      while(true)
                                                      {
                                                         _loc8_++;
                                                         if(!_loc19_)
                                                         {
                                                            break loop0;
                                                         }
                                                         break;
                                                         addr193:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               break loop1;
                                                            }
                                                            _loc9_[_loc14_ = _loc7_++] = this.§3H§[_loc8_];
                                                            continue loop1;
                                                         }
                                                      }
                                                   }
                                                   var _loc10_:ByteArray = param1.§38§;
                                                   §§push(this.§2!2§);
                                                   if(!_loc19_)
                                                   {
                                                      §§push(§%]§);
                                                      if(_loc18_ || param1)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc19_)
                                                         {
                                                            §§push(§;;§);
                                                            if(!_loc19_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc19_ && param1))
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(_loc18_ || param3)
                                                                  {
                                                                     addr232:
                                                                     _loc6_ = §§pop();
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(param2);
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§goto(addr238);
                                                                        }
                                                                        §§goto(addr254);
                                                                     }
                                                                     §§goto(addr275);
                                                                  }
                                                                  §§goto(addr238);
                                                               }
                                                               §§goto(addr247);
                                                            }
                                                            §§goto(addr310);
                                                         }
                                                         §§goto(addr254);
                                                      }
                                                      addr238:
                                                      §§push(§§pop() * §%]§);
                                                      if(!(_loc19_ && param3))
                                                      {
                                                         addr247:
                                                         §§push(§;;§);
                                                         if(_loc18_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc19_)
                                                            {
                                                               addr254:
                                                               _loc7_ = int(§§pop());
                                                               §§goto(addr253);
                                                            }
                                                            §§goto(addr311);
                                                         }
                                                         §§goto(addr312);
                                                      }
                                                      addr253:
                                                      if(_loc18_)
                                                      {
                                                         if(_loc10_.length < _loc7_ + _loc6_)
                                                         {
                                                            if(!(_loc19_ && param2))
                                                            {
                                                               _loc10_.length = _loc7_ + _loc6_;
                                                               addr275:
                                                               _loc10_.position = _loc7_;
                                                               if(!(_loc19_ && param2))
                                                               {
                                                                  _loc10_.writeBytes(this.§38§);
                                                                  §§goto(addr289);
                                                               }
                                                               §§goto(addr310);
                                                            }
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      addr289:
                                                      §§push(param4);
                                                      if(!_loc19_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc19_ && param1))
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(!(_loc19_ && this))
                                                               {
                                                                  §§pop();
                                                                  addr310:
                                                                  addr311:
                                                                  addr312:
                                                                  §§push(param3 == 1);
                                                                  if(!_loc18_)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr316);
                                                         }
                                                         §§push(!§§pop());
                                                      }
                                                      addr316:
                                                      if(§§pop())
                                                      {
                                                         _loc11_ = param1.§"L§;
                                                         if(!(_loc19_ && this))
                                                         {
                                                            §§push(this.§2!2§);
                                                            §§push(§-Z§);
                                                            if(!_loc19_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc19_ && param1))
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(!(_loc19_ && param1))
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     if(_loc18_ || param1)
                                                                     {
                                                                        addr368:
                                                                        §§push(param2);
                                                                        §§push(§-Z§);
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              if(_loc18_ || param3)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(param3);
                                                                                    if(!(_loc19_ && param1))
                                                                                    {
                                                                                       addr393:
                                                                                       if(§§pop() == 1)
                                                                                       {
                                                                                          if(!(_loc19_ && param2))
                                                                                          {
                                                                                             addr444:
                                                                                             §§push(0);
                                                                                             if(!(_loc19_ && param3))
                                                                                             {
                                                                                                _loc8_ = §§pop();
                                                                                             }
                                                                                             loop14:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         §§goto(addr665);
                                                                                                      }
                                                                                                      _loc11_[_loc14_ = _loc7_++] = this.§"L§[_loc8_];
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         if(_loc18_ || param3)
                                                                                                         {
                                                                                                            _loc8_++;
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         addr484:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc11_[_loc14_ = _loc7_++] = this.§"L§[_loc12_++] * _loc13_;
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               var _loc15_:*;
                                                                                                               _loc11_[_loc15_ = _loc7_++] = this.§"L§[_loc12_++] * _loc13_;
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  var _loc16_:*;
                                                                                                                  _loc11_[_loc16_ = _loc7_++] = this.§"L§[_loc12_++] * _loc13_;
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     var _loc17_:*;
                                                                                                                     _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        if(!(_loc19_ && this))
                                                                                                                        {
                                                                                                                           if(_loc18_ || param3)
                                                                                                                           {
                                                                                                                              addr568:
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr652:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc12_++;
                                                                                                                                       addr653:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc8_++;
                                                                                                                                          if(!(_loc19_ && param3))
                                                                                                                                          {
                                                                                                                                             addr661:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc8_);
                                                                                                                                                §§push(this.§2!2§);
                                                                                                                                                break loop14;
                                                                                                                                             }
                                                                                                                                             addr661:
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr665);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr571:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc11_[_loc15_ = _loc7_++] = this.§"L§[_loc12_++];
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc11_[_loc16_ = _loc7_++] = this.§"L§[_loc12_++];
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                             addr648:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr649:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr639:
                                                                                                                                       }
                                                                                                                                       §§goto(addr649);
                                                                                                                                    }
                                                                                                                                    addr612:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr651:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr652);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr595:
                                                                                                                           }
                                                                                                                           §§goto(addr612);
                                                                                                                        }
                                                                                                                        §§goto(addr649);
                                                                                                                     }
                                                                                                                     §§goto(addr648);
                                                                                                                  }
                                                                                                                  §§goto(addr639);
                                                                                                               }
                                                                                                               §§goto(addr568);
                                                                                                            }
                                                                                                            §§goto(addr651);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr571);
                                                                                                      §§goto(addr665);
                                                                                                   }
                                                                                                   addr447:
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   if(this.§+!8§)
                                                                                                   {
                                                                                                      §§push(Number(this.§"L§[_loc12_ + 3]));
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc13_ = §§pop();
                                                                                                         §§push(param3);
                                                                                                         if(_loc18_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop() / _loc13_);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               addr482:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               addr482:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc13_ = §§pop();
                                                                                                               §§goto(addr484);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr482);
                                                                                                      }
                                                                                                      addr469:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc11_[_loc14_ = _loc7_++] = this.§"L§[_loc12_++];
                                                                                                      if(!(_loc19_ && param1))
                                                                                                      {
                                                                                                         §§goto(addr595);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr651);
                                                                                                }
                                                                                                §§goto(addr665);
                                                                                             }
                                                                                             addr444:
                                                                                             addr664:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(!(_loc18_ || this))
                                                                                             {
                                                                                                addr450:
                                                                                                _loc12_ = §§pop();
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   _loc8_ = 0;
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr444);
                                                                                             §§goto(addr652);
                                                                                          }
                                                                                          §§goto(addr661);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(0);
                                                                                       }
                                                                                       §§goto(addr450);
                                                                                    }
                                                                                    §§goto(addr482);
                                                                                 }
                                                                                 §§goto(addr661);
                                                                              }
                                                                              §§goto(addr444);
                                                                           }
                                                                           §§goto(addr393);
                                                                        }
                                                                        §§goto(addr447);
                                                                     }
                                                                     §§goto(addr653);
                                                                  }
                                                                  §§goto(addr368);
                                                               }
                                                               §§goto(addr469);
                                                            }
                                                            §§goto(addr664);
                                                         }
                                                         §§goto(addr368);
                                                      }
                                                      addr665:
                                                      return;
                                                   }
                                                   §§goto(addr232);
                                                }
                                                §§goto(addr163);
                                             }
                                             §§goto(addr193);
                                          }
                                          while(true)
                                          {
                                             §§push(_loc8_);
                                          }
                                       }
                                       §§goto(addr119);
                                    }
                                    else
                                    {
                                       §§push(0);
                                       if(_loc18_ || param3)
                                       {
                                          §§goto(addr172);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr193);
                                    }
                                 }
                                 §§goto(addr119);
                              }
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr120);
                  }
               }
               §§goto(addr86);
            }
            §§goto(addr89);
         }
         §§goto(addr76);
      }
      
      public function append(param1:§;2§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:int = this.§38§.length;
         if(_loc10_)
         {
            this.§38§.length += param1.§38§.length;
            if(!_loc9_)
            {
               this.§38§.position = _loc2_;
               if(!(_loc9_ && _loc3_))
               {
                  this.§38§.writeBytes(param1.§38§);
                  if(!(_loc9_ && _loc3_))
                  {
                     addr59:
                     this.§"L§.fixed = false;
                  }
               }
               §§goto(addr59);
            }
            var _loc3_:Vector.<Number> = param1.§"L§;
            var _loc4_:int = _loc3_.length;
            var _loc5_:int = 0;
            while(true)
            {
               if(_loc5_ >= _loc4_)
               {
                  if(_loc10_)
                  {
                     this.§"L§.fixed = true;
                     if(_loc10_)
                     {
                        break;
                     }
                     addr111:
                     var _loc6_:Vector.<Number>;
                     var _loc7_:int = (_loc6_ = param1.§3H§).length;
                     var _loc8_:int = 0;
                     if(_loc10_)
                     {
                        while(true)
                        {
                           if(_loc8_ < _loc7_)
                           {
                              this.§3H§.push(_loc6_[_loc8_]);
                              if(_loc9_ && param1)
                              {
                                 break;
                              }
                              continue;
                           }
                           if(_loc10_ || param1)
                           {
                              addr166:
                              this.§3H§.fixed = true;
                              if(_loc10_ || _loc2_)
                              {
                                 addr177:
                                 this.§2!2§ += param1.§2!5§;
                                 break;
                              }
                              break;
                           }
                        }
                        return;
                     }
                     §§goto(addr177);
                  }
                  break;
               }
               this.§"L§.push(_loc3_[_loc5_]);
               if(_loc9_)
               {
                  break;
               }
               _loc5_++;
               if(!_loc10_)
               {
                  break;
               }
            }
            this.§3H§.fixed = false;
            §§goto(addr111);
         }
         §§goto(addr59);
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(_loc9_ || param2)
         {
            §§push(int(§§pop() * §%0§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§3H§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§3H§[_loc7_ = _loc5_++] = param3;
         if(!(_loc8_ && param1))
         {
            this.§3H§[_loc5_] = param4;
         }
      }
      
      public function §3!E§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(!_loc6_)
         {
            §§push(int(§§pop() * §%0§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§3H§[_loc5_ = _loc4_++] = param2;
         if(!_loc6_)
         {
            this.§3H§[_loc4_] = param3;
         }
      }
      
      public function §`j§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(int(§§pop() * §%0§));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            param2.x = this.§3H§[_loc3_++];
            if(!(_loc4_ && _loc3_))
            {
               param2.y = this.§3H§[_loc3_++];
               if(_loc5_ || _loc3_)
               {
               }
               §§goto(addr84);
            }
            param2.z = this.§3H§[_loc3_];
         }
         addr84:
      }
      
      public function §6!%§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            if(this.§+!8§)
            {
               addr21:
               §§push(param3);
               if(!(_loc9_ && param3))
               {
                  §§push(Number(§§pop()));
                  if(!_loc8_)
                  {
                  }
                  §§goto(addr38);
               }
               addr37:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(_loc8_)
               {
                  §§goto(addr37);
               }
            }
            addr38:
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(!(_loc9_ && param2))
            {
               §§push(§§pop() / 255);
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc8_)
                  {
                  }
                  §§goto(addr73);
               }
               _loc4_ = §§pop();
               §§push(§=!2§.§`_§(param2) * _loc4_);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
            }
            addr73:
            var _loc5_:* = §§pop();
            §§push(§=!2§.§"!5§(param2) * _loc4_);
            if(_loc8_ || this)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(§=!2§.§+L§(param2) * _loc4_);
            if(!(_loc9_ && this))
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(_loc8_)
            {
               this.§&a§(param1,1,_loc5_,_loc6_,_loc7_,param3);
            }
            return;
         }
         §§goto(addr21);
      }
      
      private function §&a§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         §§push(param1);
         if(_loc14_)
         {
            §§push(int(§§pop() * §-Z§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(!(_loc13_ && param2))
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
               this.§"L§[_loc9_ = _loc7_++] = param3;
               if(_loc14_)
               {
                  var _loc10_:*;
                  this.§"L§[_loc10_ = _loc7_++] = param4;
                  if(_loc14_ || param2)
                  {
                     var _loc11_:*;
                     this.§"L§[_loc11_ = _loc7_++] = param5;
                     if(_loc14_ || param2)
                     {
                        var _loc12_:*;
                        this.§"L§[_loc12_ = _loc7_++] = param6;
                     }
                  }
               }
               if(_loc13_)
               {
                  break;
               }
               §§push(_loc8_);
               if(_loc14_ || param1)
               {
                  §§push(§§pop() - 1);
                  if(!(_loc13_ && param2))
                  {
                     continue loop0;
                  }
               }
            }
            addr146:
            return;
         }
      }
      
      private function §-B§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(int(§§pop() * §-Z§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§"L§[_loc4_ = _loc3_++] = this.§"L§[_loc4_] * param2;
         var _loc5_:*;
         this.§"L§[_loc5_ = _loc3_++] = this.§"L§[_loc5_] * param2;
         var _loc6_:*;
         this.§"L§[_loc6_ = _loc3_++] = this.§"L§[_loc6_] * param2;
         if(_loc8_ || param1)
         {
            this.§"L§[_loc3_] *= param2;
         }
      }
      
      public function §+!+§(param1:int) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         §§push(param1);
         if(!(_loc8_ && _loc2_))
         {
            §§push(int(§§pop() * §-Z§));
         }
         var _loc2_:* = §§pop();
         if(_loc7_)
         {
            if(this.§+!8§)
            {
               addr39:
               §§push(Number(this.§"L§[_loc2_ + 3]));
               if(!(_loc8_ && param1))
               {
                  addr58:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(Number(1));
               if(_loc7_)
               {
                  §§goto(addr58);
               }
            }
            var _loc3_:* = §§pop();
            if(_loc3_ == 0)
            {
               §§push(0);
               if(!_loc8_)
               {
                  return §§pop();
               }
            }
            else
            {
               §§push(255);
            }
            §§push(§§pop() / _loc3_);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
               if(_loc7_ || param1)
               {
                  §§goto(addr92);
               }
               §§goto(addr155);
            }
            addr92:
            _loc3_ = §§pop();
            if(_loc7_)
            {
               §§push(this.§"L§[_loc2_] * _loc3_);
               if(!(_loc8_ && _loc2_))
               {
                  §§goto(addr156);
               }
               addr155:
               _loc6_ = §§pop();
            }
            addr156:
            §§push(Number(§§pop()));
            if(_loc7_)
            {
               _loc4_ = §§pop();
               §§push(this.§"L§[_loc2_ + 1] * _loc3_);
               if(_loc7_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            _loc5_ = §§pop();
            if(_loc7_ || this)
            {
               §§push(this.§"L§[_loc2_ + 2] * _loc3_);
            }
            return §=!2§.§&`§(_loc4_,_loc5_,_loc6_);
         }
         §§goto(addr39);
      }
      
      public function §?n§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         §§push(param2);
         if(!(_loc5_ && param2))
         {
            if(§§pop() < 0.001)
            {
               §§push(0.001);
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc5_ && _loc3_))
                  {
                     §§goto(addr49);
                  }
                  §§goto(addr80);
               }
               addr49:
               param2 = §§pop();
               §§goto(addr50);
            }
            addr50:
            if(this.§+!8§)
            {
               this.§6!%§(param1,this.§+!+§(param1),param2);
            }
            else
            {
               §§push(param1);
               if(!_loc5_)
               {
                  §§push(§§pop() * §-Z§);
                  if(!_loc5_)
                  {
                     addr80:
                     §§push(int(§§pop() + 3));
                  }
                  §§goto(addr80);
               }
               _loc3_ = §§pop();
               if(_loc4_ || _loc3_)
               {
                  this.§"L§[_loc3_] = param2;
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function §,!8§(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop() * §-Z§);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§"L§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_)
         {
            §§push(int(§§pop() * §%]§));
         }
         var _loc4_:* = §§pop();
         if(_loc6_ || param2)
         {
            this.§38§.position = _loc4_ * §;;§;
            if(!(_loc5_ && param3))
            {
               this.§38§.writeFloat(param2);
               if(!(_loc5_ && param2))
               {
                  addr75:
                  this.§38§.writeFloat(param3);
               }
               return;
            }
         }
         §§goto(addr75);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(int(§§pop() * §%]§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            this.§38§.position = _loc3_ * §;;§;
            if(!(_loc4_ && param2))
            {
               param2.x = this.§38§.readFloat();
               if(!_loc5_)
               {
               }
               §§goto(addr71);
            }
            param2.y = this.§38§.readFloat();
         }
         addr71:
      }
      
      public function §&!>§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(_loc9_ || param2)
         {
            §§push(int(§§pop() * §%0§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§3H§[_loc6_ = _loc5_++] = this.§3H§[_loc6_] + param2;
         var _loc7_:*;
         this.§3H§[_loc7_ = _loc5_++] = this.§3H§[_loc7_] + param3;
         if(!(_loc8_ && param2))
         {
            this.§3H§[_loc5_] += param4;
         }
      }
      
      public function §-W§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || param2)
         {
            §§push(int(§§pop() * §%0§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param2)
         {
            this.§%x§[0] = this.§3H§[_loc3_];
            this.§%x§[1] = this.§3H§[_loc3_ + 1];
            this.§%x§[2] = this.§3H§[_loc3_ + 2];
            if(_loc5_ || this)
            {
               param2.transformVectors(this.§%x§,this.§%x§);
               addr97:
               this.§3H§[_loc3_] = this.§%x§[0];
               this.§3H§[_loc3_ + 1] = this.§%x§[1];
            }
            this.§3H§[_loc3_ + 2] = this.§%x§[2];
            return;
         }
         §§goto(addr97);
      }
      
      public function §,!#§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            §§push(param2);
            if(!_loc7_)
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc7_)
                  {
                     §§push(0.001);
                     if(!_loc7_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc8_ || this)
                        {
                           param2 = §§pop();
                           if(_loc8_)
                           {
                              addr40:
                              if(this.§+!8§)
                              {
                                 addr43:
                                 §§push(param2);
                                 if(_loc8_ || this)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc8_ || _loc3_)
                                    {
                                    }
                                    addr80:
                                    var _loc3_:* = §§pop();
                                    if(_loc8_)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() / 255);
                                          if(_loc8_ || param1)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc7_ && param2))
                                             {
                                                _loc3_ = §§pop();
                                                addr104:
                                                §§push(§=!2§.§`_§(param1) * _loc3_);
                                                if(_loc8_)
                                                {
                                                   addr111:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc4_:* = §§pop();
                                             §§push(§=!2§.§"!5§(param1) * _loc3_);
                                             if(_loc8_ || this)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc5_:* = §§pop();
                                             §§push(§=!2§.§+L§(param1) * _loc3_);
                                             if(!(_loc7_ && param2))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc6_:* = §§pop();
                                             if(!_loc7_)
                                             {
                                                this.§&a§(0,this.§2!2§,_loc4_,_loc5_,_loc6_,param2);
                                             }
                                             return;
                                          }
                                       }
                                       §§goto(addr111);
                                    }
                                    §§goto(addr104);
                                 }
                              }
                              else
                              {
                                 §§push(Number(1));
                                 if(_loc7_ && this)
                                 {
                                 }
                                 §§goto(addr80);
                              }
                              §§goto(addr80);
                           }
                           §§goto(addr43);
                        }
                     }
                     §§goto(addr80);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr43);
               }
               §§goto(addr40);
            }
            §§goto(addr80);
         }
         §§goto(addr40);
      }
      
      public function §`!-§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_ || param2)
         {
            §§push(param6);
            if(_loc14_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc14_ || this)
                  {
                     addr36:
                     §§push(0.001);
                     if(!_loc13_)
                     {
                        addr39:
                        §§push(Number(§§pop()));
                        if(_loc14_)
                        {
                           param6 = §§pop();
                           §§goto(addr43);
                        }
                     }
                     §§goto(addr53);
                  }
               }
               addr43:
               §§push(param1);
               if(!(_loc13_ && param3))
               {
                  addr53:
                  §§push(int(§§pop() * §-Z§));
               }
               var _loc7_:* = §§pop();
               var _loc8_:int = 0;
               while(_loc8_ < param2)
               {
                  var _loc9_:*;
                  this.§"L§[_loc9_ = _loc7_++] = param3;
                  if(!(_loc13_ && param1))
                  {
                     var _loc10_:*;
                     this.§"L§[_loc10_ = _loc7_++] = param4;
                     if(!_loc13_)
                     {
                        var _loc11_:*;
                        this.§"L§[_loc11_ = _loc7_++] = param5;
                        if(!(_loc13_ && this))
                        {
                           var _loc12_:*;
                           this.§"L§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(!_loc14_)
                  {
                     break;
                  }
                  _loc8_++;
                  if(!_loc14_)
                  {
                     break;
                  }
               }
               return;
            }
            §§goto(addr39);
         }
         §§goto(addr36);
      }
      
      public function §0!?§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         if(!_loc6_)
         {
            §§push(param2);
            if(!(_loc6_ && this))
            {
               if(§§pop() < 0.001)
               {
                  if(_loc5_ || param1)
                  {
                     §§push(0.001);
                     if(!(_loc6_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(_loc5_ || this)
                        {
                           param2 = §§pop();
                           if(!_loc6_)
                           {
                              addr56:
                              §§push(param2);
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr64:
                                 if(§§pop() == 1)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§goto(addr68);
                                    }
                                 }
                                 §§push(param1);
                                 if(_loc5_)
                                 {
                                    addr74:
                                    §§push(int(§§pop() * §-Z§));
                                 }
                                 var _loc3_:* = §§pop();
                                 if(!(_loc6_ && param2))
                                 {
                                    if(this.§+!8§)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(Number(this.§"L§[_loc3_ + 3]));
                                          if(_loc5_)
                                          {
                                             _loc4_ = §§pop();
                                             §§goto(addr108);
                                          }
                                          §§goto(addr115);
                                       }
                                       §§goto(addr108);
                                    }
                                    else
                                    {
                                       this.§"L§[_loc3_ + 3] *= param2;
                                    }
                                    addr108:
                                    §§push(param2);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() / _loc4_);
                                       if(!_loc6_)
                                       {
                                          addr115:
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    _loc4_ = §§pop();
                                    this.§"L§[_loc3_] *= _loc4_;
                                    if(!(_loc6_ && param1))
                                    {
                                       addr134:
                                       this.§"L§[_loc3_ + 1] *= _loc4_;
                                    }
                                    this.§"L§[_loc3_ + 2] *= _loc4_;
                                    this.§"L§[_loc3_ + 3] = param2;
                                    return;
                                 }
                                 §§goto(addr134);
                              }
                           }
                           §§goto(addr68);
                        }
                     }
                     §§goto(addr74);
                  }
                  addr68:
                  return;
               }
               §§goto(addr56);
            }
            §§goto(addr64);
         }
         §§goto(addr56);
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         if(!_loc9_)
         {
            §§push(param1);
            if(_loc8_ || this)
            {
               if(§§pop() == this.§+!8§)
               {
                  if(!_loc9_)
                  {
                     return;
                  }
                  addr48:
                  §§push(this.§2!2§);
                  if(_loc8_ || this)
                  {
                     §§push(int(§§pop() * §-Z§));
                     if(_loc8_)
                     {
                        addr62:
                        _loc3_ = §§pop();
                        if(!_loc9_)
                        {
                           addr66:
                           _loc4_ = 0;
                        }
                        loop0:
                        while(true)
                        {
                           §§push(_loc4_);
                           while(true)
                           {
                              if(§§pop() >= _loc3_)
                              {
                                 if(!_loc9_)
                                 {
                                    addr223:
                                    this.§+!8§ = param1;
                                 }
                                 return;
                              }
                              §§push(this.§,!8§(0));
                              if(_loc8_ || this)
                              {
                                 _loc5_ = §§pop();
                                 if(!_loc9_)
                                 {
                                    §§push(this.§+!8§);
                                    if(!(_loc9_ && param1))
                                    {
                                       if(§§pop())
                                       {
                                          §§push(Number(_loc5_));
                                          if(!_loc9_)
                                          {
                                             addr112:
                                             §§push(Number(§§pop()));
                                             if(_loc8_ || param1)
                                             {
                                                _loc6_ = §§pop();
                                                addr122:
                                                if(param1)
                                                {
                                                   if(!(_loc9_ && this))
                                                   {
                                                      addr130:
                                                      §§push(_loc5_);
                                                      if(_loc8_ || param2)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc9_ && this))
                                                         {
                                                            addr163:
                                                            §§push(Number(§§pop()));
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               addr171:
                                                               _loc7_ = §§pop();
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  addr180:
                                                                  if(_loc6_ != 0)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§push(_loc7_);
                                                                     if(_loc8_ || _loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc7_ = Number(§§pop());
                                                                     addr213:
                                                                     this.§-B§(_loc4_,_loc7_);
                                                                     addr211:
                                                                  }
                                                               }
                                                               _loc4_++;
                                                               continue loop0;
                                                            }
                                                            §§goto(addr180);
                                                            addr146:
                                                         }
                                                         §§goto(addr171);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr213);
                                                }
                                                else
                                                {
                                                   §§push(1);
                                                   if(_loc9_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   addr155:
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      §§goto(addr163);
                                                   }
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr211);
                                          }
                                          §§goto(addr146);
                                       }
                                       else
                                       {
                                          §§push(1);
                                          if(!_loc9_)
                                          {
                                             §§goto(addr112);
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr122);
                                 }
                                 §§goto(addr130);
                              }
                              break;
                           }
                           §§push(§§pop() / _loc6_);
                           if(_loc8_ || _loc3_)
                           {
                              §§goto(addr213);
                           }
                           §§goto(addr212);
                        }
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr62);
               }
               else
               {
                  addr45:
                  if(param2)
                  {
                     if(!_loc9_)
                     {
                        §§goto(addr48);
                     }
                     §§goto(addr62);
                  }
               }
               §§goto(addr223);
            }
         }
         §§goto(addr45);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§+!8§;
      }
      
      public function get §2!5§() : int
      {
         return this.§2!2§;
      }
      
      public function set §2!5§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_ || _loc3_)
            {
               §§push(§%]§);
               if(!_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() * §;;§);
                     if(!(_loc6_ && _loc3_))
                     {
                        addr52:
                        §§push(§§pop() - this.§38§.length);
                     }
                     §§push(int(§§pop()));
                     if(!(_loc6_ && this))
                     {
                        _loc2_ = §§pop();
                        if(!_loc6_)
                        {
                           §§push(int(this.§38§.length));
                           if(!(_loc6_ && param1))
                           {
                              addr78:
                              _loc4_ = §§pop();
                              this.§38§.length += _loc2_;
                              §§push(_loc2_);
                              if(_loc5_)
                              {
                                 addr90:
                                 if(§§pop() > 0)
                                 {
                                    this.§38§.position = _loc4_;
                                    addr97:
                                    _loc3_ = 0;
                                    addr98:
                                    loop9:
                                    while(true)
                                    {
                                       if(_loc3_ < _loc2_ / §;;§)
                                       {
                                          continue;
                                       }
                                       if(!(_loc6_ && param1))
                                       {
                                          addr124:
                                          this.§"L§.fixed = false;
                                          §§push(param1 * §-Z§);
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§push(§§pop() - this.§"L§.length);
                                             if(_loc5_)
                                             {
                                                addr144:
                                                §§push(int(§§pop()));
                                                if(_loc5_ || param1)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(0);
                                                      if(_loc5_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  if(§§pop() < _loc2_)
                                                                  {
                                                                     this.§"L§.push(0);
                                                                     if(!_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     §§push(int(_loc2_));
                                                                     if(_loc5_)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        loop7:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              if(§§pop() < 0)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              this.§"L§.fixed = true;
                                                                              this.§3H§.fixed = false;
                                                                              if(_loc5_)
                                                                              {
                                                                                 break loop9;
                                                                              }
                                                                              §§push(0);
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 addr259:
                                                                                 _loc3_ = §§pop();
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    loop0:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                this.§3H§.push(0);
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(!(_loc6_ && this))
                                                                                                {
                                                                                                   break loop7;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                break loop0;
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   this.§3H§.fixed = true;
                                                                                                   addr346:
                                                                                                   this.§2!2§ = param1;
                                                                                                   break;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             this.§3H§.pop();
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                break loop6;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          addr349:
                                                                                          return;
                                                                                          addr334:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr268);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr334);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§push(int(§§pop()));
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           addr299:
                                                                           _loc3_ = §§pop();
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              §§goto(addr307);
                                                                           }
                                                                           §§goto(addr346);
                                                                        }
                                                                        §§goto(addr333);
                                                                     }
                                                                     §§goto(addr259);
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc3_++;
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     §§goto(addr332);
                                                                  }
                                                                  §§goto(addr349);
                                                               }
                                                               addr191:
                                                            }
                                                            break;
                                                         }
                                                         addr250:
                                                         _loc2_ = §§pop();
                                                         §§goto(addr251);
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr299);
                                             }
                                             addr245:
                                             §§goto(addr250);
                                             §§push(int(§§pop() - this.§3H§.length));
                                          }
                                          §§goto(addr144);
                                       }
                                       §§goto(addr346);
                                    }
                                    §§push(param1);
                                    if(!_loc6_)
                                    {
                                       §§push(§%0§);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_ && param1)
                                          {
                                          }
                                          §§goto(addr245);
                                       }
                                       §§goto(addr349);
                                    }
                                    §§goto(addr250);
                                 }
                                 §§goto(addr124);
                              }
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr52);
               }
               §§goto(addr90);
            }
            §§goto(addr78);
         }
         §§goto(addr97);
      }
      
      public function get §&!#§() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§38§.position = 0;
         }
         return this.§38§;
      }
      
      public function get §;!3§() : Vector.<Number>
      {
         return this.§"L§;
      }
      
      public function get §13§() : Vector.<Number>
      {
         return this.§3H§;
      }
   }
}
