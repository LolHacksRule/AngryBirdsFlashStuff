package §'j§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §3!!§
   {
      
      public static const §<z§:int = 4;
      
      public static const §4!9§:int = 2;
      
      public static const §!B§:int = 3;
      
      public static const §!!A§:int = 4;
      
      public static const §"K§:int = 0;
      
      public static const §17§:int = 0;
      
      public static const §#_§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §<z§ = 4;
            §4!9§ = 2;
            §!B§ = 3;
            if(_loc2_ || §3!!§)
            {
               §!!A§ = 4;
               §"K§ = 0;
               §17§ = 0;
               if(_loc1_ && §3!!§)
               {
               }
               §§goto(addr79);
            }
            §#_§ = 0;
         }
         addr79:
      }
      
      private var §<A§:ByteArray;
      
      private var § p§:Vector.<Number>;
      
      private var §9'§:Vector.<Number>;
      
      private var §7R§:Boolean;
      
      private var §!5§:int;
      
      private var §+o§:Vector.<Number>;
      
      public function §3!!§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§+o§ = new Vector.<Number>(12,true);
            if(_loc4_ || param1)
            {
               super();
               if(!_loc5_)
               {
                  addr37:
                  this.§<A§ = new ByteArray();
                  if(_loc4_)
                  {
                     this.§<A§.endian = Endian.LITTLE_ENDIAN;
                     if(!_loc4_)
                     {
                     }
                     §§goto(addr68);
                  }
               }
               this.§<A§.length = param1 * §4!9§ * §!!A§;
            }
            addr68:
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= param1 * §4!9§)
               {
                  if(!_loc5_)
                  {
                     this.§ p§ = new Vector.<Number>(param1 * §<z§,true);
                     break;
                  }
                  break;
               }
               this.§<A§.writeFloat(0);
               if(_loc5_ && this)
               {
                  break;
               }
               _loc3_++;
            }
            this.§9'§ = new Vector.<Number>(param1 * §!B§,true);
            if(_loc4_ || param1)
            {
               this.§7R§ = param2;
            }
            this.§!5§ = param1;
            return;
         }
         §§goto(addr37);
      }
      
      public function clone() : §3!!§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§3!!§ = new §3!!§(0,this.§7R§);
         if(_loc3_)
         {
            _loc1_.§<A§.length = this.§<A§.length;
            _loc1_.§<A§.writeBytes(this.§<A§);
            if(!_loc2_)
            {
               §§goto(addr49);
            }
            §§goto(addr82);
         }
         addr49:
         _loc1_.§ p§ = this.§ p§.concat();
         if(!(_loc2_ && _loc1_))
         {
            _loc1_.§ p§.fixed = true;
            if(_loc3_ || _loc3_)
            {
               addr82:
               _loc1_.§9'§ = this.§9'§.concat();
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.§9'§.fixed = true;
               }
            }
         }
         _loc1_.§!5§ = this.§!5§;
         return _loc1_;
      }
      
      public function copyTo(param1:§3!!§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§9'§;
         if(_loc19_)
         {
            §§push(this.§!5§);
            if(!(_loc18_ && param1))
            {
               §§push(§!B§);
               if(!_loc18_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc19_ || param3)
                  {
                     §§push(int(§§pop()));
                     if(_loc19_)
                     {
                        _loc6_ = §§pop();
                        if(_loc19_)
                        {
                           §§push(param2);
                           if(!(_loc18_ && this))
                           {
                              addr72:
                              §§push(int(§§pop() * §!B§));
                              if(_loc19_)
                              {
                                 addr75:
                                 _loc7_ = §§pop();
                                 if(_loc19_)
                                 {
                                    addr78:
                                    if(param5)
                                    {
                                       if(_loc19_ || param1)
                                       {
                                          addr87:
                                          param5.transformVectors(this.§9'§,this.§+o§);
                                          if(!_loc19_)
                                          {
                                          }
                                          addr97:
                                          while(true)
                                          {
                                             §§push(_loc8_);
                                             if(!_loc18_)
                                             {
                                                §§push(_loc6_);
                                                if(_loc19_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      break;
                                                   }
                                                   var _loc14_:*;
                                                   _loc9_[_loc14_ = _loc7_++] = this.§+o§[_loc8_];
                                                   if(_loc19_)
                                                   {
                                                      continue;
                                                   }
                                                   loop19:
                                                   while(true)
                                                   {
                                                      if(_loc19_)
                                                      {
                                                         addr148:
                                                         _loc8_++;
                                                         while(true)
                                                         {
                                                            §§push(_loc8_);
                                                            addr150:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_);
                                                               addr151:
                                                               while(§§pop() < §§pop())
                                                               {
                                                                  _loc9_[_loc14_ = _loc7_++] = this.§9'§[_loc8_];
                                                                  continue loop19;
                                                               }
                                                            }
                                                            §§goto(addr148);
                                                         }
                                                         addr149:
                                                      }
                                                      addr152:
                                                      var _loc10_:ByteArray = param1.§<A§;
                                                      if(!_loc18_)
                                                      {
                                                         §§push(this.§!5§);
                                                         if(_loc19_ || param1)
                                                         {
                                                            §§push(§4!9§);
                                                            if(_loc19_ || param3)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc19_)
                                                               {
                                                                  §§push(§!!A§);
                                                                  if(_loc19_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc19_ || this)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        if(_loc19_)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(param2);
                                                                              if(_loc19_)
                                                                              {
                                                                                 addr199:
                                                                                 §§push(§§pop() * §4!9§);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    addr202:
                                                                                    §§push(§!!A§);
                                                                                    if(!(_loc18_ && param2))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc18_ && param2))
                                                                                       {
                                                                                          addr219:
                                                                                          _loc7_ = int(§§pop());
                                                                                          addr218:
                                                                                          if(_loc10_.length < _loc7_ + _loc6_)
                                                                                          {
                                                                                             _loc10_.length = _loc7_ + _loc6_;
                                                                                             if(_loc19_ || param3)
                                                                                             {
                                                                                                addr238:
                                                                                                _loc10_.position = _loc7_;
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                }
                                                                                                addr272:
                                                                                                _loc11_ = param1.§ p§;
                                                                                                §§push(this.§!5§);
                                                                                                if(!(_loc18_ && param1))
                                                                                                {
                                                                                                   §§push(§<z§);
                                                                                                   if(_loc19_ || param1)
                                                                                                   {
                                                                                                      §§push(int(§§pop() * §§pop()));
                                                                                                      if(_loc19_ || param1)
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         if(_loc19_ || this)
                                                                                                         {
                                                                                                            §§push(param2);
                                                                                                            if(!(_loc18_ && param2))
                                                                                                            {
                                                                                                               §§push(§<z§);
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  §§push(int(§§pop() * §§pop()));
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     addr335:
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        if(param3 == 1)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              addr344:
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              loop16:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    addr395:
                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() >= §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          addr403:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc13_ = this.§ p§[_loc12_ + 3];
                                                                                                                                             addr411:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc13_ = param3 / _loc13_;
                                                                                                                                                _loc11_[_loc14_ = _loc7_++] = this.§ p§[_loc12_++] * _loc13_;
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   var _loc15_:*;
                                                                                                                                                   _loc11_[_loc15_ = _loc7_++] = this.§ p§[_loc12_++] * _loc13_;
                                                                                                                                                   if(_loc19_ || this)
                                                                                                                                                   {
                                                                                                                                                      var _loc16_:*;
                                                                                                                                                      _loc11_[_loc16_ = _loc7_++] = this.§ p§[_loc12_++] * _loc13_;
                                                                                                                                                      if(!(_loc18_ && param1))
                                                                                                                                                      {
                                                                                                                                                         var _loc17_:*;
                                                                                                                                                         _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                         if(_loc19_ || param3)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc19_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  addr510:
                                                                                                                                                                  if(!(_loc18_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     while(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr601);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     break loop16;
                                                                                                                                                                     addr518:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc11_[_loc15_ = _loc7_++] = this.§ p§[_loc12_++];
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc11_[_loc16_ = _loc7_++] = this.§ p§[_loc12_++];
                                                                                                                                                                           if(!(_loc18_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              addr588:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                                 addr597:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr588:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr556:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        addr600:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           addr601:
                                                                                                                                                                           §§goto(addr616);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr539:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr556);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr588);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr597);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr588);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr510);
                                                                                                                                                }
                                                                                                                                                §§goto(addr539);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr403:
                                                                                                                                       }
                                                                                                                                       §§goto(addr616);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       _loc11_[_loc14_ = _loc7_++] = this.§ p§[_loc8_];
                                                                                                                                       if(!(_loc18_ && param3))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr518);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                    {
                                                                                                                                       if(this.§7R§)
                                                                                                                                       {
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr403);
                                                                                                                                          }
                                                                                                                                          §§goto(addr521);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          _loc11_[_loc14_ = _loc7_++] = this.§ p§[_loc12_++];
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr510);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr600);
                                                                                                                                    }
                                                                                                                                    §§goto(addr616);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              loop12:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 addr613:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr615);
                                                                                                                                    continue loop12;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(_loc19_ || this)
                                                                                                                           {
                                                                                                                              _loc12_ = §§pop();
                                                                                                                              §§goto(addr395);
                                                                                                                              §§push(0);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr613);
                                                                                                                     }
                                                                                                                     §§goto(addr411);
                                                                                                                  }
                                                                                                                  §§goto(addr613);
                                                                                                               }
                                                                                                               §§goto(addr615);
                                                                                                            }
                                                                                                            §§goto(addr335);
                                                                                                         }
                                                                                                         §§goto(addr601);
                                                                                                      }
                                                                                                      §§goto(addr395);
                                                                                                   }
                                                                                                   §§goto(addr615);
                                                                                                }
                                                                                                §§goto(addr344);
                                                                                             }
                                                                                             _loc10_.writeBytes(this.§<A§);
                                                                                             §§push(param4);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         addr257:
                                                                                                         §§pop();
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            addr261:
                                                                                                            addr262:
                                                                                                            §§push(param3 == 1);
                                                                                                            if(_loc19_ || this)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr271);
                                                                                                         }
                                                                                                         §§goto(addr272);
                                                                                                      }
                                                                                                      §§push(!§§pop());
                                                                                                   }
                                                                                                   addr271:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§goto(addr272);
                                                                                                   }
                                                                                                   addr616:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc12_++;
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         _loc8_++;
                                                                                                         if(_loc19_ || param3)
                                                                                                         {
                                                                                                            break loop16;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      break loop16;
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr257);
                                                                                          }
                                                                                          §§goto(addr238);
                                                                                       }
                                                                                       §§goto(addr261);
                                                                                    }
                                                                                    §§goto(addr262);
                                                                                 }
                                                                                 §§goto(addr218);
                                                                              }
                                                                              §§goto(addr219);
                                                                           }
                                                                           §§goto(addr238);
                                                                        }
                                                                     }
                                                                     §§goto(addr219);
                                                                  }
                                                                  §§goto(addr261);
                                                               }
                                                               §§goto(addr202);
                                                            }
                                                            §§goto(addr199);
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                }
                                                §§goto(addr151);
                                             }
                                             §§goto(addr150);
                                          }
                                          §§goto(addr152);
                                       }
                                       addr96:
                                       _loc8_ = 0;
                                       §§goto(addr97);
                                    }
                                    else
                                    {
                                       §§push(0);
                                       if(!_loc18_)
                                       {
                                          _loc8_ = §§pop();
                                          §§goto(addr148);
                                       }
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr75);
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr75);
         }
         §§goto(addr87);
      }
      
      public function append(param1:§3!!§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:int = this.§<A§.length;
         if(_loc10_)
         {
            this.§<A§.length += param1.§<A§.length;
            if(_loc10_ || param1)
            {
               addr41:
               this.§<A§.position = _loc2_;
               if(_loc10_)
               {
                  this.§<A§.writeBytes(param1.§<A§);
                  if(_loc10_)
                  {
                     this.§ p§.fixed = false;
                  }
               }
            }
            var _loc3_:Vector.<Number> = param1.§ p§;
            var _loc4_:int = _loc3_.length;
            var _loc5_:int = 0;
            while(true)
            {
               if(_loc5_ < _loc4_)
               {
                  continue;
               }
               if(_loc10_ || _loc2_)
               {
                  this.§ p§.fixed = true;
                  if(_loc10_ || _loc3_)
                  {
                     break;
                  }
               }
               var _loc6_:Vector.<Number>;
               var _loc7_:int = (_loc6_ = param1.§9'§).length;
               var _loc8_:int = 0;
               if(!(_loc9_ && param1))
               {
                  loop1:
                  while(true)
                  {
                     if(_loc8_ >= _loc7_)
                     {
                        if(!_loc9_)
                        {
                           break;
                        }
                        §§goto(addr179);
                     }
                     this.§9'§.push(_loc6_[_loc8_]);
                     if(!(_loc10_ || this))
                     {
                        break;
                     }
                     addr158:
                     while(true)
                     {
                        _loc8_++;
                        if(!_loc10_)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                  }
                  this.§9'§.fixed = true;
                  if(!_loc9_)
                  {
                     this.§!5§ += param1.§`!6§;
                  }
                  addr179:
                  return;
               }
               §§goto(addr158);
            }
            this.§9'§.fixed = false;
            §§goto(addr116);
         }
         §§goto(addr41);
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(_loc9_)
         {
            §§push(int(§§pop() * §!B§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§9'§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§9'§[_loc7_ = _loc5_++] = param3;
         if(!_loc8_)
         {
            this.§9'§[_loc5_] = param4;
         }
      }
      
      public function §=!3§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(_loc7_)
         {
            §§push(int(§§pop() * §!B§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§9'§[_loc5_ = _loc4_++] = param2;
         if(!_loc6_)
         {
            this.§9'§[_loc4_] = param3;
         }
      }
      
      public function §#!6§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop() * §!B§));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            param2.x = this.§9'§[_loc3_++];
            if(_loc5_)
            {
               §§goto(addr62);
            }
            §§goto(addr78);
         }
         addr62:
         param2.y = this.§9'§[_loc3_++];
         if(_loc5_ || param2)
         {
            addr78:
            param2.z = this.§9'§[_loc3_];
         }
      }
      
      public function §[V§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || this)
         {
            if(this.§7R§)
            {
               addr27:
               §§push(param3);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_ || param2)
                  {
                     addr38:
                  }
                  §§goto(addr48);
               }
               §§goto(addr38);
            }
            else
            {
               §§push(Number(1));
               if(_loc9_ || param2)
               {
                  §§goto(addr48);
               }
            }
            addr48:
            var _loc4_:*;
            §§push(_loc4_ = Number(§§pop()));
            if(!_loc8_)
            {
               §§push(§§pop() / 255);
               if(_loc9_ || param3)
               {
                  §§goto(addr72);
               }
               §§goto(addr80);
            }
            addr72:
            §§push(Number(§§pop()));
            if(!(_loc8_ && this))
            {
               addr80:
               _loc4_ = §§pop();
               §§push(§]Z§.§3e§(param2) * _loc4_);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(§]Z§.§7Z§(param2) * _loc4_);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(§]Z§.§?P§(param2) * _loc4_);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(_loc9_)
            {
               this.§6j§(param1,1,_loc5_,_loc6_,_loc7_,param3);
            }
            return;
         }
         §§goto(addr27);
      }
      
      private function §6j§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1);
         if(!(_loc14_ && param3))
         {
            §§push(int(§§pop() * §<z§));
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
               this.§ p§[_loc9_ = _loc7_++] = param3;
               if(_loc13_ || param3)
               {
                  var _loc10_:*;
                  this.§ p§[_loc10_ = _loc7_++] = param4;
                  if(!_loc14_)
                  {
                     var _loc11_:*;
                     this.§ p§[_loc11_ = _loc7_++] = param5;
                     if(!(_loc14_ && param2))
                     {
                        var _loc12_:*;
                        this.§ p§[_loc12_ = _loc7_++] = param6;
                     }
                  }
               }
               if(_loc14_)
               {
                  break;
               }
               §§push(_loc8_);
               if(_loc13_)
               {
                  §§push(§§pop() - 1);
                  if(!(_loc14_ && param3))
                  {
                     _loc8_ = §§pop();
                     if(_loc14_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
      }
      
      private function §!I§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(!(_loc7_ && this))
         {
            §§push(int(§§pop() * §<z§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§ p§[_loc4_ = _loc3_++] = this.§ p§[_loc4_] * param2;
         var _loc5_:*;
         this.§ p§[_loc5_ = _loc3_++] = this.§ p§[_loc5_] * param2;
         var _loc6_:*;
         this.§ p§[_loc6_ = _loc3_++] = this.§ p§[_loc6_] * param2;
         if(!(_loc7_ && _loc3_))
         {
            this.§ p§[_loc3_] *= param2;
         }
      }
      
      public function §+!#§(param1:int) : uint
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         §§push(param1);
         if(_loc8_)
         {
            §§push(int(§§pop() * §<z§));
         }
         var _loc2_:* = §§pop();
         if(!_loc7_)
         {
            if(this.§7R§)
            {
               addr35:
               §§push(Number(this.§ p§[_loc2_ + 3]));
               if(!(_loc7_ && _loc2_))
               {
                  addr69:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(Number(1));
               if(!(_loc7_ && this))
               {
                  §§goto(addr69);
               }
            }
            var _loc3_:* = §§pop();
            if(_loc3_ == 0)
            {
               §§push(0);
               if(!_loc7_)
               {
                  return §§pop();
               }
            }
            else
            {
               §§push(255);
            }
            §§push(Number(§§pop() / _loc3_));
            if(!(_loc7_ && this))
            {
               _loc3_ = §§pop();
               §§push(this.§ p§[_loc2_] * _loc3_);
               if(_loc8_ || this)
               {
                  _loc4_ = §§pop();
                  _loc5_ = this.§ p§[_loc2_ + 1] * _loc3_;
                  §§push(this.§ p§[_loc2_ + 2] * _loc3_);
                  if(!(_loc7_ && _loc3_))
                  {
                     addr140:
                     §§push(Number(§§pop()));
                  }
                  _loc6_ = §§pop();
                  return §]Z§.§[i§(_loc4_,_loc5_,_loc6_);
               }
            }
            §§goto(addr140);
         }
         §§goto(addr35);
      }
      
      public function §0z§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         §§push(param2);
         if(!(_loc4_ && _loc3_))
         {
            if(§§pop() < 0.001)
            {
               if(_loc5_ || this)
               {
                  §§push(0.001);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                        addr52:
                        param2 = §§pop();
                        if(_loc5_ || this)
                        {
                           §§goto(addr60);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr52);
               }
               §§goto(addr99);
            }
            addr60:
            if(this.§7R§)
            {
               if(!_loc4_)
               {
                  this.§[V§(param1,this.§+!#§(param1),param2);
                  addr82:
               }
               §§goto(addr82);
            }
            else
            {
               §§push(param1);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() * §<z§);
                  if(_loc5_)
                  {
                     addr95:
                     §§push(§§pop() + 3);
                  }
                  §§push(int(§§pop()));
               }
               _loc3_ = §§pop();
               addr99:
               this.§ p§[_loc3_] = param2;
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §7Q§(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop() * §<z§);
            if(_loc3_ || param1)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§ p§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(int(§§pop() * §4!9§));
         }
         var _loc4_:* = §§pop();
         if(!(_loc5_ && param2))
         {
            this.§<A§.position = _loc4_ * §!!A§;
            if(_loc6_ || param2)
            {
               this.§<A§.writeFloat(param2);
               if(!_loc5_)
               {
                  this.§<A§.writeFloat(param3);
               }
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
            §§push(int(§§pop() * §4!9§));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            this.§<A§.position = _loc3_ * §!!A§;
            if(_loc5_)
            {
               addr54:
               param2.x = this.§<A§.readFloat();
               if(_loc5_ || param1)
               {
                  param2.y = this.§<A§.readFloat();
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function §[w§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(_loc8_ || param3)
         {
            §§push(int(§§pop() * §!B§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§9'§[_loc6_ = _loc5_++] = this.§9'§[_loc6_] + param2;
         var _loc7_:*;
         this.§9'§[_loc7_ = _loc5_++] = this.§9'§[_loc7_] + param3;
         if(!(_loc9_ && this))
         {
            this.§9'§[_loc5_] += param4;
         }
      }
      
      public function §21§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(int(§§pop() * §!B§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && param2))
         {
            this.§+o§[0] = this.§9'§[_loc3_];
            this.§+o§[1] = this.§9'§[_loc3_ + 1];
            if(_loc4_ || param2)
            {
               this.§+o§[2] = this.§9'§[_loc3_ + 2];
               param2.transformVectors(this.§+o§,this.§+o§);
               if(_loc4_)
               {
                  this.§9'§[_loc3_] = this.§+o§[0];
                  if(_loc4_ || param2)
                  {
                     addr108:
                     this.§9'§[_loc3_ + 1] = this.§+o§[1];
                  }
               }
               this.§9'§[_loc3_ + 2] = this.§+o§[2];
               §§goto(addr128);
            }
            §§goto(addr108);
         }
         addr128:
      }
      
      public function §^$§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            if(param2 < 0.001)
            {
               if(!_loc8_)
               {
                  param2 = 0.001;
                  if(_loc8_ && param2)
                  {
                  }
               }
               §§goto(addr41);
            }
            if(this.§7R§)
            {
               addr41:
               §§goto(addr56);
            }
            else
            {
               §§push(Number(1));
               if(_loc7_ || param2)
               {
                  §§goto(addr55);
               }
            }
            addr56:
            §§push(Number(param2));
            if(!_loc8_)
            {
               addr55:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc7_)
            {
               §§push(_loc3_);
               if(_loc7_ || param1)
               {
                  §§push(§§pop() / 255);
                  if(_loc7_ || this)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc8_ && param1))
                     {
                        §§goto(addr94);
                     }
                     §§goto(addr102);
                  }
               }
               addr94:
               _loc3_ = §§pop();
               §§goto(addr95);
            }
            addr95:
            §§push(§]Z§.§3e§(param1) * _loc3_);
            if(_loc7_)
            {
               addr102:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(§]Z§.§7Z§(param1) * _loc3_);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(§]Z§.§?P§(param1) * _loc3_);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc7_)
            {
               this.§6j§(0,this.§!5§,_loc4_,_loc5_,_loc6_,param2);
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §-!1§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!(_loc14_ && param3))
         {
            §§push(param6);
            if(!_loc14_)
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc14_)
                  {
                     addr30:
                     §§push(0.001);
                     if(!(_loc14_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc14_ && this))
                        {
                           addr46:
                           param6 = §§pop();
                           §§goto(addr47);
                        }
                     }
                     §§goto(addr57);
                  }
               }
               addr47:
               §§push(param1);
               if(_loc13_ || param1)
               {
                  addr57:
                  §§push(int(§§pop() * §<z§));
               }
               var _loc7_:* = §§pop();
               var _loc8_:int = 0;
               while(_loc8_ < param2)
               {
                  var _loc9_:*;
                  this.§ p§[_loc9_ = _loc7_++] = param3;
                  if(!_loc14_)
                  {
                     var _loc10_:*;
                     this.§ p§[_loc10_ = _loc7_++] = param4;
                     if(_loc13_ || param2)
                     {
                        var _loc11_:*;
                        this.§ p§[_loc11_ = _loc7_++] = param5;
                        if(!_loc14_)
                        {
                           var _loc12_:*;
                           this.§ p§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(_loc13_)
                  {
                     _loc8_++;
                     if(_loc14_)
                     {
                        break;
                     }
                  }
               }
               return;
            }
            §§goto(addr46);
         }
         §§goto(addr30);
      }
      
      public function §^!"§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         if(_loc5_ || _loc3_)
         {
            §§push(param2);
            if(!(_loc6_ && this))
            {
               if(§§pop() < 0.001)
               {
                  if(!(_loc6_ && param1))
                  {
                     §§push(0.001);
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc5_)
                        {
                           §§goto(addr48);
                        }
                     }
                     §§goto(addr59);
                  }
               }
               §§goto(addr51);
            }
            addr48:
            param2 = §§pop();
            if(_loc5_)
            {
               addr51:
               §§push(param2);
               if(_loc5_ || this)
               {
                  addr59:
                  if(§§pop() == 1)
                  {
                     if(_loc5_)
                     {
                        §§goto(addr63);
                     }
                  }
                  §§push(param1);
                  if(_loc5_)
                  {
                     addr69:
                     §§push(int(§§pop() * §<z§));
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_)
                  {
                     if(this.§7R§)
                     {
                        if(_loc5_ || this)
                        {
                           §§push(Number(this.§ p§[_loc3_ + 3]));
                           if(!(_loc6_ && param1))
                           {
                              _loc4_ = §§pop();
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(param2);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() / _loc4_);
                                    if(!_loc6_)
                                    {
                                       addr122:
                                       §§push(Number(§§pop()));
                                    }
                                    _loc4_ = §§pop();
                                    addr124:
                                    this.§ p§[_loc3_] *= _loc4_;
                                    this.§ p§[_loc3_ + 1] *= _loc4_;
                                 }
                                 §§goto(addr122);
                              }
                              this.§ p§[_loc3_ + 2] *= _loc4_;
                              this.§ p§[_loc3_ + 3] = param2;
                              if(!_loc6_)
                              {
                                 addr196:
                                 return;
                                 addr181:
                              }
                              §§goto(addr196);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr181);
                     }
                     else
                     {
                        this.§ p§[_loc3_ + 3] *= param2;
                     }
                     §§goto(addr196);
                  }
                  §§goto(addr124);
               }
               §§goto(addr69);
            }
            §§goto(addr63);
         }
         addr63:
      }
      
      public function §5!3§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         if(_loc8_)
         {
            §§push(param1);
            if(!(_loc9_ && _loc3_))
            {
               if(§§pop() == this.§7R§)
               {
                  if(!_loc9_)
                  {
                     return;
                  }
                  addr58:
                  §§push(this.§!5§);
                  if(!_loc9_)
                  {
                     §§push(int(§§pop() * §<z§));
                     if(_loc8_ || _loc3_)
                     {
                        addr72:
                        _loc3_ = §§pop();
                        if(_loc8_)
                        {
                           addr76:
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
                                 addr207:
                                 this.§7R§ = param1;
                                 break;
                              }
                              §§push(Number(this.§7Q§(0)));
                              if(_loc8_ || _loc3_)
                              {
                                 _loc5_ = §§pop();
                                 if(_loc8_ || _loc3_)
                                 {
                                    §§push(this.§7R§);
                                    if(!_loc9_)
                                    {
                                       if(§§pop())
                                       {
                                          §§push(_loc5_);
                                          if(!_loc9_)
                                          {
                                             addr122:
                                             _loc6_ = Number(§§pop());
                                             if(_loc8_ || this)
                                             {
                                                addr132:
                                                if(param1)
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc8_ || param1)
                                                      {
                                                         addr149:
                                                         §§push(Number(§§pop()));
                                                         if(_loc8_ || this)
                                                         {
                                                            _loc7_ = §§pop();
                                                            if(!(_loc8_ || param1))
                                                            {
                                                               break;
                                                            }
                                                            §§push(_loc6_);
                                                            if(!_loc8_)
                                                            {
                                                            }
                                                            addr191:
                                                            _loc7_ = §§pop();
                                                            if(_loc8_ || param2)
                                                            {
                                                               addr199:
                                                               this.§!I§(_loc4_,_loc7_);
                                                               addr203:
                                                               _loc4_++;
                                                            }
                                                            continue loop0;
                                                         }
                                                         if(§§pop() != 0)
                                                         {
                                                            if(_loc8_ || this)
                                                            {
                                                               addr188:
                                                               §§goto(addr191);
                                                               §§push(Number(_loc7_ / _loc6_));
                                                            }
                                                         }
                                                         §§goto(addr203);
                                                      }
                                                   }
                                                   §§goto(addr188);
                                                }
                                                else
                                                {
                                                   §§push(1);
                                                   if(_loc9_)
                                                   {
                                                      continue;
                                                   }
                                                   addr148:
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr149);
                                             }
                                             §§goto(addr199);
                                          }
                                          §§goto(addr191);
                                       }
                                       else
                                       {
                                          §§push(1);
                                          if(!_loc9_)
                                          {
                                             §§goto(addr122);
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       §§goto(addr148);
                                    }
                                    §§goto(addr132);
                                 }
                                 break;
                              }
                              §§goto(addr188);
                           }
                           return;
                        }
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr72);
               }
               else
               {
                  addr50:
                  if(param2)
                  {
                     if(!(_loc9_ && _loc3_))
                     {
                        §§goto(addr58);
                     }
                     §§goto(addr76);
                  }
               }
               §§goto(addr207);
            }
            §§goto(addr50);
         }
         §§goto(addr76);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§7R§;
      }
      
      public function get §`!6§() : int
      {
         return this.§!5§;
      }
      
      public function set §`!6§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         §§push(param1);
         if(_loc6_ || _loc3_)
         {
            §§push(§4!9§);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && param1))
               {
                  §§push(§§pop() * §!!A§);
                  if(_loc6_)
                  {
                     addr46:
                     §§push(§§pop() - this.§<A§.length);
                  }
                  §§push(int(§§pop()));
                  if(!(_loc5_ && _loc2_))
                  {
                     addr58:
                     _loc2_ = §§pop();
                     if(!_loc5_)
                     {
                        §§push(int(this.§<A§.length));
                        if(_loc6_ || this)
                        {
                           addr72:
                           _loc4_ = §§pop();
                           this.§<A§.length += _loc2_;
                           §§push(_loc2_);
                           if(_loc6_ || _loc3_)
                           {
                              addr89:
                              if(§§pop() > 0)
                              {
                                 this.§<A§.position = _loc4_;
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr103:
                                    _loc3_ = 0;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc6_)
                                    {
                                       §§push(_loc2_);
                                       if(_loc6_ || _loc3_)
                                       {
                                          if(§§pop() >= §§pop() / §!!A§)
                                          {
                                             addr310:
                                             if(_loc6_)
                                             {
                                                addr136:
                                                this.§ p§.fixed = false;
                                                if(_loc6_)
                                                {
                                                   §§push(param1);
                                                   break;
                                                }
                                             }
                                             this.§!5§ = param1;
                                          }
                                          else
                                          {
                                             this.§<A§.writeFloat(0);
                                             if(!(_loc6_ || param1))
                                             {
                                                continue;
                                             }
                                             _loc3_++;
                                             if(!_loc5_)
                                             {
                                                continue;
                                             }
                                          }
                                          §§goto(addr313);
                                       }
                                       loop1:
                                       while(§§pop() < §§pop())
                                       {
                                          this.§9'§.push(0);
                                          _loc3_++;
                                          while(true)
                                          {
                                             continue loop1;
                                          }
                                       }
                                       addr270:
                                       addr271:
                                       §§push(int(_loc2_));
                                       if(_loc6_ || this)
                                       {
                                          _loc3_ = §§pop();
                                          addr290:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             addr291:
                                             this.§9'§.pop();
                                             _loc3_++;
                                          }
                                          addr296:
                                       }
                                       while(§§pop() < 0)
                                       {
                                          §§goto(addr291);
                                          §§goto(addr296);
                                       }
                                       this.§9'§.fixed = true;
                                       if(!(_loc5_ && param1))
                                       {
                                          §§goto(addr310);
                                       }
                                       addr313:
                                       return;
                                       addr269:
                                    }
                                    break;
                                 }
                                 §§push(§<z§);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§push(§§pop() - this.§ p§.length);
                                       if(!_loc5_)
                                       {
                                          _loc2_ = int(§§pop());
                                          §§push(0);
                                          if(_loc6_ || this)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc6_ || _loc2_)
                                             {
                                                while(true)
                                                {
                                                   if(_loc3_ < _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      _loc3_ = int(_loc2_);
                                                      if(_loc6_ || param1)
                                                      {
                                                         while(_loc3_ < 0)
                                                         {
                                                            this.§ p§.pop();
                                                            _loc3_++;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            this.§ p§.fixed = true;
                                                         }
                                                         this.§9'§.fixed = false;
                                                         §§push(param1);
                                                         if(_loc6_ || param1)
                                                         {
                                                            §§push(§§pop() * §!B§);
                                                            if(_loc6_)
                                                            {
                                                               addr247:
                                                               _loc2_ = int(§§pop() - this.§9'§.length);
                                                               addr243:
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr267);
                                                            }
                                                            §§goto(addr247);
                                                         }
                                                         addr257:
                                                         _loc3_ = §§pop();
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr247);
                                                         }
                                                         §§goto(addr270);
                                                      }
                                                      §§goto(addr290);
                                                   }
                                                   §§goto(addr267);
                                                }
                                             }
                                             §§goto(addr257);
                                             §§push(0);
                                          }
                                          §§goto(addr271);
                                       }
                                       §§goto(addr243);
                                    }
                                    §§goto(addr247);
                                 }
                                 §§goto(addr269);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr72);
               }
               §§goto(addr46);
            }
            §§goto(addr89);
         }
         §§goto(addr58);
      }
      
      public function get §]o§() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§<A§.position = 0;
         }
         return this.§<A§;
      }
      
      public function get §-e§() : Vector.<Number>
      {
         return this.§ p§;
      }
      
      public function get §#y§() : Vector.<Number>
      {
         return this.§9'§;
      }
   }
}
