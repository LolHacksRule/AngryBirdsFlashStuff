package §6x§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §9!§
   {
      
      public static const §#!R§:int = 4;
      
      public static const §4>§:int = 2;
      
      public static const §1W§:int = 3;
      
      public static const §`!E§:int = 4;
      
      public static const §3!V§:int = 0;
      
      public static const §5Q§:int = 0;
      
      public static const §<!l§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §#!R§ = 4;
            §4>§ = 2;
            if(_loc2_ || _loc2_)
            {
               §1W§ = 3;
               §`!E§ = 4;
               §3!V§ = 0;
               if(!_loc1_)
               {
                  addr63:
                  §5Q§ = 0;
                  if(_loc2_ || _loc2_)
                  {
                     addr73:
                     §<!l§ = 0;
                  }
               }
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr73);
      }
      
      private var §4<§:ByteArray;
      
      private var §%!<§:Vector.<Number>;
      
      private var §[!J§:Vector.<Number>;
      
      private var §2!'§:Boolean;
      
      private var §+`§:int;
      
      private var §[-§:Vector.<Number>;
      
      public function §9!§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§[-§ = new Vector.<Number>(12,true);
            if(_loc5_ || param2)
            {
               super();
               if(!_loc4_)
               {
                  addr38:
                  this.§4<§ = new ByteArray();
                  if(!(_loc4_ && _loc3_))
                  {
                     this.§4<§.endian = Endian.LITTLE_ENDIAN;
                     if(_loc5_ || param1)
                     {
                        addr71:
                        this.§4<§.length = param1 * §4>§ * §`!E§;
                     }
                  }
               }
               var _loc3_:int = 0;
               while(_loc3_ < param1 * §4>§)
               {
                  this.§4<§.writeFloat(0);
                  _loc3_++;
               }
               this.§%!<§ = new Vector.<Number>(param1 * §#!R§,true);
               this.§[!J§ = new Vector.<Number>(param1 * §1W§,true);
               this.§2!'§ = param2;
               this.§+`§ = param1;
               return;
            }
            §§goto(addr71);
         }
         §§goto(addr38);
      }
      
      public function clone() : §9!§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§9!§ = new §9!§(0,this.§2!'§);
         _loc1_.§4<§.length = this.§4<§.length;
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.§4<§.writeBytes(this.§4<§);
            if(_loc3_ || _loc3_)
            {
               addr59:
               _loc1_.§%!<§ = this.§%!<§.concat();
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr81);
               }
               §§goto(addr94);
            }
            addr81:
            _loc1_.§%!<§.fixed = true;
            if(_loc3_)
            {
               _loc1_.§[!J§ = this.§[!J§.concat();
               if(!_loc2_)
               {
                  addr94:
                  _loc1_.§[!J§.fixed = true;
                  if(_loc2_)
                  {
                  }
                  §§goto(addr104);
               }
               _loc1_.§+`§ = this.§+`§;
            }
            addr104:
            return _loc1_;
         }
         §§goto(addr59);
      }
      
      public function copyTo(param1:§9!§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§[!J§;
         if(!(_loc18_ && this))
         {
            §§push(this.§+`§);
            if(!_loc18_)
            {
               §§push(§1W§);
               if(!_loc18_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc18_ && param2))
                  {
                     §§push(int(§§pop()));
                     if(_loc19_)
                     {
                        addr59:
                        _loc6_ = §§pop();
                        if(!_loc18_)
                        {
                           §§push(param2);
                           if(!(_loc18_ && param2))
                           {
                              addr72:
                              addr71:
                              §§push(int(§§pop() * §1W§));
                              if(!_loc19_)
                              {
                              }
                              addr106:
                              _loc8_ = §§pop();
                              addr107:
                              do
                              {
                                 §§push(_loc8_);
                                 if(_loc19_)
                                 {
                                    §§push(_loc6_);
                                    if(_loc19_)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          break;
                                       }
                                       addr182:
                                       var _loc14_:*;
                                       _loc9_[_loc14_ = _loc7_++] = this.§[-§[_loc8_];
                                       if(!(_loc18_ && param1))
                                       {
                                          if(!_loc18_)
                                          {
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          loop1:
                                          while(true)
                                          {
                                             addr178:
                                             while(true)
                                             {
                                                _loc8_++;
                                                addr179:
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   addr180:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      continue loop1;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       var _loc10_:ByteArray = param1.§4<§;
                                       if(_loc19_ || this)
                                       {
                                          §§push(this.§+`§);
                                          if(_loc19_ || this)
                                          {
                                             §§push(§4>§);
                                             if(_loc19_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc19_ || this)
                                                {
                                                   §§push(§`!E§);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc18_ && param2))
                                                      {
                                                         addr224:
                                                         §§push(int(§§pop()));
                                                         if(_loc19_ || param1)
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(!_loc18_)
                                                            {
                                                               §§push(param2);
                                                               if(!(_loc18_ && param2))
                                                               {
                                                                  addr243:
                                                                  §§push(§§pop() * §4>§);
                                                                  if(!_loc18_)
                                                                  {
                                                                     addr247:
                                                                     §§push(§`!E§);
                                                                     if(_loc19_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc18_)
                                                                        {
                                                                           addr254:
                                                                           _loc7_ = int(§§pop());
                                                                           addr253:
                                                                           if(_loc19_ || this)
                                                                           {
                                                                              if(_loc10_.length < _loc7_ + _loc6_)
                                                                              {
                                                                                 if(_loc19_ || this)
                                                                                 {
                                                                                    _loc10_.length = _loc7_ + _loc6_;
                                                                                    if(_loc19_ || param3)
                                                                                    {
                                                                                       addr287:
                                                                                       _loc10_.position = _loc7_;
                                                                                       if(!(_loc18_ && this))
                                                                                       {
                                                                                          _loc10_.writeBytes(this.§4<§);
                                                                                          addr301:
                                                                                          §§push(param4);
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr313:
                                                                                                      §§push(param3 == 1);
                                                                                                      if(!(_loc18_ && param3))
                                                                                                      {
                                                                                                         addr332:
                                                                                                         §§push(!§§pop());
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr332);
                                                                                                }
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr334:
                                                                                                _loc11_ = param1.§%!<§;
                                                                                                §§push(this.§+`§);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(§#!R§);
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      §§push(int(§§pop() * §§pop()));
                                                                                                      if(_loc19_ || param3)
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         §§push(param2);
                                                                                                         §§push(§#!R§);
                                                                                                         if(!(_loc18_ && param3))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               _loc7_ = int(§§pop());
                                                                                                               §§push(param3);
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  if(§§pop() == 1)
                                                                                                                  {
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(_loc19_ || param2)
                                                                                                                        {
                                                                                                                           _loc8_ = §§pop();
                                                                                                                           loop2:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 addr412:
                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                 _loc8_ = 0;
                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                 {
                                                                                                                                    §§goto(addr660);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop() >= §§pop())
                                                                                                                                       {
                                                                                                                                          §§goto(addr664);
                                                                                                                                       }
                                                                                                                                       _loc11_[_loc14_ = _loc7_++] = this.§%!<§[_loc8_];
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          continue loop2;
                                                                                                                                       }
                                                                                                                                       addr556:
                                                                                                                                       addr556:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          break loop2;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr409:
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              loop20:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                 {
                                                                                                                                    if(this.§2!'§)
                                                                                                                                    {
                                                                                                                                       §§push(Number(this.§%!<§[_loc12_ + 3]));
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                             §§push(param3);
                                                                                                                                          }
                                                                                                                                          addr436:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop() / _loc13_));
                                                                                                                                          addr441:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                             if(_loc19_ || param2)
                                                                                                                                             {
                                                                                                                                                _loc11_[_loc14_ = _loc7_++] = this.§%!<§[_loc12_++] * _loc13_;
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   var _loc15_:*;
                                                                                                                                                   _loc11_[_loc15_ = _loc7_++] = this.§%!<§[_loc12_++] * _loc13_;
                                                                                                                                                   if(!(_loc18_ && param3))
                                                                                                                                                   {
                                                                                                                                                      var _loc16_:*;
                                                                                                                                                      _loc11_[_loc16_ = _loc7_++] = this.§%!<§[_loc12_++] * _loc13_;
                                                                                                                                                      if(_loc19_ || this)
                                                                                                                                                      {
                                                                                                                                                         var _loc17_:*;
                                                                                                                                                         _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                         if(!(_loc18_ && param2))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc18_ && param3))
                                                                                                                                                            {
                                                                                                                                                               addr540:
                                                                                                                                                               if(_loc19_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc19_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr556);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc11_[_loc15_ = _loc7_++] = this.§%!<§[_loc12_++];
                                                                                                                                                                        if(!(_loc18_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc11_[_loc16_ = _loc7_++] = this.§%!<§[_loc12_++];
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                                    addr638:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr619:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr602:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr580:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  addr641:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        addr644:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc12_++;
                                                                                                                                                                           if(_loc19_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc8_++;
                                                                                                                                                                                 if(!(_loc19_ || this))
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop20;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr664:
                                                                                                                                                                              return;
                                                                                                                                                                              addr652:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr660);
                                                                                                                                                                        }
                                                                                                                                                                        addr644:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr664);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr619);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr638);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr540);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr602);
                                                                                                                                                }
                                                                                                                                                §§goto(addr641);
                                                                                                                                             }
                                                                                                                                             §§goto(addr644);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       _loc11_[_loc14_ = _loc7_++] = this.§%!<§[_loc12_++];
                                                                                                                                       if(!(_loc18_ && this))
                                                                                                                                       {
                                                                                                                                          §§goto(addr580);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr641);
                                                                                                                                 }
                                                                                                                                 §§goto(addr664);
                                                                                                                              }
                                                                                                                              §§goto(addr660);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr644);
                                                                                                                              §§goto(addr556);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr412);
                                                                                                                     }
                                                                                                                     §§goto(addr652);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr412);
                                                                                                                     §§push(0);
                                                                                                                  }
                                                                                                                  §§goto(addr412);
                                                                                                               }
                                                                                                               §§goto(addr436);
                                                                                                            }
                                                                                                            §§goto(addr441);
                                                                                                         }
                                                                                                         §§goto(addr409);
                                                                                                      }
                                                                                                      §§goto(addr406);
                                                                                                   }
                                                                                                   §§goto(addr663);
                                                                                                }
                                                                                                §§goto(addr412);
                                                                                             }
                                                                                             §§goto(addr664);
                                                                                          }
                                                                                          §§goto(addr332);
                                                                                       }
                                                                                       §§goto(addr301);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr334);
                                                                              }
                                                                           }
                                                                           §§goto(addr287);
                                                                        }
                                                                     }
                                                                     §§goto(addr313);
                                                                  }
                                                                  §§goto(addr253);
                                                               }
                                                               §§goto(addr254);
                                                            }
                                                            §§goto(addr301);
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                   §§goto(addr313);
                                                }
                                                §§goto(addr224);
                                             }
                                          }
                                          §§goto(addr243);
                                       }
                                       §§goto(addr313);
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr180);
                              }
                              while(_loc8_++, _loc19_ || param3);
                              
                              §§goto(addr182);
                           }
                           _loc7_ = §§pop();
                           if(_loc19_ || param3)
                           {
                              if(param5)
                              {
                                 if(_loc19_ || param2)
                                 {
                                    addr92:
                                    param5.transformVectors(this.§[!J§,this.§[-§);
                                    if(_loc19_ || param2)
                                    {
                                       addr105:
                                       §§goto(addr106);
                                       §§push(0);
                                    }
                                 }
                                 §§goto(addr107);
                              }
                              else
                              {
                                 §§push(0);
                                 if(!(_loc18_ && param3))
                                 {
                                    _loc8_ = §§pop();
                                    if(_loc19_ || this)
                                    {
                                       §§goto(addr179);
                                    }
                                    §§goto(addr178);
                                 }
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr72);
               }
               §§goto(addr71);
            }
            §§goto(addr59);
         }
         §§goto(addr105);
      }
      
      public function append(param1:§9!§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:int = this.§4<§.length;
         if(!(_loc10_ && this))
         {
            this.§4<§.length += param1.§4<§.length;
            if(!(_loc10_ && _loc2_))
            {
               this.§4<§.position = _loc2_;
               if(_loc9_ || this)
               {
                  this.§4<§.writeBytes(param1.§4<§);
                  if(_loc9_ || _loc3_)
                  {
                     addr68:
                     this.§%!<§.fixed = false;
                  }
               }
               §§goto(addr68);
            }
            var _loc3_:Vector.<Number> = param1.§%!<§;
            var _loc4_:int = _loc3_.length;
            var _loc5_:int = 0;
            while(true)
            {
               if(_loc5_ >= _loc4_)
               {
                  if(_loc9_ || param1)
                  {
                     this.§%!<§.fixed = true;
                     if(_loc9_)
                     {
                        this.§[!J§.fixed = false;
                        break;
                     }
                     break;
                  }
                  break;
               }
               this.§%!<§.push(_loc3_[_loc5_]);
               if(_loc9_ || _loc3_)
               {
                  _loc5_++;
                  if(_loc10_)
                  {
                     break;
                  }
               }
            }
            var _loc6_:Vector.<Number>;
            var _loc7_:int = (_loc6_ = param1.§[!J§).length;
            var _loc8_:int = 0;
            if(!_loc9_)
            {
            }
            while(true)
            {
               if(_loc8_ >= _loc7_)
               {
                  if(_loc9_)
                  {
                     this.§[!J§.fixed = true;
                     if(!(_loc10_ && _loc2_))
                     {
                        break;
                     }
                  }
                  §§goto(addr193);
               }
               this.§[!J§.push(_loc6_[_loc8_]);
               if(_loc10_)
               {
                  break;
               }
               _loc8_++;
               if(!(_loc10_ && _loc3_))
               {
                  continue;
               }
               §§goto(addr193);
            }
            this.§+`§ += param1.§9m§;
            addr193:
            return;
         }
         §§goto(addr68);
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(_loc9_ || param1)
         {
            §§push(int(§§pop() * §1W§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§[!J§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§[!J§[_loc7_ = _loc5_++] = param3;
         if(_loc9_ || param1)
         {
            this.§[!J§[_loc5_] = param4;
         }
      }
      
      public function §,X§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(int(§§pop() * §1W§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§[!J§[_loc5_ = _loc4_++] = param2;
         if(!_loc7_)
         {
            this.§[!J§[_loc4_] = param3;
         }
      }
      
      public function getPosition(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_ || this)
         {
            §§push(int(§§pop() * §1W§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            param2.x = this.§[!J§[_loc3_++];
            if(!_loc5_)
            {
               param2.y = this.§[!J§[_loc3_++];
               if(!(_loc5_ && param1))
               {
                  addr77:
                  param2.z = this.§[!J§[_loc3_];
               }
               return;
            }
         }
         §§goto(addr77);
      }
      
      public function §2!9§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param3))
         {
            if(this.§2!'§)
            {
               addr27:
               §§push(param3);
               if(_loc9_ || param3)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_ || this)
                  {
                  }
                  addr49:
                  var _loc4_:*;
                  §§push(_loc4_ = §§pop());
                  if(_loc9_ || param1)
                  {
                     §§push(§§pop() / 255);
                     if(_loc9_ || param3)
                     {
                        addr77:
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                           _loc4_ = §§pop();
                           §§push(§!!Y§.§&!;§(param2) * _loc4_);
                           if(_loc8_)
                           {
                           }
                           §§goto(addr89);
                        }
                        §§push(Number(§§pop()));
                     }
                     addr89:
                     var _loc5_:* = §§pop();
                     §§push(§!!Y§.§?!^§(param2) * _loc4_);
                     if(!(_loc8_ && param3))
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     §§push(§!!Y§.§3]§(param2) * _loc4_);
                     if(_loc9_ || this)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     if(_loc9_)
                     {
                        this.§7!e§(param1,1,_loc5_,_loc6_,_loc7_,param3);
                     }
                     return;
                  }
                  §§goto(addr77);
               }
               addr48:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(_loc9_)
               {
                  §§goto(addr48);
               }
            }
            §§goto(addr49);
         }
         §§goto(addr27);
      }
      
      private function §7!e§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1);
         if(_loc13_)
         {
            §§push(int(§§pop() * §#!R§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(!(_loc14_ && param3))
         {
            §§push(int(§§pop() - 1));
         }
         var _loc8_:* = §§pop();
         while(true)
         {
            §§push(_loc8_);
            while(true)
            {
               if(§§pop() >= 0)
               {
                  var _loc9_:*;
                  this.§%!<§[_loc9_ = _loc7_++] = param3;
                  if(!(_loc14_ && this))
                  {
                     var _loc10_:*;
                     this.§%!<§[_loc10_ = _loc7_++] = param4;
                     if(!(_loc14_ && param3))
                     {
                        var _loc11_:*;
                        this.§%!<§[_loc11_ = _loc7_++] = param5;
                        if(!(_loc14_ && param1))
                        {
                           var _loc12_:*;
                           this.§%!<§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(_loc14_ && this)
                  {
                     break;
                  }
                  §§push(_loc8_);
                  if(!(_loc13_ || param2))
                  {
                     continue;
                  }
                  §§push(§§pop() - 1);
                  if(_loc14_)
                  {
                     continue;
                  }
                  _loc8_ = §§pop();
                  if(!(_loc14_ && this))
                  {
                     break;
                  }
               }
               return;
            }
         }
      }
      
      private function §1!&§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(_loc8_ || _loc3_)
         {
            §§push(int(§§pop() * §#!R§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§%!<§[_loc4_ = _loc3_++] = this.§%!<§[_loc4_] * param2;
         var _loc5_:*;
         this.§%!<§[_loc5_ = _loc3_++] = this.§%!<§[_loc5_] * param2;
         var _loc6_:*;
         this.§%!<§[_loc6_ = _loc3_++] = this.§%!<§[_loc6_] * param2;
         if(_loc8_)
         {
            this.§%!<§[_loc3_] *= param2;
         }
      }
      
      public function §7k§(param1:int) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(param1);
         if(_loc7_ || this)
         {
            §§push(int(§§pop() * §#!R§));
         }
         var _loc2_:* = §§pop();
         if(_loc7_)
         {
            if(this.§2!'§)
            {
               addr39:
               §§push(Number(this.§%!<§[_loc2_ + 3]));
               if(_loc8_)
               {
               }
               addr53:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(_loc7_)
               {
                  §§goto(addr53);
               }
            }
            var _loc3_:* = §§pop();
            if(!(_loc8_ && _loc2_))
            {
               if(_loc3_ == 0)
               {
                  if(_loc7_ || _loc3_)
                  {
                     §§push(0);
                     if(_loc7_ || _loc3_)
                     {
                        return §§pop();
                     }
                     addr99:
                     §§push(§§pop() / _loc3_);
                     if(_loc7_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc8_ && _loc3_))
                        {
                           _loc3_ = §§pop();
                           if(_loc7_)
                           {
                              §§push(this.§%!<§[_loc2_] * _loc3_);
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc7_ || _loc2_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc7_)
                                    {
                                       §§push(this.§%!<§[_loc2_ + 1] * _loc3_);
                                       if(_loc7_)
                                       {
                                          addr163:
                                          §§push(Number(§§pop()));
                                          if(_loc7_)
                                          {
                                             addr166:
                                             _loc5_ = §§pop();
                                             §§goto(addr184);
                                          }
                                       }
                                       _loc6_ = §§pop();
                                       §§goto(addr184);
                                    }
                                    addr184:
                                    if(!(_loc8_ && this))
                                    {
                                       addr182:
                                       §§push(Number(this.§%!<§[_loc2_ + 2] * _loc3_));
                                    }
                                    return §!!Y§.§;!^§(_loc4_,_loc5_,_loc6_);
                                 }
                                 §§goto(addr182);
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr166);
               }
               else
               {
                  §§push(255);
               }
               §§goto(addr99);
            }
            §§goto(addr182);
         }
         §§goto(addr39);
      }
      
      public function §@!J§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         §§push(param2);
         if(_loc4_ || _loc3_)
         {
            if(§§pop() < 0.001)
            {
               if(!_loc5_)
               {
                  §§push(0.001);
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc5_ && param2))
                     {
                        addr51:
                        param2 = §§pop();
                        if(!_loc5_)
                        {
                           §§goto(addr54);
                        }
                        §§goto(addr100);
                     }
                  }
                  §§goto(addr96);
               }
               §§goto(addr64);
            }
            addr54:
            if(this.§2!'§)
            {
               if(!(_loc5_ && this))
               {
                  this.§2!9§(param1,this.§7k§(param1),param2);
                  addr64:
               }
            }
            else
            {
               §§push(param1);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() * §#!R§);
                  if(_loc4_)
                  {
                     addr96:
                     §§push(int(§§pop() + 3));
                  }
                  §§goto(addr96);
               }
               _loc3_ = §§pop();
               if(_loc4_)
               {
                  addr100:
                  this.§%!<§[_loc3_] = param2;
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §?!,§(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() * §#!R§);
            if(_loc4_ || this)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§%!<§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_)
         {
            §§push(int(§§pop() * §4>§));
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && param3))
         {
            this.§4<§.position = _loc4_ * §`!E§;
            if(_loc5_ || param1)
            {
               this.§4<§.writeFloat(param2);
               if(_loc5_ || this)
               {
                  addr74:
                  this.§4<§.writeFloat(param3);
               }
               return;
            }
         }
         §§goto(addr74);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop() * §4>§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && this))
         {
            this.§4<§.position = _loc3_ * §`!E§;
            if(!(_loc4_ && param2))
            {
               §§goto(addr69);
            }
            §§goto(addr81);
         }
         addr69:
         param2.x = this.§4<§.readFloat();
         if(_loc5_ || this)
         {
            addr81:
            param2.y = this.§4<§.readFloat();
         }
      }
      
      public function §^!<§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(!_loc9_)
         {
            §§push(int(§§pop() * §1W§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§[!J§[_loc6_ = _loc5_++] = this.§[!J§[_loc6_] + param2;
         var _loc7_:*;
         this.§[!J§[_loc7_ = _loc5_++] = this.§[!J§[_loc7_] + param3;
         if(!(_loc9_ && this))
         {
            this.§[!J§[_loc5_] += param4;
         }
      }
      
      public function §6!9§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && this))
         {
            §§push(int(§§pop() * §1W§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && param2))
         {
            this.§[-§[0] = this.§[!J§[_loc3_];
            if(!_loc4_)
            {
               this.§[-§[1] = this.§[!J§[_loc3_ + 1];
               §§goto(addr66);
            }
            §§goto(addr107);
         }
         addr66:
         this.§[-§[2] = this.§[!J§[_loc3_ + 2];
         param2.transformVectors(this.§[-§,this.§[-§);
         this.§[!J§[_loc3_] = this.§[-§[0];
         if(_loc5_ || _loc3_)
         {
            addr107:
            this.§[!J§[_loc3_ + 1] = this.§[-§[1];
            if(!_loc4_)
            {
               this.§[!J§[_loc3_ + 2] = this.§[-§[2];
            }
         }
      }
      
      public function §9!Y§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            §§push(param2);
            if(_loc8_)
            {
               if(§§pop() < 0.001)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     param2 = 0.001;
                     if(_loc7_)
                     {
                     }
                     addr39:
                     §§push(param2);
                     if(_loc8_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_ && param1)
                        {
                        }
                        §§goto(addr54);
                     }
                     addr54:
                     var _loc3_:* = §§pop();
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(_loc3_);
                        if(!(_loc7_ && param1))
                        {
                           §§push(§§pop() / 255);
                           if(_loc8_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc7_)
                              {
                                 _loc3_ = §§pop();
                                 §§goto(addr88);
                              }
                           }
                        }
                        §§goto(addr95);
                     }
                     addr88:
                     §§push(§!!Y§.§&!;§(param1) * _loc3_);
                     if(_loc8_)
                     {
                        addr95:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     §§push(§!!Y§.§?!^§(param1) * _loc3_);
                     if(_loc8_ || param2)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     §§push(§!!Y§.§3]§(param1) * _loc3_);
                     if(_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     if(!(_loc7_ && param1))
                     {
                        this.§7!e§(0,this.§+`§,_loc4_,_loc5_,_loc6_,param2);
                     }
                     return;
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr39);
               }
               if(this.§2!'§)
               {
                  §§goto(addr39);
               }
               else
               {
                  §§push(Number(1));
               }
               §§goto(addr39);
            }
            §§goto(addr54);
         }
         §§goto(addr39);
      }
      
      public function §[!I§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_)
         {
            §§push(param6);
            if(!(_loc14_ && param2))
            {
               if(§§pop() < 0.001)
               {
                  if(_loc13_ || param2)
                  {
                     addr35:
                     §§push(0.001);
                     if(_loc13_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc14_ && param1))
                        {
                           §§goto(addr46);
                        }
                        §§goto(addr52);
                     }
                     addr46:
                     param6 = §§pop();
                     §§goto(addr47);
                  }
               }
               addr47:
               §§push(param1);
               if(_loc13_)
               {
                  addr52:
                  §§push(int(§§pop() * §#!R§));
               }
               var _loc7_:* = §§pop();
               var _loc8_:int = 0;
               while(_loc8_ < param2)
               {
                  var _loc9_:*;
                  this.§%!<§[_loc9_ = _loc7_++] = param3;
                  if(!(_loc14_ && param1))
                  {
                     var _loc10_:*;
                     this.§%!<§[_loc10_ = _loc7_++] = param4;
                     if(!_loc14_)
                     {
                        var _loc11_:*;
                        this.§%!<§[_loc11_ = _loc7_++] = param5;
                        if(!_loc14_)
                        {
                           var _loc12_:*;
                           this.§%!<§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(_loc13_ || this)
                  {
                     _loc8_++;
                     if(!(_loc13_ || param1))
                     {
                        break;
                     }
                  }
               }
               return;
            }
            §§goto(addr46);
         }
         §§goto(addr35);
      }
      
      public function §=M§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         if(_loc6_)
         {
            §§push(param2);
            if(_loc6_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc6_ || param1)
                  {
                     addr33:
                     §§push(0.001);
                     if(!(_loc5_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc5_ && this))
                        {
                           addr49:
                           param2 = §§pop();
                           if(_loc6_ || _loc3_)
                           {
                              addr57:
                              §§push(param2);
                              if(!_loc5_)
                              {
                                 addr60:
                                 if(§§pop() == 1)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§goto(addr69);
                                    }
                                 }
                              }
                              addr76:
                              var _loc3_:int = §§pop();
                              addr75:
                              if(this.§2!'§)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(Number(this.§%!<§[_loc3_ + 3]));
                                    if(!_loc5_)
                                    {
                                       _loc4_ = §§pop();
                                       §§push(param2);
                                       if(_loc6_ || param1)
                                       {
                                          §§push(§§pop() / _loc4_);
                                          if(_loc6_ || _loc3_)
                                          {
                                             addr124:
                                             §§push(Number(§§pop()));
                                          }
                                          _loc4_ = §§pop();
                                          if(_loc6_)
                                          {
                                             §§goto(addr128);
                                          }
                                          §§goto(addr183);
                                       }
                                    }
                                    §§goto(addr124);
                                 }
                                 addr128:
                                 this.§%!<§[_loc3_] *= _loc4_;
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    this.§%!<§[_loc3_ + 1] *= _loc4_;
                                    this.§%!<§[_loc3_ + 2] *= _loc4_;
                                    addr183:
                                    this.§%!<§[_loc3_ + 3] = param2;
                                    if(_loc5_)
                                    {
                                    }
                                    §§goto(addr207);
                                 }
                                 addr207:
                                 return;
                              }
                              this.§%!<§[_loc3_ + 3] *= param2;
                              §§goto(addr183);
                           }
                           §§push(param1);
                           if(_loc6_)
                           {
                              §§goto(addr75);
                              §§push(§§pop() * §#!R§);
                           }
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr60);
                  }
                  addr69:
                  return;
               }
               §§goto(addr57);
            }
            §§goto(addr49);
         }
         §§goto(addr33);
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         if(!_loc8_)
         {
            §§push(param1);
            if(_loc9_ || param2)
            {
               if(§§pop() == this.§2!'§)
               {
                  if(!(_loc8_ && param1))
                  {
                     §§goto(addr47);
                  }
                  else
                  {
                     addr59:
                     §§push(this.§+`§);
                     if(_loc9_)
                     {
                        §§push(int(§§pop() * §#!R§));
                        if(!(_loc8_ && this))
                        {
                           _loc3_ = §§pop();
                           if(_loc9_ || param2)
                           {
                              addr82:
                              _loc4_ = 0;
                           }
                           addr83:
                           loop0:
                           while(true)
                           {
                              §§push(_loc4_);
                              while(true)
                              {
                                 if(§§pop() >= _loc3_)
                                 {
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.§?!,§(0));
                                    if(_loc9_ || param2)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc9_)
                                       {
                                          _loc5_ = §§pop();
                                          if(!_loc9_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(this.§2!'§);
                                          if(!(_loc8_ && param1))
                                          {
                                             if(§§pop())
                                             {
                                                §§push(Number(_loc5_));
                                                if(_loc9_ || _loc3_)
                                                {
                                                   addr142:
                                                   _loc6_ = §§pop();
                                                   if(param1)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§push(_loc5_);
                                                      if(!_loc8_)
                                                      {
                                                         addr151:
                                                         §§push(Number(§§pop()));
                                                         if(_loc9_)
                                                         {
                                                            addr171:
                                                            §§push(Number(§§pop()));
                                                            if(_loc9_ || this)
                                                            {
                                                               addr179:
                                                               _loc7_ = §§pop();
                                                               §§push(_loc6_);
                                                               if(_loc9_ || param2)
                                                               {
                                                                  if(§§pop() != 0)
                                                                  {
                                                                     if(_loc9_ || param2)
                                                                     {
                                                                        addr211:
                                                                        _loc7_ /= _loc6_;
                                                                        addr198:
                                                                     }
                                                                     this.§1!&§(_loc4_,_loc7_);
                                                                     if(_loc8_ && _loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  _loc4_++;
                                                                  if(_loc8_ && param2)
                                                                  {
                                                                  }
                                                                  §§goto(addr239);
                                                               }
                                                            }
                                                            §§goto(addr198);
                                                            addr154:
                                                         }
                                                         §§goto(addr171);
                                                      }
                                                      §§goto(addr198);
                                                   }
                                                   else
                                                   {
                                                      §§push(1);
                                                      if(!(_loc9_ || param1))
                                                      {
                                                         continue;
                                                      }
                                                      addr163:
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc8_ && this))
                                                      {
                                                         §§goto(addr171);
                                                      }
                                                   }
                                                   §§goto(addr179);
                                                }
                                                §§goto(addr171);
                                             }
                                             else
                                             {
                                                §§push(1);
                                                if(_loc9_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc8_ && param2))
                                                   {
                                                      §§goto(addr142);
                                                   }
                                                   §§goto(addr211);
                                                }
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr142);
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr151);
                                 }
                                 addr239:
                                 return;
                              }
                              §§goto(addr236);
                           }
                        }
                     }
                     §§goto(addr82);
                  }
               }
               else
               {
                  addr51:
                  if(param2)
                  {
                     if(_loc9_ || param2)
                     {
                        §§goto(addr59);
                     }
                     §§goto(addr83);
                  }
               }
               addr236:
               this.§2!'§ = param1;
               addr239:
               continue loop0;
            }
            §§goto(addr51);
         }
         addr47:
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§2!'§;
      }
      
      public function get §9m§() : int
      {
         return this.§+`§;
      }
      
      public function set §9m§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc5_)
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(§4>§);
               if(_loc5_ || _loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc6_)
                  {
                     §§push(§§pop() * §`!E§);
                     if(!_loc6_)
                     {
                        addr42:
                        §§push(§§pop() - this.§4<§.length);
                     }
                     §§push(int(§§pop()));
                     if(!(_loc6_ && param1))
                     {
                        _loc2_ = §§pop();
                        if(_loc5_ || _loc2_)
                        {
                           §§push(int(this.§4<§.length));
                           if(_loc5_ || _loc2_)
                           {
                              addr73:
                              _loc4_ = §§pop();
                              addr74:
                              this.§4<§.length += _loc2_;
                              §§push(_loc2_);
                              if(!_loc6_)
                              {
                                 addr85:
                                 if(§§pop() > 0)
                                 {
                                    this.§4<§.position = _loc4_;
                                    addr92:
                                    _loc3_ = 0;
                                    addr93:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc6_)
                                       {
                                          §§push(_loc2_);
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             if(§§pop() < §§pop() / §`!E§)
                                             {
                                                continue;
                                             }
                                             this.§%!<§.fixed = false;
                                             §§push(param1);
                                             if(_loc5_)
                                             {
                                                §§push(§#!R§);
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   addr258:
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      §§push(§§pop() - this.§%!<§.length);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(int(§§pop()));
                                                         break;
                                                      }
                                                   }
                                                   _loc2_ = int(§§pop());
                                                   addr260:
                                                   _loc3_ = 0;
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!(_loc6_ && this))
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               §§push(_loc2_);
                                                               break;
                                                            }
                                                            loop5:
                                                            while(true)
                                                            {
                                                               _loc3_++;
                                                               addr309:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  addr310:
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                  }
                                                                  continue loop5;
                                                               }
                                                            }
                                                            addr308:
                                                         }
                                                         while(§§pop() < §§pop())
                                                         {
                                                            this.§[!J§.pop();
                                                            §§goto(addr308);
                                                         }
                                                         this.§[!J§.fixed = true;
                                                         if(_loc5_)
                                                         {
                                                            this.§+`§ = param1;
                                                         }
                                                         return;
                                                         addr311:
                                                      }
                                                      break;
                                                   }
                                                   _loc3_ = int(§§pop());
                                                   §§goto(addr309);
                                                   addr276:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      this.§%!<§.fixed = true;
                                                      addr238:
                                                      this.§[!J§.fixed = false;
                                                      addr242:
                                                      §§push(param1);
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         addr251:
                                                         §§push(§§pop() * §1W§);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() - this.§[!J§.length);
                                                         }
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   else
                                                   {
                                                      this.§%!<§.pop();
                                                      if(!(_loc5_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      _loc3_++;
                                                      if(_loc5_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr276);
                                                   }
                                                }
                                                §§goto(addr260);
                                             }
                                             §§goto(addr310);
                                          }
                                          §§goto(addr251);
                                       }
                                       break;
                                    }
                                    _loc2_ = §§pop();
                                    if(!_loc6_)
                                    {
                                       §§push(0);
                                       if(_loc5_ || this)
                                       {
                                          _loc3_ = §§pop();
                                          if(_loc5_ || _loc2_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                §§push(_loc2_);
                                                if(!_loc6_)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      this.§%!<§.push(0);
                                                      if(_loc5_)
                                                      {
                                                         _loc3_++;
                                                      }
                                                      continue;
                                                   }
                                                   if(_loc5_ || this)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         _loc3_ = int(§§pop());
                                                         if(_loc5_ || param1)
                                                         {
                                                            addr216:
                                                            §§goto(addr231);
                                                         }
                                                         §§goto(addr309);
                                                      }
                                                      §§goto(addr310);
                                                   }
                                                   §§goto(addr242);
                                                }
                                                break;
                                             }
                                             §§goto(addr311);
                                          }
                                          §§goto(addr216);
                                       }
                                       §§goto(addr251);
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr114);
                              }
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr42);
               }
               §§goto(addr85);
            }
            §§goto(addr73);
         }
         §§goto(addr93);
      }
      
      public function get §>!I§() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§4<§.position = 0;
         }
         return this.§4<§;
      }
      
      public function get §`!7§() : Vector.<Number>
      {
         return this.§%!<§;
      }
      
      public function get §1!P§() : Vector.<Number>
      {
         return this.§[!J§;
      }
   }
}
