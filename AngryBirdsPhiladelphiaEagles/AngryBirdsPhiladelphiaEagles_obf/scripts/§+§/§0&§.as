package §+§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §0&§
   {
      
      public static const §<W§:int = 4;
      
      public static const §7R§:int = 2;
      
      public static const §&!H§:int = 3;
      
      public static const §8!I§:int = 4;
      
      public static const §%#§:int = 0;
      
      public static const § C§:int = 0;
      
      public static const §@!%§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §<W§ = 4;
            §7R§ = 2;
            loop0:
            while(true)
            {
               §&!H§ = 3;
               while(true)
               {
                  §8!I§ = 4;
                  while(!_loc1_)
                  {
                     if(_loc2_)
                     {
                        §%#§ = 0;
                        loop3:
                        while(_loc2_)
                        {
                           § C§ = 0;
                           while(true)
                           {
                              §@!%§ = 0;
                              if(!(_loc1_ && _loc2_))
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      private var §!E§:ByteArray;
      
      private var §+o§:Vector.<Number>;
      
      private var §^x§:Vector.<Number>;
      
      private var §7o§:Boolean;
      
      private var §]m§:int;
      
      private var §>"§:Vector.<Number>;
      
      public function §0&§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§>"§ = new Vector.<Number>(12,true);
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§!E§ = new ByteArray();
                  continue loop0;
                  addr36:
                  if(!(_loc4_ && param1))
                  {
                     if(false)
                     {
                        while(true)
                        {
                           this.§!E§.endian = Endian.LITTLE_ENDIAN;
                           addr51:
                           loop4:
                           while(_loc5_ || this)
                           {
                              while(true)
                              {
                                 this.§!E§.length = param1 * §7R§ * §8!I§;
                                 if(!(_loc5_ || param1))
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr36);
                              }
                           }
                           continue loop0;
                        }
                        addr45:
                     }
                     var _loc3_:int = 0;
                     while(_loc3_ < param1 * §7R§)
                     {
                        this.§!E§.writeFloat(0);
                        _loc3_++;
                     }
                     if(_loc5_)
                     {
                        this.§+o§ = new Vector.<Number>(param1 * §<W§,true);
                     }
                     do
                     {
                        this.§^x§ = new Vector.<Number>(param1 * §&!H§,true);
                        this.§7o§ = param2;
                        do
                        {
                           this.§]m§ = param1;
                        }
                        while(_loc4_);
                        
                     }
                     while(_loc4_);
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function clone() : §0&§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§0&§ = new §0&§(0,this.§7o§);
         if(!_loc2_)
         {
            _loc1_.§!E§.length = this.§!E§.length;
            _loc1_.§!E§.writeBytes(this.§!E§);
         }
         loop0:
         do
         {
            _loc1_.§+o§ = this.§+o§.concat();
            loop1:
            while(true)
            {
               _loc1_.§+o§.fixed = true;
               loop2:
               do
               {
                  _loc1_.§^x§ = this.§^x§.concat();
                  while(!_loc2_)
                  {
                     _loc1_.§^x§.fixed = true;
                     do
                     {
                        _loc1_.§]m§ = this.§]m§;
                     }
                     while(!_loc3_);
                     
                     if(_loc3_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(_loc2_ && _loc2_);
               
               continue loop0;
            }
         }
         while(!(_loc3_ || _loc2_));
         
         return _loc1_;
      }
      
      public function copyTo(param1:§0&§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§^x§;
         if(!(_loc19_ && param2))
         {
            §§push(this.§]m§);
            loop0:
            while(true)
            {
               §§push(§&!H§);
               addr126:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr127:
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
                           if(_loc18_ || param3)
                           {
                              if(!(_loc18_ || param2))
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           addr114:
                           while(true)
                           {
                              _loc7_ = §§pop();
                              addr115:
                              while(_loc18_ || param1)
                              {
                              }
                              continue loop4;
                              addr78:
                              §§push(0);
                              if(!(_loc18_ || this))
                              {
                                 continue;
                              }
                              _loc8_ = §§pop();
                              if(!_loc19_)
                              {
                                 if(false)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       if(!param5)
                                       {
                                          §§push(0);
                                          if(_loc18_)
                                          {
                                             addr178:
                                             _loc8_ = §§pop();
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                break loop8;
                                                addr196:
                                                _loc8_++;
                                             }
                                             addr197:
                                          }
                                          break;
                                       }
                                       if(!(_loc19_ && param1))
                                       {
                                          param5.transformVectors(this.§^x§,this.§>"§);
                                          addr71:
                                          while(_loc18_ || param2)
                                          {
                                             §§goto(addr78);
                                          }
                                          §§goto(addr115);
                                          addr71:
                                       }
                                       §§goto(addr71);
                                       §§goto(addr178);
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       addr199:
                                       while(§§pop() < §§pop())
                                       {
                                          var _loc14_:*;
                                          _loc9_[_loc14_ = _loc7_++] = this.§^x§[_loc8_];
                                          while(true)
                                          {
                                             if(!_loc18_)
                                             {
                                                break loop11;
                                             }
                                             §§goto(addr196);
                                          }
                                       }
                                       break;
                                       §§goto(addr197);
                                    }
                                    addr200:
                                    var _loc10_:ByteArray = param1.§!E§;
                                    §§push(this.§]m§);
                                    loop12:
                                    while(true)
                                    {
                                       §§push(§7R§);
                                       loop13:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          loop14:
                                          while(true)
                                          {
                                             §§push(§8!I§);
                                             if(_loc18_ || param1)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc19_ && param2))
                                                {
                                                   §§push(int(§§pop()));
                                                   do
                                                   {
                                                      _loc6_ = §§pop();
                                                      §§push(param2);
                                                      if(_loc18_)
                                                      {
                                                         §§push(§7R§);
                                                         if(!(_loc19_ && param3))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc19_ && this))
                                                            {
                                                               if(_loc18_ || param1)
                                                               {
                                                                  §§push(§8!I§);
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc18_ || param3))
                                                                     {
                                                                        addr367:
                                                                        break loop14;
                                                                     }
                                                                  }
                                                                  break loop14;
                                                               }
                                                               continue loop14;
                                                            }
                                                            §§push(int(§§pop()));
                                                            continue;
                                                         }
                                                         continue loop13;
                                                      }
                                                   }
                                                   while(_loc19_);
                                                   
                                                   continue loop12;
                                                }
                                                §§goto(addr367);
                                             }
                                             break;
                                          }
                                          §§push(§§pop() == §§pop());
                                          if(_loc18_)
                                          {
                                             addr371:
                                             §§push(!§§pop());
                                          }
                                          addr372:
                                          if(§§pop())
                                          {
                                             addr373:
                                             _loc11_ = param1.§+o§;
                                             if(_loc18_)
                                             {
                                                addr404:
                                                _loc6_ = int(this.§]m§ * §<W§);
                                                addr388:
                                                §§push(param2);
                                                §§push(§<W§);
                                                if(!_loc19_)
                                                {
                                                   if(!_loc19_)
                                                   {
                                                      _loc7_ = int(§§pop() * §§pop());
                                                      if(_loc18_)
                                                      {
                                                         if(param3 == 1)
                                                         {
                                                            _loc8_ = 0;
                                                            if(false)
                                                            {
                                                               §§goto(addr388);
                                                            }
                                                            addr493:
                                                            §§push(_loc8_);
                                                            §§push(_loc6_);
                                                            if(_loc18_)
                                                            {
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  _loc11_[_loc14_ = _loc7_++] = this.§+o§[_loc8_];
                                                                  if(_loc18_ || param2)
                                                                  {
                                                                     if(!(_loc19_ && param1))
                                                                     {
                                                                        _loc8_++;
                                                                        §§goto(addr493);
                                                                     }
                                                                     addr702:
                                                                     return;
                                                                     addr498:
                                                                  }
                                                                  addr606:
                                                                  if(_loc18_ || this)
                                                                  {
                                                                     addr696:
                                                                     _loc12_++;
                                                                     addr614:
                                                                  }
                                                                  _loc8_++;
                                                                  addr698:
                                                                  if(_loc8_ < this.§]m§)
                                                                  {
                                                                     if(this.§7o§)
                                                                     {
                                                                        if(_loc18_ || param3)
                                                                        {
                                                                           if(!_loc19_)
                                                                           {
                                                                              _loc13_ = Number(this.§+o§[_loc12_ + 3]);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(param3);
                                                                                 if(!(_loc19_ && param3))
                                                                                 {
                                                                                    §§push(§§pop() / _loc13_);
                                                                                    if(_loc18_ || param2)
                                                                                    {
                                                                                       addr456:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    _loc13_ = §§pop();
                                                                                    addr458:
                                                                                    if(false)
                                                                                    {
                                                                                       addr460:
                                                                                       §§goto(addr698);
                                                                                    }
                                                                                    _loc11_[_loc14_ = _loc7_++] = this.§+o§[_loc12_++] * _loc13_;
                                                                                    if(_loc18_ || param3)
                                                                                    {
                                                                                       var _loc15_:*;
                                                                                       _loc11_[_loc15_ = _loc7_++] = this.§+o§[_loc12_++] * _loc13_;
                                                                                       if(_loc18_ || param3)
                                                                                       {
                                                                                          var _loc16_:*;
                                                                                          _loc11_[_loc16_ = _loc7_++] = this.§+o§[_loc12_++] * _loc13_;
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             var _loc17_:*;
                                                                                             _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                             if(_loc18_ || param1)
                                                                                             {
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   if(_loc18_ || param2)
                                                                                                   {
                                                                                                      addr598:
                                                                                                      if(!(_loc19_ && param3))
                                                                                                      {
                                                                                                         §§goto(addr606);
                                                                                                      }
                                                                                                      addr693:
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§goto(addr696);
                                                                                                      }
                                                                                                      §§goto(addr702);
                                                                                                   }
                                                                                                   _loc11_[_loc16_ = _loc7_++] = this.§+o§[_loc12_++];
                                                                                                   addr654:
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr693);
                                                                                                   addr691:
                                                                                                }
                                                                                                _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr691);
                                                                                       }
                                                                                       §§goto(addr598);
                                                                                    }
                                                                                    addr632:
                                                                                    _loc11_[_loc15_ = _loc7_++] = this.§+o§[_loc12_++];
                                                                                    if(_loc18_ || this)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr654);
                                                                                 }
                                                                                 §§goto(addr456);
                                                                              }
                                                                              §§goto(addr614);
                                                                           }
                                                                           §§goto(addr498);
                                                                        }
                                                                        §§goto(addr696);
                                                                     }
                                                                     _loc11_[_loc14_ = _loc7_++] = this.§+o§[_loc12_++];
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§goto(addr632);
                                                                     }
                                                                     §§goto(addr598);
                                                                  }
                                                               }
                                                               §§goto(addr702);
                                                            }
                                                            §§goto(addr606);
                                                         }
                                                         addr500:
                                                         _loc12_ = 0;
                                                      }
                                                      §§push(0);
                                                      if(_loc19_)
                                                      {
                                                         §§goto(addr500);
                                                      }
                                                      _loc8_ = §§pop();
                                                      §§goto(addr460);
                                                   }
                                                   §§goto(addr404);
                                                }
                                                §§goto(addr606);
                                             }
                                             §§goto(addr458);
                                          }
                                          §§goto(addr702);
                                       }
                                    }
                                    addr55:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc8_);
                                    if(_loc18_ || param3)
                                    {
                                       §§push(_loc6_);
                                       if(!(_loc19_ && param2))
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!_loc18_)
                                             {
                                                break;
                                             }
                                             addr174:
                                          }
                                          else
                                          {
                                             _loc9_[_loc14_ = _loc7_++] = this.§>"§[_loc8_];
                                             if(!(_loc19_ && param2))
                                             {
                                                _loc8_++;
                                                if(_loc18_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr174);
                                             }
                                             else
                                             {
                                                §§goto(addr193);
                                             }
                                          }
                                          §§goto(addr200);
                                       }
                                       §§goto(addr199);
                                    }
                                    else
                                    {
                                       §§goto(addr178);
                                    }
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr71);
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr55);
         }
      }
      
      public function append(param1:§0&§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:int = this.§!E§.length;
         if(_loc9_)
         {
            this.§!E§.length += param1.§!E§.length;
            loop0:
            while(true)
            {
               this.§!E§.position = _loc2_;
               loop1:
               while(true)
               {
                  addr33:
                  while(true)
                  {
                     this.§!E§.writeBytes(param1.§!E§);
                     addr39:
                     while(true)
                     {
                        if(!_loc10_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr31);
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(!(_loc9_ && param1))
         {
            §§push(int(§§pop() * §&!H§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§^x§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§^x§[_loc7_ = _loc5_++] = param3;
         if(_loc8_)
         {
            this.§^x§[_loc5_] = param4;
         }
      }
      
      public function §7! §(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(!(_loc7_ && param2))
         {
            §§push(int(§§pop() * §&!H§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§^x§[_loc5_ = _loc4_++] = param2;
         if(_loc6_ || param3)
         {
            this.§^x§[_loc4_] = param3;
         }
      }
      
      public function §#I§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || param1)
         {
            §§push(int(§§pop() * §&!H§));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            param2.x = this.§^x§[_loc3_++];
         }
         do
         {
            param2.y = this.§^x§[_loc3_++];
            do
            {
               param2.z = this.§^x§[_loc3_];
            }
            while(_loc4_);
            
         }
         while(_loc4_);
         
      }
      
      public function §'O§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            if(this.§7o§)
            {
               addr21:
               §§push(param3);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(_loc8_ || param1)
                  {
                  }
                  addr37:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(Number(1));
               if(_loc8_)
               {
                  §§goto(addr37);
               }
            }
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(!_loc9_)
            {
               §§push(§§pop() / 255);
               if(_loc8_)
               {
                  addr46:
                  §§push(Number(§§pop()));
                  if(!(_loc9_ && param1))
                  {
                     _loc4_ = §§pop();
                     §§push(§?g§.§"!2§(param2) * _loc4_);
                     if(_loc9_ && this)
                     {
                     }
                     §§goto(addr78);
                  }
                  §§push(Number(§§pop()));
               }
               addr78:
               var _loc5_:* = §§pop();
               §§push(§?g§.§2t§(param2) * _loc4_);
               if(_loc8_ || param2)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(§?g§.§7p§(param2) * _loc4_);
               if(!(_loc9_ && param1))
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(_loc8_ || this)
               {
                  this.§=>§(param1,1,_loc5_,_loc6_,_loc7_,param3);
               }
               return;
            }
            §§goto(addr46);
         }
         §§goto(addr21);
      }
      
      private function §=>§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1);
         if(_loc13_)
         {
            §§push(int(§§pop() * §<W§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(_loc13_)
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
               this.§+o§[_loc9_ = _loc7_++] = param3;
               if(!_loc14_)
               {
                  var _loc10_:*;
                  this.§+o§[_loc10_ = _loc7_++] = param4;
                  if(_loc13_)
                  {
                     var _loc11_:*;
                     this.§+o§[_loc11_ = _loc7_++] = param5;
                     if(!_loc14_)
                     {
                        var _loc12_:*;
                        this.§+o§[_loc12_ = _loc7_++] = param6;
                     }
                  }
               }
               if(!_loc14_)
               {
                  §§push(_loc8_);
                  if(!_loc14_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc14_)
                     {
                        continue;
                     }
                  }
                  _loc8_ = §§pop();
                  if(!(_loc13_ || param3))
                  {
                     break;
                  }
               }
               continue loop0;
            }
            return;
         }
      }
      
      private function §[r§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(_loc8_ || param2)
         {
            §§push(int(§§pop() * §<W§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§+o§[_loc4_ = _loc3_++] = this.§+o§[_loc4_] * param2;
         var _loc5_:*;
         this.§+o§[_loc5_ = _loc3_++] = this.§+o§[_loc5_] * param2;
         var _loc6_:*;
         this.§+o§[_loc6_ = _loc3_++] = this.§+o§[_loc6_] * param2;
         if(!_loc7_)
         {
            this.§+o§[_loc3_] *= param2;
         }
      }
      
      public function §^3§(param1:int) : uint
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         §§push(param1);
         if(!(_loc7_ && this))
         {
            §§push(int(§§pop() * §<W§));
         }
         var _loc2_:* = §§pop();
         if(_loc8_)
         {
            if(this.§7o§)
            {
               addr40:
               §§push(Number(this.§+o§[_loc2_ + 3]));
               if(_loc8_ || _loc3_)
               {
                  addr59:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(Number(1));
               if(!_loc7_)
               {
                  §§goto(addr59);
               }
            }
            var _loc3_:* = §§pop();
            §§push(_loc3_);
            loop0:
            while(true)
            {
               if(§§pop() != 0)
               {
                  §§push(255);
                  if(_loc8_)
                  {
                     §§push(§§pop() / _loc3_);
                     loop1:
                     while(true)
                     {
                        _loc3_ = Number(§§pop());
                        §§push(Number(this.§+o§[_loc2_] * _loc3_));
                        do
                        {
                           _loc4_ = §§pop();
                           if(_loc8_ || _loc2_)
                           {
                              §§push(this.§+o§[_loc2_ + 1] * _loc3_);
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc7_)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              continue;
                           }
                           addr164:
                           §§push(0);
                        }
                        while(_loc7_ && _loc2_);
                        
                        _loc6_ = §§pop();
                        return §?g§.§;?§(_loc4_,_loc5_,_loc6_);
                     }
                  }
                  return §§pop();
               }
               §§goto(addr164);
            }
         }
         §§goto(addr40);
      }
      
      public function §3!@§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_ || this)
         {
            §§push(param2);
            if(!_loc5_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc4_)
                  {
                     addr109:
                     §§push(0.001);
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr111:
                        while(true)
                        {
                           param2 = §§pop();
                        }
                     }
                     addr110:
                  }
                  while(true)
                  {
                  }
                  addr112:
               }
               while(true)
               {
                  if(this.§7o§)
                  {
                     if(_loc4_)
                     {
                        this.§'O§(param1,this.§^3§(param1),param2);
                     }
                     break;
                  }
                  §§push(param1);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop() * §<W§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + 3);
                     }
                     if(_loc4_ || _loc3_)
                     {
                        if(!_loc5_)
                        {
                           §§push(int(§§pop()));
                        }
                        else
                        {
                           §§goto(addr110);
                        }
                     }
                     §§goto(addr111);
                  }
                  _loc3_ = §§pop();
                  this.§+o§[_loc3_] = param2;
                  if(_loc4_)
                  {
                     break;
                  }
                  §§goto(addr112);
               }
               return;
            }
            §§goto(addr111);
         }
         §§goto(addr109);
      }
      
      public function §^S§(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop() * §<W§);
            if(!_loc4_)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§+o§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop() * §7R§));
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            this.§!E§.position = _loc4_ * §8!I§;
            do
            {
               this.§!E§.writeFloat(param2);
               do
               {
                  this.§!E§.writeFloat(param3);
               }
               while(!(_loc6_ || param1));
               
            }
            while(!_loc6_);
            
         }
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(int(§§pop() * §7R§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && param2))
         {
            this.§!E§.position = _loc3_ * §8!I§;
            while(true)
            {
               param2.x = this.§!E§.readFloat();
               loop1:
               while(!(_loc5_ && param1))
               {
                  while(true)
                  {
                     param2.y = this.§!E§.readFloat();
                     if(!(_loc5_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §7!6§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(_loc8_ || param2)
         {
            §§push(int(§§pop() * §&!H§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§^x§[_loc6_ = _loc5_++] = this.§^x§[_loc6_] + param2;
         var _loc7_:*;
         this.§^x§[_loc7_ = _loc5_++] = this.§^x§[_loc7_] + param3;
         if(!(_loc9_ && param1))
         {
            this.§^x§[_loc5_] += param4;
         }
      }
      
      public function §+m§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop() * §&!H§));
         }
         var _loc3_:* = §§pop();
         this.§>"§[0] = this.§^x§[_loc3_];
         this.§>"§[1] = this.§^x§[_loc3_ + 1];
         do
         {
            this.§>"§[2] = this.§^x§[_loc3_ + 2];
            do
            {
               param2.transformVectors(this.§>"§,this.§>"§);
            }
            while(_loc5_ && _loc3_);
            
            this.§^x§[_loc3_] = this.§>"§[0];
            this.§^x§[_loc3_ + 1] = this.§>"§[1];
            do
            {
               this.§^x§[_loc3_ + 2] = this.§>"§[2];
            }
            while(_loc5_ && param2);
            
         }
         while(!(_loc4_ || param1));
         
      }
      
      public function §!X§(param1:uint, param2:Number = 1.0) : void
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
                     §§push(0.001);
                     if(!(_loc8_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc8_ && this))
                        {
                           addr41:
                           param2 = §§pop();
                           if(!_loc8_)
                           {
                              addr44:
                              if(this.§7o§)
                              {
                              }
                              §§goto(addr59);
                           }
                           §§push(param2);
                           if(!(_loc8_ && param2))
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     addr59:
                     var _loc3_:* = Number(Number(1));
                     if(_loc7_ || this)
                     {
                        §§push(_loc3_);
                        if(_loc7_ || param2)
                        {
                           §§push(§§pop() / 255);
                           if(_loc7_ || param2)
                           {
                              addr95:
                              §§push(Number(§§pop()));
                              if(_loc7_ || param2)
                              {
                                 §§goto(addr103);
                              }
                              §§goto(addr116);
                           }
                           addr103:
                           _loc3_ = §§pop();
                           §§goto(addr104);
                        }
                        §§goto(addr95);
                     }
                     addr104:
                     §§push(§?g§.§"!2§(param1) * _loc3_);
                     if(_loc7_ || this)
                     {
                        addr116:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     §§push(§?g§.§2t§(param1) * _loc3_);
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     §§push(§?g§.§7p§(param1) * _loc3_);
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     if(_loc7_ || param1)
                     {
                        this.§=>§(0,this.§]m§,_loc4_,_loc5_,_loc6_,param2);
                     }
                     return;
                  }
               }
               §§goto(addr44);
            }
            §§goto(addr41);
         }
         §§goto(addr44);
      }
      
      public function §0!H§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
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
                  if(!(_loc13_ && this))
                  {
                     addr31:
                     §§push(0.001);
                     if(_loc14_ || param1)
                     {
                        §§push(Number(§§pop()));
                        if(_loc13_)
                        {
                        }
                        addr49:
                        var _loc7_:int = §§pop();
                        var _loc8_:int = 0;
                        §§goto(addr48);
                     }
                     param6 = §§pop();
                  }
               }
               §§push(param1);
               if(_loc14_)
               {
                  addr48:
                  while(_loc8_ < param2)
                  {
                     var _loc9_:*;
                     this.§+o§[_loc9_ = _loc7_++] = param3;
                     if(!_loc13_)
                     {
                        var _loc10_:*;
                        this.§+o§[_loc10_ = _loc7_++] = param4;
                        if(!_loc13_)
                        {
                           var _loc11_:*;
                           this.§+o§[_loc11_ = _loc7_++] = param5;
                           if(!_loc13_)
                           {
                              var _loc12_:*;
                              this.§+o§[_loc12_ = _loc7_++] = param6;
                           }
                        }
                     }
                     if(_loc13_ && this)
                     {
                        break;
                     }
                     _loc8_++;
                     if(!(_loc14_ || param1))
                     {
                        break;
                     }
                  }
                  return;
                  §§push(§§pop() * §<W§);
               }
            }
            §§goto(addr49);
         }
         §§goto(addr31);
      }
      
      public function §75§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         if(_loc5_ || param1)
         {
            §§push(param2);
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop() < 0.001)
               {
                  if(_loc5_)
                  {
                     §§push(0.001);
                     if(!_loc6_)
                     {
                        addr40:
                        §§push(Number(§§pop()));
                        if(_loc5_ || _loc3_)
                        {
                           param2 = §§pop();
                           if(_loc5_)
                           {
                              addr51:
                              §§push(param2);
                              if(!(_loc6_ && param2))
                              {
                                 if(§§pop() == 1)
                                 {
                                    if(!_loc5_)
                                    {
                                       addr64:
                                       §§push(param1);
                                       if(!_loc6_)
                                       {
                                          addr69:
                                          §§push(int(§§pop() * §<W§));
                                       }
                                       var _loc3_:* = §§pop();
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(this.§7o§)
                                          {
                                             §§push(Number(this.§+o§[_loc3_ + 3]));
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(§§pop() / _loc4_);
                                                      if(!_loc6_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   _loc4_ = §§pop();
                                                   while(true)
                                                   {
                                                      this.§+o§[_loc3_] *= _loc4_;
                                                      loop3:
                                                      while(true)
                                                      {
                                                         this.§+o§[_loc3_ + 1] *= _loc4_;
                                                         loop4:
                                                         while(!(_loc6_ && param1))
                                                         {
                                                            this.§+o§[_loc3_ + 2] *= _loc4_;
                                                            while(true)
                                                            {
                                                               this.§+o§[_loc3_ + 3] = param2;
                                                               if(_loc5_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               continue loop4;
                                                            }
                                                            return;
                                                         }
                                                         continue loop1;
                                                      }
                                                      if(_loc6_ && param2)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr135);
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             this.§+o§[_loc3_ + 3] *= param2;
                                          }
                                          §§goto(addr135);
                                       }
                                       §§goto(addr151);
                                    }
                                 }
                                 §§goto(addr64);
                              }
                              §§goto(addr69);
                           }
                           return;
                        }
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr64);
               }
               §§goto(addr51);
            }
            §§goto(addr40);
         }
         §§goto(addr51);
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         if(!(_loc8_ && this))
         {
            §§push(param1);
            loop0:
            while(§§pop() != this.§7o§)
            {
               loop1:
               while(true)
               {
                  §§push(param2);
                  if(!_loc9_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§]m§);
                        loop3:
                        while(true)
                        {
                           §§push(int(§§pop() * §<W§));
                           while(true)
                           {
                              _loc3_ = §§pop();
                              while(true)
                              {
                                 if(!_loc9_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(0);
                                 if(!(_loc9_ || param1))
                                 {
                                    break;
                                 }
                                 if(!(_loc9_ || _loc3_))
                                 {
                                    continue loop3;
                                 }
                                 _loc4_ = §§pop();
                                 if(_loc8_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 if(!_loc9_)
                                 {
                                    continue loop2;
                                 }
                                 if(_loc8_)
                                 {
                                    break loop0;
                                 }
                                 addr39:
                                 §§push(_loc4_);
                                 if(_loc9_ || param1)
                                 {
                                    if(_loc9_)
                                    {
                                       if(§§pop() >= _loc3_)
                                       {
                                          if(!(_loc8_ && param2))
                                          {
                                             addr61:
                                             if(!_loc9_)
                                             {
                                                addr160:
                                                §§push(param1);
                                                if(!(_loc8_ && param1))
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr140:
                                                      §§push(Number(_loc5_));
                                                      if(!_loc8_)
                                                      {
                                                         addr139:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc7_ = §§pop();
                                                      §§push(_loc6_);
                                                      if(!(_loc8_ && this))
                                                      {
                                                         if(§§pop() != 0)
                                                         {
                                                            addr95:
                                                            §§push(_loc7_ / _loc6_);
                                                            if(!(_loc8_ && this))
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  addr118:
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc8_)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     this.§[r§(_loc4_,_loc7_);
                                                                     addr121:
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        addr66:
                                                                        _loc4_++;
                                                                        if(_loc9_)
                                                                        {
                                                                           §§goto(addr39);
                                                                        }
                                                                        §§goto(addr121);
                                                                     }
                                                                     §§goto(addr95);
                                                                  }
                                                                  §§goto(addr140);
                                                               }
                                                               §§goto(addr139);
                                                            }
                                                            §§goto(addr118);
                                                         }
                                                         §§goto(addr66);
                                                      }
                                                      addr159:
                                                      _loc6_ = §§pop();
                                                      §§goto(addr160);
                                                   }
                                                   addr138:
                                                   §§goto(addr139);
                                                   §§push(Number(1));
                                                }
                                                if(§§pop())
                                                {
                                                   addr158:
                                                   §§goto(addr159);
                                                   §§push(Number(Number(_loc5_)));
                                                }
                                                §§push(Number(1));
                                                if(!(_loc8_ && param1))
                                                {
                                                   §§goto(addr158);
                                                }
                                                addr167:
                                                _loc5_ = §§pop();
                                                §§goto(addr160);
                                                §§push(this.§7o§);
                                             }
                                             this.§7o§ = param1;
                                          }
                                          return;
                                       }
                                       §§goto(addr167);
                                       §§push(this.§^S§(0));
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr138);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr61);
               }
            }
         }
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§7o§;
      }
      
      public function get §6P§() : int
      {
         return this.§]m§;
      }
      
      public function set §6P§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(!_loc6_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§7R§);
               addr331:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() * §8!I§);
                     if(!(_loc6_ && _loc3_))
                     {
                        addr348:
                        §§push(§§pop() - this.§!E§.length);
                     }
                     §§push(int(§§pop()));
                     while(true)
                     {
                        _loc2_ = §§pop();
                        §§push(int(this.§!E§.length));
                        continue loop0;
                     }
                     addr353:
                  }
                  §§goto(addr348);
               }
            }
         }
         §§goto(addr247);
      }
      
      public function get §4!#§() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§!E§.position = 0;
         }
         return this.§!E§;
      }
      
      public function get §+!R§() : Vector.<Number>
      {
         return this.§+o§;
      }
      
      public function get §5q§() : Vector.<Number>
      {
         return this.§^x§;
      }
   }
}
