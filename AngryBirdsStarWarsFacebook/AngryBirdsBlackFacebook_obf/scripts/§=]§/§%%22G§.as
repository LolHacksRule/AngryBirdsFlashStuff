package §=]§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §%"G§
   {
      
      public static const §4v§:int = 4;
      
      public static const §<"<§:int = 2;
      
      public static const §'!Q§:int = 3;
      
      public static const §`!2§:int = 4;
      
      public static const §42§:int = 0;
      
      public static const §`"§:int = 0;
      
      public static const §&"o§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §%"G§))
         {
            §4v§ = 4;
            while(true)
            {
               §<"<§ = 2;
               loop1:
               for(; !(_loc1_ && _loc2_); loop4:
               while(!(_loc1_ && §%"G§))
               {
                  loop5:
                  while(true)
                  {
                     §`"§ = 0;
                     while(!_loc1_)
                     {
                        §&"o§ = 0;
                        if(_loc1_)
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           break loop5;
                        }
                        §§goto(addr71);
                     }
                     continue loop4;
                  }
                  return;
               })
               {
                  §'!Q§ = 3;
                  while(true)
                  {
                     §`!2§ = 4;
                     addr71:
                     while(_loc2_ || §%"G§)
                     {
                        §42§ = 0;
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      private var §2#P§:ByteArray;
      
      private var §>"9§:Vector.<Number>;
      
      private var §%#X§:Vector.<Number>;
      
      private var §3"$§:Boolean;
      
      private var §["6§:int;
      
      private var §?#$§:Vector.<Number>;
      
      public function §%"G§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§?#$§ = new Vector.<Number>(12,true);
            while(true)
            {
               super();
               addr53:
               while(_loc5_)
               {
               }
            }
         }
         while(true)
         {
            this.§2#P§ = new ByteArray();
            loop3:
            while(_loc5_)
            {
               loop4:
               do
               {
                  this.§2#P§.endian = Endian.LITTLE_ENDIAN;
                  while(_loc5_)
                  {
                     this.§2#P§.length = param1 * §<"<§ * §`!2§;
                     if(!_loc4_)
                     {
                        continue loop4;
                     }
                  }
                  continue loop3;
               }
               while(false);
               
               var _loc3_:int = 0;
               while(true)
               {
                  if(_loc3_ >= param1 * §<"<§)
                  {
                     if(_loc5_ || this)
                     {
                        this.§>"9§ = new Vector.<Number>(param1 * §4v§,true);
                     }
                     loop7:
                     do
                     {
                        this.§%#X§ = new Vector.<Number>(param1 * §'!Q§,true);
                        while(true)
                        {
                           this.§3"$§ = param2;
                           while(_loc5_ || _loc3_)
                           {
                              this.§["6§ = param1;
                              if(!_loc4_)
                              {
                                 continue loop7;
                              }
                           }
                        }
                     }
                     while(_loc4_ && param2);
                     
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     if(!(_loc4_ && _loc3_))
                     {
                        break;
                     }
                  }
                  else
                  {
                     this.§2#P§.writeFloat(0);
                  }
                  _loc3_++;
               }
               return;
            }
            §§goto(addr53);
         }
      }
      
      public function clone() : §%"G§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§%"G§ = new §%"G§(0,this.§3"$§);
         if(!_loc2_)
         {
            _loc1_.§2#P§.length = this.§2#P§.length;
            while(true)
            {
               _loc1_.§2#P§.writeBytes(this.§2#P§);
               loop1:
               for(; _loc3_; loop4:
               while(!(_loc2_ && _loc1_))
               {
                  _loc1_.§%#X§ = this.§%#X§.concat();
                  loop5:
                  do
                  {
                     _loc1_.§%#X§.fixed = true;
                     while(_loc3_)
                     {
                        _loc1_.§["6§ = this.§["6§;
                        if(!(_loc2_ && _loc2_))
                        {
                           continue loop5;
                        }
                     }
                     continue loop4;
                  }
                  while(!_loc3_);
                  
                  §§goto(addr46);
               })
               {
                  while(true)
                  {
                     _loc1_.§>"9§ = this.§>"9§.concat();
                     do
                     {
                        _loc1_.§>"9§.fixed = true;
                        continue loop1;
                     }
                     while(!_loc3_);
                     
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      public function copyTo(param1:§%"G§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§%#X§;
         if(!_loc19_)
         {
            §§push(this.§["6§);
            loop0:
            while(true)
            {
               §§push(§'!Q§);
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
                        loop4:
                        while(true)
                        {
                           §§push(param2);
                           loop5:
                           while(true)
                           {
                              §§push(§'!Q§);
                              if(!(_loc18_ || param1))
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc18_)
                              {
                                 §§push(int(§§pop()));
                                 while(!(_loc19_ && param1))
                                 {
                                    _loc7_ = §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       addr63:
                                       loop8:
                                       while(true)
                                       {
                                          if(!param5)
                                          {
                                             §§push(0);
                                             if(_loc18_)
                                             {
                                                addr160:
                                                _loc8_ = §§pop();
                                                if(_loc18_)
                                                {
                                                   addr163:
                                                }
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   break loop8;
                                                   addr177:
                                                   while(true)
                                                   {
                                                      if(!(_loc18_ || param3))
                                                      {
                                                         break loop13;
                                                      }
                                                      _loc8_++;
                                                      if(_loc19_)
                                                      {
                                                         break loop13;
                                                      }
                                                      continue loop13;
                                                   }
                                                }
                                                addr191:
                                                var _loc10_:ByteArray = param1.§2#P§;
                                                if(_loc18_)
                                                {
                                                   §§push(this.§["6§);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(§<"<§);
                                                      addr330:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(§`!2§);
                                                            if(_loc18_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               while(true)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(param2);
                                                                        if(_loc18_ || this)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        addr323:
                                                                        if(_loc19_)
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        _loc7_ = §§pop();
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           if(_loc10_.length < _loc7_ + _loc6_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 _loc10_.length = _loc7_ + _loc6_;
                                                                                 addr269:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              addr264:
                                                                           }
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              _loc10_.position = _loc7_;
                                                                              loop24:
                                                                              while(_loc18_)
                                                                              {
                                                                                 if(_loc18_ || param2)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc10_.writeBytes(this.§2#P§);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             continue loop24;
                                                                                          }
                                                                                          if(_loc19_ && param2)
                                                                                          {
                                                                                             continue loop23;
                                                                                          }
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(param4);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(!(_loc19_ && this))
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr348:
                                                                                                §§push(!§§pop());
                                                                                             }
                                                                                             addr349:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr779);
                                                                                          }
                                                                                          §§goto(addr264);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    _loc11_ = param1.§>"9§;
                                                                                    if(_loc18_ || param1)
                                                                                    {
                                                                                       addr434:
                                                                                       §§push(this.§["6§);
                                                                                       §§push(§4v§);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc19_ && param1))
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                _loc6_ = §§pop();
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   addr407:
                                                                                                   §§push(param2);
                                                                                                   §§push(§4v§);
                                                                                                   if(_loc18_ || param2)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc19_ && this))
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            _loc7_ = §§pop();
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(param3);
                                                                                                               if(_loc18_ || param3)
                                                                                                               {
                                                                                                                  if(§§pop() == 1)
                                                                                                                  {
                                                                                                                     if(!(_loc19_ && param1))
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                 if(!(_loc19_ && this))
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr407);
                                                                                                                                    }
                                                                                                                                    addr562:
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    if(!(_loc19_ && param3))
                                                                                                                                    {
                                                                                                                                       addr570:
                                                                                                                                       §§push(_loc6_);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                          {
                                                                                                                                             var _loc14_:*;
                                                                                                                                             _loc11_[_loc14_ = _loc7_++] = this.§>"9§[_loc8_];
                                                                                                                                             if(!(_loc19_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   _loc8_++;
                                                                                                                                                   §§goto(addr562);
                                                                                                                                                   addr581:
                                                                                                                                                }
                                                                                                                                                §§goto(addr517);
                                                                                                                                             }
                                                                                                                                             §§goto(addr664);
                                                                                                                                          }
                                                                                                                                          §§goto(addr574);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr517);
                                                                                                                                 }
                                                                                                                                 §§goto(addr574);
                                                                                                                              }
                                                                                                                              §§goto(addr434);
                                                                                                                           }
                                                                                                                           §§goto(addr407);
                                                                                                                        }
                                                                                                                        §§goto(addr559);
                                                                                                                     }
                                                                                                                     §§goto(addr574);
                                                                                                                  }
                                                                                                                  §§push(0);
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     _loc12_ = §§pop();
                                                                                                                     §§goto(addr579);
                                                                                                                  }
                                                                                                                  §§goto(addr517);
                                                                                                               }
                                                                                                               §§goto(addr492);
                                                                                                            }
                                                                                                            §§goto(addr549);
                                                                                                         }
                                                                                                         §§goto(addr559);
                                                                                                      }
                                                                                                      §§goto(addr492);
                                                                                                   }
                                                                                                   §§goto(addr517);
                                                                                                }
                                                                                                §§goto(addr515);
                                                                                             }
                                                                                             §§goto(addr570);
                                                                                          }
                                                                                          §§goto(addr492);
                                                                                       }
                                                                                       addr517:
                                                                                       addr560:
                                                                                       if(_loc8_ < this.§["6§)
                                                                                       {
                                                                                          if(this.§3"$§)
                                                                                          {
                                                                                             addr523:
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                if(_loc18_ || this)
                                                                                                {
                                                                                                   if(!(_loc19_ && param2))
                                                                                                   {
                                                                                                      addr546:
                                                                                                      _loc13_ = Number(this.§>"9§[_loc12_ + 3]);
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(param3);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(§§pop() / _loc13_);
                                                                                                               if(_loc18_ || param3)
                                                                                                               {
                                                                                                                  addr492:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               _loc13_ = §§pop();
                                                                                                               if(_loc18_ || param2)
                                                                                                               {
                                                                                                                  if(!(_loc19_ && param2))
                                                                                                                  {
                                                                                                                     if(!(_loc19_ && param1))
                                                                                                                     {
                                                                                                                        addr515:
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr517);
                                                                                                                        }
                                                                                                                        _loc11_[_loc14_ = _loc7_++] = this.§>"9§[_loc12_++] * _loc13_;
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           var _loc15_:*;
                                                                                                                           _loc11_[_loc15_ = _loc7_++] = this.§>"9§[_loc12_++] * _loc13_;
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              var _loc16_:*;
                                                                                                                              _loc11_[_loc16_ = _loc7_++] = this.§>"9§[_loc12_++] * _loc13_;
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 var _loc17_:*;
                                                                                                                                 _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                 if(!(_loc19_ && this))
                                                                                                                                 {
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       addr658:
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr664);
                                                                                                                                          }
                                                                                                                                          addr741:
                                                                                                                                          if(!(_loc19_ && this))
                                                                                                                                          {
                                                                                                                                             §§goto(addr749);
                                                                                                                                          }
                                                                                                                                          §§goto(addr517);
                                                                                                                                       }
                                                                                                                                       addr740:
                                                                                                                                       §§goto(addr741);
                                                                                                                                    }
                                                                                                                                    addr729:
                                                                                                                                    _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                 }
                                                                                                                                 addr739:
                                                                                                                                 §§goto(addr740);
                                                                                                                              }
                                                                                                                              §§goto(addr658);
                                                                                                                           }
                                                                                                                           addr707:
                                                                                                                           _loc11_[_loc16_ = _loc7_++] = this.§>"9§[_loc12_++];
                                                                                                                           if(!(_loc19_ && param1))
                                                                                                                           {
                                                                                                                              §§goto(addr729);
                                                                                                                           }
                                                                                                                           §§goto(addr739);
                                                                                                                        }
                                                                                                                        addr664:
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           addr749:
                                                                                                                           _loc12_++;
                                                                                                                           if(!(_loc19_ && param2))
                                                                                                                           {
                                                                                                                              §§goto(addr757);
                                                                                                                           }
                                                                                                                           §§goto(addr517);
                                                                                                                        }
                                                                                                                        §§goto(addr757);
                                                                                                                     }
                                                                                                                     §§push(0);
                                                                                                                     if(!(_loc19_ && this))
                                                                                                                     {
                                                                                                                        addr559:
                                                                                                                        _loc8_ = §§pop();
                                                                                                                        §§goto(addr560);
                                                                                                                     }
                                                                                                                     §§goto(addr517);
                                                                                                                     addr579:
                                                                                                                  }
                                                                                                                  §§goto(addr523);
                                                                                                               }
                                                                                                               §§goto(addr757);
                                                                                                            }
                                                                                                            §§goto(addr546);
                                                                                                         }
                                                                                                         §§goto(addr492);
                                                                                                         addr549:
                                                                                                      }
                                                                                                      addr757:
                                                                                                      _loc8_++;
                                                                                                      if(_loc19_ && this)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr779);
                                                                                                   }
                                                                                                   §§goto(addr581);
                                                                                                }
                                                                                                addr574:
                                                                                                §§goto(addr779);
                                                                                             }
                                                                                             §§goto(addr517);
                                                                                          }
                                                                                          _loc11_[_loc14_ = _loc7_++] = this.§>"9§[_loc12_++];
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             _loc11_[_loc15_ = _loc7_++] = this.§>"9§[_loc12_++];
                                                                                             if(_loc18_ || param1)
                                                                                             {
                                                                                                §§goto(addr707);
                                                                                             }
                                                                                             §§goto(addr658);
                                                                                          }
                                                                                          §§goto(addr741);
                                                                                       }
                                                                                       §§goto(addr779);
                                                                                    }
                                                                                 }
                                                                                 continue loop19;
                                                                                 addr779:
                                                                                 return;
                                                                              }
                                                                              continue loop20;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr339:
                                                                  }
                                                                  addr297:
                                                                  if(_loc19_ && param3)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc19_)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  §§push(§`!2§);
                                                                  if(_loc18_ || param3)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc19_ && this))
                                                                     {
                                                                        §§goto(addr323);
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     §§goto(addr339);
                                                                  }
                                                                  addr340:
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc19_ && param1))
                                                                  {
                                                                     §§goto(addr348);
                                                                  }
                                                                  §§goto(addr349);
                                                               }
                                                            }
                                                            §§goto(addr340);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr326);
                                                addr188:
                                             }
                                          }
                                          continue loop7;
                                       }
                                       addr190:
                                       §§push(_loc6_);
                                       while(true)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             _loc9_[_loc14_ = _loc7_++] = this.§%#X§[_loc8_];
                                             §§goto(addr177);
                                          }
                                          §§goto(addr191);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(0);
                                       if(_loc19_ && this)
                                       {
                                          break;
                                       }
                                       if(_loc19_)
                                       {
                                          continue loop5;
                                       }
                                       if(!_loc18_)
                                       {
                                          continue loop0;
                                       }
                                       _loc8_ = §§pop();
                                       if(_loc19_)
                                       {
                                          continue;
                                       }
                                       if(_loc18_ || param2)
                                       {
                                          if(!_loc18_)
                                          {
                                             continue loop4;
                                          }
                                          if(false)
                                          {
                                             §§goto(addr63);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                if(_loc18_)
                                                {
                                                   §§push(_loc6_);
                                                   if(!_loc19_)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(_loc19_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc9_[_loc14_ = _loc7_++] = this.§?#$§[_loc8_];
                                                         if(_loc18_ || param2)
                                                         {
                                                            if(_loc18_ || param2)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr163);
                                                         }
                                                         §§goto(addr177);
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   §§goto(addr190);
                                                }
                                                else
                                                {
                                                   §§goto(addr160);
                                                }
                                             }
                                             §§goto(addr188);
                                          }
                                       }
                                       §§goto(addr66);
                                    }
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            param5.transformVectors(this.§%#X§,this.§?#$§);
            §§goto(addr79);
         }
         §§goto(addr160);
      }
      
      public function append(param1:§%"G§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:int = this.§2#P§.length;
         if(!_loc10_)
         {
            this.§2#P§.length += param1.§2#P§.length;
            while(true)
            {
               this.§2#P§.position = _loc2_;
            }
            addr65:
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               this.§2#P§.writeBytes(param1.§2#P§);
               while(!_loc10_)
               {
                  if(!_loc10_)
                  {
                     this.§>"9§.fixed = false;
                     if(_loc9_ || _loc3_)
                     {
                        if(true)
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                     continue;
                  }
                  §§goto(addr65);
               }
               continue loop1;
            }
            var _loc3_:Vector.<Number> = param1.§>"9§;
            var _loc4_:int = _loc3_.length;
            var _loc5_:int = 0;
            while(true)
            {
               if(_loc5_ >= _loc4_)
               {
                  if(!_loc10_)
                  {
                     this.§>"9§.fixed = true;
                  }
                  do
                  {
                     this.§%#X§.fixed = false;
                  }
                  while(_loc10_ && _loc2_);
                  
                  if(_loc9_ || _loc2_)
                  {
                     if(!(_loc10_ && param1))
                     {
                        if(true)
                        {
                           break;
                        }
                        continue;
                     }
                     _loc5_++;
                     addr137:
                  }
                  continue;
               }
               this.§>"9§.push(_loc3_[_loc5_]);
               §§goto(addr137);
            }
            var _loc6_:Vector.<Number>;
            var _loc7_:int = (_loc6_ = param1.§%#X§).length;
            var _loc8_:int = 0;
            if(_loc9_)
            {
               while(true)
               {
                  if(_loc8_ >= _loc7_)
                  {
                     do
                     {
                        this.§%#X§.fixed = true;
                        do
                        {
                           this.§["6§ += param1.§5#%§;
                        }
                        while(!_loc9_);
                        
                     }
                     while(_loc10_ && this);
                     
                     if(_loc10_)
                     {
                        continue;
                     }
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     this.§%#X§.push(_loc6_[_loc8_]);
                  }
                  _loc8_++;
               }
            }
            return;
         }
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(!_loc9_)
         {
            §§push(int(§§pop() * §'!Q§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§%#X§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§%#X§[_loc7_ = _loc5_++] = param3;
         if(!(_loc9_ && param1))
         {
            this.§%#X§[_loc5_] = param4;
         }
      }
      
      public function override(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(_loc6_ || param2)
         {
            §§push(int(§§pop() * §'!Q§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§%#X§[_loc5_ = _loc4_++] = param2;
         if(!(_loc7_ && this))
         {
            this.§%#X§[_loc4_] = param3;
         }
      }
      
      public function getPosition(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(int(§§pop() * §'!Q§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || _loc3_)
         {
            param2.x = this.§%#X§[_loc3_++];
            while(true)
            {
               param2.y = this.§%#X§[_loc3_++];
               loop1:
               while(!(_loc4_ && param2))
               {
                  while(true)
                  {
                     param2.z = this.§%#X§[_loc3_];
                     if(_loc5_ || _loc3_)
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
      
      public function §""S§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            if(this.§3"$§)
            {
               addr21:
               §§push(param3);
               if(!(_loc9_ && param3))
               {
                  §§push(Number(§§pop()));
                  if(_loc8_ || param1)
                  {
                     addr37:
                  }
                  addr42:
                  var _loc4_:*;
                  §§push(_loc4_ = Number(§§pop()));
                  if(!(_loc9_ && param3))
                  {
                     §§push(§§pop() / 255);
                     if(!_loc9_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc8_ || param3)
                        {
                           addr74:
                           _loc4_ = §§pop();
                           §§push(§4"I§.§7!0§(param2) * _loc4_);
                           if(!(_loc9_ && param3))
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc5_:* = §§pop();
                        §§push(§4"I§.§=#Z§(param2) * _loc4_);
                        if(!(_loc9_ && this))
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc6_:* = §§pop();
                        §§push(§4"I§.§@H§(param2) * _loc4_);
                        if(_loc8_ || param1)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc7_:* = §§pop();
                        if(_loc8_)
                        {
                           this.§4!>§(param1,1,_loc5_,_loc6_,_loc7_,param3);
                        }
                        return;
                     }
                  }
                  §§goto(addr74);
               }
               §§goto(addr37);
            }
            else
            {
               §§push(Number(1));
               if(!_loc9_)
               {
                  §§goto(addr42);
               }
            }
            §§goto(addr42);
         }
         §§goto(addr21);
      }
      
      private function §4!>§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         §§push(param1);
         if(_loc14_ || this)
         {
            §§push(int(§§pop() * §4v§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(_loc14_)
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
                  this.§>"9§[_loc9_ = _loc7_++] = param3;
                  if(_loc14_ || param2)
                  {
                     var _loc10_:*;
                     this.§>"9§[_loc10_ = _loc7_++] = param4;
                     if(_loc14_ || param1)
                     {
                        var _loc11_:*;
                        this.§>"9§[_loc11_ = _loc7_++] = param5;
                        if(_loc14_)
                        {
                           var _loc12_:*;
                           this.§>"9§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(_loc13_)
                  {
                     break;
                  }
                  §§push(_loc8_);
                  if(_loc13_ && this)
                  {
                     continue;
                  }
                  §§push(§§pop() - 1);
                  if(_loc13_)
                  {
                     continue;
                  }
                  _loc8_ = §§pop();
                  if(_loc14_)
                  {
                     break;
                  }
               }
               return;
            }
         }
      }
      
      private function §!!w§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(_loc8_ || param1)
         {
            §§push(int(§§pop() * §4v§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§>"9§[_loc4_ = _loc3_++] = this.§>"9§[_loc4_] * param2;
         var _loc5_:*;
         this.§>"9§[_loc5_ = _loc3_++] = this.§>"9§[_loc5_] * param2;
         var _loc6_:*;
         this.§>"9§[_loc6_ = _loc3_++] = this.§>"9§[_loc6_] * param2;
         if(_loc8_)
         {
            this.§>"9§[_loc3_] *= param2;
         }
      }
      
      public function §&!H§(param1:int) : uint
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         §§push(param1);
         if(_loc8_)
         {
            §§push(int(§§pop() * §4v§));
         }
         var _loc2_:* = §§pop();
         if(_loc8_ || param1)
         {
            if(this.§3"$§)
            {
               addr40:
               §§push(Number(this.§>"9§[_loc2_ + 3]));
               if(_loc8_ || _loc2_)
               {
                  addr59:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(Number(1));
               if(_loc8_)
               {
                  §§goto(addr59);
               }
            }
            var _loc3_:* = §§pop();
            if(!_loc7_)
            {
               §§push(_loc3_);
               while(true)
               {
                  if(§§pop() == 0)
                  {
                     addr210:
                     §§push(0);
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
                        if(_loc8_ || this)
                        {
                           §§push(Number(§§pop()));
                        }
                        loop2:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr206:
                           while(true)
                           {
                              §§push(this.§>"9§[_loc2_] * _loc3_);
                              if(!_loc7_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  return §§pop();
                  while(!(_loc7_ && this))
                  {
                     §§goto(addr153);
                     §§push(Number(§§pop()));
                     §§goto(addr91);
                  }
               }
            }
            §§goto(addr212);
         }
         §§goto(addr40);
      }
      
      public function §+h§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_ || param2)
         {
            §§push(param2);
            if(!_loc5_)
            {
               if(§§pop() < 0.001)
               {
                  addr128:
                  while(true)
                  {
                     §§push(0.001);
                     addr129:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr130:
                        while(true)
                        {
                           param2 = §§pop();
                           addr131:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr128:
               }
               loop0:
               while(true)
               {
                  if(this.§3"$§)
                  {
                     if(!_loc5_)
                     {
                        if(_loc4_ || param1)
                        {
                           this.§""S§(param1,this.§&!H§(param1),param2);
                           break;
                        }
                        §§goto(addr128);
                     }
                     break;
                  }
                  addr26:
                  §§push(param1);
                  if(!_loc5_)
                  {
                     §§push(§§pop() * §4v§);
                     if(!_loc5_)
                     {
                        if(!(_loc5_ && this))
                        {
                           §§push(§§pop() + 3);
                        }
                        else
                        {
                           §§goto(addr129);
                        }
                        §§goto(addr130);
                     }
                     if(_loc4_ || this)
                     {
                        §§push(int(§§pop()));
                     }
                     else
                     {
                        §§goto(addr130);
                     }
                  }
                  _loc3_ = §§pop();
                  while(true)
                  {
                     if(_loc5_)
                     {
                        break loop0;
                     }
                     this.§>"9§[_loc3_] = param2;
                     if(!(_loc5_ && param1))
                     {
                        if(!(_loc5_ && param2))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  return;
               }
               §§goto(addr26);
            }
            §§goto(addr130);
         }
         §§goto(addr128);
      }
      
      public function §="-§(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!(_loc4_ && param1))
         {
            §§push(§§pop() * §4v§);
            if(_loc3_)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§>"9§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_)
         {
            §§push(int(§§pop() * §<"<§));
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            this.§2#P§.position = _loc4_ * §`!2§;
            while(true)
            {
               this.§2#P§.writeFloat(param2);
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            this.§2#P§.writeFloat(param3);
            if(_loc5_ || param1)
            {
               if(_loc5_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(int(§§pop() * §<"<§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || this)
         {
            this.§2#P§.position = _loc3_ * §`!2§;
            while(true)
            {
               param2.x = this.§2#P§.readFloat();
               §§goto(addr78);
            }
         }
         addr78:
         while(true)
         {
            param2.y = this.§2#P§.readFloat();
            if(!_loc4_)
            {
               if(_loc5_ || _loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §^!c§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(_loc9_ || this)
         {
            §§push(int(§§pop() * §'!Q§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§%#X§[_loc6_ = _loc5_++] = this.§%#X§[_loc6_] + param2;
         var _loc7_:*;
         this.§%#X§[_loc7_ = _loc5_++] = this.§%#X§[_loc7_] + param3;
         if(!_loc8_)
         {
            this.§%#X§[_loc5_] += param4;
         }
      }
      
      public function §=#A§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_)
         {
            §§push(int(§§pop() * §'!Q§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            this.§?#$§[0] = this.§%#X§[_loc3_];
            loop0:
            while(true)
            {
               this.§?#$§[1] = this.§%#X§[_loc3_ + 1];
               addr138:
               while(true)
               {
                  this.§?#$§[2] = this.§%#X§[_loc3_ + 2];
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§%#X§[_loc3_ + 1] = this.§?#$§[1];
            §§goto(addr68);
         }
         §§goto(addr56);
      }
      
      public function §7E§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && _loc3_))
         {
            §§push(param2);
            if(_loc7_)
            {
               if(§§pop() < 0.001)
               {
                  if(!(_loc8_ && _loc3_))
                  {
                     §§push(0.001);
                     if(_loc7_ || param1)
                     {
                        addr43:
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                           param2 = §§pop();
                           if(_loc7_ || param2)
                           {
                              addr54:
                              if(this.§3"$§)
                              {
                                 addr57:
                                 §§push(param2);
                                 if(_loc7_ || this)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc7_)
                                    {
                                       addr73:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§goto(addr73);
                              }
                              else
                              {
                                 §§push(Number(1));
                                 if(_loc7_)
                                 {
                                    §§goto(addr73);
                                 }
                              }
                              var _loc3_:* = §§pop();
                              if(_loc7_)
                              {
                                 §§push(_loc3_);
                                 if(_loc7_ || this)
                                 {
                                    §§push(§§pop() / 255);
                                    if(_loc7_)
                                    {
                                       addr99:
                                       §§push(Number(§§pop()));
                                       if(!(_loc8_ && param2))
                                       {
                                          _loc3_ = §§pop();
                                          addr108:
                                          §§push(§4"I§.§7!0§(param1) * _loc3_);
                                          if(_loc8_)
                                          {
                                          }
                                          §§goto(addr116);
                                       }
                                       §§push(Number(§§pop()));
                                    }
                                    addr116:
                                    var _loc4_:* = §§pop();
                                    §§push(§4"I§.§=#Z§(param1) * _loc3_);
                                    if(_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc5_:* = §§pop();
                                    §§push(§4"I§.§@H§(param1) * _loc3_);
                                    if(_loc7_ || param2)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc6_:* = §§pop();
                                    if(_loc7_ || _loc3_)
                                    {
                                       this.§4!>§(0,this.§["6§,_loc4_,_loc5_,_loc6_,param2);
                                    }
                                    return;
                                 }
                                 §§goto(addr99);
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr57);
                        }
                     }
                     §§goto(addr73);
                  }
               }
               §§goto(addr54);
            }
            §§goto(addr43);
         }
         §§goto(addr57);
      }
      
      public function §%S§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_)
         {
            §§push(param6);
            if(!(_loc13_ && param3))
            {
               if(§§pop() < 0.001)
               {
                  if(_loc14_ || param2)
                  {
                     §§push(0.001);
                     if(_loc14_ || this)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc13_ && param2))
                        {
                           addr52:
                           param6 = §§pop();
                           §§goto(addr53);
                        }
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr53);
               }
               addr53:
               §§push(param1);
               if(_loc14_ || this)
               {
                  addr63:
                  §§push(int(§§pop() * §4v§));
               }
               var _loc7_:* = §§pop();
               var _loc8_:int = 0;
               while(_loc8_ < param2)
               {
                  var _loc9_:*;
                  this.§>"9§[_loc9_ = _loc7_++] = param3;
                  if(!_loc13_)
                  {
                     var _loc10_:*;
                     this.§>"9§[_loc10_ = _loc7_++] = param4;
                     if(!(_loc13_ && param3))
                     {
                        var _loc11_:*;
                        this.§>"9§[_loc11_ = _loc7_++] = param5;
                        if(!(_loc13_ && this))
                        {
                           var _loc12_:*;
                           this.§>"9§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(!_loc13_)
                  {
                     _loc8_++;
                     if(!(_loc14_ || this))
                     {
                        break;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function §!"V§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         if(_loc6_)
         {
            §§push(param2);
            if(!_loc5_)
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc5_)
                  {
                     §§push(0.001);
                     if(!_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc6_)
                        {
                           addr34:
                           param2 = §§pop();
                           if(!_loc5_)
                           {
                              addr37:
                              §§push(param2);
                              if(_loc6_)
                              {
                                 addr40:
                                 if(§§pop() == 1)
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       return;
                                    }
                                    addr50:
                                    §§push(param1);
                                    if(!_loc5_)
                                    {
                                       addr55:
                                       §§push(int(§§pop() * §4v§));
                                    }
                                    var _loc3_:* = §§pop();
                                    if(!_loc5_)
                                    {
                                       if(this.§3"$§)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§push(Number(this.§>"9§[_loc3_ + 3]));
                                             loop4:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                addr228:
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   if(_loc6_ || this)
                                                   {
                                                      if(_loc5_ && this)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§push(§§pop() / _loc4_);
                                                      if(_loc6_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   _loc4_ = §§pop();
                                                   addr206:
                                                   while(true)
                                                   {
                                                      this.§>"9§[_loc3_] *= _loc4_;
                                                      addr183:
                                                      while(true)
                                                      {
                                                         this.§>"9§[_loc3_ + 1] *= _loc4_;
                                                         addr171:
                                                         loop7:
                                                         while(true)
                                                         {
                                                            this.§>"9§[_loc3_ + 2] *= _loc4_;
                                                            addr141:
                                                            addr155:
                                                            while(true)
                                                            {
                                                               if(_loc6_ || param2)
                                                               {
                                                                  if(!(_loc5_ && param2))
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               continue loop7;
                                                            }
                                                            this.§>"9§[_loc3_ + 3] = param2;
                                                         }
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          this.§>"9§[_loc3_ + 3] *= param2;
                                          if(!(_loc5_ && param2))
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                if(_loc5_)
                                                {
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr60);
                                             }
                                             §§goto(addr206);
                                          }
                                       }
                                       while(true)
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             §§goto(addr183);
                                          }
                                          §§goto(addr141);
                                          §§goto(addr155);
                                       }
                                       addr60:
                                       return;
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr50);
                              }
                           }
                           §§goto(addr50);
                        }
                        §§goto(addr55);
                     }
                     §§goto(addr34);
                  }
                  §§goto(addr50);
               }
               §§goto(addr37);
            }
            §§goto(addr40);
         }
         §§goto(addr37);
      }
      
      public function §[!p§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(!_loc8_)
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() == this.§3"$§)
               {
                  addr283:
                  while(_loc9_ || _loc3_)
                  {
                     while(true)
                     {
                        §§push(0);
                        if(_loc9_ || this)
                        {
                           continue loop3;
                        }
                        continue loop4;
                     }
                  }
               }
               while(true)
               {
                  §§push(param2);
                  if(!_loc9_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     while(_loc9_ || param2)
                     {
                        §§push(this.§["6§);
                        while(true)
                        {
                           §§push(int(§§pop() * §4v§));
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr261:
                              §§goto(addr283);
                           }
                        }
                     }
                     continue;
                  }
                  §§goto(addr61);
               }
               continue;
               return;
            }
         }
         §§goto(addr278);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§3"$§;
      }
      
      public function get §5#%§() : int
      {
         return this.§["6§;
      }
      
      public function set §5#%§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc5_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(§<"<§);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc5_ && this))
                  {
                     §§push(§§pop() * §`!2§);
                     if(_loc6_ || param1)
                     {
                        §§push(§§pop() - this.§2#P§.length);
                     }
                  }
                  §§push(int(§§pop()));
                  addr420:
                  §§push(0);
                  if(_loc5_ && param1)
                  {
                     continue;
                  }
                  if(§§pop() > §§pop())
                  {
                     loop7:
                     do
                     {
                        if(_loc6_ || this)
                        {
                           if(_loc6_)
                           {
                              this.§2#P§.position = _loc4_;
                              while(true)
                              {
                                 §§push(0);
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 _loc3_ = §§pop();
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    continue loop7;
                                 }
                              }
                              loop6:
                              while(true)
                              {
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§goto(addr420);
                                 }
                                 else
                                 {
                                    while(_loc6_ || _loc3_)
                                    {
                                       _loc4_ = §§pop();
                                       continue loop6;
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr506:
                                       while(true)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    addr458:
                                    addr505:
                                 }
                              }
                              addr442:
                              addr374:
                              loop12:
                              while(true)
                              {
                                 this.§>"9§.fixed = false;
                                 loop13:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop14:
                                    while(true)
                                    {
                                       §§push(§4v§);
                                       loop15:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          loop16:
                                          while(true)
                                          {
                                             §§push(§§pop() - this.§>"9§.length);
                                             loop17:
                                             while(true)
                                             {
                                                §§push(int(§§pop()));
                                                loop18:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      loop20:
                                                      for(; _loc6_ || _loc3_; while(_loc6_ || this)
                                                      {
                                                         §§goto(addr312);
                                                         §§push(_loc2_);
                                                      })
                                                      {
                                                         _loc3_ = §§pop();
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               continue loop20;
                                                               addr337:
                                                            }
                                                            loop38:
                                                            while(_loc6_ || param1)
                                                            {
                                                               §§push(0);
                                                               loop39:
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  loop40:
                                                                  while(true)
                                                                  {
                                                                     loop41:
                                                                     do
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc5_ && param1)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        §§push(_loc2_);
                                                                        loop42:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 this.§%#X§.push(0);
                                                                                 break;
                                                                              }
                                                                              loop43:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break loop42;
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       continue loop14;
                                                                                    }
                                                                                    continue loop19;
                                                                                 }
                                                                                 continue loop40;
                                                                                 addr83:
                                                                                 if(_loc5_ && param1)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!(_loc5_ && _loc2_))
                                                                                    {
                                                                                       this.§%#X§.fixed = true;
                                                                                       addr103:
                                                                                       loop48:
                                                                                       while(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          this.§["6§ = param1;
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   return;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                loop46:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop47:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            continue loop39;
                                                                                                         }
                                                                                                         addr56:
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               continue loop42;
                                                                                                            }
                                                                                                            loop27:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               addr320:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_);
                                                                                                                        addr260:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc5_ && param1))
                                                                                                                           {
                                                                                                                              if(!(_loc6_ || this))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                                 addr275:
                                                                                                                              }
                                                                                                                              §§push(0);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                    {
                                                                                                                                       this.§>"9§.pop();
                                                                                                                                       _loc3_++;
                                                                                                                                       break loop43;
                                                                                                                                       addr301:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§>"9§.fixed = true;
                                                                                                                                       addr289:
                                                                                                                                       while(!_loc5_)
                                                                                                                                       {
                                                                                                                                          this.§%#X§.fixed = false;
                                                                                                                                          break loop48;
                                                                                                                                       }
                                                                                                                                       continue loop12;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(!_loc5_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() >= §§pop())
                                                                                                                                       {
                                                                                                                                          break loop41;
                                                                                                                                       }
                                                                                                                                       addr330:
                                                                                                                                       addr345:
                                                                                                                                       this.§>"9§.push(0);
                                                                                                                                       _loc3_++;
                                                                                                                                       if(_loc5_ && param1)
                                                                                                                                       {
                                                                                                                                          continue loop13;
                                                                                                                                       }
                                                                                                                                       §§goto(addr337);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop() >= §§pop() / §`!2§)
                                                                                                                                       {
                                                                                                                                          §§goto(addr374);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          this.§2#P§.writeFloat(0);
                                                                                                                                          _loc3_++;
                                                                                                                                          addr382:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             break loop20;
                                                                                                                                             §§goto(addr382);
                                                                                                                                          }
                                                                                                                                          addr390:
                                                                                                                                          addr368:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr312:
                                                                                                                                    addr371:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop15;
                                                                                                                           }
                                                                                                                           addr318:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop18;
                                                                                                                     }
                                                                                                                     addr258:
                                                                                                                  }
                                                                                                                  §§goto(addr345);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc6_ || _loc3_)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               _loc3_ = §§pop();
                                                                                                               continue loop46;
                                                                                                            }
                                                                                                            addr211:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§'!Q§);
                                                                                                               addr212:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - this.§%#X§.length);
                                                                                                                  }
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  §§push(int(§§pop()));
                                                                                                               }
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            continue loop47;
                                                                                                         }
                                                                                                         §§goto(addr260);
                                                                                                         addr167:
                                                                                                      }
                                                                                                      while(!_loc5_)
                                                                                                      {
                                                                                                         _loc2_ = §§pop();
                                                                                                         continue loop38;
                                                                                                         §§goto(addr56);
                                                                                                      }
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   continue loop14;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr289);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop49:
                                                                                             while(!_loc6_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc3_++;
                                                                                                   continue loop49;
                                                                                                }
                                                                                             }
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   continue loop38;
                                                                                                }
                                                                                                if(_loc6_ || _loc2_)
                                                                                                {
                                                                                                   §§goto(addr126);
                                                                                                }
                                                                                                §§goto(addr330);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr180:
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   continue loop41;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr301);
                                                                                       }
                                                                                       while(!(_loc5_ && this))
                                                                                       {
                                                                                          §§goto(addr211);
                                                                                          §§push(param1);
                                                                                          §§goto(addr103);
                                                                                       }
                                                                                       addr103:
                                                                                       §§goto(addr390);
                                                                                    }
                                                                                    §§goto(addr320);
                                                                                 }
                                                                                 §§goto(addr285);
                                                                              }
                                                                              §§goto(addr258);
                                                                           }
                                                                           §§goto(addr212);
                                                                        }
                                                                        if(_loc6_)
                                                                        {
                                                                           _loc3_++;
                                                                           §§goto(addr180);
                                                                        }
                                                                        §§goto(addr294);
                                                                     }
                                                                     while(_loc6_ || param1);
                                                                     
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr318);
                                                                           §§push(_loc2_);
                                                                        }
                                                                        break;
                                                                        §§goto(addr187);
                                                                     }
                                                                     §§goto(addr382);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr371);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              addr413:
                           }
                           while(_loc6_)
                           {
                              this.§2#P§.length += _loc2_;
                              while(true)
                              {
                                 §§goto(addr413);
                                 continue loop7;
                              }
                           }
                           §§goto(addr506);
                        }
                        §§goto(addr452);
                     }
                     while(!(_loc6_ || param1));
                     
                     §§goto(addr368);
                     addr410:
                  }
                  §§goto(addr374);
               }
            }
            §§goto(addr505);
         }
         §§goto(addr410);
      }
      
      public function get § ";§() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§2#P§.position = 0;
         }
         return this.§2#P§;
      }
      
      public function get §>"+§() : Vector.<Number>
      {
         return this.§>"9§;
      }
      
      public function get §%"!§() : Vector.<Number>
      {
         return this.§%#X§;
      }
   }
}
