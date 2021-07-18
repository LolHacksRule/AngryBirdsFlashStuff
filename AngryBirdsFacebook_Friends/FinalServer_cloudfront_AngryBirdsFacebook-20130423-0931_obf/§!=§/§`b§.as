package §!=§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §`b§
   {
      
      public static const §""U§:int = 4;
      
      public static const §5!O§:int = 2;
      
      public static const §1!-§:int = 3;
      
      public static const §2$§:int = 4;
      
      public static const §%!V§:int = 0;
      
      public static const §<!W§:int = 0;
      
      public static const §&"I§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §""U§ = 4;
            while(true)
            {
               §5!O§ = 2;
               addr94:
               addr46:
               while(true)
               {
                  §1!-§ = 3;
                  while(true)
                  {
                     §2$§ = 4;
                     addr82:
                     while(!_loc2_)
                     {
                     }
                  }
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               return;
               addr53:
            }
         }
         while(true)
         {
            §%!V§ = 0;
            for(; _loc1_; §<!W§ = 0,do
            {
               §&"I§ = 0;
            }
            while(!(_loc1_ || §`b§));
            ,if(!_loc1_)
            {
               continue;
            },§§goto(addr46))
            {
               if(_loc1_)
               {
                  continue;
               }
               §§goto(addr94);
            }
            §§goto(addr82);
         }
         §§goto(addr53);
      }
      
      private var §0Z§:ByteArray;
      
      private var §[`§:Vector.<Number>;
      
      private var §8G§:Vector.<Number>;
      
      private var §8$§:Boolean;
      
      private var §8"9§:int;
      
      private var §4U§:Vector.<Number>;
      
      public function §`b§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            this.§4U§ = new Vector.<Number>(12,true);
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§0Z§ = new ByteArray();
                  addr66:
                  loop2:
                  while(true)
                  {
                     addr54:
                     while(true)
                     {
                        this.§0Z§.endian = Endian.LITTLE_ENDIAN;
                        continue loop2;
                     }
                  }
                  addr38:
                  if(_loc5_ || this)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§0Z§.length = param1 * §5!O§ * §2$§;
            if(!_loc5_)
            {
               continue;
            }
            if(!_loc4_)
            {
               §§goto(addr38);
            }
            §§goto(addr66);
         }
         §§goto(addr90);
      }
      
      public function clone() : §`b§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§`b§ = new §`b§(0,this.§8$§);
         if(!_loc3_)
         {
            _loc1_.§0Z§.length = this.§0Z§.length;
            while(true)
            {
               _loc1_.§0Z§.writeBytes(this.§0Z§);
               while(!_loc3_)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     return _loc1_;
                  }
               }
            }
         }
         while(true)
         {
            _loc1_.§[`§ = this.§[`§.concat();
            loop3:
            while(true)
            {
               _loc1_.§[`§.fixed = true;
               loop4:
               while(true)
               {
                  _loc1_.§8G§ = this.§8G§.concat();
                  loop5:
                  while(!_loc3_)
                  {
                     _loc1_.§8G§.fixed = true;
                     while(!_loc3_)
                     {
                        _loc1_.§8"9§ = this.§8"9§;
                        if(!(_loc3_ && _loc1_))
                        {
                           if(_loc3_)
                           {
                              continue loop5;
                           }
                           §§goto(addr55);
                           continue loop5;
                        }
                     }
                     continue loop4;
                  }
                  continue loop3;
               }
            }
         }
      }
      
      public function copyTo(param1:§`b§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§8G§;
         if(!(_loc19_ && param3))
         {
            §§push(this.§8"9§);
            while(true)
            {
               §§push(§1!-§);
               addr101:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr102:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr103:
                     while(true)
                     {
                        _loc6_ = §§pop();
                     }
                  }
               }
            }
            addr100:
         }
         loop4:
         while(true)
         {
            §§push(param2);
            loop5:
            while(true)
            {
               §§push(§1!-§);
               if(_loc18_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc19_ && this))
                  {
                     §§push(int(§§pop()));
                     loop6:
                     for(; _loc18_; while(true)
                     {
                        §§push(0);
                        if(_loc19_)
                        {
                           continue loop6;
                        }
                        if(_loc19_)
                        {
                           break;
                        }
                        if(_loc18_)
                        {
                           _loc8_ = §§pop();
                           if(_loc19_)
                           {
                              continue;
                           }
                           §§goto(addr52);
                        }
                        else
                        {
                           §§goto(addr100);
                        }
                     },continue loop5)
                     {
                        _loc7_ = §§pop();
                        while(true)
                        {
                           addr68:
                           addr195:
                           while(true)
                           {
                              if(!param5)
                              {
                                 §§push(0);
                                 if(_loc18_ || param1)
                                 {
                                    addr165:
                                    _loc8_ = §§pop();
                                    addr190:
                                    if(!(_loc19_ && param3))
                                    {
                                       addr193:
                                       §§push(_loc8_);
                                       break;
                                       addr173:
                                    }
                                    _loc8_++;
                                    if(!_loc19_)
                                    {
                                       §§goto(addr193);
                                    }
                                    var _loc10_:ByteArray = param1.§0Z§;
                                    if(_loc18_ || param3)
                                    {
                                       §§push(this.§8"9§);
                                       if(!_loc19_)
                                       {
                                          addr346:
                                          §§push(§§pop() * §5!O§);
                                          §§push(§2$§);
                                          if(!_loc19_)
                                          {
                                             addr351:
                                             _loc6_ = int(§§pop() * §§pop());
                                             addr352:
                                             addr350:
                                             §§push(param2);
                                             if(_loc18_ || param3)
                                             {
                                                §§push(§5!O§);
                                                if(!(_loc19_ && param1))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc19_)
                                                   {
                                                      if(_loc18_ || param2)
                                                      {
                                                         §§push(§2$§);
                                                         if(_loc18_ || param1)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc19_ && param3))
                                                            {
                                                               if(_loc18_ || this)
                                                               {
                                                                  addr331:
                                                                  §§push(int(§§pop()));
                                                                  if(_loc18_ || param2)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     addr339:
                                                                     if(_loc10_.length < _loc7_ + _loc6_)
                                                                     {
                                                                        addr272:
                                                                        _loc10_.length = _loc7_ + _loc6_;
                                                                        addr277:
                                                                        if(_loc18_)
                                                                        {
                                                                           addr260:
                                                                           _loc10_.position = _loc7_;
                                                                           addr247:
                                                                           _loc10_.writeBytes(this.§0Z§);
                                                                           addr264:
                                                                           if(_loc18_ || param2)
                                                                           {
                                                                              §§push(param4);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(_loc18_ || this)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc18_ || param3)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   if(_loc18_ || this)
                                                                                                   {
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr247);
                                                                                                         }
                                                                                                         addr354:
                                                                                                         §§push(param3 == 1);
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                         }
                                                                                                         §§goto(addr359);
                                                                                                      }
                                                                                                      §§goto(addr339);
                                                                                                   }
                                                                                                   §§goto(addr277);
                                                                                                }
                                                                                                §§goto(addr264);
                                                                                             }
                                                                                             §§goto(addr247);
                                                                                          }
                                                                                          §§goto(addr360);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr359);
                                                                                 }
                                                                              }
                                                                              addr359:
                                                                              if(!§§pop())
                                                                              {
                                                                                 addr360:
                                                                                 _loc11_ = param1.§[`§;
                                                                                 if(_loc18_ || param2)
                                                                                 {
                                                                                    §§push(this.§8"9§);
                                                                                    if(!(_loc19_ && param2))
                                                                                    {
                                                                                       addr439:
                                                                                       §§push(§§pop() * §""U§);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          addr443:
                                                                                          _loc6_ = int(§§pop());
                                                                                          if(_loc18_ || param1)
                                                                                          {
                                                                                             addr403:
                                                                                             §§push(param2);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                §§push(§""U§);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   if(_loc18_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            addr423:
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
                                                                                                                           if(_loc18_ || param3)
                                                                                                                           {
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr403);
                                                                                                                                 }
                                                                                                                                 addr547:
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 if(!(_loc19_ && param2))
                                                                                                                                 {
                                                                                                                                    if(§§pop() >= §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          addr769:
                                                                                                                                          _loc12_++;
                                                                                                                                          addr682:
                                                                                                                                          if(!(_loc19_ && this))
                                                                                                                                          {
                                                                                                                                             addr777:
                                                                                                                                             _loc8_++;
                                                                                                                                             if(_loc18_ || param2)
                                                                                                                                             {
                                                                                                                                                addr785:
                                                                                                                                                if(_loc8_ < this.§8"9§)
                                                                                                                                                {
                                                                                                                                                   if(this.§8$§)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc19_ && param3))
                                                                                                                                                         {
                                                                                                                                                            addr520:
                                                                                                                                                            _loc13_ = Number(this.§[`§[_loc12_ + 3]);
                                                                                                                                                            if(!(_loc19_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(param3);
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  addr481:
                                                                                                                                                                  §§push(§§pop() / _loc13_);
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     addr485:
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               if(_loc18_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  _loc13_ = §§pop();
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     if(false)
                                                                                                                                                                     {
                                                                                                                                                                        addr498:
                                                                                                                                                                        §§goto(addr785);
                                                                                                                                                                     }
                                                                                                                                                                     var _loc14_:*;
                                                                                                                                                                     _loc11_[_loc14_ = _loc7_++] = this.§[`§[_loc12_++] * _loc13_;
                                                                                                                                                                     if(!(_loc19_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        var _loc15_:*;
                                                                                                                                                                        _loc11_[_loc15_ = _loc7_++] = this.§[`§[_loc12_++] * _loc13_;
                                                                                                                                                                        if(_loc18_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                           var _loc16_:*;
                                                                                                                                                                           _loc11_[_loc16_ = _loc7_++] = this.§[`§[_loc12_++] * _loc13_;
                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              var _loc17_:*;
                                                                                                                                                                              _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc19_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc19_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr666:
                                                                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr674:
                                                                                                                                                                                          if(!(_loc19_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr682);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr785);
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc11_[_loc15_ = _loc7_++] = this.§[`§[_loc12_++];
                                                                                                                                                                                       if(_loc18_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc11_[_loc16_ = _loc7_++] = this.§[`§[_loc12_++];
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr739:
                                                                                                                                                                                             _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr761:
                                                                                                                                                                                    if(!(_loc19_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr769);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr777);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr739);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr666);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr674);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr777);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr520);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr769);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr547);
                                                                                                                                                         addr571:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr769);
                                                                                                                                                   }
                                                                                                                                                   _loc11_[_loc14_ = _loc7_++] = this.§[`§[_loc12_++];
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr666);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr761);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr789);
                                                                                                                                       }
                                                                                                                                       §§goto(addr559);
                                                                                                                                    }
                                                                                                                                    _loc11_[_loc14_ = _loc7_++] = this.§[`§[_loc8_];
                                                                                                                                    if(_loc18_ || param1)
                                                                                                                                    {
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          _loc8_++;
                                                                                                                                          §§goto(addr571);
                                                                                                                                          addr476:
                                                                                                                                       }
                                                                                                                                       addr545:
                                                                                                                                       §§goto(addr498);
                                                                                                                                    }
                                                                                                                                    §§goto(addr674);
                                                                                                                                 }
                                                                                                                                 §§goto(addr785);
                                                                                                                              }
                                                                                                                              §§goto(addr476);
                                                                                                                           }
                                                                                                                           §§goto(addr547);
                                                                                                                        }
                                                                                                                        addr559:
                                                                                                                        §§goto(addr789);
                                                                                                                     }
                                                                                                                     addr561:
                                                                                                                     _loc12_ = 0;
                                                                                                                     if(_loc18_ || param2)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           if(_loc19_ && this)
                                                                                                                           {
                                                                                                                              §§goto(addr561);
                                                                                                                           }
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              addr542:
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 §§goto(addr545);
                                                                                                                              }
                                                                                                                              §§goto(addr785);
                                                                                                                           }
                                                                                                                           §§goto(addr547);
                                                                                                                        }
                                                                                                                        §§goto(addr785);
                                                                                                                     }
                                                                                                                     §§goto(addr769);
                                                                                                                  }
                                                                                                                  §§goto(addr481);
                                                                                                               }
                                                                                                               §§goto(addr769);
                                                                                                            }
                                                                                                            §§goto(addr443);
                                                                                                         }
                                                                                                         §§goto(addr561);
                                                                                                      }
                                                                                                      §§goto(addr485);
                                                                                                   }
                                                                                                   §§goto(addr439);
                                                                                                }
                                                                                                §§goto(addr785);
                                                                                             }
                                                                                             §§goto(addr423);
                                                                                          }
                                                                                          §§goto(addr769);
                                                                                       }
                                                                                       §§goto(addr485);
                                                                                    }
                                                                                    §§goto(addr542);
                                                                                 }
                                                                              }
                                                                              addr789:
                                                                              return;
                                                                           }
                                                                           §§goto(addr272);
                                                                        }
                                                                        §§goto(addr352);
                                                                     }
                                                                     §§goto(addr260);
                                                                  }
                                                                  §§goto(addr351);
                                                               }
                                                               §§goto(addr346);
                                                            }
                                                         }
                                                         §§goto(addr354);
                                                      }
                                                      §§goto(addr350);
                                                   }
                                                   §§goto(addr354);
                                                }
                                                §§goto(addr346);
                                             }
                                             §§goto(addr331);
                                          }
                                          §§goto(addr354);
                                       }
                                       §§goto(addr351);
                                    }
                                    §§goto(addr272);
                                 }
                              }
                              if(_loc18_)
                              {
                                 param5.transformVectors(this.§8G§,this.§4U§);
                              }
                              continue loop6;
                           }
                           addr52:
                           if(§§pop() < _loc6_)
                           {
                              _loc9_[_loc14_ = _loc7_++] = this.§8G§[_loc8_];
                              addr187:
                              if(_loc18_)
                              {
                                 §§goto(addr190);
                              }
                           }
                           §§goto(addr190);
                           if(_loc19_ && param3)
                           {
                              continue;
                           }
                           if(!(_loc18_ || param3))
                           {
                              continue loop4;
                           }
                           if(false)
                           {
                              §§goto(addr68);
                           }
                           else
                           {
                              addr137:
                              §§push(_loc8_);
                              if(!_loc19_)
                              {
                                 §§push(_loc6_);
                                 if(!(_loc19_ && this))
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       _loc9_[_loc14_ = _loc7_++] = this.§4U§[_loc8_];
                                       if(!(_loc19_ && param3))
                                       {
                                          if(_loc18_ || param2)
                                          {
                                             _loc8_++;
                                             if(_loc18_)
                                             {
                                                §§goto(addr137);
                                             }
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr187);
                                    }
                                    if(_loc19_ && param3)
                                    {
                                       §§goto(addr173);
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr195);
                              }
                           }
                           §§goto(addr165);
                        }
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr102);
               }
               break;
            }
            §§goto(addr101);
         }
      }
      
      public function append(param1:§`b§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:int = this.§0Z§.length;
         if(!_loc9_)
         {
            this.§0Z§.length += param1.§0Z§.length;
            while(true)
            {
               this.§0Z§.position = _loc2_;
            }
            addr66:
         }
         loop1:
         while(true)
         {
            addr36:
            addr67:
            while(true)
            {
               this.§0Z§.writeBytes(param1.§0Z§);
               continue loop1;
            }
            var _loc3_:Vector.<Number> = param1.§[`§;
            addr125:
            var _loc4_:int = _loc3_.length;
            var _loc5_:int = 0;
            while(true)
            {
               if(_loc5_ >= _loc4_)
               {
                  do
                  {
                     this.§[`§.fixed = true;
                     do
                     {
                        this.§8G§.fixed = false;
                     }
                     while(_loc9_ && param1);
                     
                  }
                  while(!_loc10_);
                  
                  if(!(_loc9_ && _loc2_))
                  {
                     if(true)
                     {
                        break;
                     }
                     continue;
                  }
               }
               else
               {
                  this.§[`§.push(_loc3_[_loc5_]);
                  while(true)
                  {
                     _loc5_++;
                  }
                  addr133:
               }
               while(_loc9_)
               {
                  §§goto(addr133);
               }
            }
            var _loc6_:Vector.<Number>;
            var _loc7_:int = (_loc6_ = param1.§8G§).length;
            var _loc8_:int = 0;
            if(_loc10_)
            {
               loop9:
               while(true)
               {
                  if(_loc8_ >= _loc7_)
                  {
                     loop10:
                     while(true)
                     {
                        if(!(_loc9_ && param1))
                        {
                           this.§8G§.fixed = true;
                           while(!_loc9_)
                           {
                              this.§8"9§ += param1.§2"M§;
                              if(_loc10_ || this)
                              {
                                 if(_loc10_)
                                 {
                                    break loop10;
                                 }
                                 continue loop10;
                              }
                           }
                           continue loop9;
                        }
                     }
                     return;
                  }
                  this.§8G§.push(_loc6_[_loc8_]);
               }
            }
            while(true)
            {
               _loc8_++;
               §§goto(addr199);
            }
         }
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(_loc8_)
         {
            §§push(int(§§pop() * §1!-§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§8G§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§8G§[_loc7_ = _loc5_++] = param3;
         if(_loc8_ || param3)
         {
            this.§8G§[_loc5_] = param4;
         }
      }
      
      public function §0u§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(_loc6_)
         {
            §§push(int(§§pop() * §1!-§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§8G§[_loc5_ = _loc4_++] = param2;
         if(!(_loc7_ && this))
         {
            this.§8G§[_loc4_] = param3;
         }
      }
      
      public function §@!]§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(int(§§pop() * §1!-§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && param2))
         {
            param2.x = this.§8G§[_loc3_++];
         }
         do
         {
            param2.y = this.§8G§[_loc3_++];
            do
            {
               param2.z = this.§8G§[_loc3_];
            }
            while(!(_loc5_ || param1));
            
         }
         while(!(_loc5_ || this));
         
      }
      
      public function §<!<§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            if(this.§8$§)
            {
               addr21:
               §§push(param3);
               if(_loc8_)
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
               if(!(_loc9_ && param1))
               {
                  §§goto(addr37);
               }
            }
            addr38:
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(_loc8_)
            {
               §§push(§§pop() / 255);
               if(!_loc9_)
               {
                  §§goto(addr46);
               }
               §§goto(addr72);
            }
            addr46:
            §§push(Number(§§pop()));
            if(_loc8_ || param1)
            {
               _loc4_ = §§pop();
               §§push(§6$§.§3!6§(param2) * _loc4_);
               if(!_loc9_)
               {
                  addr72:
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(§6$§.§5"B§(param2) * _loc4_);
            if(!(_loc9_ && param3))
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(§6$§.§="=§(param2) * _loc4_);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(!(_loc9_ && param1))
            {
               this.§^k§(param1,1,_loc5_,_loc6_,_loc7_,param3);
            }
            return;
         }
         §§goto(addr21);
      }
      
      private function §^k§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1);
         if(!(_loc14_ && param3))
         {
            §§push(int(§§pop() * §""U§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(_loc13_ || this)
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
               this.§[`§[_loc9_ = _loc7_++] = param3;
               if(_loc13_ || this)
               {
                  var _loc10_:*;
                  this.§[`§[_loc10_ = _loc7_++] = param4;
                  if(!(_loc14_ && param1))
                  {
                     var _loc11_:*;
                     this.§[`§[_loc11_ = _loc7_++] = param5;
                     if(!(_loc14_ && this))
                     {
                        var _loc12_:*;
                        this.§[`§[_loc12_ = _loc7_++] = param6;
                     }
                  }
               }
               if(_loc13_ || param3)
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
                  if(_loc14_)
                  {
                     break;
                  }
               }
               continue loop0;
            }
            return;
         }
      }
      
      private function §"#§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1);
         if(!_loc8_)
         {
            §§push(int(§§pop() * §""U§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§[`§[_loc4_ = _loc3_++] = this.§[`§[_loc4_] * param2;
         var _loc5_:*;
         this.§[`§[_loc5_ = _loc3_++] = this.§[`§[_loc5_] * param2;
         var _loc6_:*;
         this.§[`§[_loc6_ = _loc3_++] = this.§[`§[_loc6_] * param2;
         if(_loc7_ || param2)
         {
            this.§[`§[_loc3_] *= param2;
         }
      }
      
      public function §9"O§(param1:int) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         §§push(param1);
         if(_loc7_ || param1)
         {
            §§push(int(§§pop() * §""U§));
         }
         var _loc2_:* = §§pop();
         if(_loc7_ || param1)
         {
            if(this.§8$§)
            {
               addr44:
               §§push(Number(this.§[`§[_loc2_ + 3]));
               if(_loc8_)
               {
               }
               addr63:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(!(_loc8_ && param1))
               {
                  §§goto(addr63);
               }
            }
            var _loc3_:* = §§pop();
            if(!(_loc8_ && _loc3_))
            {
               §§push(_loc3_);
               loop0:
               while(true)
               {
                  if(§§pop() != 0)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(255);
                        if(_loc7_ || _loc2_)
                        {
                           §§push(§§pop() / _loc3_);
                           loop2:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr212:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr213:
                                 addr224:
                                 while(!(_loc8_ && _loc3_))
                                 {
                                    §§push(this.§[`§[_loc2_] * _loc3_);
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       continue loop2;
                                       addr147:
                                       if(!(_loc8_ && this))
                                       {
                                          §§push(Number(§§pop()));
                                          continue loop0;
                                       }
                                    }
                                 }
                                 break loop1;
                              }
                           }
                        }
                        break;
                     }
                     return §§pop();
                  }
               }
            }
            §§goto(addr224);
         }
         §§goto(addr44);
      }
      
      public function §^!0§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc5_)
         {
            §§push(param2);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() < 0.001)
               {
                  if(_loc5_)
                  {
                     addr125:
                     §§push(0.001);
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr126:
                        while(true)
                        {
                           param2 = §§pop();
                        }
                     }
                     addr125:
                  }
                  while(true)
                  {
                  }
                  addr127:
               }
               while(true)
               {
                  if(this.§8$§)
                  {
                     if(_loc5_ || param2)
                     {
                        this.§<!<§(param1,this.§9"O§(param1),param2);
                        break;
                     }
                     break;
                  }
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§push(§§pop() * §""U§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 3);
                     }
                     if(!(_loc4_ && param2))
                     {
                        if(_loc5_)
                        {
                           §§goto(addr74);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr74);
               }
               addr74:
               _loc3_ = §§pop();
               while(true)
               {
                  if(!(_loc5_ || _loc3_))
                  {
                     break loop1;
                  }
                  this.§[`§[_loc3_] = param2;
                  if(_loc5_ || param1)
                  {
                     if(!_loc4_)
                     {
                        addr41:
                        break;
                     }
                     continue loop1;
                  }
               }
               return;
            }
            §§goto(addr125);
         }
         §§goto(addr41);
      }
      
      public function § "N§(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!_loc3_)
         {
            §§push(§§pop() * §""U§);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§[`§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_ || param1)
         {
            §§push(int(§§pop() * §5!O§));
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            this.§0Z§.position = _loc4_ * §2$§;
            do
            {
               this.§0Z§.writeFloat(param2);
               do
               {
                  this.§0Z§.writeFloat(param3);
               }
               while(!_loc5_);
               
            }
            while(!_loc5_);
            
         }
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && this))
         {
            §§push(int(§§pop() * §5!O§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || _loc3_)
         {
            this.§0Z§.position = _loc3_ * §2$§;
            while(true)
            {
               param2.x = this.§0Z§.readFloat();
               §§goto(addr83);
            }
         }
         addr83:
         while(true)
         {
            param2.y = this.§0Z§.readFloat();
            if(_loc5_ || _loc3_)
            {
               if(!_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §,S§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(_loc8_ || this)
         {
            §§push(int(§§pop() * §1!-§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§8G§[_loc6_ = _loc5_++] = this.§8G§[_loc6_] + param2;
         var _loc7_:*;
         this.§8G§[_loc7_ = _loc5_++] = this.§8G§[_loc7_] + param3;
         if(!_loc9_)
         {
            this.§8G§[_loc5_] += param4;
         }
      }
      
      public function §#U§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_ || param1)
         {
            §§push(int(§§pop() * §1!-§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && param2))
         {
            this.§4U§[0] = this.§8G§[_loc3_];
            while(true)
            {
               this.§4U§[1] = this.§8G§[_loc3_ + 1];
               loop1:
               while(!(_loc5_ && param2))
               {
                  this.§4U§[2] = this.§8G§[_loc3_ + 2];
                  do
                  {
                     param2.transformVectors(this.§4U§,this.§4U§);
                     while(true)
                     {
                        this.§8G§[_loc3_] = this.§4U§[0];
                        addr89:
                        while(_loc4_ || param1)
                        {
                           if(!(_loc4_ || param2))
                           {
                              continue loop1;
                           }
                           this.§8G§[_loc3_ + 1] = this.§4U§[1];
                           while(!_loc5_)
                           {
                              this.§8G§[_loc3_ + 2] = this.§4U§[2];
                              if(_loc5_)
                              {
                                 continue;
                              }
                              §§goto(addr53);
                           }
                           §§goto(addr89);
                           continue loop1;
                        }
                     }
                  }
                  while(!_loc4_);
                  
                  return;
               }
            }
         }
         §§goto(addr133);
      }
      
      public function §#"3§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param2))
         {
            §§push(param2);
            if(_loc7_ || param1)
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc8_)
                  {
                     §§push(0.001);
                     if(_loc7_)
                     {
                        addr38:
                        §§push(Number(§§pop()));
                        if(!(_loc8_ && param1))
                        {
                           param2 = §§pop();
                           if(_loc7_)
                           {
                              addr49:
                              if(this.§8$§)
                              {
                                 addr52:
                                 §§push(param2);
                                 if(!(_loc8_ && this))
                                 {
                                    addr60:
                                    §§push(Number(§§pop()));
                                    if(_loc7_ || _loc3_)
                                    {
                                       addr78:
                                    }
                                    addr88:
                                    §§push(Number(§§pop()));
                                 }
                              }
                              else
                              {
                                 §§push(Number(1));
                                 if(!(_loc8_ && param1))
                                 {
                                    §§goto(addr88);
                                 }
                              }
                              var _loc3_:* = §§pop();
                              if(!(_loc8_ && param2))
                              {
                                 §§push(_loc3_);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() / 255);
                                    if(_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc7_)
                                       {
                                          addr107:
                                          _loc3_ = §§pop();
                                          §§push(§6$§.§3!6§(param1) * _loc3_);
                                          if(_loc7_ || param2)
                                          {
                                             addr120:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc4_:* = §§pop();
                                       §§push(§6$§.§5"B§(param1) * _loc3_);
                                       if(_loc7_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc5_:* = §§pop();
                                       §§push(§6$§.§="=§(param1) * _loc3_);
                                       if(_loc7_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc6_:* = §§pop();
                                       if(_loc7_)
                                       {
                                          this.§^k§(0,this.§8"9§,_loc4_,_loc5_,_loc6_,param2);
                                       }
                                       return;
                                    }
                                    §§goto(addr107);
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr52);
                        }
                        §§goto(addr60);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr52);
               }
               §§goto(addr49);
            }
            §§goto(addr38);
         }
         §§goto(addr52);
      }
      
      public function §`P§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!(_loc14_ && param1))
         {
            §§push(param6);
            if(_loc13_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc13_ || param2)
                  {
                     addr35:
                     §§push(0.001);
                     if(!(_loc14_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc14_ && param1))
                        {
                           addr51:
                           param6 = §§pop();
                           §§goto(addr52);
                        }
                     }
                     §§goto(addr62);
                  }
               }
               addr52:
               §§push(param1);
               if(!(_loc14_ && param3))
               {
                  addr62:
                  §§push(int(§§pop() * §""U§));
               }
               var _loc7_:* = §§pop();
               var _loc8_:int = 0;
               while(_loc8_ < param2)
               {
                  var _loc9_:*;
                  this.§[`§[_loc9_ = _loc7_++] = param3;
                  if(_loc13_)
                  {
                     var _loc10_:*;
                     this.§[`§[_loc10_ = _loc7_++] = param4;
                     if(_loc13_ || param1)
                     {
                        var _loc11_:*;
                        this.§[`§[_loc11_ = _loc7_++] = param5;
                        if(_loc13_ || param1)
                        {
                           var _loc12_:*;
                           this.§[`§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(!_loc13_)
                  {
                     break;
                  }
                  _loc8_++;
                  if(_loc14_ && param2)
                  {
                     break;
                  }
               }
               return;
            }
            §§goto(addr51);
         }
         §§goto(addr35);
      }
      
      public function §9!`§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         if(!(_loc6_ && _loc3_))
         {
            §§push(param2);
            if(_loc5_)
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc6_)
                  {
                     §§push(0.001);
                     if(_loc5_ || this)
                     {
                        addr40:
                        §§push(Number(§§pop()));
                        if(!(_loc6_ && this))
                        {
                           §§goto(addr48);
                        }
                        §§goto(addr74);
                     }
                     addr48:
                     param2 = §§pop();
                     if(!_loc6_)
                     {
                        addr51:
                        §§push(param2);
                        if(_loc5_ || param2)
                        {
                           if(§§pop() == 1)
                           {
                              if(!(_loc5_ || _loc3_))
                              {
                                 addr69:
                                 §§push(param1);
                                 if(_loc5_)
                                 {
                                    addr74:
                                    §§push(int(§§pop() * §""U§));
                                 }
                                 var _loc3_:* = §§pop();
                                 if(!(_loc6_ && this))
                                 {
                                    if(!this.§8$§)
                                    {
                                       this.§[`§[_loc3_ + 3] *= param2;
                                       if(!_loc6_)
                                       {
                                          if(_loc6_ && _loc3_)
                                          {
                                             addr224:
                                             §§push(Number(this.§[`§[_loc3_ + 3]));
                                             loop6:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   if(!_loc6_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§push(§§pop() / _loc4_);
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      _loc4_ = §§pop();
                                                      loop5:
                                                      while(true)
                                                      {
                                                         this.§[`§[_loc3_] *= _loc4_;
                                                         loop1:
                                                         while(true)
                                                         {
                                                            this.§[`§[_loc3_ + 1] *= _loc4_;
                                                            loop2:
                                                            while(true)
                                                            {
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  this.§[`§[_loc3_ + 2] *= _loc4_;
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  this.§[`§[_loc3_ + 3] = param2;
                                                                  while(true)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     §§goto(addr158);
                                                                     §§goto(addr162);
                                                                  }
                                                                  addr158:
                                                                  addr162:
                                                                  addr84:
                                                                  return;
                                                                  addr133:
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr219);
                                             }
                                          }
                                          else
                                          {
                                             addr124:
                                          }
                                          §§goto(addr84);
                                       }
                                       §§goto(addr133);
                                    }
                                    §§goto(addr224);
                                 }
                                 §§goto(addr124);
                              }
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr74);
                     }
                     return;
                  }
                  §§goto(addr69);
               }
               §§goto(addr51);
            }
            §§goto(addr40);
         }
         §§goto(addr51);
      }
      
      public function §7!F§(param1:Boolean, param2:Boolean = true) : void
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
            while(true)
            {
               if(§§pop() == this.§8$§)
               {
                  addr282:
               }
               loop1:
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
                     while(_loc8_ || param2)
                     {
                        §§push(this.§8"9§);
                        loop3:
                        while(true)
                        {
                           §§push(int(§§pop() * §""U§));
                           while(true)
                           {
                              _loc3_ = §§pop();
                              while(true)
                              {
                                 §§push(0);
                                 if(!(_loc8_ || param1))
                                 {
                                    break;
                                 }
                                 if(_loc8_)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc9_)
                                    {
                                       if(!_loc9_)
                                       {
                                          if(!(_loc9_ && param1))
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc9_ && this))
                                                {
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      if(§§pop() >= _loc3_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               addr55:
                                                               this.§8$§ = param1;
                                                               addr59:
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(_loc8_ || param2)
                                                                        {
                                                                           addr103:
                                                                           if(_loc9_ && param2)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc8_ || param2)
                                                                           {
                                                                              if(§§pop() != 0)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr121:
                                                                                    if(_loc8_ || param1)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          addr141:
                                                                                          if(!(_loc9_ && this))
                                                                                          {
                                                                                             addr148:
                                                                                             §§push(§§pop() / _loc6_);
                                                                                             if(!(_loc9_ && _loc3_))
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   addr160:
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                      addr163:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§"#§(_loc4_,_loc7_);
                                                                                                         loop19:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc9_ && this))
                                                                                                            {
                                                                                                               addr215:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc4_++;
                                                                                                                  addr73:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc9_ && param2))
                                                                                                                     {
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                               loop24:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  addr224:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§8$§);
                                                                                                                     addr207:
                                                                                                                     loop8:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc5_);
                                                                                                                              addr209:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr210:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr208:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(1);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           addr212:
                                                                                                                        }
                                                                                                                        addr213:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr214:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc6_ = §§pop();
                                                                                                                              continue loop8;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr215:
                                                                                                               addr223:
                                                                                                               addr71:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr215);
                                                                                                            }
                                                                                                            §§push(param1);
                                                                                                            if(!(_loc9_ && this))
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           addr180:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 §§goto(addr213);
                                                                                                                              }
                                                                                                                              addr201:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                              §§goto(addr148);
                                                                                                                           }
                                                                                                                           §§goto(addr160);
                                                                                                                           addr180:
                                                                                                                        }
                                                                                                                        §§goto(addr180);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                     §§goto(addr121);
                                                                                                                  }
                                                                                                                  §§goto(addr208);
                                                                                                                  addr174:
                                                                                                               }
                                                                                                               §§push(1);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     continue loop20;
                                                                                                                  }
                                                                                                                  if(!(_loc9_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(!(_loc8_ || _loc3_))
                                                                                                                     {
                                                                                                                        §§goto(addr209);
                                                                                                                     }
                                                                                                                     §§goto(addr201);
                                                                                                                  }
                                                                                                                  §§goto(addr210);
                                                                                                               }
                                                                                                               addr184:
                                                                                                            }
                                                                                                            §§goto(addr207);
                                                                                                         }
                                                                                                      }
                                                                                                      addr163:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr223);
                                                                                                   }
                                                                                                   §§goto(addr224);
                                                                                                }
                                                                                                §§goto(addr180);
                                                                                             }
                                                                                             §§goto(addr160);
                                                                                          }
                                                                                          §§goto(addr214);
                                                                                       }
                                                                                       §§goto(addr160);
                                                                                    }
                                                                                    §§goto(addr174);
                                                                                 }
                                                                                 §§goto(addr163);
                                                                              }
                                                                              §§goto(addr71);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              addr222:
                                                                           }
                                                                           §§goto(addr215);
                                                                        }
                                                                        §§goto(addr141);
                                                                     }
                                                                  }
                                                                  §§goto(addr163);
                                                               }
                                                               §§goto(addr73);
                                                            }
                                                            §§goto(addr224);
                                                         }
                                                         §§goto(addr59);
                                                      }
                                                      else
                                                      {
                                                         §§push(this.§ "N§(0));
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                   §§goto(addr212);
                                                }
                                                §§goto(addr184);
                                             }
                                             return;
                                             addr258:
                                          }
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                    continue;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     §§goto(addr282);
                  }
                  §§goto(addr55);
               }
               continue;
               return;
            }
         }
         §§goto(addr258);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§8$§;
      }
      
      public function get §2"M§() : int
      {
         return this.§8"9§;
      }
      
      public function set §2"M§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc5_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§5!O§);
               loop1:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc5_)
                  {
                     §§push(§§pop() * §2$§);
                     if(!_loc5_)
                     {
                        addr490:
                        §§push(§§pop() - this.§0Z§.length);
                     }
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(int(this.§0Z§.length));
                           loop4:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              while(true)
                              {
                                 this.§0Z§.length += _loc2_;
                                 loop6:
                                 for(; !_loc5_; while(!(_loc5_ && _loc3_))
                                 {
                                    §§goto(addr444);
                                 })
                                 {
                                    if(_loc5_ && _loc2_)
                                    {
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       while(_loc6_)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(0);
                                          if(_loc5_ && _loc2_)
                                          {
                                             continue loop1;
                                          }
                                          if(§§pop() > §§pop())
                                          {
                                             do
                                             {
                                                this.§0Z§.position = _loc4_;
                                                continue loop6;
                                             }
                                             while(!_loc6_);
                                             
                                             loop49:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   while(true)
                                                   {
                                                      if(§§pop() >= §§pop() / §2$§)
                                                      {
                                                         while(true)
                                                         {
                                                            addr385:
                                                            while(true)
                                                            {
                                                               this.§[`§.fixed = false;
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(§""U§);
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - this.§[`§.length);
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(_loc6_ || _loc2_)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                loop23:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() < §§pop())
                                                                                                   {
                                                                                                      this.§[`§.push(0);
                                                                                                      break;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                   }
                                                                                                   loop30:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc6_ || _loc2_))
                                                                                                      {
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§[`§.fixed = true;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§8G§.fixed = false;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1);
                                                                                                                  loop34:
                                                                                                                  while(_loc6_)
                                                                                                                  {
                                                                                                                     §§push(§1!-§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§pop() - this.§8G§.length);
                                                                                                                        }
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           while(!_loc5_)
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              loop37:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    break loop23;
                                                                                                                                 }
                                                                                                                                 §§push(0);
                                                                                                                                 loop38:
                                                                                                                                 while(_loc6_)
                                                                                                                                 {
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                    continue loop37;
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc6_ || this)
                                                                                                                                       {
                                                                                                                                          if(!(_loc6_ || param1))
                                                                                                                                          {
                                                                                                                                             continue loop34;
                                                                                                                                          }
                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                          §§goto(addr190);
                                                                                                                                          continue loop34;
                                                                                                                                       }
                                                                                                                                       continue loop38;
                                                                                                                                    }
                                                                                                                                    _loc3_++;
                                                                                                                                    addr318:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       break loop34;
                                                                                                                                       §§goto(addr318);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop14;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop20;
                                                                                                                        }
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         this.§[`§.pop();
                                                                                                      }
                                                                                                      §§goto(addr325);
                                                                                                   }
                                                                                                   §§goto(addr337);
                                                                                                }
                                                                                                _loc3_++;
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr338);
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
                                                         }
                                                         addr384:
                                                      }
                                                      else
                                                      {
                                                         this.§0Z§.writeFloat(0);
                                                      }
                                                      §§goto(addr400);
                                                   }
                                                   continue loop49;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr384);
                                          }
                                          §§goto(addr385);
                                          §§push(0);
                                          if(!_loc5_)
                                          {
                                             continue loop2;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr490);
               }
            }
         }
         §§goto(addr473);
      }
      
      public function get §@T§() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§0Z§.position = 0;
         }
         return this.§0Z§;
      }
      
      public function get §,e§() : Vector.<Number>
      {
         return this.§[`§;
      }
      
      public function get §['§() : Vector.<Number>
      {
         return this.§8G§;
      }
   }
}
