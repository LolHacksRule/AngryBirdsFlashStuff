package §7H§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §'!w§
   {
      
      public static const §%I§:int = 4;
      
      public static const §#![§:int = 2;
      
      public static const §9>§:int = 3;
      
      public static const §,!w§:int = 4;
      
      public static const §9!C§:int = 0;
      
      public static const §2Q§:int = 0;
      
      public static const §<h§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §%I§ = 4;
            while(true)
            {
               §#![§ = 2;
               loop1:
               while(true)
               {
                  §9>§ = 3;
                  while(true)
                  {
                     §,!w§ = 4;
                     while(true)
                     {
                        §9!C§ = 0;
                        addr93:
                        while(_loc2_)
                        {
                        }
                     }
                     addr40:
                     if(!(_loc1_ && _loc2_))
                     {
                        continue loop1;
                     }
                  }
               }
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               return;
               addr71:
            }
         }
         while(true)
         {
            §2Q§ = 0;
            while(!_loc1_)
            {
               §<h§ = 0;
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr40);
            }
            §§goto(addr93);
         }
         §§goto(addr71);
      }
      
      private var §"!>§:ByteArray;
      
      private var §@+§:Vector.<Number>;
      
      private var §^!8§:Vector.<Number>;
      
      private var §@!P§:Boolean;
      
      private var §3!>§:int;
      
      private var §2!%§:Vector.<Number>;
      
      public function §'!w§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            this.§2!%§ = new Vector.<Number>(12,true);
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§"!>§ = new ByteArray();
                  loop2:
                  while(!(_loc4_ && this))
                  {
                     while(true)
                     {
                        do
                        {
                           this.§"!>§.endian = Endian.LITTLE_ENDIAN;
                           while(!_loc4_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        while(false);
                        
                        var _loc3_:int = 0;
                        while(true)
                        {
                           if(_loc3_ >= param1 * §#![§)
                           {
                              loop7:
                              while(true)
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    this.§@+§ = new Vector.<Number>(param1 * §%I§,true);
                                    loop8:
                                    while(true)
                                    {
                                       this.§^!8§ = new Vector.<Number>(param1 * §9>§,true);
                                       loop9:
                                       while(true)
                                       {
                                          this.§@!P§ = param2;
                                          while(true)
                                          {
                                             if(_loc5_ || param1)
                                             {
                                                continue loop8;
                                             }
                                             continue loop9;
                                             addr136:
                                             this.§3!>§ = param1;
                                             if(!_loc4_)
                                             {
                                                return;
                                             }
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              this.§"!>§.writeFloat(0);
                           }
                           _loc3_++;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function clone() : §'!w§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§'!w§ = new §'!w§(0,this.§@!P§);
         if(!_loc2_)
         {
            _loc1_.§"!>§.length = this.§"!>§.length;
            loop0:
            while(true)
            {
               _loc1_.§"!>§.writeBytes(this.§"!>§);
               while(true)
               {
                  _loc1_.§@+§ = this.§@+§.concat();
                  addr115:
                  addr44:
                  while(true)
                  {
                     _loc1_.§@+§.fixed = true;
                     continue loop0;
                  }
                  if(_loc3_ || _loc2_)
                  {
                     return _loc1_;
                     addr61:
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public function copyTo(param1:§'!w§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§^!8§;
         if(!_loc19_)
         {
            §§push(this.§3!>§);
            loop0:
            while(true)
            {
               §§push(§9>§);
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
                        loop4:
                        while(true)
                        {
                           §§push(param2);
                           if(!(_loc19_ && param3))
                           {
                              if(!(_loc18_ || param2))
                              {
                                 break;
                              }
                              §§push(§9>§);
                              if(!(_loc18_ || this))
                              {
                                 continue loop1;
                              }
                              §§push(§§pop() * §§pop());
                              if(!(_loc18_ || this))
                              {
                                 continue loop2;
                              }
                              §§push(int(§§pop()));
                           }
                           loop5:
                           for(; !_loc19_; while(true)
                           {
                              §§push(0);
                              if(_loc19_ && param3)
                              {
                                 break;
                              }
                              _loc8_ = §§pop();
                              if(_loc19_)
                              {
                                 continue;
                              }
                              if(!(_loc18_ || this))
                              {
                                 continue loop4;
                              }
                           })
                           {
                              _loc7_ = §§pop();
                              loop6:
                              while(true)
                              {
                                 addr57:
                                 addr189:
                                 loop7:
                                 while(true)
                                 {
                                    if(!param5)
                                    {
                                       §§push(0);
                                       if(_loc18_)
                                       {
                                          _loc8_ = §§pop();
                                          if(_loc18_ || param2)
                                          {
                                             addr188:
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                break loop7;
                                             }
                                             addr188:
                                          }
                                          addr185:
                                          _loc8_++;
                                          if(_loc18_)
                                          {
                                             §§goto(addr188);
                                          }
                                          var _loc10_:ByteArray = param1.§"!>§;
                                          if(!_loc19_)
                                          {
                                             §§push(this.§3!>§);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§#![§);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc18_)
                                                   {
                                                      §§push(§,!w§);
                                                      if(_loc18_ || param3)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc19_ && param3))
                                                         {
                                                            §§push(int(§§pop()));
                                                            loop13:
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               addr347:
                                                               while(true)
                                                               {
                                                                  §§push(param2);
                                                                  if(_loc18_)
                                                                  {
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(§#![§);
                                                                        if(!(_loc19_ && param2))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc19_ && param3))
                                                                           {
                                                                              §§push(§,!w§);
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc18_ || param3))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(int(§§pop()));
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               addr349:
                                                            }
                                                         }
                                                         §§goto(addr349);
                                                      }
                                                      addr354:
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc18_)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                      if(§§pop())
                                                      {
                                                         addr355:
                                                         _loc11_ = param1.§@+§;
                                                         if(_loc18_)
                                                         {
                                                            §§push(this.§3!>§);
                                                            if(_loc18_ || param2)
                                                            {
                                                               §§push(§%I§);
                                                               if(_loc18_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(!(_loc19_ && param3))
                                                                     {
                                                                        loop32:
                                                                        while(true)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           if(!(_loc19_ && this))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§%I§);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc18_ || param2)
                                                                                    {
                                                                                       continue loop21;
                                                                                    }
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc13_ = §§pop();
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(param3);
                                                                                             if(!(_loc19_ && param2))
                                                                                             {
                                                                                                §§push(§§pop() / _loc13_);
                                                                                                if(_loc18_ || param1)
                                                                                                {
                                                                                                   addr500:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc13_ = §§pop();
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      if(true)
                                                                                                      {
                                                                                                         var _loc14_:*;
                                                                                                         _loc11_[_loc14_ = _loc7_++] = this.§@+§[_loc12_++] * _loc13_;
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            var _loc15_:*;
                                                                                                            _loc11_[_loc15_ = _loc7_++] = this.§@+§[_loc12_++] * _loc13_;
                                                                                                            if(_loc18_ || this)
                                                                                                            {
                                                                                                               var _loc16_:*;
                                                                                                               _loc11_[_loc16_ = _loc7_++] = this.§@+§[_loc12_++] * _loc13_;
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  var _loc17_:*;
                                                                                                                  _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                  if(_loc18_ || param2)
                                                                                                                  {
                                                                                                                     addr739:
                                                                                                                     if(_loc18_ || param2)
                                                                                                                     {
                                                                                                                        addr760:
                                                                                                                        if(_loc18_ || this)
                                                                                                                        {
                                                                                                                           addr666:
                                                                                                                           if(_loc18_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 addr677:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr769:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc12_++;
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc8_++;
                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             §§goto(addr784);
                                                                                                                                          }
                                                                                                                                          addr772:
                                                                                                                                       }
                                                                                                                                       addr780:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          break loop21;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr677:
                                                                                                                              }
                                                                                                                              §§goto(addr784);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc18_ || this)
                                                                                                                              {
                                                                                                                                 §§goto(addr769);
                                                                                                                              }
                                                                                                                              §§goto(addr784);
                                                                                                                           }
                                                                                                                           addr761:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr761);
                                                                                                                        }
                                                                                                                        addr760:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                     }
                                                                                                                     addr739:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr759:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr760);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr739);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr666);
                                                                                                      }
                                                                                                      break loop25;
                                                                                                   }
                                                                                                   §§goto(addr784);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr500);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             break loop25;
                                                                                          }
                                                                                          addr545:
                                                                                       }
                                                                                       §§goto(addr677);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr780);
                                                                                    }
                                                                                    addr527:
                                                                                 }
                                                                                 loop23:
                                                                                 while(§§pop() < §§pop())
                                                                                 {
                                                                                    if(this.§@!P§)
                                                                                    {
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                addr557:
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr527);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(_loc18_ || param2)
                                                                                                {
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      loop24:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         if(_loc19_ && this)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         while(§§pop() < §§pop())
                                                                                                         {
                                                                                                            _loc11_[_loc14_ = _loc7_++] = this.§@+§[_loc8_];
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  break loop32;
                                                                                                               }
                                                                                                               break loop23;
                                                                                                            }
                                                                                                            §§goto(addr666);
                                                                                                         }
                                                                                                         §§goto(addr557);
                                                                                                         addr547:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop24;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop23;
                                                                                                      addr548:
                                                                                                   }
                                                                                                   _loc8_ = §§pop();
                                                                                                   §§goto(addr545);
                                                                                                   §§goto(addr780);
                                                                                                }
                                                                                                break loop21;
                                                                                             }
                                                                                             addr567:
                                                                                          }
                                                                                          §§goto(addr666);
                                                                                       }
                                                                                       §§goto(addr772);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc11_[_loc14_ = _loc7_++] = this.§@+§[_loc12_++];
                                                                                       if(!(_loc19_ && param3))
                                                                                       {
                                                                                          _loc11_[_loc15_ = _loc7_++] = this.§@+§[_loc12_++];
                                                                                          if(!(_loc19_ && param1))
                                                                                          {
                                                                                             _loc11_[_loc16_ = _loc7_++] = this.§@+§[_loc12_++];
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                §§goto(addr739);
                                                                                             }
                                                                                             §§goto(addr759);
                                                                                          }
                                                                                          §§goto(addr760);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr666);
                                                                                 }
                                                                                 §§goto(addr784);
                                                                              }
                                                                              addr566:
                                                                              _loc12_ = §§pop();
                                                                              §§goto(addr567);
                                                                              addr403:
                                                                           }
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc8_++;
                                                                           if(_loc18_)
                                                                           {
                                                                              §§goto(addr547);
                                                                           }
                                                                           §§goto(addr677);
                                                                        }
                                                                        addr453:
                                                                     }
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr783);
                                                                  }
                                                               }
                                                               §§goto(addr556);
                                                            }
                                                            §§goto(addr453);
                                                         }
                                                      }
                                                      addr784:
                                                      return;
                                                   }
                                                   §§goto(addr349);
                                                }
                                             }
                                          }
                                          §§goto(addr355);
                                       }
                                    }
                                    if(_loc19_)
                                    {
                                       continue loop5;
                                       break;
                                    }
                                    if(!_loc19_)
                                    {
                                       param5.transformVectors(this.§^!8§,this.§2!%§);
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                                 loop10:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    addr190:
                                    while(§§pop() < §§pop())
                                    {
                                       _loc9_[_loc14_ = _loc7_++] = this.§^!8§[_loc8_];
                                       while(true)
                                       {
                                          if(!(_loc18_ || param1))
                                          {
                                             continue loop10;
                                          }
                                          §§goto(addr185);
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr185);
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(false)
            {
               §§goto(addr57);
            }
            else
            {
               while(true)
               {
                  §§push(_loc8_);
                  if(!(_loc19_ && param3))
                  {
                     §§push(_loc6_);
                     if(!_loc19_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc18_)
                           {
                              addr151:
                           }
                        }
                        else
                        {
                           _loc9_[_loc14_ = _loc7_++] = this.§2!%§[_loc8_];
                           if(!_loc19_)
                           {
                              if(_loc18_)
                              {
                                 _loc8_++;
                                 if(!_loc19_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr151);
                              }
                              else
                              {
                                 §§goto(addr188);
                              }
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr190);
                  }
               }
            }
            §§goto(addr189);
         }
      }
      
      public function append(param1:§'!w§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:int = this.§"!>§.length;
         if(!_loc10_)
         {
            this.§"!>§.length += param1.§"!>§.length;
            while(true)
            {
               this.§"!>§.position = _loc2_;
               loop1:
               for(; !(_loc10_ && _loc3_); while(true)
               {
                  if(_loc9_ || this)
                  {
                     this.§@+§.fixed = false;
                     if(_loc9_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               },while(false)
               {
                  §§goto(addr33);
               },var _loc3_:Vector.<Number> = param1.§@+§,var _loc4_:int = _loc3_.length,var _loc5_:int = 0,loop5:
               while(true)
               {
                  if(_loc5_ >= _loc4_)
                  {
                     loop6:
                     while(true)
                     {
                        this.§@+§.fixed = true;
                        while(_loc9_ || _loc3_)
                        {
                           this.§^!8§.fixed = false;
                           if(!_loc10_)
                           {
                              if(_loc9_)
                              {
                                 if(!(_loc9_ || _loc2_))
                                 {
                                    _loc5_++;
                                    break;
                                 }
                                 addr137:
                                 if(true)
                                 {
                                    break loop5;
                                 }
                                 continue loop5;
                              }
                              continue loop6;
                           }
                        }
                        continue loop5;
                     }
                  }
                  else
                  {
                     this.§@+§.push(_loc3_[_loc5_]);
                  }
                  §§goto(addr137);
               },var _loc6_:Vector.<Number>,var _loc7_:int = (_loc6_ = param1.§^!8§).length,var _loc8_:int = 0,if(!_loc10_)
               {
                  while(true)
                  {
                     if(_loc8_ >= _loc7_)
                     {
                        loop9:
                        while(_loc9_ || param1)
                        {
                           if(!_loc10_)
                           {
                              this.§^!8§.fixed = true;
                              while(true)
                              {
                                 this.§3!>§ += param1.§52§;
                                 if(_loc9_ || _loc3_)
                                 {
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    continue loop9;
                                 }
                              }
                              return;
                              addr200:
                           }
                        }
                        continue;
                     }
                     this.§^!8§.push(_loc6_[_loc8_]);
                     _loc8_++;
                  }
               },§§goto(addr200))
               {
                  while(true)
                  {
                     this.§"!>§.writeBytes(param1.§"!>§);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr31);
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(_loc9_)
         {
            §§push(int(§§pop() * §9>§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§^!8§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§^!8§[_loc7_ = _loc5_++] = param3;
         if(_loc9_)
         {
            this.§^!8§[_loc5_] = param4;
         }
      }
      
      public function §6!T§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(!(_loc6_ && param2))
         {
            §§push(int(§§pop() * §9>§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§^!8§[_loc5_ = _loc4_++] = param2;
         if(_loc7_)
         {
            this.§^!8§[_loc4_] = param3;
         }
      }
      
      public function §+j§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!(_loc5_ && this))
         {
            §§push(int(§§pop() * §9>§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            param2.x = this.§^!8§[_loc3_++];
            while(true)
            {
               param2.y = this.§^!8§[_loc3_++];
               §§goto(addr82);
            }
         }
         addr82:
         while(true)
         {
            param2.z = this.§^!8§[_loc3_];
            if(_loc4_ || _loc3_)
            {
               if(!_loc5_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §,!7§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            if(this.§@!P§)
            {
               addr22:
               §§push(param3);
               if(!(_loc8_ && param3))
               {
                  §§push(Number(§§pop()));
                  if(_loc9_ || param1)
                  {
                  }
               }
               addr43:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(_loc9_)
               {
                  §§goto(addr43);
               }
            }
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(_loc9_ || param1)
            {
               §§push(§§pop() / 255);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_ || param1)
                  {
                     _loc4_ = §§pop();
                     §§push(include.§`#§(param2) * _loc4_);
                     if(_loc8_ && param2)
                     {
                     }
                     §§goto(addr89);
                  }
                  §§push(Number(§§pop()));
               }
            }
            addr89:
            var _loc5_:* = §§pop();
            §§push(include.§^9§(param2) * _loc4_);
            if(_loc9_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(include.§]7§(param2) * _loc4_);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(!(_loc8_ && param2))
            {
               this.§5! §(param1,1,_loc5_,_loc6_,_loc7_,param3);
            }
            return;
         }
         §§goto(addr22);
      }
      
      private function §5! §(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1);
         if(_loc13_)
         {
            §§push(int(§§pop() * §%I§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(!_loc14_)
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
                  this.§@+§[_loc9_ = _loc7_++] = param3;
                  if(_loc13_)
                  {
                     var _loc10_:*;
                     this.§@+§[_loc10_ = _loc7_++] = param4;
                     if(!(_loc14_ && param2))
                     {
                        var _loc11_:*;
                        this.§@+§[_loc11_ = _loc7_++] = param5;
                        if(!(_loc14_ && param1))
                        {
                           var _loc12_:*;
                           this.§@+§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(!(_loc13_ || param2))
                  {
                     break;
                  }
                  §§push(_loc8_);
                  if(_loc14_)
                  {
                     continue;
                  }
                  §§push(§§pop() - 1);
                  if(_loc14_ && this)
                  {
                     continue;
                  }
                  _loc8_ = §§pop();
                  if(_loc13_)
                  {
                     break;
                  }
               }
               return;
            }
         }
      }
      
      private function §"!&§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1);
         if(_loc7_ || _loc3_)
         {
            §§push(int(§§pop() * §%I§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§@+§[_loc4_ = _loc3_++] = this.§@+§[_loc4_] * param2;
         var _loc5_:*;
         this.§@+§[_loc5_ = _loc3_++] = this.§@+§[_loc5_] * param2;
         var _loc6_:*;
         this.§@+§[_loc6_ = _loc3_++] = this.§@+§[_loc6_] * param2;
         if(_loc7_ || this)
         {
            this.§@+§[_loc3_] *= param2;
         }
      }
      
      public function §>!9§(param1:int) : uint
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         §§push(param1);
         if(_loc8_ || this)
         {
            §§push(int(§§pop() * §%I§));
         }
         var _loc2_:* = §§pop();
         if(!_loc7_)
         {
            if(this.§@!P§)
            {
               addr40:
               §§push(Number(this.§@+§[_loc2_ + 3]));
               if(!_loc8_)
               {
               }
               addr59:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(_loc8_ || _loc2_)
               {
                  §§goto(addr59);
               }
            }
            var _loc3_:* = §§pop();
            if(_loc8_ || param1)
            {
               §§push(_loc3_);
               loop0:
               while(§§pop() != 0)
               {
                  loop1:
                  while(true)
                  {
                     §§push(255);
                     if(!(_loc7_ && param1))
                     {
                        §§push(§§pop() / _loc3_);
                        if(!(_loc7_ && _loc2_))
                        {
                           §§push(Number(§§pop()));
                        }
                        while(true)
                        {
                           _loc3_ = §§pop();
                           loop3:
                           while(!(_loc7_ && _loc2_))
                           {
                              while(true)
                              {
                                 §§push(this.§@+§[_loc2_] * _loc3_);
                                 if(_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    addr169:
                                    while(_loc8_ || this)
                                    {
                                       if(!_loc8_)
                                       {
                                          break loop0;
                                       }
                                       §§push(this.§@+§[_loc2_ + 1] * _loc3_);
                                       if(!_loc7_)
                                       {
                                          continue loop5;
                                       }
                                       while(true)
                                       {
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             _loc5_ = §§pop();
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr179);
                                       continue loop0;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           continue loop1;
                        }
                        addr208:
                     }
                     break;
                  }
                  return §§pop();
               }
               §§goto(addr221);
               §§push(0);
            }
            §§goto(addr216);
         }
         §§goto(addr40);
      }
      
      public function §!0§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc5_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(§§pop() < 0.001)
               {
                  addr119:
                  while(true)
                  {
                     §§push(0.001);
                     addr120:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr121:
                        while(true)
                        {
                           param2 = §§pop();
                           addr122:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr119:
               }
               while(true)
               {
                  if(this.§@!P§)
                  {
                     addr94:
                     this.§,!7§(param1,this.§>!9§(param1),param2);
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop() * §%I§);
                        if(!_loc4_)
                        {
                           if(_loc5_)
                           {
                              if(!_loc4_)
                              {
                                 addr75:
                                 §§push(§§pop() + 3);
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 addr78:
                                 _loc3_ = §§pop();
                                 do
                                 {
                                    this.§@+§[_loc3_] = param2;
                                 }
                                 while(!_loc5_);
                                 
                                 if(!(_loc4_ && param1))
                                 {
                                    if(!_loc4_)
                                    {
                                       §§goto(addr22);
                                    }
                                    §§goto(addr94);
                                 }
                                 if(_loc5_ || param2)
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       break;
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr78);
               }
               addr22:
               return;
            }
         }
         §§goto(addr119);
      }
      
      public function §5!&§(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_ || this)
         {
            §§push(§§pop() * §%I§);
            if(!_loc4_)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§@+§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(int(§§pop() * §#![§));
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            this.§"!>§.position = _loc4_ * §,!w§;
         }
         do
         {
            this.§"!>§.writeFloat(param2);
            do
            {
               this.§"!>§.writeFloat(param3);
            }
            while(_loc5_);
            
         }
         while(!(_loc6_ || this));
         
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || this)
         {
            §§push(int(§§pop() * §#![§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || this)
         {
            this.§"!>§.position = _loc3_ * §,!w§;
         }
         while(true)
         {
            param2.x = this.§"!>§.readFloat();
            while(!_loc4_)
            {
               param2.y = this.§"!>§.readFloat();
               if(_loc5_ || param2)
               {
                  return;
               }
            }
         }
      }
      
      public function §&M§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(!_loc9_)
         {
            §§push(int(§§pop() * §9>§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§^!8§[_loc6_ = _loc5_++] = this.§^!8§[_loc6_] + param2;
         var _loc7_:*;
         this.§^!8§[_loc7_ = _loc5_++] = this.§^!8§[_loc7_] + param3;
         if(!(_loc9_ && this))
         {
            this.§^!8§[_loc5_] += param4;
         }
      }
      
      public function §">§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_)
         {
            §§push(int(§§pop() * §9>§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            this.§2!%§[0] = this.§^!8§[_loc3_];
            while(true)
            {
               this.§2!%§[1] = this.§^!8§[_loc3_ + 1];
               loop1:
               while(true)
               {
                  this.§2!%§[2] = this.§^!8§[_loc3_ + 2];
                  loop2:
                  while(true)
                  {
                     param2.transformVectors(this.§2!%§,this.§2!%§);
                     loop3:
                     while(true)
                     {
                        this.§^!8§[_loc3_] = this.§2!%§[0];
                        while(true)
                        {
                           this.§^!8§[_loc3_ + 1] = this.§2!%§[1];
                           while(!(_loc4_ && param2))
                           {
                              continue loop3;
                              this.§^!8§[_loc3_ + 2] = this.§2!%§[2];
                              if(_loc5_ || _loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    if(_loc5_)
                                    {
                                       return;
                                       addr58:
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §]!P§(param1:uint, param2:Number = 1.0) : void
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
                  if(!_loc7_)
                  {
                     §§push(0.001);
                     if(!(_loc7_ && _loc3_))
                     {
                        addr34:
                        §§push(Number(§§pop()));
                        if(!(_loc7_ && this))
                        {
                           param2 = §§pop();
                           if(_loc8_ || param1)
                           {
                              addr50:
                              if(this.§@!P§)
                              {
                                 addr53:
                                 §§push(param2);
                                 if(!_loc7_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc8_)
                                    {
                                       addr69:
                                    }
                                    addr75:
                                    var _loc3_:* = Number(§§pop());
                                    addr74:
                                    if(_loc8_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() / 255);
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc8_)
                                             {
                                             }
                                             §§goto(addr102);
                                          }
                                          _loc3_ = §§pop();
                                          addr94:
                                          §§push(include.§`#§(param1) * _loc3_);
                                          if(_loc8_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       addr102:
                                       var _loc4_:* = §§pop();
                                       §§push(include.§^9§(param1) * _loc3_);
                                       if(_loc8_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc5_:* = §§pop();
                                       §§push(include.§]7§(param1) * _loc3_);
                                       if(!_loc7_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc6_:* = §§pop();
                                       if(_loc8_)
                                       {
                                          this.§5! §(0,this.§3!>§,_loc4_,_loc5_,_loc6_,param2);
                                       }
                                       return;
                                    }
                                    §§goto(addr94);
                                 }
                                 §§goto(addr69);
                              }
                              else
                              {
                                 §§push(Number(1));
                                 if(!_loc7_)
                                 {
                                    §§goto(addr74);
                                 }
                              }
                           }
                           §§goto(addr53);
                        }
                     }
                     §§goto(addr75);
                  }
               }
               §§goto(addr50);
            }
            §§goto(addr34);
         }
         §§goto(addr53);
      }
      
      public function §#!s§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(!_loc13_)
         {
            §§push(param6);
            if(!(_loc13_ && param2))
            {
               if(§§pop() < 0.001)
               {
                  if(_loc14_)
                  {
                     addr31:
                     §§push(0.001);
                     if(!(_loc13_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(_loc14_)
                        {
                           param6 = §§pop();
                        }
                        addr54:
                        var _loc7_:int = §§pop();
                        var _loc8_:int = 0;
                     }
                     §§goto(addr53);
                  }
               }
               §§push(param1);
               if(!(_loc13_ && param2))
               {
                  addr53:
                  while(_loc8_ < param2)
                  {
                     var _loc9_:*;
                     this.§@+§[_loc9_ = _loc7_++] = param3;
                     if(_loc14_ || this)
                     {
                        var _loc10_:*;
                        this.§@+§[_loc10_ = _loc7_++] = param4;
                        if(_loc14_ || param1)
                        {
                           var _loc11_:*;
                           this.§@+§[_loc11_ = _loc7_++] = param5;
                           if(_loc14_ || param1)
                           {
                              var _loc12_:*;
                              this.§@+§[_loc12_ = _loc7_++] = param6;
                           }
                        }
                     }
                     if(_loc13_)
                     {
                        break;
                     }
                     _loc8_++;
                     if(!(_loc14_ || param3))
                     {
                        break;
                     }
                  }
                  return;
                  §§push(§§pop() * §%I§);
               }
            }
            §§goto(addr54);
         }
         §§goto(addr31);
      }
      
      public function §[!m§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         if(_loc5_ || _loc3_)
         {
            §§push(param2);
            if(_loc5_ || param1)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc5_)
                  {
                     §§push(0.001);
                     if(_loc5_)
                     {
                        addr40:
                        §§push(Number(§§pop()));
                        if(_loc5_)
                        {
                           param2 = §§pop();
                           if(!_loc6_)
                           {
                              addr46:
                              §§push(param2);
                              if(_loc5_)
                              {
                                 addr49:
                                 if(§§pop() == 1)
                                 {
                                    if(!(_loc6_ && param1))
                                    {
                                       return;
                                    }
                                 }
                              }
                              addr65:
                              var _loc3_:int = §§pop();
                              addr64:
                              if(!_loc6_)
                              {
                                 if(this.§@!P§)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(Number(this.§@+§[_loc3_ + 3]));
                                       loop3:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          addr222:
                                          while(true)
                                          {
                                             §§push(param2);
                                             if(_loc5_ || param2)
                                             {
                                                §§push(§§pop() / _loc4_);
                                                if(_loc5_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             continue loop3;
                                          }
                                          _loc4_ = §§pop();
                                          loop5:
                                          while(true)
                                          {
                                             this.§@+§[_loc3_] *= _loc4_;
                                             addr173:
                                             addr180:
                                             addr161:
                                             while(!(_loc5_ || _loc3_))
                                             {
                                                continue loop5;
                                             }
                                             this.§@+§[_loc3_ + 1] *= _loc4_;
                                             while(true)
                                             {
                                                this.§@+§[_loc3_ + 2] *= _loc4_;
                                                addr143:
                                                while(_loc6_)
                                                {
                                                   §§goto(addr173);
                                                }
                                                addr127:
                                                this.§@+§[_loc3_ + 3] = param2;
                                                addr69:
                                                return;
                                                §§goto(addr180);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr222);
                                 }
                                 else
                                 {
                                    this.§@+§[_loc3_ + 3] *= param2;
                                    if(_loc5_ || _loc3_)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(_loc6_ && this)
                                             {
                                                §§goto(addr222);
                                             }
                                             §§goto(addr69);
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr143);
                                    }
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr222);
                           }
                           §§push(param1);
                           if(!_loc6_)
                           {
                              §§goto(addr64);
                              §§push(§§pop() * §%I§);
                           }
                        }
                        §§goto(addr65);
                     }
                     §§goto(addr49);
                  }
               }
               §§goto(addr46);
            }
            §§goto(addr40);
         }
         §§goto(addr46);
      }
      
      public function §&!O§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         if(!_loc9_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != this.§@!P§)
            {
               loop1:
               while(true)
               {
                  §§push(param2);
                  if(_loc8_ || this)
                  {
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           if(!_loc8_)
                           {
                              continue;
                           }
                           §§push(this.§3!>§);
                           while(true)
                           {
                              §§push(int(§§pop() * §%I§));
                              addr269:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                              }
                              addr224:
                              if(_loc9_ && param1)
                              {
                                 continue;
                              }
                              _loc4_ = §§pop();
                              if(_loc9_ && param2)
                              {
                                 while(true)
                                 {
                                    if(!(_loc8_ || this))
                                    {
                                       break loop0;
                                    }
                                    while(true)
                                    {
                                       §§push(0);
                                       if(!(_loc9_ && param2))
                                       {
                                          §§goto(addr224);
                                       }
                                       else
                                       {
                                          §§goto(addr269);
                                       }
                                    }
                                 }
                                 addr270:
                              }
                              loop30:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(_loc8_ || _loc3_)
                                 {
                                    if(_loc8_)
                                    {
                                       if(§§pop() >= _loc3_)
                                       {
                                          if(!(_loc9_ && param2))
                                          {
                                             if(_loc8_)
                                             {
                                                if(_loc8_)
                                                {
                                                   addr57:
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      if(_loc8_ || param2)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            break loop1;
                                                         }
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               do
                                                               {
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr204:
                                                                     addr182:
                                                                     while(true)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                     }
                                                                     addr182:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        addr183:
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              break loop11;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               while(_loc9_);
                                                               
                                                               addr192:
                                                               addr193:
                                                               _loc7_ = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(_loc8_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(§§pop() != 0)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc8_ || param1)
                                                                                 {
                                                                                    if(_loc9_ && this)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    §§push(§§pop() / _loc6_);
                                                                                    if(_loc8_ || this)
                                                                                    {
                                                                                       while(_loc8_)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(!(_loc9_ && _loc3_))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                while(_loc8_ || this)
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§"!&§(_loc4_,_loc7_);
                                                                                                      addr97:
                                                                                                      loop28:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr87:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc4_++;
                                                                                                            addr89:
                                                                                                            while(_loc8_)
                                                                                                            {
                                                                                                               continue loop30;
                                                                                                            }
                                                                                                            addr214:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§@!P§);
                                                                                                               addr197:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  addr202:
                                                                                                                  §§push(1);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr203);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr183);
                                                                                                addr154:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr213:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc5_ = §§pop();
                                                                                                   }
                                                                                                }
                                                                                                addr212:
                                                                                             }
                                                                                             §§goto(addr214);
                                                                                          }
                                                                                          §§goto(addr213);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§goto(addr182);
                                                                                          }
                                                                                          §§goto(addr204);
                                                                                       }
                                                                                       addr142:
                                                                                       addr180:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr154);
                                                                              }
                                                                              break;
                                                                              §§goto(addr57);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr182);
                                                                                 }
                                                                                 addr177:
                                                                              }
                                                                              §§goto(addr183);
                                                                           }
                                                                           addr173:
                                                                           addr106:
                                                                        }
                                                                        §§goto(addr87);
                                                                     }
                                                                     §§goto(addr177);
                                                                  }
                                                                  §§goto(addr142);
                                                                  §§goto(addr192);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(_loc8_ || param2)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§push(1);
                                                               while(true)
                                                               {
                                                                  §§goto(addr180);
                                                               }
                                                               addr179:
                                                            }
                                                            §§goto(addr173);
                                                         }
                                                         §§goto(addr197);
                                                         §§goto(addr204);
                                                      }
                                                   }
                                                   §§goto(addr106);
                                                }
                                                §§goto(addr97);
                                             }
                                             §§goto(addr89);
                                          }
                                          while(true)
                                          {
                                             if(_loc8_)
                                             {
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   break;
                                                }
                                                §§goto(addr193);
                                             }
                                             §§goto(addr162);
                                          }
                                          return;
                                          addr77:
                                       }
                                       §§push(this.§5!&§(0));
                                       §§goto(addr212);
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr179);
                              }
                           }
                        }
                        §§goto(addr270);
                     }
                     break;
                  }
                  continue loop0;
               }
               while(true)
               {
                  this.§@!P§ = param1;
                  §§goto(addr77);
               }
            }
            return;
         }
         §§goto(addr277);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§@!P§;
      }
      
      public function get §52§() : int
      {
         return this.§3!>§;
      }
      
      public function set §52§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_loc6_ || _loc2_)
         {
            §§push(param1);
            while(true)
            {
               §§push(§#![§);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_ || param1)
                  {
                     §§push(§§pop() * §,!w§);
                     if(_loc6_)
                     {
                        addr530:
                        §§push(§§pop() - this.§"!>§.length);
                     }
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr536:
                        while(true)
                        {
                           §§push(int(this.§"!>§.length));
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr530);
               }
               if(_loc5_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr439);
            }
         }
         §§goto(addr515);
      }
      
      public function get §%r§() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§"!>§.position = 0;
         }
         return this.§"!>§;
      }
      
      public function get §<`§() : Vector.<Number>
      {
         return this.§@+§;
      }
      
      public function get §1'§() : Vector.<Number>
      {
         return this.§^!8§;
      }
   }
}
