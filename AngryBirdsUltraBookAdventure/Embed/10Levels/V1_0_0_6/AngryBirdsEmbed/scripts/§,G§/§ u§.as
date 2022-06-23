package §,G§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class § u§
   {
      
      public static const §-q§:int = 4;
      
      public static const §=#§:int = 2;
      
      public static const §18§:int = 3;
      
      public static const §7!7§:int = 4;
      
      public static const §`&§:int = 0;
      
      public static const §<4§:int = 0;
      
      public static const §]!$§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-q§ = 4;
            §=#§ = 2;
            §18§ = 3;
            if(_loc1_ || § u§)
            {
               §7!7§ = 4;
               if(!(_loc2_ && § u§))
               {
                  §`&§ = 0;
               }
               §<4§ = 0;
               if(!(_loc2_ && _loc1_))
               {
                  §]!$§ = 0;
               }
            }
         }
      }
      
      private var §<%§:ByteArray;
      
      private var §'!#§:Vector.<Number>;
      
      private var §+4§:Vector.<Number>;
      
      private var §7M§:Boolean;
      
      private var §-! §:int;
      
      private var §9!A§:Vector.<Number>;
      
      public function § u§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§9!A§ = new Vector.<Number>(12,true);
            if(_loc5_)
            {
               super();
               if(_loc5_ || param2)
               {
                  this.§<%§ = new ByteArray();
                  if(_loc5_ || this)
                  {
                     addr49:
                     this.§<%§.endian = Endian.LITTLE_ENDIAN;
                     if(_loc5_ || param1)
                     {
                     }
                     §§goto(addr79);
                  }
                  this.§<%§.length = param1 * §=#§ * §7!7§;
               }
            }
            addr79:
            var _loc3_:int = 0;
            do
            {
               if(_loc3_ >= param1 * §=#§)
               {
                  if(_loc5_ || _loc3_)
                  {
                     this.§'!#§ = new Vector.<Number>(param1 * §-q§,true);
                     if(!(_loc4_ && param2))
                     {
                        break;
                     }
                     addr148:
                     this.§7M§ = param2;
                     if(_loc5_)
                     {
                        this.§-! § = param1;
                     }
                  }
                  §§goto(addr156);
               }
               this.§<%§.writeFloat(0);
               if(_loc4_)
               {
                  break;
               }
               _loc3_++;
            }
            while(_loc5_ || param1);
            
            this.§+4§ = new Vector.<Number>(param1 * §18§,true);
            if(!_loc4_)
            {
               §§goto(addr148);
            }
            addr156:
            return;
         }
         §§goto(addr49);
      }
      
      public function clone() : § u§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§ u§ = new § u§(0,this.§7M§);
         if(!(_loc3_ && this))
         {
            _loc1_.§<%§.length = this.§<%§.length;
            if(!_loc3_)
            {
               _loc1_.§<%§.writeBytes(this.§<%§);
               if(_loc2_ || _loc1_)
               {
                  _loc1_.§'!#§ = this.§'!#§.concat();
                  §§goto(addr60);
               }
            }
            §§goto(addr77);
         }
         addr60:
         if(!_loc3_)
         {
            addr77:
            _loc1_.§'!#§.fixed = true;
            _loc1_.§+4§ = this.§+4§.concat();
            _loc1_.§+4§.fixed = true;
            if(_loc2_ || _loc3_)
            {
               _loc1_.§-! § = this.§-! §;
            }
         }
         return _loc1_;
      }
      
      public function copyTo(param1:§ u§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§+4§;
         if(!(_loc19_ && param2))
         {
            §§push(this.§-! §);
            if(!(_loc19_ && param3))
            {
               §§push(§18§);
               if(_loc18_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc18_)
                  {
                     §§push(int(§§pop()));
                     if(!(_loc19_ && param1))
                     {
                        _loc6_ = §§pop();
                        if(_loc18_ || param3)
                        {
                           §§push(param2);
                           if(_loc18_ || param1)
                           {
                              addr84:
                              §§push(int(§§pop() * §18§));
                              if(!_loc19_)
                              {
                                 addr89:
                                 _loc7_ = §§pop();
                                 if(_loc18_ || param2)
                                 {
                                    if(param5)
                                    {
                                       if(!_loc19_)
                                       {
                                          addr101:
                                          param5.transformVectors(this.§+4§,this.§9!A§);
                                          if(!(_loc19_ && param2))
                                          {
                                             addr115:
                                             _loc8_ = 0;
                                             addr116:
                                             loop0:
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                if(!(_loc19_ && param3))
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc18_)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(_loc19_)
                                                         {
                                                            loop1:
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               break loop0;
                                                               addr189:
                                                               while(true)
                                                               {
                                                                  _loc8_++;
                                                                  if(!(_loc18_ || param2))
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                            addr197:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         var _loc14_:*;
                                                         _loc9_[_loc14_ = _loc7_++] = this.§9!A§[_loc8_];
                                                         if(_loc18_ || this)
                                                         {
                                                            continue;
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc18_ || param3)
                                                            {
                                                               §§goto(addr189);
                                                            }
                                                         }
                                                         addr181:
                                                      }
                                                      addr200:
                                                      var _loc10_:ByteArray = param1.§<%§;
                                                      if(!(_loc19_ && param2))
                                                      {
                                                         §§push(this.§-! §);
                                                         if(_loc18_)
                                                         {
                                                            §§push(§=#§);
                                                            if(!(_loc19_ && param1))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc18_ || this)
                                                               {
                                                                  §§push(§7!7§);
                                                                  if(_loc18_ || this)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc19_ && this))
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        if(_loc18_ || param2)
                                                                        {
                                                                           addr255:
                                                                           _loc6_ = §§pop();
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(param2);
                                                                              if(!(_loc19_ && this))
                                                                              {
                                                                                 addr267:
                                                                                 §§push(§§pop() * §=#§);
                                                                                 if(_loc18_ || param3)
                                                                                 {
                                                                                    addr275:
                                                                                    §§push(§7!7§);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       addr278:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          addr282:
                                                                                          _loc7_ = int(§§pop());
                                                                                          if(!(_loc19_ && param1))
                                                                                          {
                                                                                             addr290:
                                                                                             if(_loc10_.length < _loc7_ + _loc6_)
                                                                                             {
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   _loc10_.length = _loc7_ + _loc6_;
                                                                                                }
                                                                                                addr323:
                                                                                                §§push(param3 == 1);
                                                                                                if(!(_loc19_ && param3))
                                                                                                {
                                                                                                   §§push(!§§pop());
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   _loc11_ = param1.§'!#§;
                                                                                                   §§push(this.§-! §);
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      §§push(§-q§);
                                                                                                      if(_loc18_ || param3)
                                                                                                      {
                                                                                                         §§push(int(§§pop() * §§pop()));
                                                                                                         if(!(_loc19_ && param1))
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            §§push(param2);
                                                                                                            if(_loc18_ || param1)
                                                                                                            {
                                                                                                               §§push(§-q§);
                                                                                                               if(_loc18_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc19_ && this))
                                                                                                                  {
                                                                                                                     _loc7_ = int(§§pop());
                                                                                                                     if(_loc18_ || param2)
                                                                                                                     {
                                                                                                                        §§push(param3);
                                                                                                                        if(_loc18_ || param3)
                                                                                                                        {
                                                                                                                           if(§§pop() == 1)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              if(_loc18_ || this)
                                                                                                                              {
                                                                                                                                 addr422:
                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                 if(!(_loc19_ && param3))
                                                                                                                                 {
                                                                                                                                    loop20:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(_loc18_ || param3)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop() >= §§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      addr694:
                                                                                                                                                      return;
                                                                                                                                                      addr467:
                                                                                                                                                   }
                                                                                                                                                   addr686:
                                                                                                                                                   loop11:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc12_++;
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         addr689:
                                                                                                                                                         _loc8_++;
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            addr691:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§-! §);
                                                                                                                                                               addr693:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() < §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!this.§7M§)
                                                                                                                                                                     {
                                                                                                                                                                        _loc11_[_loc14_ = _loc7_++] = this.§'!#§[_loc12_++];
                                                                                                                                                                        if(_loc18_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              var _loc15_:*;
                                                                                                                                                                              _loc11_[_loc15_ = _loc7_++] = this.§'!#§[_loc12_++];
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 var _loc16_:*;
                                                                                                                                                                                 _loc11_[_loc16_ = _loc7_++] = this.§'!#§[_loc12_++];
                                                                                                                                                                                 addr683:
                                                                                                                                                                                 if(_loc18_ || param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    var _loc17_:*;
                                                                                                                                                                                    _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    addr682:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                                 addr683:
                                                                                                                                                                              }
                                                                                                                                                                              addr684:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr624:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop11;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr694);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr694);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr689);
                                                                                                                                                         }
                                                                                                                                                         addr690:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr694);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr694);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   _loc11_[_loc14_ = _loc7_++] = this.§'!#§[_loc8_];
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   addr446:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc8_++;
                                                                                                                                                      continue loop20;
                                                                                                                                                      §§goto(addr446);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc11_[_loc15_ = _loc7_++] = this.§'!#§[_loc12_++] * _loc13_;
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   _loc11_[_loc16_ = _loc7_++] = this.§'!#§[_loc12_++] * _loc13_;
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                      if(_loc18_ || param3)
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_ || param3)
                                                                                                                                                         {
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               addr592:
                                                                                                                                                               if(!(_loc19_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr601:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr686);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr600:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr624);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr684);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr683);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr682);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr683);
                                                                                                                                                }
                                                                                                                                                §§goto(addr592);
                                                                                                                                             }
                                                                                                                                             addr527:
                                                                                                                                             addr464:
                                                                                                                                          }
                                                                                                                                          §§goto(addr693);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr469:
                                                                                                                                          _loc12_ = §§pop();
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             _loc8_ = 0;
                                                                                                                                             if(_loc18_ || param2)
                                                                                                                                             {
                                                                                                                                                §§goto(addr690);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(param3);
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() / _loc13_);
                                                                                                                                                      addr499:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc13_ = §§pop();
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            _loc11_[_loc14_ = _loc7_++] = this.§'!#§[_loc12_++] * _loc13_;
                                                                                                                                                            if(!(_loc19_ && param3))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr527);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr600);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr601);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr497:
                                                                                                                                                }
                                                                                                                                                §§goto(addr499);
                                                                                                                                             }
                                                                                                                                             addr494:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc13_ = this.§'!#§[_loc12_ + 3];
                                                                                                                                          §§goto(addr494);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr467);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                           }
                                                                                                                           §§goto(addr469);
                                                                                                                        }
                                                                                                                        §§goto(addr499);
                                                                                                                     }
                                                                                                                     §§goto(addr447);
                                                                                                                  }
                                                                                                                  §§goto(addr497);
                                                                                                               }
                                                                                                               §§goto(addr693);
                                                                                                            }
                                                                                                            §§goto(addr422);
                                                                                                         }
                                                                                                         §§goto(addr691);
                                                                                                      }
                                                                                                      §§goto(addr464);
                                                                                                   }
                                                                                                   §§goto(addr422);
                                                                                                }
                                                                                                §§goto(addr694);
                                                                                             }
                                                                                             _loc10_.position = _loc7_;
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                addr308:
                                                                                                _loc10_.writeBytes(this.§<%§);
                                                                                                §§push(param4);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            addr322:
                                                                                                            §§pop();
                                                                                                            §§goto(addr323);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr323);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr322);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr323);
                                                                              }
                                                                              §§goto(addr282);
                                                                           }
                                                                           §§goto(addr290);
                                                                        }
                                                                     }
                                                                     §§goto(addr282);
                                                                  }
                                                                  §§goto(addr278);
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                            §§goto(addr267);
                                                         }
                                                         §§goto(addr255);
                                                      }
                                                      §§goto(addr308);
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         _loc9_[_loc14_ = _loc7_++] = this.§+4§[_loc8_];
                                                         §§goto(addr181);
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                   addr199:
                                                }
                                                break;
                                             }
                                             addr114:
                                          }
                                          §§goto(addr116);
                                       }
                                       §§goto(addr114);
                                    }
                                    else
                                    {
                                       §§push(0);
                                       if(!_loc19_)
                                       {
                                          _loc8_ = §§pop();
                                          if(_loc18_)
                                          {
                                             §§goto(addr167);
                                          }
                                          §§goto(addr189);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr199);
                                    }
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr115);
                     }
                  }
               }
               §§goto(addr84);
            }
            §§goto(addr89);
         }
         §§goto(addr115);
      }
      
      public function append(param1:§ u§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:int = this.§<%§.length;
         if(_loc9_)
         {
            this.§<%§.length += param1.§<%§.length;
            if(!_loc10_)
            {
               this.§<%§.position = _loc2_;
               if(_loc9_ || _loc3_)
               {
                  addr46:
                  this.§<%§.writeBytes(param1.§<%§);
                  if(_loc9_)
                  {
                     addr53:
                     this.§'!#§.fixed = false;
                  }
               }
               var _loc3_:Vector.<Number> = param1.§'!#§;
               var _loc4_:int = _loc3_.length;
               var _loc5_:int = 0;
               while(true)
               {
                  if(_loc5_ < _loc4_)
                  {
                     continue;
                  }
                  if(!_loc10_)
                  {
                     this.§'!#§.fixed = true;
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  var _loc6_:Vector.<Number>;
                  var _loc7_:int = (_loc6_ = param1.§+4§).length;
                  var _loc8_:int = 0;
                  if(_loc9_ || _loc2_)
                  {
                     loop1:
                     while(true)
                     {
                        if(_loc8_ >= _loc7_)
                        {
                           if(!_loc10_)
                           {
                              break;
                           }
                           §§goto(addr168);
                        }
                        this.§+4§.push(_loc6_[_loc8_]);
                        if(!_loc9_)
                        {
                           break;
                        }
                        addr142:
                        while(true)
                        {
                           _loc8_++;
                           if(!_loc9_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     this.§+4§.fixed = true;
                     if(!(_loc10_ && _loc3_))
                     {
                        this.§-! § += param1.§3K§;
                     }
                     addr168:
                     return;
                  }
                  §§goto(addr142);
               }
               this.§+4§.fixed = false;
               §§goto(addr105);
            }
            §§goto(addr46);
         }
         §§goto(addr53);
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(!_loc9_)
         {
            §§push(int(§§pop() * §18§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§+4§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§+4§[_loc7_ = _loc5_++] = param3;
         if(_loc8_ || param2)
         {
            this.§+4§[_loc5_] = param4;
         }
      }
      
      public function §8!4§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(int(§§pop() * §18§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§+4§[_loc5_ = _loc4_++] = param2;
         if(!(_loc7_ && param1))
         {
            this.§+4§[_loc4_] = param3;
         }
      }
      
      public function §4G§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_)
         {
            §§push(int(§§pop() * §18§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            param2.x = this.§+4§[_loc3_++];
            if(_loc4_)
            {
               param2.y = this.§+4§[_loc3_++];
               if(_loc4_ || param2)
               {
               }
               §§goto(addr78);
            }
            param2.z = this.§+4§[_loc3_];
         }
         addr78:
      }
      
      public function §[@§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            if(this.§7M§)
            {
               addr22:
               §§push(param3);
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_ || param2)
                  {
                  }
               }
               addr43:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(!(_loc8_ && param3))
               {
                  §§goto(addr43);
               }
            }
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(_loc9_ || param1)
            {
               §§push(§§pop() / 255);
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc8_)
                  {
                     _loc4_ = §§pop();
                     §§push(§"p§.§9V§(param2) * _loc4_);
                     if(_loc9_)
                     {
                        addr78:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr78);
               }
               var _loc5_:* = §§pop();
               §§push(§"p§.§5J§(param2) * _loc4_);
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(§"p§.§@R§(param2) * _loc4_);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(_loc9_)
               {
                  this.§@!2§(param1,1,_loc5_,_loc6_,_loc7_,param3);
               }
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr22);
      }
      
      private function §@!2§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         §§push(param1);
         if(!_loc13_)
         {
            §§push(int(§§pop() * §-q§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(_loc14_ || param1)
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
               this.§'!#§[_loc9_ = _loc7_++] = param3;
               if(!(_loc13_ && param3))
               {
                  var _loc10_:*;
                  this.§'!#§[_loc10_ = _loc7_++] = param4;
                  if(!_loc13_)
                  {
                     var _loc11_:*;
                     this.§'!#§[_loc11_ = _loc7_++] = param5;
                     if(_loc14_ || param3)
                     {
                        var _loc12_:*;
                        this.§'!#§[_loc12_ = _loc7_++] = param6;
                     }
                  }
               }
               if(_loc13_)
               {
                  break;
               }
               §§push(_loc8_);
               if(!_loc13_)
               {
                  §§push(§§pop() - 1);
                  if(!_loc14_)
                  {
                     continue;
                  }
               }
               _loc8_ = §§pop();
               if(_loc13_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
      }
      
      private function §^!!§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1);
         if(_loc7_)
         {
            §§push(int(§§pop() * §-q§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§'!#§[_loc4_ = _loc3_++] = this.§'!#§[_loc4_] * param2;
         var _loc5_:*;
         this.§'!#§[_loc5_ = _loc3_++] = this.§'!#§[_loc5_] * param2;
         var _loc6_:*;
         this.§'!#§[_loc6_ = _loc3_++] = this.§'!#§[_loc6_] * param2;
         if(!_loc8_)
         {
            this.§'!#§[_loc3_] *= param2;
         }
      }
      
      public function §?6§(param1:int) : uint
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         §§push(param1);
         if(_loc8_)
         {
            §§push(int(§§pop() * §-q§));
         }
         var _loc2_:* = §§pop();
         if(_loc8_)
         {
            if(this.§7M§)
            {
               addr35:
               §§push(Number(this.§'!#§[_loc2_ + 3]));
               if(_loc8_ || param1)
               {
                  addr59:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(Number(1));
               if(_loc8_ || param1)
               {
                  §§goto(addr59);
               }
            }
            var _loc3_:* = §§pop();
            if(_loc8_)
            {
               §§push(_loc3_);
               if(_loc8_)
               {
                  if(§§pop() == 0)
                  {
                     if(_loc8_)
                     {
                        addr80:
                        §§push(0);
                        if(_loc8_ || param1)
                        {
                           return §§pop();
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr112);
                  }
                  else
                  {
                     §§push(255);
                  }
                  addr90:
                  §§push(§§pop() / _loc3_);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc8_)
                     {
                        _loc3_ = §§pop();
                        if(!(_loc7_ && param1))
                        {
                           addr112:
                           _loc4_ = this.§'!#§[_loc2_] * _loc3_;
                           if(_loc8_ || param1)
                           {
                           }
                           §§goto(addr152);
                        }
                        addr138:
                        §§push(Number(this.§'!#§[_loc2_ + 1] * _loc3_));
                        if(_loc8_)
                        {
                           _loc5_ = §§pop();
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr112);
                  }
                  addr151:
                  _loc6_ = this.§'!#§[_loc2_ + 2] * _loc3_;
                  addr152:
                  return §"p§.§0!J§(_loc4_,_loc5_,_loc6_);
               }
               §§goto(addr138);
            }
            §§goto(addr80);
         }
         §§goto(addr35);
      }
      
      public function §!!6§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         §§push(param2);
         if(_loc5_)
         {
            if(§§pop() < 0.001)
            {
               if(!(_loc4_ && param1))
               {
                  §§push(0.001);
                  if(_loc5_ || this)
                  {
                     §§push(Number(§§pop()));
                     if(_loc5_)
                     {
                        addr52:
                        param2 = §§pop();
                        §§goto(addr53);
                     }
                  }
                  §§goto(addr100);
               }
               §§goto(addr80);
            }
            addr53:
            if(this.§7M§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this.§[@§(param1,this.§?6§(param1),param2);
                  addr80:
               }
            }
            else
            {
               §§push(param1);
               if(_loc5_ || this)
               {
                  §§push(§§pop() * §-q§);
                  if(!(_loc4_ && param1))
                  {
                     addr100:
                     §§push(int(§§pop() + 3));
                  }
                  §§goto(addr100);
               }
               _loc3_ = §§pop();
               if(_loc5_)
               {
                  this.§'!#§[_loc3_] = param2;
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §for §(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop() * §-q§);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§'!#§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_ || param2)
         {
            §§push(int(§§pop() * §=#§));
         }
         var _loc4_:* = §§pop();
         if(!(_loc5_ && param1))
         {
            this.§<%§.position = _loc4_ * §7!7§;
            if(!(_loc5_ && param1))
            {
               this.§<%§.writeFloat(param2);
               if(!_loc5_)
               {
                  addr75:
                  this.§<%§.writeFloat(param3);
               }
            }
            return;
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
            §§push(int(§§pop() * §=#§));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            this.§<%§.position = _loc3_ * §7!7§;
            if(!(_loc4_ && _loc3_))
            {
               param2.x = this.§<%§.readFloat();
               if(_loc5_ || _loc3_)
               {
               }
               §§goto(addr76);
            }
            param2.y = this.§<%§.readFloat();
         }
         addr76:
      }
      
      public function §2!D§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(_loc8_)
         {
            §§push(int(§§pop() * §18§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§+4§[_loc6_ = _loc5_++] = this.§+4§[_loc6_] + param2;
         var _loc7_:*;
         this.§+4§[_loc7_ = _loc5_++] = this.§+4§[_loc7_] + param3;
         if(!(_loc9_ && param3))
         {
            this.§+4§[_loc5_] += param4;
         }
      }
      
      public function §84§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop() * §18§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param2)
         {
            this.§9!A§[0] = this.§+4§[_loc3_];
            if(_loc5_ || _loc3_)
            {
               this.§9!A§[1] = this.§+4§[_loc3_ + 1];
               if(!_loc4_)
               {
                  this.§9!A§[2] = this.§+4§[_loc3_ + 2];
                  if(!_loc4_)
                  {
                     param2.transformVectors(this.§9!A§,this.§9!A§);
                     addr101:
                     this.§+4§[_loc3_] = this.§9!A§[0];
                     this.§+4§[_loc3_ + 1] = this.§9!A§[1];
                     this.§+4§[_loc3_ + 2] = this.§9!A§[2];
                     addr85:
                  }
                  return;
               }
            }
            §§goto(addr101);
         }
         §§goto(addr85);
      }
      
      public function §'!1§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            §§push(param2);
            if(_loc7_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc7_)
                  {
                     §§push(Number(0.001));
                     if(_loc7_ || param1)
                     {
                        param2 = §§pop();
                        if(!_loc8_)
                        {
                           addr37:
                           if(!this.§7M§)
                           {
                              §§push(Number(1));
                              if(_loc7_)
                              {
                                 addr72:
                                 var _loc3_:* = Number(§§pop());
                                 if(_loc7_ || param2)
                                 {
                                    §§push(_loc3_);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() / 255);
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc8_)
                                          {
                                             _loc3_ = §§pop();
                                             addr96:
                                             §§push(§"p§.§9V§(param1) * _loc3_);
                                             if(_loc7_ || _loc3_)
                                             {
                                             }
                                             §§goto(addr109);
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    addr109:
                                    var _loc4_:* = §§pop();
                                    §§push(§"p§.§5J§(param1) * _loc3_);
                                    if(_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc5_:* = §§pop();
                                    §§push(§"p§.§@R§(param1) * _loc3_);
                                    if(_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc6_:* = §§pop();
                                    if(_loc7_)
                                    {
                                       this.§@!2§(0,this.§-! §,_loc4_,_loc5_,_loc6_,param2);
                                    }
                                    return;
                                 }
                                 §§goto(addr96);
                              }
                           }
                           §§goto(addr72);
                        }
                        §§push(param2);
                        if(_loc7_ || param2)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc8_ && param1))
                           {
                              addr56:
                           }
                        }
                     }
                     §§goto(addr72);
                  }
               }
               §§goto(addr37);
            }
            §§goto(addr56);
         }
         §§goto(addr37);
      }
      
      public function §0g§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_ || param1)
         {
            §§push(param6);
            if(_loc14_ || param3)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc14_ || param3)
                  {
                     §§push(0.001);
                     if(_loc14_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc13_)
                        {
                           param6 = §§pop();
                           §§goto(addr48);
                        }
                     }
                  }
               }
               §§goto(addr48);
            }
            §§goto(addr53);
         }
         addr48:
         §§push(param1);
         if(!_loc13_)
         {
            addr53:
            §§push(int(§§pop() * §-q§));
         }
         var _loc7_:* = §§pop();
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§'!#§[_loc9_ = _loc7_++] = param3;
            if(!(_loc13_ && param1))
            {
               var _loc10_:*;
               this.§'!#§[_loc10_ = _loc7_++] = param4;
               if(_loc14_)
               {
                  var _loc11_:*;
                  this.§'!#§[_loc11_ = _loc7_++] = param5;
                  if(!(_loc13_ && param3))
                  {
                     var _loc12_:*;
                     this.§'!#§[_loc12_ = _loc7_++] = param6;
                  }
               }
            }
            if(_loc14_ || param2)
            {
               _loc8_++;
               if(_loc13_)
               {
                  break;
               }
            }
         }
      }
      
      public function §var§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         if(_loc5_)
         {
            §§push(param2);
            if(_loc5_)
            {
               if(§§pop() < 0.001)
               {
                  if(!(_loc6_ && param1))
                  {
                     §§push(0.001);
                     if(_loc5_ || this)
                     {
                        addr40:
                        §§push(Number(§§pop()));
                        if(!(_loc6_ && param2))
                        {
                           param2 = §§pop();
                           if(!_loc6_)
                           {
                              addr51:
                              §§push(param2);
                              if(_loc5_)
                              {
                                 addr54:
                                 if(§§pop() == 1)
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§goto(addr63);
                                    }
                                    else
                                    {
                                       addr64:
                                       §§push(param1);
                                       if(!(_loc6_ && this))
                                       {
                                          addr74:
                                          §§push(int(§§pop() * §-q§));
                                       }
                                       var _loc3_:* = §§pop();
                                       if(!_loc6_)
                                       {
                                          if(this.§7M§)
                                          {
                                             if(_loc5_)
                                             {
                                                §§push(Number(this.§'!#§[_loc3_ + 3]));
                                                if(!_loc6_)
                                                {
                                                   _loc4_ = §§pop();
                                                   §§push(param2);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() / _loc4_);
                                                      if(_loc5_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                }
                                                _loc4_ = §§pop();
                                                if(_loc5_)
                                                {
                                                   this.§'!#§[_loc3_] *= _loc4_;
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr131:
                                                      this.§'!#§[_loc3_ + 1] *= _loc4_;
                                                      if(_loc5_)
                                                      {
                                                         this.§'!#§[_loc3_ + 2] *= _loc4_;
                                                         addr147:
                                                      }
                                                      this.§'!#§[_loc3_ + 3] = param2;
                                                      if(!_loc5_)
                                                      {
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                   addr195:
                                                   return;
                                                }
                                                §§goto(addr147);
                                             }
                                             §§goto(addr131);
                                          }
                                          else
                                          {
                                             this.§'!#§[_loc3_ + 3] *= param2;
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr147);
                                    }
                                 }
                                 §§goto(addr64);
                              }
                              §§goto(addr74);
                           }
                           §§goto(addr64);
                        }
                     }
                     §§goto(addr54);
                  }
                  addr63:
                  return;
               }
               §§goto(addr51);
            }
            §§goto(addr40);
         }
         §§goto(addr51);
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         if(!_loc9_)
         {
            §§push(param1);
            if(_loc8_ || _loc3_)
            {
               if(§§pop() == this.§7M§)
               {
                  if(!(_loc9_ && _loc3_))
                  {
                     return;
                  }
                  addr86:
                  _loc4_ = 0;
                  addr87:
                  loop0:
                  while(true)
                  {
                     §§push(_loc4_);
                     while(true)
                     {
                        if(§§pop() >= _loc3_)
                        {
                           if(_loc8_)
                           {
                              addr235:
                              this.§7M§ = param1;
                              break;
                           }
                           break;
                        }
                        §§push(Number(this.§for §(0)));
                        if(_loc8_ || _loc3_)
                        {
                           _loc5_ = §§pop();
                           §§push(this.§7M§);
                           if(_loc8_ || param2)
                           {
                              if(§§pop())
                              {
                                 §§push(_loc5_);
                                 if(!_loc9_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc8_)
                                    {
                                       addr134:
                                       §§push(Number(§§pop()));
                                       if(!(_loc9_ && this))
                                       {
                                          _loc6_ = §§pop();
                                          if(_loc8_ || param2)
                                          {
                                             addr151:
                                             if(param1)
                                             {
                                                if(_loc8_)
                                                {
                                                   §§push(_loc5_);
                                                   if(!(_loc9_ && this))
                                                   {
                                                      addr215:
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc9_ && _loc3_))
                                                      {
                                                         addr187:
                                                         _loc7_ = Number(§§pop());
                                                         §§push(_loc6_);
                                                         addr170:
                                                      }
                                                      _loc7_ = §§pop();
                                                      if(_loc8_)
                                                      {
                                                         addr218:
                                                         this.§^!!§(_loc4_,_loc7_);
                                                         _loc4_++;
                                                         if(_loc9_ && this)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                   if(§§pop() != 0)
                                                   {
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         §§push(_loc7_);
                                                         if(_loc8_)
                                                         {
                                                            addr212:
                                                            §§goto(addr215);
                                                            §§push(Number(§§pop() / _loc6_));
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                   }
                                                }
                                                §§goto(addr218);
                                             }
                                             else
                                             {
                                                §§push(1);
                                                if(_loc9_ && param2)
                                                {
                                                   continue;
                                                }
                                                addr179:
                                                §§push(Number(§§pop()));
                                                if(_loc8_ || this)
                                                {
                                                   §§goto(addr187);
                                                }
                                                §§goto(addr215);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr235);
                                          }
                                       }
                                       §§goto(addr212);
                                    }
                                    §§goto(addr215);
                                 }
                                 §§goto(addr212);
                              }
                              else
                              {
                                 §§push(1);
                                 if(!_loc9_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc8_)
                                    {
                                       §§goto(addr134);
                                    }
                                    §§goto(addr215);
                                 }
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr170);
                     }
                     return;
                  }
                  addr85:
               }
               else
               {
                  addr55:
                  if(param2)
                  {
                     if(!(_loc9_ && param2))
                     {
                        §§push(this.§-! §);
                        if(_loc8_ || _loc3_)
                        {
                           §§push(int(§§pop() * §-q§));
                           if(!(_loc9_ && this))
                           {
                              addr82:
                              _loc3_ = §§pop();
                              if(!_loc9_)
                              {
                                 §§goto(addr85);
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr86);
                  }
               }
               §§goto(addr235);
            }
         }
         §§goto(addr55);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§7M§;
      }
      
      public function get §3K§() : int
      {
         return this.§-! §;
      }
      
      public function set §3K§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(§=#§);
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(_loc6_)
               {
                  §§push(§§pop() * §7!7§);
                  if(_loc6_)
                  {
                     addr41:
                     §§push(§§pop() - this.§<%§.length);
                  }
                  §§push(int(§§pop()));
                  if(!_loc5_)
                  {
                     addr48:
                     _loc2_ = §§pop();
                     §§push(int(this.§<%§.length));
                     if(!_loc5_)
                     {
                        _loc4_ = §§pop();
                        this.§<%§.length += _loc2_;
                        if(!_loc5_)
                        {
                           §§push(_loc2_);
                           if(_loc6_)
                           {
                              addr69:
                              if(§§pop() > 0)
                              {
                                 this.§<%§.position = _loc4_;
                                 addr76:
                                 _loc3_ = 0;
                                 addr77:
                                 loop0:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc6_)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(§§pop() >= §§pop() / §7!7§)
                                          {
                                             addr100:
                                             this.§'!#§.fixed = false;
                                             §§push(param1);
                                             if(_loc6_)
                                             {
                                                §§push(§-q§);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§push(§§pop() - this.§'!#§.length);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(_loc6_ || this)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(!(_loc5_ && this))
                                                            {
                                                               §§push(0);
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        §§push(_loc2_);
                                                                        if(_loc6_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              if(_loc6_ || _loc2_)
                                                                              {
                                                                                 addr191:
                                                                                 §§push(int(_loc2_));
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                    }
                                                                                    loop11:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       addr204:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                          addr205:
                                                                                          while(§§pop() < §§pop())
                                                                                          {
                                                                                             this.§'!#§.pop();
                                                                                             _loc3_++;
                                                                                             continue loop11;
                                                                                          }
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             this.§'!#§.fixed = true;
                                                                                             this.§+4§.fixed = false;
                                                                                             §§push(param1);
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() * §18§);
                                                                                                if(_loc6_ || _loc2_)
                                                                                                {
                                                                                                   addr242:
                                                                                                   §§push(int(§§pop() - this.§+4§.length));
                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                   {
                                                                                                      _loc2_ = §§pop();
                                                                                                      §§push(0);
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         addr260:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            if(_loc6_ || _loc3_)
                                                                                                            {
                                                                                                            }
                                                                                                            break;
                                                                                                            addr273:
                                                                                                            _loc3_++;
                                                                                                         }
                                                                                                         addr311:
                                                                                                         §§push(int(§§pop()));
                                                                                                         break loop0;
                                                                                                         addr274:
                                                                                                      }
                                                                                                      break loop0;
                                                                                                   }
                                                                                                   loop4:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§push(_loc2_);
                                                                                                               if(!(_loc5_ && _loc3_))
                                                                                                               {
                                                                                                                  §§goto(addr311);
                                                                                                               }
                                                                                                               break loop0;
                                                                                                            }
                                                                                                            addr321:
                                                                                                            loop3:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               addr322:
                                                                                                               addr320:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  break loop4;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc3_++;
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                            }
                                                                                                            addr321:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            this.§+4§.push(0);
                                                                                                            if(_loc6_ || param1)
                                                                                                            {
                                                                                                               §§goto(addr273);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr321);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   while(§§pop() < §§pop())
                                                                                                   {
                                                                                                      this.§+4§.pop();
                                                                                                   }
                                                                                                   if(_loc6_ || param1)
                                                                                                   {
                                                                                                      this.§+4§.fixed = true;
                                                                                                   }
                                                                                                   this.§-! § = param1;
                                                                                                   return;
                                                                                                   addr323:
                                                                                                }
                                                                                                §§goto(addr242);
                                                                                             }
                                                                                             §§goto(addr322);
                                                                                          }
                                                                                          §§goto(addr320);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr311);
                                                                              }
                                                                              §§goto(addr321);
                                                                           }
                                                                           addr182:
                                                                        }
                                                                        §§goto(addr323);
                                                                     }
                                                                     addr178:
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                               §§goto(addr322);
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                   }
                                                   §§goto(addr242);
                                                }
                                                §§goto(addr182);
                                             }
                                             §§goto(addr191);
                                          }
                                          else
                                          {
                                             this.§<%§.writeFloat(0);
                                             if(!_loc5_)
                                             {
                                                continue;
                                             }
                                          }
                                          §§goto(addr274);
                                       }
                                       §§goto(addr205);
                                    }
                                    break;
                                 }
                                 _loc3_ = §§pop();
                                 if(_loc6_)
                                 {
                                    §§goto(addr321);
                                 }
                                 §§goto(addr242);
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr76);
                        }
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr69);
               }
               §§goto(addr41);
            }
            §§goto(addr69);
         }
         §§goto(addr48);
      }
      
      public function get §;@§() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§<%§.position = 0;
         }
         return this.§<%§;
      }
      
      public function get §2,§() : Vector.<Number>
      {
         return this.§'!#§;
      }
      
      public function get §-h§() : Vector.<Number>
      {
         return this.§+4§;
      }
   }
}
