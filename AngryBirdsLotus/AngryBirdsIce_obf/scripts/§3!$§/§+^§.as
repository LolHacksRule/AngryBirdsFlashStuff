package §3!$§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §+^§
   {
      
      public static const §"!%§:int = 4;
      
      public static const §6!4§:int = 2;
      
      public static const §>!E§:int = 3;
      
      public static const §2'§:int = 4;
      
      public static const §;u§:int = 0;
      
      public static const §;F§:int = 0;
      
      public static const §!^§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §+^§)
         {
            §"!%§ = 4;
            do
            {
               §6!4§ = 2;
               §>!E§ = 3;
               §2'§ = 4;
               do
               {
                  §;u§ = 0;
               }
               while(!(_loc2_ || _loc1_));
               
               §;F§ = 0;
            }
            while(_loc1_);
            
         }
      }
      
      private var §=!?§:ByteArray;
      
      private var §[k§:Vector.<Number>;
      
      private var §&0§:Vector.<Number>;
      
      private var §3Y§:Boolean;
      
      private var §-!1§:int;
      
      private var §`R§:Vector.<Number>;
      
      public function §+^§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            this.§`R§ = new Vector.<Number>(12,true);
            while(true)
            {
               super();
               loop1:
               while(_loc5_ || param2)
               {
                  this.§=!?§ = new ByteArray();
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        this.§=!?§.endian = Endian.LITTLE_ENDIAN;
                        loop4:
                        while(_loc5_)
                        {
                           while(true)
                           {
                              this.§=!?§.length = param1 * §6!4§ * §2'§;
                              if(_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           var _loc3_:int = 0;
                           while(_loc3_ < param1 * §6!4§)
                           {
                              this.§=!?§.writeFloat(0);
                              do
                              {
                                 _loc3_++;
                              }
                              while(!(_loc5_ || _loc3_));
                              
                           }
                           do
                           {
                              this.§[k§ = new Vector.<Number>(param1 * §"!%§,true);
                              this.§&0§ = new Vector.<Number>(param1 * §>!E§,true);
                              this.§3Y§ = param2;
                           }
                           while(_loc4_);
                           
                           this.§-!1§ = param1;
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public function clone() : §+^§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§+^§ = new §+^§(0,this.§3Y§);
         _loc1_.§=!?§.length = this.§=!?§.length;
         do
         {
            _loc1_.§=!?§.writeBytes(this.§=!?§);
            _loc1_.§[k§ = this.§[k§.concat();
            _loc1_.§[k§.fixed = true;
            _loc1_.§&0§ = this.§&0§.concat();
            _loc1_.§&0§.fixed = true;
         }
         while(_loc2_);
         
         _loc1_.§-!1§ = this.§-!1§;
         return _loc1_;
      }
      
      public function copyTo(param1:§+^§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§&0§;
         if(_loc18_)
         {
            §§push(this.§-!1§);
            while(true)
            {
               §§push(§>!E§);
               loop1:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr108:
                     while(true)
                     {
                        _loc6_ = §§pop();
                        addr109:
                        while(true)
                        {
                           §§push(param2);
                           if(_loc18_ || param3)
                           {
                              §§push(§>!E§);
                              if(_loc19_ && param3)
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc18_)
                              {
                                 continue loop2;
                              }
                              §§push(int(§§pop()));
                           }
                           addr101:
                           loop5:
                           while(true)
                           {
                              _loc7_ = §§pop();
                              loop6:
                              while(true)
                              {
                                 addr68:
                                 loop7:
                                 while(true)
                                 {
                                    if(!param5)
                                    {
                                       §§push(0);
                                       if(_loc18_ || param1)
                                       {
                                          addr166:
                                          _loc8_ = §§pop();
                                          if(!_loc19_)
                                          {
                                             addr169:
                                             while(true)
                                             {
                                                break loop7;
                                             }
                                             addr199:
                                          }
                                          while(true)
                                          {
                                             _loc8_++;
                                             if(!(_loc19_ && param2))
                                             {
                                                §§goto(addr199);
                                             }
                                             addr202:
                                             var _loc10_:ByteArray = param1.§=!?§;
                                             if(!_loc19_)
                                             {
                                                §§push(this.§-!1§);
                                                if(_loc18_)
                                                {
                                                   §§push(§6!4§);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc18_)
                                                      {
                                                         §§push(§2'§);
                                                         if(!_loc19_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc19_ && param3))
                                                            {
                                                               addr333:
                                                               §§push(int(§§pop()));
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  §§push(param2);
                                                                  if(_loc19_ && param2)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc18_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               addr312:
                                                               _loc7_ = §§pop();
                                                               loop35:
                                                               while(_loc10_.length < _loc7_ + _loc6_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc10_.length = _loc7_ + _loc6_;
                                                                     if(_loc18_ || param2)
                                                                     {
                                                                        break loop35;
                                                                     }
                                                                     continue loop35;
                                                                  }
                                                               }
                                                               _loc10_.position = _loc7_;
                                                               loop36:
                                                               while(true)
                                                               {
                                                                  addr240:
                                                                  while(true)
                                                                  {
                                                                     _loc10_.writeBytes(this.§=!?§);
                                                                     if(!_loc18_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(param4);
                                                                     if(_loc18_ || param2)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc18_ || param2)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              if(!_loc19_)
                                                                              {
                                                                                 continue loop36;
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr356:
                                                                           §§push(!§§pop());
                                                                        }
                                                                        addr357:
                                                                        if(§§pop())
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr707);
                                                                     }
                                                                     continue loop36;
                                                                  }
                                                                  _loc11_ = param1.§[k§;
                                                                  if(_loc18_ || param1)
                                                                  {
                                                                     §§push(this.§-!1§);
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(§"!%§);
                                                                        if(_loc18_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param2);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop13;
                                                                                    }
                                                                                    addr494:
                                                                                    _loc8_ = §§pop();
                                                                                    addr495:
                                                                                    loop28:
                                                                                    while(true)
                                                                                    {
                                                                                       addr703:
                                                                                       loop24:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          addr704:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§-!1§);
                                                                                             addr706:
                                                                                             loop25:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   if(this.§3Y§)
                                                                                                   {
                                                                                                      loop26:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(this.§[k§[_loc12_ + 3]));
                                                                                                         addr474:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc13_ = §§pop();
                                                                                                            if(!(_loc19_ && param2))
                                                                                                            {
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  loop30:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr497:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc8_);
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           break loop30;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() >= §§pop())
                                                                                                                           {
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 continue loop24;
                                                                                                                              }
                                                                                                                              §§goto(addr707);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              var _loc14_:*;
                                                                                                                              _loc11_[_loc14_ = _loc7_++] = this.§[k§[_loc8_];
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 continue loop26;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr441:
                                                                                                                     _loc8_++;
                                                                                                                  }
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                               §§push(param3);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(§§pop() / _loc13_);
                                                                                                                  if(!(_loc19_ && param2))
                                                                                                                  {
                                                                                                                     addr455:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     addr455:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc13_ = §§pop();
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        continue loop28;
                                                                                                                     }
                                                                                                                     _loc11_[_loc14_ = _loc7_++] = this.§[k§[_loc12_++] * _loc13_;
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        var _loc15_:*;
                                                                                                                        _loc11_[_loc15_ = _loc7_++] = this.§[k§[_loc12_++] * _loc13_;
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           var _loc16_:*;
                                                                                                                           _loc11_[_loc16_ = _loc7_++] = this.§[k§[_loc12_++] * _loc13_;
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              var _loc17_:*;
                                                                                                                              _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                              if(!(_loc19_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    addr595:
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       addr598:
                                                                                                                                       if(!(_loc19_ && param3))
                                                                                                                                       {
                                                                                                                                          addr606:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             break loop13;
                                                                                                                                          }
                                                                                                                                          addr607:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr630:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc11_[_loc15_ = _loc7_++] = this.§[k§[_loc12_++];
                                                                                                                                             if(!(_loc19_ && this))
                                                                                                                                             {
                                                                                                                                                _loc11_[_loc16_ = _loc7_++] = this.§[k§[_loc12_++];
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr689:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr688:
                                                                                                                                                }
                                                                                                                                                §§goto(addr689);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr630:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr691:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             break loop13;
                                                                                                                                          }
                                                                                                                                          continue loop24;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr689);
                                                                                                                              }
                                                                                                                              §§goto(addr688);
                                                                                                                           }
                                                                                                                           §§goto(addr595);
                                                                                                                        }
                                                                                                                        §§goto(addr598);
                                                                                                                     }
                                                                                                                     §§goto(addr606);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr455);
                                                                                                               §§goto(addr630);
                                                                                                            }
                                                                                                            §§goto(addr607);
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc11_[_loc14_ = _loc7_++] = this.§[k§[_loc12_++];
                                                                                                      if(_loc18_ || param2)
                                                                                                      {
                                                                                                         §§goto(addr630);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr691);
                                                                                                }
                                                                                                §§goto(addr707);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr382:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc12_++;
                                                                                 _loc8_++;
                                                                                 if(_loc18_ || this)
                                                                                 {
                                                                                    §§goto(addr703);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              addr707:
                                                                              return;
                                                                           }
                                                                           §§goto(addr474);
                                                                        }
                                                                        §§goto(addr501);
                                                                     }
                                                                     §§goto(addr513);
                                                                  }
                                                                  §§goto(addr376);
                                                               }
                                                               addr334:
                                                            }
                                                            addr337:
                                                            break;
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc18_ || param1)
                                                   {
                                                      §§goto(addr356);
                                                   }
                                                   §§goto(addr357);
                                                }
                                                §§goto(addr334);
                                             }
                                             §§goto(addr260);
                                          }
                                          addr191:
                                       }
                                       addr71:
                                    }
                                    while(_loc18_)
                                    {
                                       param5.transformVectors(this.§&0§,this.§`R§);
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                                 addr201:
                                 §§push(_loc6_);
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       _loc9_[_loc14_ = _loc7_++] = this.§&0§[_loc8_];
                                       while(!(_loc19_ && param3))
                                       {
                                          §§goto(addr191);
                                       }
                                       addr183:
                                    }
                                    §§goto(addr202);
                                 }
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               addr52:
               if(_loc19_ && this)
               {
                  continue;
               }
               _loc8_ = §§pop();
               if(_loc18_)
               {
                  if(_loc18_)
                  {
                     if(_loc18_)
                     {
                        if(false)
                        {
                           §§goto(addr68);
                        }
                        while(true)
                        {
                           §§push(_loc8_);
                           if(!(_loc19_ && param2))
                           {
                              §§push(_loc6_);
                              if(!(_loc19_ && this))
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc19_ && this)
                                    {
                                       §§goto(addr169);
                                    }
                                    §§goto(addr202);
                                 }
                                 else
                                 {
                                    _loc9_[_loc14_ = _loc7_++] = this.§`R§[_loc8_];
                                    if(_loc18_ || param1)
                                    {
                                       continue;
                                    }
                                 }
                                 §§goto(addr183);
                              }
                              §§goto(addr201);
                           }
                           else
                           {
                              §§goto(addr166);
                           }
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr71);
               }
               while(true)
               {
                  §§push(0);
                  if(!(_loc19_ && this))
                  {
                     if(_loc18_ || param2)
                     {
                        §§goto(addr52);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr101);
               }
               §§goto(addr166);
               addr79:
            }
         }
         §§goto(addr79);
      }
      
      public function append(param1:§+^§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:int = this.§=!?§.length;
         if(_loc10_)
         {
            this.§=!?§.length += param1.§=!?§.length;
            loop0:
            while(true)
            {
               this.§=!?§.position = _loc2_;
               while(true)
               {
                  addr41:
                  addr32:
                  while(true)
                  {
                     this.§=!?§.writeBytes(param1.§=!?§);
                     addr47:
                     while(!_loc9_)
                     {
                     }
                     continue loop0;
                  }
                  if(_loc9_ && this)
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr41);
                  }
                  var _loc3_:Vector.<Number> = param1.§[k§;
                  var _loc4_:int = _loc3_.length;
                  var _loc5_:int = 0;
                  loop5:
                  while(true)
                  {
                     if(_loc5_ >= _loc4_)
                     {
                        loop6:
                        do
                        {
                           this.§[k§.fixed = true;
                           while(!(_loc9_ && _loc3_))
                           {
                              this.§&0§.fixed = false;
                              if(_loc10_)
                              {
                                 continue loop6;
                              }
                           }
                           loop8:
                           while(!(_loc10_ || _loc2_))
                           {
                              while(true)
                              {
                                 _loc5_++;
                                 continue loop8;
                              }
                           }
                           continue loop5;
                        }
                        while(_loc9_ && _loc2_);
                        
                        if(true)
                        {
                           break;
                        }
                        continue;
                     }
                     this.§[k§.push(_loc3_[_loc5_]);
                     §§goto(addr138);
                  }
                  var _loc6_:Vector.<Number>;
                  var _loc7_:int = (_loc6_ = param1.§&0§).length;
                  var _loc8_:int = 0;
                  if(_loc10_ || _loc2_)
                  {
                     while(true)
                     {
                        if(_loc8_ >= _loc7_)
                        {
                           if(!(_loc9_ && param1))
                           {
                              if(!(_loc10_ || param1))
                              {
                                 continue;
                              }
                              this.§&0§.fixed = true;
                           }
                           while(_loc10_ || _loc3_)
                           {
                              this.§-!1§ += param1.§7U§;
                              if(_loc10_)
                              {
                                 return;
                              }
                           }
                        }
                        else
                        {
                           this.§&0§.push(_loc6_[_loc8_]);
                        }
                     }
                  }
                  while(true)
                  {
                     _loc8_++;
                     §§goto(addr214);
                  }
               }
            }
         }
         while(true)
         {
            this.§[k§.fixed = false;
            if(!_loc9_)
            {
               §§goto(addr32);
            }
            §§goto(addr47);
         }
         §§goto(addr67);
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(!_loc8_)
         {
            §§push(int(§§pop() * §>!E§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§&0§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§&0§[_loc7_ = _loc5_++] = param3;
         if(!_loc8_)
         {
            this.§&0§[_loc5_] = param4;
         }
      }
      
      public function §^0§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(_loc7_)
         {
            §§push(int(§§pop() * §>!E§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§&0§[_loc5_ = _loc4_++] = param2;
         if(_loc7_)
         {
            this.§&0§[_loc4_] = param3;
         }
      }
      
      public function §>A§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop() * §>!E§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && param2))
         {
            param2.x = this.§&0§[_loc3_++];
         }
         while(true)
         {
            param2.y = this.§&0§[_loc3_++];
            while(!_loc4_)
            {
               param2.z = this.§&0§[_loc3_];
               if(!(_loc4_ && _loc3_))
               {
                  return;
               }
            }
         }
      }
      
      public function §[!"§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param2))
         {
            if(this.§3Y§)
            {
               addr27:
               §§push(param3);
               if(_loc9_ || param3)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_)
                  {
                     addr43:
                     §§push(Number(§§pop()));
                  }
               }
            }
            else
            {
               §§push(Number(1));
               if(!_loc8_)
               {
                  §§goto(addr43);
               }
            }
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(_loc9_ || param3)
            {
               §§push(§§pop() / 255);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc8_)
                  {
                     §§goto(addr70);
                  }
                  §§goto(addr83);
               }
            }
            addr70:
            _loc4_ = §§pop();
            §§push(§5!6§.§get §(param2) * _loc4_);
            if(_loc9_ || param1)
            {
               addr83:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(§5!6§.§>c§(param2) * _loc4_);
            if(_loc9_ || this)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(§5!6§.§;!D§(param2) * _loc4_);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(_loc9_)
            {
               this.§'K§(param1,1,_loc5_,_loc6_,_loc7_,param3);
            }
            return;
         }
         §§goto(addr27);
      }
      
      private function §'K§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1);
         if(_loc13_)
         {
            §§push(int(§§pop() * §"!%§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(_loc13_ || param2)
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
                  this.§[k§[_loc9_ = _loc7_++] = param3;
                  if(!(_loc14_ && this))
                  {
                     var _loc10_:*;
                     this.§[k§[_loc10_ = _loc7_++] = param4;
                     if(!(_loc14_ && param1))
                     {
                        var _loc11_:*;
                        this.§[k§[_loc11_ = _loc7_++] = param5;
                        if(_loc13_ || this)
                        {
                           var _loc12_:*;
                           this.§[k§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(_loc14_ && this)
                  {
                     break;
                  }
                  §§push(_loc8_);
                  if(_loc14_)
                  {
                     continue;
                  }
                  §§push(§§pop() - 1);
                  if(!(_loc13_ || this))
                  {
                     continue;
                  }
                  _loc8_ = §§pop();
                  if(_loc13_ || param3)
                  {
                     break;
                  }
               }
               return;
            }
         }
      }
      
      private function §5!G§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1);
         if(_loc7_ || param1)
         {
            §§push(int(§§pop() * §"!%§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§[k§[_loc4_ = _loc3_++] = this.§[k§[_loc4_] * param2;
         var _loc5_:*;
         this.§[k§[_loc5_ = _loc3_++] = this.§[k§[_loc5_] * param2;
         var _loc6_:*;
         this.§[k§[_loc6_ = _loc3_++] = this.§[k§[_loc6_] * param2;
         if(!(_loc8_ && this))
         {
            this.§[k§[_loc3_] *= param2;
         }
      }
      
      public function §2$§(param1:int) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         §§push(param1);
         if(_loc7_)
         {
            §§push(int(§§pop() * §"!%§));
         }
         var _loc2_:* = §§pop();
         if(!(_loc8_ && _loc3_))
         {
            if(this.§3Y§)
            {
               addr39:
               §§push(Number(this.§[k§[_loc2_ + 3]));
               if(_loc7_ || _loc3_)
               {
                  addr63:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(Number(1));
               if(_loc7_ || this)
               {
                  §§goto(addr63);
               }
            }
            var _loc3_:* = §§pop();
            if(!(_loc8_ && _loc2_))
            {
               if(_loc3_ == 0)
               {
                  return 0;
               }
               else
               {
                  while(true)
                  {
                     §§push(255);
                     if(_loc8_ && _loc3_)
                     {
                        break;
                     }
                     §§push(§§pop() / _loc3_);
                     loop1:
                     while(true)
                     {
                        _loc3_ = Number(§§pop());
                        addr173:
                        while(true)
                        {
                           §§push(Number(this.§[k§[_loc2_] * _loc3_));
                           do
                           {
                              _loc4_ = §§pop();
                              continue loop1;
                           }
                           while(!_loc7_);
                           
                           _loc6_ = §§pop();
                           return §5!6§.§<!E§(_loc4_,_loc5_,_loc6_);
                        }
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr173);
         }
         §§goto(addr39);
      }
      
      public function §,`§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         §§push(param2);
         loop0:
         while(true)
         {
            if(§§pop() < 0.001)
            {
               while(true)
               {
                  §§push(0.001);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
                  addr112:
                  while(true)
                  {
                     param2 = §§pop();
                     addr113:
                     while(true)
                     {
                     }
                  }
               }
               addr108:
            }
            while(true)
            {
               if(this.§3Y§)
               {
                  this.§[!"§(param1,this.§2$§(param1),param2);
                  if(!(_loc5_ && param1))
                  {
                     §§goto(addr19);
                  }
               }
               else
               {
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(§§pop() * §"!%§);
                     if(_loc4_)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           continue loop0;
                        }
                     }
                     else
                     {
                        addr67:
                        _loc3_ = §§pop();
                        if(_loc4_ || this)
                        {
                           this.§[k§[_loc3_] = param2;
                           addr19:
                           return;
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr67);
               }
               §§goto(addr113);
            }
         }
      }
      
      public function §+P§(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop() * §"!%§);
            if(_loc3_)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§[k§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(!_loc6_)
         {
            §§push(int(§§pop() * §6!4§));
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
         {
            this.§=!?§.position = _loc4_ * §2'§;
            do
            {
               this.§=!?§.writeFloat(param2);
               do
               {
                  this.§=!?§.writeFloat(param3);
               }
               while(_loc6_ && param3);
               
            }
            while(_loc6_ && param1);
            
         }
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_)
         {
            §§push(int(§§pop() * §6!4§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            this.§=!?§.position = _loc3_ * §2'§;
            while(true)
            {
               param2.x = this.§=!?§.readFloat();
               loop1:
               while(!_loc5_)
               {
                  while(true)
                  {
                     param2.y = this.§=!?§.readFloat();
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
         §§goto(addr72);
      }
      
      public function §7!?§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(_loc8_ || param3)
         {
            §§push(int(§§pop() * §>!E§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§&0§[_loc6_ = _loc5_++] = this.§&0§[_loc6_] + param2;
         var _loc7_:*;
         this.§&0§[_loc7_ = _loc5_++] = this.§&0§[_loc7_] + param3;
         if(_loc8_ || param3)
         {
            this.§&0§[_loc5_] += param4;
         }
      }
      
      public function §8N§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || param1)
         {
            §§push(int(§§pop() * §>!E§));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            this.§`R§[0] = this.§&0§[_loc3_];
            do
            {
               this.§`R§[1] = this.§&0§[_loc3_ + 1];
               this.§`R§[2] = this.§&0§[_loc3_ + 2];
               do
               {
                  param2.transformVectors(this.§`R§,this.§`R§);
               }
               while(!(_loc5_ || param2));
               
               this.§&0§[_loc3_] = this.§`R§[0];
            }
            while(!(_loc5_ || param2));
            
            this.§&0§[_loc3_ + 1] = this.§`R§[1];
         }
         this.§&0§[_loc3_ + 2] = this.§`R§[2];
      }
      
      public function §>,§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            §§push(param2);
            if(!(_loc8_ && param1))
            {
               if(§§pop() < 0.001)
               {
                  if(_loc7_)
                  {
                     param2 = 0.001;
                     if(_loc7_ || param2)
                     {
                     }
                     addr43:
                     §§push(Number(param2));
                     if(!(_loc8_ && _loc3_))
                     {
                        addr58:
                        var _loc3_:* = Number(§§pop());
                        addr57:
                        if(_loc7_ || param2)
                        {
                           §§push(_loc3_);
                           if(!(_loc8_ && this))
                           {
                              §§push(§§pop() / 255);
                              if(!(_loc8_ && param1))
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc8_ && this))
                                 {
                                    addr101:
                                    _loc3_ = §§pop();
                                    §§push(§5!6§.§get §(param1) * _loc3_);
                                    if(_loc7_)
                                    {
                                       addr109:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc4_:* = §§pop();
                                 §§push(§5!6§.§>c§(param1) * _loc3_);
                                 if(_loc7_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc5_:* = §§pop();
                                 §§push(§5!6§.§;!D§(param1) * _loc3_);
                                 if(_loc7_ || param2)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc6_:* = §§pop();
                                 if(_loc7_)
                                 {
                                    this.§'K§(0,this.§-!1§,_loc4_,_loc5_,_loc6_,param2);
                                 }
                                 return;
                              }
                              §§goto(addr109);
                           }
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr57);
                  }
                  §§goto(addr43);
               }
               if(this.§3Y§)
               {
                  §§goto(addr43);
               }
               else
               {
                  §§push(Number(1));
                  if(!_loc8_)
                  {
                     §§goto(addr57);
                  }
               }
            }
            §§goto(addr58);
         }
         §§goto(addr43);
      }
      
      public function §4!F§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!_loc14_)
         {
            §§push(param6);
            if(_loc13_ || param3)
            {
               if(§§pop() < 0.001)
               {
                  if(!(_loc14_ && param2))
                  {
                     §§push(0.001);
                     if(!(_loc14_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc14_)
                        {
                           addr46:
                           param6 = §§pop();
                           §§goto(addr47);
                        }
                     }
                     §§goto(addr52);
                  }
                  §§goto(addr47);
               }
               addr47:
               §§push(param1);
               if(_loc13_)
               {
                  addr52:
                  §§push(int(§§pop() * §"!%§));
               }
               var _loc7_:* = §§pop();
               var _loc8_:int = 0;
               while(_loc8_ < param2)
               {
                  var _loc9_:*;
                  this.§[k§[_loc9_ = _loc7_++] = param3;
                  if(!_loc14_)
                  {
                     var _loc10_:*;
                     this.§[k§[_loc10_ = _loc7_++] = param4;
                     if(!_loc14_)
                     {
                        var _loc11_:*;
                        this.§[k§[_loc11_ = _loc7_++] = param5;
                        if(_loc13_)
                        {
                           var _loc12_:*;
                           this.§[k§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(!_loc14_)
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
         }
         §§goto(addr46);
      }
      
      public function §<Y§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         if(!_loc6_)
         {
            §§push(param2);
            if(_loc5_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§push(0.001);
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc5_)
                        {
                           param2 = §§pop();
                           if(_loc5_)
                           {
                              addr41:
                              §§push(param2);
                              if(_loc6_)
                              {
                              }
                              addr60:
                              var _loc3_:int = §§pop();
                              if(!this.§3Y§)
                              {
                                 this.§[k§[_loc3_ + 3] *= param2;
                                 if(_loc6_)
                                 {
                                    while(_loc6_)
                                    {
                                       while(!(_loc5_ || this))
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(§§pop() / _loc4_);
                                                         if(!_loc6_)
                                                         {
                                                            addr197:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         _loc4_ = §§pop();
                                                         while(_loc6_ && param1)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Number(this.§[k§[_loc3_ + 3]));
                                                               continue loop3;
                                                            }
                                                         }
                                                         continue loop2;
                                                         addr199:
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr197);
                                                }
                                             }
                                             §§goto(addr199);
                                          }
                                          this.§[k§[_loc3_ + 2] *= _loc4_;
                                       }
                                       this.§[k§[_loc3_ + 3] = param2;
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr210);
                              addr59:
                           }
                           addr54:
                           §§push(param1);
                           if(!_loc6_)
                           {
                              §§goto(addr59);
                              §§push(§§pop() * §"!%§);
                           }
                           §§goto(addr60);
                        }
                     }
                     if(§§pop() == 1)
                     {
                        if(_loc6_ && _loc3_)
                        {
                           §§goto(addr54);
                        }
                     }
                     §§goto(addr54);
                  }
                  return;
               }
            }
            §§goto(addr41);
         }
         §§goto(addr54);
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         if(_loc8_ || _loc3_)
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() == this.§3Y§)
               {
                  if(_loc8_)
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr234:
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
                     while(true)
                     {
                        §§push(this.§-!1§);
                        if(_loc8_ || param1)
                        {
                           §§push(int(§§pop() * §"!%§));
                        }
                        loop4:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr224:
                           while(!_loc9_)
                           {
                              continue loop4;
                           }
                           §§goto(addr234);
                        }
                        if(_loc9_ && this)
                        {
                           continue;
                        }
                        loop7:
                        while(true)
                        {
                           §§push(_loc4_);
                           if(_loc8_)
                           {
                              if(_loc8_ || param1)
                              {
                                 if(§§pop() >= _loc3_)
                                 {
                                    if(_loc8_)
                                    {
                                       if(_loc8_)
                                       {
                                          §§goto(addr55);
                                       }
                                       while(true)
                                       {
                                          §§push(Number(_loc5_));
                                          addr166:
                                          while(true)
                                          {
                                             addr169:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr170:
                                                while(true)
                                                {
                                                   _loc6_ = §§pop();
                                                }
                                             }
                                          }
                                       }
                                       addr164:
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(!(_loc9_ && param1))
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(1);
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop22:
                                                while(true)
                                                {
                                                   if(_loc8_ || param2)
                                                   {
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         loop15:
                                                         while(true)
                                                         {
                                                            _loc7_ = §§pop();
                                                            if(_loc6_ == 0)
                                                            {
                                                               break;
                                                            }
                                                            §§push(_loc7_);
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               §§push(§§pop() / _loc6_);
                                                               if(!(_loc9_ && param2))
                                                               {
                                                                  if(_loc9_ && this)
                                                                  {
                                                                     continue loop22;
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr119:
                                                                     _loc7_ = §§pop();
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        this.§5!G§(_loc4_,_loc7_);
                                                                        if(!(_loc9_ && param2))
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           addr139:
                                                                           addr179:
                                                                           while(true)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                           }
                                                                           §§goto(addr119);
                                                                        }
                                                                        addr138:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§3Y§);
                                                                        addr163:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr164);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(1);
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              addr168:
                                                                           }
                                                                           §§goto(addr169);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr166);
                                                               }
                                                               §§goto(addr119);
                                                            }
                                                            §§goto(addr139);
                                                         }
                                                         continue loop7;
                                                      }
                                                      addr178:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr179);
                                                }
                                             }
                                             addr142:
                                          }
                                          §§goto(addr138);
                                       }
                                       §§goto(addr163);
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.§+P§(0));
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr142);
                        }
                     }
                  }
                  addr55:
                  this.§3Y§ = param1;
                  return;
               }
            }
            return;
         }
         §§goto(addr226);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§3Y§;
      }
      
      public function get §7U§() : int
      {
         return this.§-!1§;
      }
      
      public function set §7U§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         if(_loc5_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§6!4§);
               loop1:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc6_ && this))
                  {
                     §§push(§§pop() * §2'§);
                     if(_loc5_)
                     {
                        addr399:
                        §§push(§§pop() - this.§=!?§.length);
                     }
                     §§push(int(§§pop()));
                     while(true)
                     {
                        _loc2_ = §§pop();
                        §§push(int(this.§=!?§.length));
                        loop3:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           addr384:
                           while(true)
                           {
                              this.§=!?§.length += _loc2_;
                              §§push(_loc2_);
                              continue loop3;
                           }
                        }
                        if(_loc6_ && _loc3_)
                        {
                           continue;
                        }
                        if(_loc6_)
                        {
                           continue loop0;
                        }
                        §§push(0);
                        if(_loc6_)
                        {
                           continue loop1;
                        }
                        if(§§pop() > §§pop())
                        {
                           §§goto(addr353);
                        }
                        §§goto(addr294);
                     }
                  }
                  §§goto(addr399);
               }
            }
         }
         §§goto(addr384);
      }
      
      public function get §]!E§() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§=!?§.position = 0;
         }
         return this.§=!?§;
      }
      
      public function get §3!?§() : Vector.<Number>
      {
         return this.§[k§;
      }
      
      public function get §[&§() : Vector.<Number>
      {
         return this.§&0§;
      }
   }
}
