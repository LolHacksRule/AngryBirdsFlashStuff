package §+o§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §3C§
   {
      
      public static const §!"&§:int = 4;
      
      public static const §^!§:int = 2;
      
      public static const §'!F§:int = 3;
      
      public static const §7!z§:int = 4;
      
      public static const §2!F§:int = 0;
      
      public static const §0!g§:int = 0;
      
      public static const §null §:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §3C§)
         {
            §!"&§ = 4;
            while(true)
            {
               §^!§ = 2;
               while(!(_loc2_ && _loc2_))
               {
                  §'!F§ = 3;
                  loop2:
                  while(_loc1_)
                  {
                     §7!z§ = 4;
                     loop3:
                     while(true)
                     {
                        §2!F§ = 0;
                        while(true)
                        {
                           §0!g§ = 0;
                           loop5:
                           while(_loc1_ || _loc2_)
                           {
                              continue loop3;
                              while(true)
                              {
                                 §null § = 0;
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(_loc1_)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      private var §1!r§:ByteArray;
      
      private var §2!0§:Vector.<Number>;
      
      private var §4v§:Vector.<Number>;
      
      private var §>#§:Boolean;
      
      private var §=&§:int;
      
      private var §'!!§:Vector.<Number>;
      
      public function §3C§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§'!!§ = new Vector.<Number>(12,true);
            while(true)
            {
               super();
               while(!(_loc4_ && this))
               {
                  this.§1!r§ = new ByteArray();
                  loop2:
                  while(true)
                  {
                     addr42:
                     while(true)
                     {
                        this.§1!r§.endian = Endian.LITTLE_ENDIAN;
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public function clone() : §3C§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§3C§ = new §3C§(0,this.§>#§);
         if(_loc3_ || _loc3_)
         {
            _loc1_.§1!r§.length = this.§1!r§.length;
            while(true)
            {
               _loc1_.§1!r§.writeBytes(this.§1!r§);
               loop1:
               while(!(_loc2_ && this))
               {
                  _loc1_.§2!0§ = this.§2!0§.concat();
                  loop2:
                  while(true)
                  {
                     _loc1_.§2!0§.fixed = true;
                     addr86:
                     loop3:
                     while(true)
                     {
                        _loc1_.§4v§ = this.§4v§.concat();
                        loop4:
                        do
                        {
                           if(_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.§4v§.fixed = true;
                                 while(!_loc2_)
                                 {
                                    _loc1_.§=&§ = this.§=&§;
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       continue loop4;
                                    }
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        while(_loc2_);
                        
                        return _loc1_;
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function copyTo(param1:§3C§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§4v§;
         if(_loc18_ || param3)
         {
            §§push(this.§=&§);
            loop0:
            while(true)
            {
               §§push(§'!F§);
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
                        addr114:
                        while(true)
                        {
                           §§push(param2);
                           while(true)
                           {
                              §§push(§'!F§);
                              if(!_loc18_)
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc18_)
                              {
                                 continue loop2;
                              }
                              §§push(int(§§pop()));
                              loop6:
                              while(true)
                              {
                                 _loc7_ = §§pop();
                                 addr107:
                                 while(true)
                                 {
                                    addr87:
                                    loop8:
                                    while(true)
                                    {
                                       if(!param5)
                                       {
                                          §§push(0);
                                          if(!(_loc19_ && param2))
                                          {
                                             addr165:
                                             _loc8_ = §§pop();
                                             if(!_loc19_)
                                             {
                                                addr168:
                                                while(true)
                                                {
                                                   break loop8;
                                                }
                                                addr196:
                                                var _loc10_:ByteArray = param1.§1!r§;
                                                if(!(_loc19_ && this))
                                                {
                                                   §§push(this.§=&§);
                                                   if(_loc18_ || param3)
                                                   {
                                                      §§push(§^!§);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc18_ || param3)
                                                         {
                                                            §§push(§7!z§);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr322:
                                                               if(_loc19_ && param3)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc19_)
                                                               {
                                                                  addr333:
                                                                  _loc7_ = int(§§pop());
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_.length < _loc7_ + _loc6_)
                                                                     {
                                                                        while(!_loc19_)
                                                                        {
                                                                           _loc10_.length = _loc7_ + _loc6_;
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr241:
                                                                           if(!(_loc18_ || this))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(false)
                                                                           {
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 _loc10_.writeBytes(this.§1!r§);
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc19_ && param2))
                                                                                    {
                                                                                       if(!(_loc19_ && param3))
                                                                                       {
                                                                                          §§push(param4);
                                                                                          if(_loc18_ || this)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(!(_loc19_ && param3))
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(!(_loc19_ && this))
                                                                                                      {
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            break loop22;
                                                                                                         }
                                                                                                         §§goto(addr241);
                                                                                                      }
                                                                                                      addr365:
                                                                                                      _loc11_ = param1.§2!0§;
                                                                                                      if(_loc18_ || param2)
                                                                                                      {
                                                                                                         addr439:
                                                                                                         §§push(this.§=&§);
                                                                                                         §§push(§!"&§);
                                                                                                         if(_loc18_ || param2)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc19_ && this))
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                               if(!(_loc19_ && param3))
                                                                                                               {
                                                                                                                  _loc6_ = §§pop();
                                                                                                                  if(_loc18_ || param2)
                                                                                                                  {
                                                                                                                     addr400:
                                                                                                                     §§push(param2);
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        §§push(§!"&§);
                                                                                                                        if(_loc18_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc19_ && param3))
                                                                                                                           {
                                                                                                                              §§push(int(§§pop()));
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 _loc7_ = §§pop();
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(param3);
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() == 1)
                                                                                                                                       {
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(!(_loc19_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr400);
                                                                                                                                                      }
                                                                                                                                                      addr575:
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      if(!(_loc19_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                         if(!(_loc19_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr591);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr820);
                                                                                                                                                      }
                                                                                                                                                      addr601:
                                                                                                                                                      _loc12_ = §§pop();
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc19_ && param2))
                                                                                                                                                            {
                                                                                                                                                               addr568:
                                                                                                                                                               _loc8_ = §§pop();
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr606);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr540);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr802);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr601);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr820);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr717);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr548);
                                                                                                                                                }
                                                                                                                                                §§goto(addr439);
                                                                                                                                             }
                                                                                                                                             §§goto(addr568);
                                                                                                                                          }
                                                                                                                                          §§goto(addr555);
                                                                                                                                       }
                                                                                                                                       §§goto(addr601);
                                                                                                                                       §§push(0);
                                                                                                                                    }
                                                                                                                                    §§goto(addr555);
                                                                                                                                    addr436:
                                                                                                                                 }
                                                                                                                                 §§goto(addr538);
                                                                                                                              }
                                                                                                                              §§goto(addr820);
                                                                                                                           }
                                                                                                                           §§goto(addr515);
                                                                                                                        }
                                                                                                                        §§goto(addr591);
                                                                                                                     }
                                                                                                                     §§goto(addr568);
                                                                                                                  }
                                                                                                                  §§goto(addr820);
                                                                                                               }
                                                                                                               §§goto(addr568);
                                                                                                            }
                                                                                                            §§goto(addr555);
                                                                                                         }
                                                                                                         addr591:
                                                                                                         if(§§pop() < §§pop())
                                                                                                         {
                                                                                                            var _loc14_:*;
                                                                                                            _loc11_[_loc14_ = _loc7_++] = this.§2!0§[_loc8_];
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               if(_loc18_ || param1)
                                                                                                               {
                                                                                                                  _loc8_++;
                                                                                                               }
                                                                                                               §§goto(addr575);
                                                                                                               addr606:
                                                                                                            }
                                                                                                            addr740:
                                                                                                            var _loc15_:*;
                                                                                                            _loc11_[_loc15_ = _loc7_++] = this.§2!0§[_loc12_++];
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               var _loc16_:*;
                                                                                                               _loc11_[_loc16_ = _loc7_++] = this.§2!0§[_loc12_++];
                                                                                                               if(_loc18_ || param3)
                                                                                                               {
                                                                                                                  addr779:
                                                                                                                  var _loc17_:*;
                                                                                                                  _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                               }
                                                                                                            }
                                                                                                            addr790:
                                                                                                            if(_loc18_ || param2)
                                                                                                            {
                                                                                                               addr799:
                                                                                                               _loc12_++;
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  addr802:
                                                                                                                  _loc8_++;
                                                                                                                  if(!(_loc19_ && param1))
                                                                                                                  {
                                                                                                                     addr820:
                                                                                                                     if(_loc8_ < this.§=&§)
                                                                                                                     {
                                                                                                                        if(this.§>#§)
                                                                                                                        {
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              addr555:
                                                                                                                              _loc13_ = Number(this.§2!0§[_loc12_ + 3]);
                                                                                                                              §§push(param3);
                                                                                                                              if(!(_loc19_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() / _loc13_);
                                                                                                                                 if(!(_loc19_ && param2))
                                                                                                                                 {
                                                                                                                                    addr515:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr556:
                                                                                                                              if(!(_loc19_ && param1))
                                                                                                                              {
                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                 if(_loc18_ || param2)
                                                                                                                                 {
                                                                                                                                    if(_loc18_ || param1)
                                                                                                                                    {
                                                                                                                                       addr538:
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          addr540:
                                                                                                                                          §§goto(addr820);
                                                                                                                                       }
                                                                                                                                       _loc11_[_loc14_ = _loc7_++] = this.§2!0§[_loc12_++] * _loc13_;
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          _loc11_[_loc15_ = _loc7_++] = this.§2!0§[_loc12_++] * _loc13_;
                                                                                                                                          if(_loc18_ || this)
                                                                                                                                          {
                                                                                                                                             _loc11_[_loc16_ = _loc7_++] = this.§2!0§[_loc12_++] * _loc13_;
                                                                                                                                             if(!(_loc19_ && param2))
                                                                                                                                             {
                                                                                                                                                _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                if(_loc18_ || param2)
                                                                                                                                                {
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      addr693:
                                                                                                                                                      if(!(_loc19_ && param2))
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr709);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr740);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr790);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr779);
                                                                                                                                             }
                                                                                                                                             §§goto(addr693);
                                                                                                                                          }
                                                                                                                                          §§goto(addr740);
                                                                                                                                       }
                                                                                                                                       §§goto(addr709);
                                                                                                                                    }
                                                                                                                                    §§goto(addr556);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr555);
                                                                                                                              addr548:
                                                                                                                           }
                                                                                                                           §§goto(addr717);
                                                                                                                        }
                                                                                                                        _loc11_[_loc14_ = _loc7_++] = this.§2!0§[_loc12_++];
                                                                                                                        if(_loc18_ || param2)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        §§goto(addr740);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr709);
                                                                                                            }
                                                                                                            §§goto(addr802);
                                                                                                         }
                                                                                                         if(_loc19_ && this)
                                                                                                         {
                                                                                                         }
                                                                                                         §§goto(addr709);
                                                                                                      }
                                                                                                      §§goto(addr436);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param2);
                                                                                          if(!(_loc19_ && this))
                                                                                          {
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§push(§^!§);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc18_ || param2)
                                                                                                   {
                                                                                                      if(_loc18_ || param2)
                                                                                                      {
                                                                                                         §§push(§7!z§);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            §§goto(addr322);
                                                                                                         }
                                                                                                         addr360:
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                            break loop23;
                                                                                                         }
                                                                                                         break loop23;
                                                                                                      }
                                                                                                      addr355:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop13;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc6_ = §§pop();
                                                                                                continue loop17;
                                                                                             }
                                                                                             addr356:
                                                                                          }
                                                                                          §§goto(addr333);
                                                                                       }
                                                                                       addr359:
                                                                                       §§goto(addr360);
                                                                                       §§push(1);
                                                                                    }
                                                                                    addr274:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop22;
                                                                                    }
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    §§goto(addr365);
                                                                                 }
                                                                                 addr709:
                                                                                 if(_loc18_ || this)
                                                                                 {
                                                                                    addr717:
                                                                                    §§goto(addr799);
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              §§goto(addr289);
                                                                           }
                                                                           §§goto(addr359);
                                                                           §§push(param3);
                                                                        }
                                                                        continue;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc10_.position = _loc7_;
                                                                        §§goto(addr274);
                                                                        §§goto(addr289);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr359);
                                                            }
                                                         }
                                                         §§goto(addr355);
                                                      }
                                                   }
                                                   §§goto(addr356);
                                                }
                                                §§goto(addr289);
                                                addr193:
                                             }
                                             while(true)
                                             {
                                                _loc8_++;
                                                if(_loc18_)
                                                {
                                                   §§goto(addr193);
                                                }
                                                §§goto(addr196);
                                             }
                                             addr190:
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          param5.transformVectors(this.§4v§,this.§'!!§);
                                          continue loop6;
                                       }
                                    }
                                    addr195:
                                    §§push(_loc6_);
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          _loc9_[_loc14_ = _loc7_++] = this.§4v§[_loc8_];
                                          while(true)
                                          {
                                             if(_loc18_ || param3)
                                             {
                                                §§goto(addr190);
                                             }
                                             §§goto(addr196);
                                          }
                                          addr182:
                                       }
                                       §§goto(addr196);
                                    }
                                 }
                              }
                              addr50:
                              if(!(_loc19_ && param2))
                              {
                                 if(_loc18_ || param3)
                                 {
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
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
            §§push(0);
            if(!(_loc19_ && param2))
            {
               §§goto(addr50);
            }
            §§goto(addr106);
         }
         §§goto(addr165);
      }
      
      public function append(param1:§3C§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:int = this.§1!r§.length;
         if(_loc9_ || param1)
         {
            this.§1!r§.length += param1.§1!r§.length;
            loop0:
            while(true)
            {
               this.§1!r§.position = _loc2_;
               addr59:
               while(true)
               {
                  addr45:
                  while(true)
                  {
                     this.§1!r§.writeBytes(param1.§1!r§);
                     addr51:
                     while(!_loc10_)
                     {
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§2!0§.fixed = false;
            if(_loc9_ || param1)
            {
               if(_loc9_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr45);
               }
               §§goto(addr59);
            }
            §§goto(addr51);
         }
         var _loc3_:Vector.<Number> = param1.§2!0§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         loop5:
         while(true)
         {
            if(_loc5_ >= _loc4_)
            {
               loop6:
               while(!_loc10_)
               {
                  this.§2!0§.fixed = true;
                  while(_loc9_ || this)
                  {
                     this.§4v§.fixed = false;
                     if(!(_loc10_ && _loc3_))
                     {
                        if(_loc9_ || _loc3_)
                        {
                           if(true)
                           {
                              break loop5;
                           }
                           continue loop5;
                        }
                        continue loop6;
                     }
                  }
                  _loc5_++;
                  break;
               }
               continue;
            }
            this.§2!0§.push(_loc3_[_loc5_]);
            §§goto(addr142);
         }
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§4v§).length;
         var _loc8_:int = 0;
         if(_loc9_)
         {
            while(true)
            {
               if(_loc8_ >= _loc7_)
               {
                  if(_loc9_)
                  {
                     this.§4v§.fixed = true;
                  }
                  do
                  {
                     this.§=&§ += param1.§6<§;
                  }
                  while(_loc10_);
                  
                  if(_loc10_)
                  {
                     continue;
                  }
                  if(_loc9_ || this)
                  {
                     break;
                  }
               }
               else
               {
                  this.§4v§.push(_loc6_[_loc8_]);
               }
               _loc8_++;
            }
         }
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(!(_loc8_ && param1))
         {
            §§push(int(§§pop() * §'!F§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§4v§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§4v§[_loc7_ = _loc5_++] = param3;
         if(!(_loc8_ && this))
         {
            this.§4v§[_loc5_] = param4;
         }
      }
      
      public function §null§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(int(§§pop() * §'!F§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§4v§[_loc5_ = _loc4_++] = param2;
         if(_loc6_)
         {
            this.§4v§[_loc4_] = param3;
         }
      }
      
      public function §?!P§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!(_loc5_ && param2))
         {
            §§push(int(§§pop() * §'!F§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || param1)
         {
            param2.x = this.§4v§[_loc3_++];
         }
         while(true)
         {
            param2.y = this.§4v§[_loc3_++];
            while(_loc4_)
            {
               param2.z = this.§4v§[_loc3_];
               if(_loc4_ || this)
               {
                  return;
               }
            }
         }
      }
      
      public function §<!=§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || this)
         {
            if(this.§>#§)
            {
               addr26:
               §§push(param3);
               if(!(_loc9_ && this))
               {
                  §§push(Number(§§pop()));
                  if(!_loc9_)
                  {
                     addr42:
                     §§push(Number(§§pop()));
                  }
               }
            }
            else
            {
               §§push(Number(1));
               if(!_loc9_)
               {
                  §§goto(addr42);
               }
            }
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(_loc8_)
            {
               §§push(§§pop() / 255);
               if(!(_loc9_ && param2))
               {
                  §§push(Number(§§pop()));
                  if(_loc8_)
                  {
                     _loc4_ = §§pop();
                     §§push(§,!L§.§3!2§(param2) * _loc4_);
                     if(_loc8_ || param1)
                     {
                        addr82:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr82);
               }
               var _loc5_:* = §§pop();
               §§push(§,!L§.§3!B§(param2) * _loc4_);
               if(!(_loc9_ && param1))
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(§,!L§.§>]§(param2) * _loc4_);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(!_loc9_)
               {
                  this.§'!y§(param1,1,_loc5_,_loc6_,_loc7_,param3);
               }
               return;
            }
            §§goto(addr82);
         }
         §§goto(addr26);
      }
      
      private function §'!y§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1);
         if(_loc13_)
         {
            §§push(int(§§pop() * §!"&§));
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
               this.§2!0§[_loc9_ = _loc7_++] = param3;
               if(!_loc14_)
               {
                  var _loc10_:*;
                  this.§2!0§[_loc10_ = _loc7_++] = param4;
                  if(_loc13_ || param1)
                  {
                     var _loc11_:*;
                     this.§2!0§[_loc11_ = _loc7_++] = param5;
                     if(_loc13_)
                     {
                        var _loc12_:*;
                        this.§2!0§[_loc12_ = _loc7_++] = param6;
                     }
                  }
               }
               if(_loc14_ && param1)
               {
                  break;
               }
               §§push(_loc8_);
               if(_loc13_ || param1)
               {
                  §§push(§§pop() - 1);
                  if(!_loc13_)
                  {
                     continue;
                  }
               }
               _loc8_ = §§pop();
               if(_loc14_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
      }
      
      private function §6?§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1);
         if(!_loc8_)
         {
            §§push(int(§§pop() * §!"&§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§2!0§[_loc4_ = _loc3_++] = this.§2!0§[_loc4_] * param2;
         var _loc5_:*;
         this.§2!0§[_loc5_ = _loc3_++] = this.§2!0§[_loc5_] * param2;
         var _loc6_:*;
         this.§2!0§[_loc6_ = _loc3_++] = this.§2!0§[_loc6_] * param2;
         if(!(_loc8_ && _loc3_))
         {
            this.§2!0§[_loc3_] *= param2;
         }
      }
      
      public function §>!k§(param1:int) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(param1);
         if(!(_loc8_ && _loc3_))
         {
            §§push(int(§§pop() * §!"&§));
         }
         var _loc2_:* = §§pop();
         if(!(_loc8_ && param1))
         {
            if(this.§>#§)
            {
               addr44:
               §§push(Number(this.§2!0§[_loc2_ + 3]));
               if(_loc8_ && this)
               {
               }
               addr68:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(!(_loc8_ && _loc3_))
               {
                  §§goto(addr68);
               }
            }
            var _loc3_:* = §§pop();
            if(_loc7_ || param1)
            {
               §§push(_loc3_);
               loop0:
               for(; §§pop() != 0; while(!(_loc8_ && _loc2_))
               {
                  §§goto(addr186);
                  §§push(Number(§§pop()));
                  §§goto(addr125);
               })
               {
                  loop1:
                  while(true)
                  {
                     §§push(255);
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(§§pop() / _loc3_);
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr209:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr210:
                           while(true)
                           {
                              §§push(this.§2!0§[_loc2_] * _loc3_);
                              continue loop0;
                           }
                        }
                        addr117:
                        if(!(_loc8_ && this))
                        {
                           addr125:
                           §§push(Number(§§pop()));
                           if(_loc7_ || _loc2_)
                           {
                              _loc6_ = §§pop();
                              if(_loc8_ && this)
                              {
                                 loop9:
                                 while(_loc7_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§2!0§[_loc2_ + 2] * _loc3_);
                                       if(!_loc8_)
                                       {
                                          if(_loc7_ || _loc2_)
                                          {
                                             if(!_loc8_)
                                             {
                                                §§goto(addr117);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                   break loop9;
                                                }
                                                addr186:
                                             }
                                          }
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             continue loop9;
                                             §§goto(addr98);
                                          }
                                          addr98:
                                          addr162:
                                       }
                                       §§goto(addr125);
                                    }
                                 }
                                 while(!_loc8_)
                                 {
                                    if(!_loc7_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(this.§2!0§[_loc2_ + 1] * _loc3_);
                                    if(_loc7_)
                                    {
                                       if(!(_loc8_ && param1))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       else
                                       {
                                          §§goto(addr209);
                                       }
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr210);
                              }
                              if(_loc7_)
                              {
                                 return §,!L§.§9"%§(_loc4_,_loc5_,_loc6_);
                              }
                              break loop0;
                           }
                           continue loop0;
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr215);
               §§push(0);
            }
            §§goto(addr170);
         }
         §§goto(addr44);
      }
      
      public function §7z§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(_loc4_)
         {
            §§push(param2);
            if(_loc4_)
            {
               if(§§pop() < 0.001)
               {
                  while(true)
                  {
                     §§push(0.001);
                     if(!_loc5_)
                     {
                        while(true)
                        {
                           §§push(Number(§§pop()));
                        }
                        addr124:
                     }
                     addr125:
                     addr89:
                     while(true)
                     {
                        param2 = §§pop();
                        addr126:
                        while(true)
                        {
                        }
                     }
                     addr89:
                     if(_loc5_ && param2)
                     {
                        continue;
                     }
                     this.§<!=§(param1,this.§>!k§(param1),param2);
                     addr103:
                     if(!_loc4_)
                     {
                        §§goto(addr126);
                     }
                     addr21:
                     return;
                     addr105:
                  }
               }
               while(true)
               {
                  if(!this.§>#§)
                  {
                     §§push(param1);
                     if(!(_loc5_ && param2))
                     {
                        §§push(§§pop() * §!"&§);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + 3);
                        }
                        if(_loc4_ || param1)
                        {
                           addr83:
                           _loc3_ = §§pop();
                           do
                           {
                              this.§2!0§[_loc3_] = param2;
                           }
                           while(_loc5_);
                           
                           if(_loc4_ || param2)
                           {
                              if(_loc4_ || this)
                              {
                                 addr47:
                                 §§goto(addr21);
                              }
                              else
                              {
                                 §§goto(addr89);
                              }
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr89);
                  §§goto(addr126);
               }
               §§goto(addr105);
            }
            §§goto(addr124);
         }
         §§goto(addr47);
      }
      
      public function §7"-§(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!(_loc3_ && this))
         {
            §§push(§§pop() * §!"&§);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§2!0§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(!_loc6_)
         {
            §§push(int(§§pop() * §^!§));
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && param1))
         {
            this.§1!r§.position = _loc4_ * §7!z§;
            do
            {
               this.§1!r§.writeFloat(param2);
               do
               {
                  this.§1!r§.writeFloat(param3);
               }
               while(!(_loc5_ || param2));
               
            }
            while(_loc6_);
            
         }
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || param1)
         {
            §§push(int(§§pop() * §^!§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || this)
         {
            this.§1!r§.position = _loc3_ * §7!z§;
         }
         do
         {
            param2.x = this.§1!r§.readFloat();
            do
            {
               param2.y = this.§1!r§.readFloat();
            }
            while(_loc4_);
            
         }
         while(!(_loc5_ || param2));
         
      }
      
      public function include(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(!_loc9_)
         {
            §§push(int(§§pop() * §'!F§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§4v§[_loc6_ = _loc5_++] = this.§4v§[_loc6_] + param2;
         var _loc7_:*;
         this.§4v§[_loc7_ = _loc5_++] = this.§4v§[_loc7_] + param3;
         if(!(_loc9_ && param3))
         {
            this.§4v§[_loc5_] += param4;
         }
      }
      
      public function §#!d§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_ || this)
         {
            §§push(int(§§pop() * §'!F§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            this.§'!!§[0] = this.§4v§[_loc3_];
            while(true)
            {
               this.§'!!§[1] = this.§4v§[_loc3_ + 1];
               loop1:
               while(!_loc5_)
               {
                  this.§'!!§[2] = this.§4v§[_loc3_ + 2];
                  while(true)
                  {
                     param2.transformVectors(this.§'!!§,this.§'!!§);
                     loop4:
                     while(!(_loc5_ && _loc3_))
                     {
                        if(_loc4_)
                        {
                           this.§4v§[_loc3_ + 1] = this.§'!!§[1];
                           do
                           {
                              this.§4v§[_loc3_ + 2] = this.§'!!§[2];
                           }
                           while(!(_loc4_ || this));
                           
                           if(_loc4_)
                           {
                              addr55:
                              if(_loc5_)
                              {
                                 while(true)
                                 {
                                    this.§4v§[_loc3_] = this.§'!!§[0];
                                    continue loop4;
                                    §§goto(addr55);
                                 }
                                 addr106:
                              }
                              return;
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      public function §#!^§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param2)
         {
            §§push(param2);
            if(_loc8_ || param2)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc8_ || this)
                  {
                     addr41:
                     §§push(0.001);
                     if(!(_loc7_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(_loc8_ || param1)
                        {
                           param2 = §§pop();
                           if(_loc8_)
                           {
                              §§goto(addr60);
                           }
                           §§goto(addr63);
                        }
                        §§goto(addr71);
                     }
                     §§goto(addr94);
                  }
               }
               addr60:
               if(this.§>#§)
               {
                  addr63:
                  §§push(param2);
                  if(_loc8_ || param1)
                  {
                     addr71:
                     §§push(Number(§§pop()));
                     if(_loc8_)
                     {
                        addr94:
                        §§push(Number(§§pop()));
                        addr84:
                     }
                     §§goto(addr94);
                  }
               }
               else
               {
                  §§push(Number(1));
                  if(!(_loc7_ && _loc3_))
                  {
                     §§goto(addr94);
                  }
               }
               var _loc3_:* = §§pop();
               if(_loc8_ || param2)
               {
                  §§push(_loc3_);
                  if(!(_loc7_ && param1))
                  {
                     §§push(§§pop() / 255);
                     if(!_loc7_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc7_)
                        {
                           §§goto(addr118);
                        }
                     }
                     §§goto(addr126);
                  }
                  addr118:
                  _loc3_ = §§pop();
                  §§goto(addr119);
               }
               addr119:
               §§push(§,!L§.§3!2§(param1) * _loc3_);
               if(_loc8_)
               {
                  addr126:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(§,!L§.§3!B§(param1) * _loc3_);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(§,!L§.§>]§(param1) * _loc3_);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               if(!_loc7_)
               {
                  this.§'!y§(0,this.§=&§,_loc4_,_loc5_,_loc6_,param2);
               }
               return;
            }
            §§goto(addr84);
         }
         §§goto(addr41);
      }
      
      public function §#!g§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_)
         {
            §§push(param6);
            if(_loc14_ || param1)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc14_)
                  {
                     §§push(0.001);
                     if(!_loc13_)
                     {
                        addr34:
                        §§push(Number(§§pop()));
                        if(_loc14_ || this)
                        {
                           param6 = §§pop();
                           §§goto(addr43);
                        }
                     }
                     §§goto(addr48);
                  }
               }
               §§goto(addr43);
            }
            §§goto(addr34);
         }
         addr43:
         §§push(param1);
         if(!_loc13_)
         {
            addr48:
            §§push(int(§§pop() * §!"&§));
         }
         var _loc7_:* = §§pop();
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§2!0§[_loc9_ = _loc7_++] = param3;
            if(!(_loc13_ && param2))
            {
               var _loc10_:*;
               this.§2!0§[_loc10_ = _loc7_++] = param4;
               if(!_loc13_)
               {
                  var _loc11_:*;
                  this.§2!0§[_loc11_ = _loc7_++] = param5;
                  if(!_loc13_)
                  {
                     var _loc12_:*;
                     this.§2!0§[_loc12_ = _loc7_++] = param6;
                  }
               }
            }
            if(_loc14_)
            {
               _loc8_++;
               if(_loc13_)
               {
                  break;
               }
            }
         }
      }
      
      public function §1#§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         if(_loc5_)
         {
            §§push(param2);
            if(_loc5_ || this)
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc6_)
                  {
                     §§push(0.001);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc6_)
                        {
                           addr38:
                           param2 = §§pop();
                           if(!_loc6_)
                           {
                              addr41:
                              §§push(param2);
                              if(_loc5_)
                              {
                                 if(§§pop() == 1)
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       return;
                                    }
                                 }
                              }
                              addr65:
                              var _loc3_:int = §§pop();
                              addr64:
                              if(_loc5_)
                              {
                                 if(this.§>#§)
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(Number(this.§2!0§[_loc3_ + 3]));
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                       }
                                       addr236:
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       §§push(param2);
                                       if(!(_loc6_ && this))
                                       {
                                          if(!(_loc5_ || param1))
                                          {
                                             continue;
                                          }
                                          §§push(§§pop() / _loc4_);
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          _loc4_ = §§pop();
                                          loop4:
                                          while(true)
                                          {
                                             this.§2!0§[_loc3_] *= _loc4_;
                                             addr185:
                                             while(true)
                                             {
                                                this.§2!0§[_loc3_ + 1] *= _loc4_;
                                                loop1:
                                                while(true)
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      this.§2!0§[_loc3_ + 2] *= _loc4_;
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop1;
                                                      }
                                                      this.§2!0§[_loc3_ + 3] = param2;
                                                      addr69:
                                                      return;
                                                      addr141:
                                                      addr125:
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr207);
                                    §§push(Number(§§pop()));
                                 }
                                 else
                                 {
                                    this.§2!0§[_loc3_ + 3] *= param2;
                                    if(_loc5_ || param1)
                                    {
                                       if(_loc5_)
                                       {
                                          if(!(_loc5_ || param1))
                                          {
                                             §§goto(addr185);
                                          }
                                          else
                                          {
                                             addr106:
                                          }
                                          §§goto(addr69);
                                       }
                                       §§goto(addr141);
                                    }
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr106);
                           }
                           §§push(param1);
                           if(_loc5_ || this)
                           {
                              §§goto(addr64);
                              §§push(§§pop() * §!"&§);
                           }
                        }
                        §§goto(addr65);
                     }
                  }
               }
               §§goto(addr41);
            }
            §§goto(addr38);
         }
         §§goto(addr41);
      }
      
      public function §!'§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(!_loc9_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() != this.§>#§)
               {
                  continue;
               }
               if(!(_loc9_ && param1))
               {
                  break;
               }
               addr283:
               while(true)
               {
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr247);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§>#§;
      }
      
      public function get §6<§() : int
      {
         return this.§=&§;
      }
      
      public function set §6<§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc5_)
         {
            §§push(param1);
            if(!(_loc6_ && this))
            {
               §§push(§^!§);
               loop0:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() * §7!z§);
                     if(_loc5_)
                     {
                        addr479:
                        §§push(§§pop() - this.§1!r§.length);
                     }
                     §§push(int(§§pop()));
                     while(true)
                     {
                        _loc2_ = §§pop();
                        while(true)
                        {
                           §§push(int(this.§1!r§.length));
                           loop3:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              while(true)
                              {
                                 this.§1!r§.length += _loc2_;
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    while(true)
                                    {
                                       §§push(0);
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          continue loop5;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             this.§2!0§.fixed = false;
                                             loop12:
                                             while(true)
                                             {
                                                §§push(param1);
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§!"&§);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop() - this.§2!0§.length);
                                                      }
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                         loop16:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc5_ || _loc3_))
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 this.§2!0§.push(0);
                                                                                 break;
                                                                              }
                                                                              while(_loc5_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                       addr305:
                                                                                       loop24:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             loop26:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                loop27:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   loop28:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         loop29:
                                                                                                         while(_loc5_ || _loc3_)
                                                                                                         {
                                                                                                            this.§2!0§.fixed = true;
                                                                                                            loop30:
                                                                                                            for(; !_loc6_; while(true)
                                                                                                            {
                                                                                                               if(_loc6_ && this)
                                                                                                               {
                                                                                                                  continue loop30;
                                                                                                               }
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr148);
                                                                                                               §§push(_loc2_);
                                                                                                            },continue loop12)
                                                                                                            {
                                                                                                               this.§4v§.fixed = false;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1);
                                                                                                                  loop32:
                                                                                                                  while(_loc5_ || this)
                                                                                                                  {
                                                                                                                     §§push(§'!F§);
                                                                                                                     loop33:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc6_ && param1)
                                                                                                                        {
                                                                                                                           continue loop28;
                                                                                                                        }
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                        if(_loc5_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(§§pop() - this.§4v§.length);
                                                                                                                           }
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           loop34:
                                                                                                                           while(_loc5_)
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              loop35:
                                                                                                                              while(_loc5_)
                                                                                                                              {
                                                                                                                                 if(_loc6_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    break loop21;
                                                                                                                                 }
                                                                                                                                 §§push(0);
                                                                                                                                 loop36:
                                                                                                                                 while(_loc5_)
                                                                                                                                 {
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                continue loop34;
                                                                                                                                             }
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                continue loop24;
                                                                                                                                             }
                                                                                                                                             §§push(_loc2_);
                                                                                                                                             loop39:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                {
                                                                                                                                                   this.§4v§.push(0);
                                                                                                                                                }
                                                                                                                                                §§push(0);
                                                                                                                                                addr81:
                                                                                                                                                continue loop30;
                                                                                                                                                if(_loc6_ && this)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   continue loop33;
                                                                                                                                                }
                                                                                                                                                if(§§pop() >= §§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      loop43:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_ && this)
                                                                                                                                                         {
                                                                                                                                                            break loop39;
                                                                                                                                                         }
                                                                                                                                                         do
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               addr56:
                                                                                                                                                               if(!(_loc6_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc6_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop18;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop23;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop32;
                                                                                                                                                                     continue loop32;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop36;
                                                                                                                                                               }
                                                                                                                                                               addr148:
                                                                                                                                                               while(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                                  §§goto(addr56);
                                                                                                                                                               }
                                                                                                                                                               continue loop16;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                               continue loop43;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(_loc5_);
                                                                                                                                                         
                                                                                                                                                         continue loop17;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop35;
                                                                                                                                                }
                                                                                                                                                this.§4v§.pop();
                                                                                                                                                §§goto(addr121);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr151);
                                                                                                                                          }
                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                _loc3_++;
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr285:
                                                                                                                                             }
                                                                                                                                             if(!(_loc5_ || _loc3_))
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             _loc3_++;
                                                                                                                                             continue;
                                                                                                                                             break loop35;
                                                                                                                                          }
                                                                                                                                          continue loop29;
                                                                                                                                       }
                                                                                                                                       continue loop11;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop13;
                                                                                                                              }
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                           loop48:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc2_);
                                                                                                                              addr342:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop48;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() < §§pop() / §7!z§)
                                                                                                                           {
                                                                                                                              this.§1!r§.writeFloat(0);
                                                                                                                              _loc3_++;
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr364:
                                                                                                                           }
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  continue loop27;
                                                                                                                  if(!(_loc5_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr112);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      this.§2!0§.pop();
                                                                                                      §§goto(addr285);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr364);
                                                                              }
                                                                              §§goto(addr342);
                                                                           }
                                                                           if(_loc6_ && _loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc3_++;
                                                                           continue;
                                                                        }
                                                                        §§goto(addr305);
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
                                       addr430:
                                       §§push(0);
                                       if(_loc5_ || this)
                                       {
                                          continue loop3;
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        if(!(_loc5_ || _loc3_))
                        {
                           continue;
                        }
                        §§goto(addr388);
                     }
                     addr484:
                  }
                  §§goto(addr479);
               }
            }
            §§goto(addr484);
         }
         §§goto(addr417);
      }
      
      public function get §8!b§() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§1!r§.position = 0;
         }
         return this.§1!r§;
      }
      
      public function get §<!G§() : Vector.<Number>
      {
         return this.§2!0§;
      }
      
      public function get §''§() : Vector.<Number>
      {
         return this.§4v§;
      }
   }
}
