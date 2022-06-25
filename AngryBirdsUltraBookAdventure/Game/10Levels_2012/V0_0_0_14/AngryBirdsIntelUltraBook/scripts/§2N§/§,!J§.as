package §2N§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §,!J§
   {
      
      public static const §&g§:int = 4;
      
      public static const §#8§:int = 2;
      
      public static const §<!a§:int = 3;
      
      public static const §8$§:int = 4;
      
      public static const §'x§:int = 0;
      
      public static const §`C§:int = 0;
      
      public static const §,q§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §&g§ = 4;
            while(true)
            {
               §#8§ = 2;
               loop1:
               while(true)
               {
                  §<!a§ = 3;
                  loop2:
                  while(true)
                  {
                     §8$§ = 4;
                     while(true)
                     {
                        §'x§ = 0;
                        while(_loc2_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              §`C§ = 0;
                              do
                              {
                                 §,q§ = 0;
                              }
                              while(_loc1_);
                              
                              if(!_loc1_)
                              {
                                 continue loop1;
                              }
                              continue;
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private var §4$§:ByteArray;
      
      private var §!H§:Vector.<Number>;
      
      private var §1!7§:Vector.<Number>;
      
      private var §5N§:Boolean;
      
      private var §7-§:int;
      
      private var §+!8§:Vector.<Number>;
      
      public function §,!J§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§+!8§ = new Vector.<Number>(12,true);
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§4$§ = new ByteArray();
                  loop2:
                  for(; !_loc5_; if(!(_loc4_ || param1))
                  {
                     continue;
                  })
                  {
                     while(true)
                     {
                        this.§4$§.endian = Endian.LITTLE_ENDIAN;
                        while(!_loc5_)
                        {
                           this.§4$§.length = param1 * §#8§ * §8$§;
                           if(!(_loc5_ && this))
                           {
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr44);
         }
         var _loc3_:int = 0;
         loop6:
         while(true)
         {
            if(_loc3_ >= param1 * §#8§)
            {
               loop7:
               while(true)
               {
                  this.§!H§ = new Vector.<Number>(param1 * §&g§,true);
                  loop8:
                  while(true)
                  {
                     this.§1!7§ = new Vector.<Number>(param1 * §<!a§,true);
                     for(; _loc4_; while(_loc4_ || param2)
                     {
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              this.§7-§ = param1;
                              if(!(_loc5_ && param1))
                              {
                                 return;
                              }
                              continue;
                              continue;
                           }
                           continue loop7;
                        }
                        continue loop8;
                     })
                     {
                        if(!(_loc5_ && this))
                        {
                           this.§5N§ = param2;
                           continue;
                        }
                     }
                     continue loop6;
                  }
               }
            }
            else
            {
               this.§4$§.writeFloat(0);
            }
            _loc3_++;
         }
      }
      
      public function clone() : §,!J§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§,!J§ = new §,!J§(0,this.§5N§);
         if(_loc3_ || this)
         {
            _loc1_.§4$§.length = this.§4$§.length;
         }
         loop0:
         while(true)
         {
            _loc1_.§4$§.writeBytes(this.§4$§);
            do
            {
               _loc1_.§!H§ = this.§!H§.concat();
               do
               {
                  _loc1_.§!H§.fixed = true;
                  continue loop0;
               }
               while(_loc2_);
               
            }
            while(_loc2_);
            
            return _loc1_;
         }
      }
      
      public function copyTo(param1:§,!J§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§1!7§;
         if(!_loc18_)
         {
            §§push(this.§7-§);
            loop0:
            while(true)
            {
               §§push(§<!a§);
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
                           if(_loc19_)
                           {
                              §§push(§<!a§);
                              if(!_loc19_)
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc18_)
                              {
                                 continue loop2;
                              }
                              §§push(int(§§pop()));
                           }
                           while(!(_loc18_ && param3))
                           {
                              continue loop0;
                              addr76:
                              §§push(0);
                              if(_loc18_ && param1)
                              {
                                 continue;
                              }
                              _loc8_ = §§pop();
                              if(_loc19_ || param3)
                              {
                                 if(_loc19_)
                                 {
                                    if(!_loc18_)
                                    {
                                       if(false)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             if(!param5)
                                             {
                                                §§push(0);
                                                if(!(_loc18_ && this))
                                                {
                                                   addr171:
                                                   _loc8_ = §§pop();
                                                   if(!(_loc18_ && this))
                                                   {
                                                      addr204:
                                                      while(true)
                                                      {
                                                         break loop7;
                                                      }
                                                      loop11:
                                                      while(true)
                                                      {
                                                         _loc8_++;
                                                         if(!_loc18_)
                                                         {
                                                            §§goto(addr204);
                                                         }
                                                         addr193:
                                                         while(true)
                                                         {
                                                            if(!(_loc18_ && param3))
                                                            {
                                                               continue loop11;
                                                            }
                                                            §§goto(addr204);
                                                         }
                                                      }
                                                      addr204:
                                                      addr201:
                                                   }
                                                   var _loc10_:ByteArray = param1.§4$§;
                                                   if(_loc19_)
                                                   {
                                                      §§push(this.§7-§);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(§#8§);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(§8$§);
                                                               if(!_loc18_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        addr348:
                                                                        while(true)
                                                                        {
                                                                           §§push(param2);
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(§#8§);
                                                                              if(_loc18_ && param2)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc18_)
                                                                              {
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    if(_loc19_ || this)
                                                                                    {
                                                                                       §§push(§8$§);
                                                                                       if(_loc19_ || param3)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             addr350:
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           if(!_loc18_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc19_)
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                               addr355:
                                                               if(§§pop())
                                                               {
                                                                  addr356:
                                                                  _loc11_ = param1.§!H§;
                                                                  if(_loc19_)
                                                                  {
                                                                     §§push(this.§7-§);
                                                                     if(_loc19_ || param3)
                                                                     {
                                                                        §§push(§&g§);
                                                                        if(_loc19_ || this)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc19_ || param3)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              if(_loc19_ || param3)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 if(_loc19_ || this)
                                                                                 {
                                                                                    addr396:
                                                                                    §§push(param2);
                                                                                    §§push(§&g§);
                                                                                    if(_loc19_ || param3)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                          if(!(_loc18_ && param2))
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             if(!(_loc18_ && param3))
                                                                                             {
                                                                                                §§push(param3);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   if(§§pop() == 1)
                                                                                                   {
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            if(_loc19_ || param3)
                                                                                                            {
                                                                                                               _loc8_ = §§pop();
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  addr394:
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr396);
                                                                                                                  }
                                                                                                                  addr572:
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                        {
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 §§goto(addr572);
                                                                                                                                 addr597:
                                                                                                                              }
                                                                                                                              §§goto(addr780);
                                                                                                                           }
                                                                                                                           addr773:
                                                                                                                           _loc8_++;
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              addr776:
                                                                                                                              if(_loc8_ < this.§7-§)
                                                                                                                              {
                                                                                                                                 if(this.§5N§)
                                                                                                                                 {
                                                                                                                                    if(!(_loc18_ && param3))
                                                                                                                                    {
                                                                                                                                       addr551:
                                                                                                                                       _loc13_ = Number(this.§!H§[_loc12_ + 3]);
                                                                                                                                       addr552:
                                                                                                                                       if(_loc19_ || param1)
                                                                                                                                       {
                                                                                                                                          addr559:
                                                                                                                                          §§push(param3);
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() / _loc13_);
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                addr506:
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             if(_loc19_ || param2)
                                                                                                                                             {
                                                                                                                                                addr514:
                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                if(_loc19_ || param2)
                                                                                                                                                {
                                                                                                                                                   if(_loc19_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr529:
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         addr531:
                                                                                                                                                         §§goto(addr776);
                                                                                                                                                      }
                                                                                                                                                      var _loc14_:*;
                                                                                                                                                      _loc11_[_loc14_ = _loc7_++] = this.§!H§[_loc12_++] * _loc13_;
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         var _loc15_:*;
                                                                                                                                                         _loc11_[_loc15_ = _loc7_++] = this.§!H§[_loc12_++] * _loc13_;
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            var _loc16_:*;
                                                                                                                                                            _loc11_[_loc16_ = _loc7_++] = this.§!H§[_loc12_++] * _loc13_;
                                                                                                                                                            if(!(_loc18_ && this))
                                                                                                                                                            {
                                                                                                                                                               var _loc17_:*;
                                                                                                                                                               _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc18_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        addr682:
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              addr765:
                                                                                                                                                                              _loc12_++;
                                                                                                                                                                              if(_loc19_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr773);
                                                                                                                                                                              }
                                                                                                                                                                              addr780:
                                                                                                                                                                              return;
                                                                                                                                                                              addr688:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr780);
                                                                                                                                                                        }
                                                                                                                                                                        _loc11_[_loc15_ = _loc7_++] = this.§!H§[_loc12_++];
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc11_[_loc16_ = _loc7_++] = this.§!H§[_loc12_++];
                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                              addr760:
                                                                                                                                                                              addr759:
                                                                                                                                                                              addr740:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr760);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr762:
                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr765);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr776);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr760);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr759);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr740);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr682);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr762);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr552);
                                                                                                                                                }
                                                                                                                                                §§goto(addr688);
                                                                                                                                             }
                                                                                                                                             §§goto(addr551);
                                                                                                                                          }
                                                                                                                                          §§goto(addr506);
                                                                                                                                          addr559:
                                                                                                                                       }
                                                                                                                                       addr570:
                                                                                                                                       §§goto(addr531);
                                                                                                                                    }
                                                                                                                                    §§goto(addr773);
                                                                                                                                 }
                                                                                                                                 _loc11_[_loc14_ = _loc7_++] = this.§!H§[_loc12_++];
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr682);
                                                                                                                                 }
                                                                                                                                 §§goto(addr762);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr780);
                                                                                                                        }
                                                                                                                        _loc11_[_loc14_ = _loc7_++] = this.§!H§[_loc8_];
                                                                                                                        if(_loc19_ || param3)
                                                                                                                        {
                                                                                                                           if(_loc19_ || this)
                                                                                                                           {
                                                                                                                              _loc8_++;
                                                                                                                              §§goto(addr597);
                                                                                                                           }
                                                                                                                           §§goto(addr559);
                                                                                                                        }
                                                                                                                        §§goto(addr682);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr776);
                                                                                                               }
                                                                                                               §§goto(addr559);
                                                                                                            }
                                                                                                            §§goto(addr396);
                                                                                                         }
                                                                                                         addr569:
                                                                                                         _loc8_ = §§pop();
                                                                                                         §§goto(addr570);
                                                                                                      }
                                                                                                      §§goto(addr559);
                                                                                                   }
                                                                                                   §§push(0);
                                                                                                   if(_loc19_ || param3)
                                                                                                   {
                                                                                                      _loc12_ = §§pop();
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(_loc19_ || param2)
                                                                                                         {
                                                                                                            §§goto(addr569);
                                                                                                         }
                                                                                                         §§goto(addr776);
                                                                                                      }
                                                                                                      §§goto(addr780);
                                                                                                   }
                                                                                                   §§goto(addr776);
                                                                                                }
                                                                                                §§goto(addr514);
                                                                                             }
                                                                                             §§goto(addr529);
                                                                                          }
                                                                                          §§goto(addr776);
                                                                                       }
                                                                                       §§goto(addr506);
                                                                                    }
                                                                                    §§goto(addr776);
                                                                                 }
                                                                                 §§goto(addr570);
                                                                              }
                                                                              §§goto(addr776);
                                                                           }
                                                                           §§goto(addr506);
                                                                        }
                                                                        §§goto(addr776);
                                                                     }
                                                                     §§goto(addr569);
                                                                  }
                                                                  §§goto(addr394);
                                                               }
                                                               §§goto(addr780);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr290);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                param5.transformVectors(this.§1!7§,this.§+!8§);
                                                addr69:
                                                while(_loc19_ || this)
                                                {
                                                   §§goto(addr76);
                                                }
                                                continue loop4;
                                             }
                                             §§goto(addr171);
                                          }
                                          §§push(_loc6_);
                                          while(true)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                _loc9_[_loc14_ = _loc7_++] = this.§1!7§[_loc8_];
                                                §§goto(addr193);
                                             }
                                             §§goto(addr171);
                                          }
                                          addr206:
                                          addr60:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          if(!(_loc18_ && param2))
                                          {
                                             §§push(_loc6_);
                                             if(!(_loc18_ && this))
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc19_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr201);
                                                }
                                                else
                                                {
                                                   _loc9_[_loc14_ = _loc7_++] = this.§+!8§[_loc8_];
                                                   if(_loc19_ || param3)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                §§goto(addr193);
                                             }
                                             §§goto(addr206);
                                          }
                                          else
                                          {
                                             §§goto(addr171);
                                          }
                                       }
                                       §§goto(addr171);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr60);
                                    }
                                    addr103:
                                 }
                                 §§goto(addr63);
                              }
                              §§goto(addr69);
                           }
                           continue loop3;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function append(param1:§,!J§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:int = this.§4$§.length;
         if(!_loc9_)
         {
            this.§4$§.length += param1.§4$§.length;
         }
         while(true)
         {
            this.§4$§.position = _loc2_;
            loop1:
            while(_loc10_ || _loc3_)
            {
               loop2:
               do
               {
                  this.§4$§.writeBytes(param1.§4$§);
                  while(_loc10_)
                  {
                     this.§!H§.fixed = false;
                     if(_loc10_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(false);
               
               var _loc3_:Vector.<Number> = param1.§!H§;
               var _loc4_:int = _loc3_.length;
               var _loc5_:int = 0;
               loop4:
               while(true)
               {
                  if(_loc5_ >= _loc4_)
                  {
                     loop5:
                     while(true)
                     {
                        this.§!H§.fixed = true;
                        while(true)
                        {
                           if(_loc10_ || _loc3_)
                           {
                              this.§1!7§.fixed = false;
                              if(!(_loc9_ && param1))
                              {
                                 if(!_loc9_)
                                 {
                                    if(_loc9_ && _loc3_)
                                    {
                                       break;
                                    }
                                    if(true)
                                    {
                                       break loop4;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              continue;
                           }
                        }
                        addr129:
                        continue loop4;
                     }
                  }
                  else
                  {
                     this.§!H§.push(_loc3_[_loc5_]);
                  }
                  _loc5_++;
                  §§goto(addr129);
               }
               var _loc6_:Vector.<Number>;
               var _loc7_:int = (_loc6_ = param1.§1!7§).length;
               var _loc8_:int = 0;
               if(!_loc9_)
               {
                  loop7:
                  while(true)
                  {
                     if(_loc8_ >= _loc7_)
                     {
                        if(_loc10_)
                        {
                           this.§1!7§.fixed = true;
                           while(true)
                           {
                              this.§7-§ += param1.§8!w§;
                              if(!(_loc10_ || _loc3_))
                              {
                                 continue;
                              }
                              if(_loc10_)
                              {
                                 break;
                              }
                              addr197:
                              while(true)
                              {
                                 if(_loc10_)
                                 {
                                    continue loop7;
                                 }
                              }
                           }
                           return;
                           addr194:
                        }
                        §§goto(addr194);
                     }
                     else
                     {
                        this.§1!7§.push(_loc6_[_loc8_]);
                     }
                     while(true)
                     {
                        _loc8_++;
                        §§goto(addr197);
                     }
                  }
               }
               §§goto(addr194);
            }
         }
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(!_loc8_)
         {
            §§push(int(§§pop() * §<!a§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§1!7§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§1!7§[_loc7_ = _loc5_++] = param3;
         if(_loc9_)
         {
            this.§1!7§[_loc5_] = param4;
         }
      }
      
      public function §;#§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(!_loc6_)
         {
            §§push(int(§§pop() * §<!a§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§1!7§[_loc5_ = _loc4_++] = param2;
         if(!_loc6_)
         {
            this.§1!7§[_loc4_] = param3;
         }
      }
      
      public function §%!a§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || _loc3_)
         {
            §§push(int(§§pop() * §<!a§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            param2.x = this.§1!7§[_loc3_++];
            while(true)
            {
               param2.y = this.§1!7§[_loc3_++];
               while(!(_loc4_ && _loc3_))
               {
                  param2.z = this.§1!7§[_loc3_];
                  if(!_loc5_)
                  {
                     continue;
                  }
                  return;
                  addr70:
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §1!+§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            if(this.§5N§)
            {
               addr22:
               §§push(param3);
               if(_loc9_ || param1)
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
               if(!(_loc8_ && this))
               {
                  §§goto(addr43);
               }
            }
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(_loc9_)
            {
               §§push(§§pop() / 255);
               if(!(_loc8_ && param1))
               {
                  §§goto(addr67);
               }
               §§goto(addr83);
            }
            addr67:
            §§push(Number(§§pop()));
            if(!(_loc8_ && param2))
            {
               _loc4_ = §§pop();
               §§push(§;!u§.§>W§(param2) * _loc4_);
               if(_loc9_)
               {
                  addr83:
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(§;!u§.§^!Q§(param2) * _loc4_);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(§;!u§.§+!1§(param2) * _loc4_);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(_loc9_ || param2)
            {
               this.§0H§(param1,1,_loc5_,_loc6_,_loc7_,param3);
            }
            return;
         }
         §§goto(addr22);
      }
      
      private function §0H§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         §§push(param1);
         if(!_loc13_)
         {
            §§push(int(§§pop() * §&g§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(_loc14_ || param1)
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
                  this.§!H§[_loc9_ = _loc7_++] = param3;
                  if(!(_loc13_ && param2))
                  {
                     var _loc10_:*;
                     this.§!H§[_loc10_ = _loc7_++] = param4;
                     if(_loc14_)
                     {
                        var _loc11_:*;
                        this.§!H§[_loc11_ = _loc7_++] = param5;
                        if(_loc14_ || param1)
                        {
                           var _loc12_:*;
                           this.§!H§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(_loc13_)
                  {
                     break;
                  }
                  §§push(_loc8_);
                  if(_loc13_)
                  {
                     continue;
                  }
                  §§push(§§pop() - 1);
                  if(!(_loc14_ || param1))
                  {
                     continue;
                  }
                  _loc8_ = §§pop();
                  if(!_loc13_)
                  {
                     break;
                  }
               }
               return;
            }
         }
      }
      
      private function § !l§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(_loc8_ || param2)
         {
            §§push(int(§§pop() * §&g§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§!H§[_loc4_ = _loc3_++] = this.§!H§[_loc4_] * param2;
         var _loc5_:*;
         this.§!H§[_loc5_ = _loc3_++] = this.§!H§[_loc5_] * param2;
         var _loc6_:*;
         this.§!H§[_loc6_ = _loc3_++] = this.§!H§[_loc6_] * param2;
         if(!(_loc7_ && param2))
         {
            this.§!H§[_loc3_] *= param2;
         }
      }
      
      public function §<u§(param1:int) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(param1);
         if(_loc7_)
         {
            §§push(int(§§pop() * §&g§));
         }
         var _loc2_:* = §§pop();
         if(!(_loc8_ && param1))
         {
            if(this.§5N§)
            {
               addr39:
               §§push(Number(this.§!H§[_loc2_ + 3]));
               if(_loc8_)
               {
               }
               addr53:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(!_loc8_)
               {
                  §§goto(addr53);
               }
            }
            var _loc3_:* = §§pop();
            if(!_loc8_)
            {
               §§push(_loc3_);
               loop0:
               while(§§pop() != 0)
               {
                  while(true)
                  {
                     §§push(255);
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(§§pop() / _loc3_);
                     loop2:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop3:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§!H§[_loc2_] * _loc3_);
                              loop5:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop6:
                                 while(_loc7_)
                                 {
                                    _loc4_ = §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          break;
                                          addr139:
                                       }
                                       §§push(this.§!H§[_loc2_ + 1] * _loc3_);
                                       while(!_loc8_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop6;
                                       addr150:
                                       loop10:
                                       while(true)
                                       {
                                          if(!(_loc7_ || param1))
                                          {
                                             continue loop7;
                                          }
                                          §§push(this.§!H§[_loc2_ + 2] * _loc3_);
                                          if(_loc8_)
                                          {
                                             continue loop5;
                                          }
                                          addr78:
                                          if(_loc7_ || this)
                                          {
                                             if(_loc7_)
                                             {
                                                §§push(Number(§§pop()));
                                                continue loop5;
                                             }
                                             §§goto(addr139);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                continue loop10;
                                                §§goto(addr78);
                                             }
                                             addr149:
                                          }
                                       }
                                       if(_loc8_ && this)
                                       {
                                          continue loop0;
                                       }
                                       _loc6_ = §§pop();
                                       if(_loc7_ || _loc2_)
                                       {
                                          if(!(_loc7_ || _loc3_))
                                          {
                                             §§goto(addr182);
                                          }
                                          if(_loc7_)
                                          {
                                             return §;!u§.§%!#§(_loc4_,_loc5_,_loc6_);
                                          }
                                          break loop0;
                                       }
                                       §§goto(addr150);
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
                  return §§pop();
               }
            }
            §§goto(addr182);
            §§push(0);
         }
         §§goto(addr39);
      }
      
      public function §]q§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(_loc4_ || this)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(§§pop() < 0.001)
               {
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
               loop5:
               while(true)
               {
                  if(this.§5N§)
                  {
                     addr103:
                     while(true)
                     {
                        this.§1!+§(param1,this.§<u§(param1),param2);
                     }
                     addr103:
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc4_ || param2)
                     {
                        §§push(§§pop() * §&g§);
                        if(!(_loc5_ && param2))
                        {
                           §§push(§§pop() + 3);
                        }
                        if(!(_loc5_ && this))
                        {
                           if(!_loc5_)
                           {
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                              addr87:
                              _loc3_ = §§pop();
                              do
                              {
                                 this.§!H§[_loc3_] = param2;
                              }
                              while(!_loc4_);
                              
                              if(!_loc5_)
                              {
                                 if(_loc4_)
                                 {
                                    §§goto(addr26);
                                 }
                                 §§goto(addr103);
                              }
                              while(true)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       break loop5;
                                    }
                                    §§goto(addr128);
                                 }
                                 §§goto(addr131);
                              }
                              addr110:
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr110);
               }
               addr26:
               return;
            }
         }
         §§goto(addr103);
      }
      
      public function §0j§(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop() * §&g§);
            if(!_loc4_)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§!H§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_ || param3)
         {
            §§push(int(§§pop() * §#8§));
         }
         var _loc4_:* = §§pop();
         if(_loc5_ || this)
         {
            this.§4$§.position = _loc4_ * §8$§;
            while(true)
            {
               this.§4$§.writeFloat(param2);
               while(_loc5_)
               {
                  this.§4$§.writeFloat(param3);
                  if(_loc5_)
                  {
                     return;
                     addr67:
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(int(§§pop() * §#8§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            this.§4$§.position = _loc3_ * §8$§;
            while(true)
            {
               param2.x = this.§4$§.readFloat();
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            param2.y = this.§4$§.readFloat();
            if(_loc4_)
            {
               if(_loc4_ || _loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §6J§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(_loc8_)
         {
            §§push(int(§§pop() * §<!a§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§1!7§[_loc6_ = _loc5_++] = this.§1!7§[_loc6_] + param2;
         var _loc7_:*;
         this.§1!7§[_loc7_ = _loc5_++] = this.§1!7§[_loc7_] + param3;
         if(!_loc9_)
         {
            this.§1!7§[_loc5_] += param4;
         }
      }
      
      public function §[z§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!(_loc5_ && _loc3_))
         {
            §§push(int(§§pop() * §<!a§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && this))
         {
            this.§+!8§[0] = this.§1!7§[_loc3_];
            loop0:
            while(true)
            {
               this.§+!8§[1] = this.§1!7§[_loc3_ + 1];
               while(true)
               {
                  this.§+!8§[2] = this.§1!7§[_loc3_ + 2];
                  loop2:
                  for(; _loc4_; if(!(_loc4_ || param1))
                  {
                     continue;
                  },§§goto(addr65))
                  {
                     param2.transformVectors(this.§+!8§,this.§+!8§);
                     while(true)
                     {
                        this.§1!7§[_loc3_] = this.§+!8§[0];
                        while(_loc4_)
                        {
                           this.§1!7§[_loc3_ + 1] = this.§+!8§[1];
                           loop5:
                           while(!_loc5_)
                           {
                              continue loop0;
                              while(true)
                              {
                                 this.§1!7§[_loc3_ + 2] = this.§+!8§[2];
                                 if(!(_loc5_ && this))
                                 {
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
         §§goto(addr96);
      }
      
      public function §%-§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && _loc3_))
         {
            §§push(param2);
            if(_loc7_ || this)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc7_ || this)
                  {
                     §§push(0.001);
                     if(_loc7_ || this)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                           addr51:
                           param2 = §§pop();
                           if(!_loc8_)
                           {
                              addr54:
                              if(!this.§5N§)
                              {
                                 §§push(Number(1));
                                 if(_loc8_)
                                 {
                                 }
                              }
                              §§goto(addr84);
                           }
                           §§push(param2);
                           if(!(_loc8_ && param1))
                           {
                              §§push(Number(§§pop()));
                              if(!_loc7_)
                              {
                              }
                           }
                           §§goto(addr84);
                        }
                     }
                     addr84:
                     var _loc3_:* = Number(§§pop());
                     if(!_loc8_)
                     {
                        §§push(_loc3_);
                        if(_loc7_ || this)
                        {
                           §§push(§§pop() / 255);
                           if(_loc7_ || param1)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc8_)
                              {
                                 §§goto(addr107);
                              }
                           }
                           §§goto(addr120);
                        }
                        addr107:
                        _loc3_ = §§pop();
                        §§goto(addr108);
                     }
                     addr108:
                     §§push(§;!u§.§>W§(param1) * _loc3_);
                     if(!(_loc8_ && _loc3_))
                     {
                        addr120:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     §§push(§;!u§.§^!Q§(param1) * _loc3_);
                     if(_loc7_ || param2)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     §§push(§;!u§.§+!1§(param1) * _loc3_);
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     if(_loc7_)
                     {
                        this.§0H§(0,this.§7-§,_loc4_,_loc5_,_loc6_,param2);
                     }
                     return;
                  }
               }
               §§goto(addr54);
            }
            §§goto(addr51);
         }
         §§goto(addr54);
      }
      
      public function §&>§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
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
                  if(_loc13_)
                  {
                     addr30:
                     §§push(0.001);
                     if(!(_loc14_ && param3))
                     {
                        addr38:
                        §§push(Number(§§pop()));
                        if(!(_loc14_ && param3))
                        {
                           param6 = §§pop();
                           §§goto(addr47);
                        }
                     }
                     §§goto(addr52);
                  }
               }
               addr47:
               §§push(param1);
               if(_loc13_)
               {
                  addr52:
                  §§push(int(§§pop() * §&g§));
               }
               var _loc7_:* = §§pop();
               var _loc8_:int = 0;
               while(_loc8_ < param2)
               {
                  var _loc9_:*;
                  this.§!H§[_loc9_ = _loc7_++] = param3;
                  if(!(_loc14_ && this))
                  {
                     var _loc10_:*;
                     this.§!H§[_loc10_ = _loc7_++] = param4;
                     if(_loc13_ || param1)
                     {
                        var _loc11_:*;
                        this.§!H§[_loc11_ = _loc7_++] = param5;
                        if(!_loc14_)
                        {
                           var _loc12_:*;
                           this.§!H§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(_loc13_)
                  {
                     _loc8_++;
                     if(!_loc13_)
                     {
                        break;
                     }
                  }
               }
               return;
            }
            §§goto(addr38);
         }
         §§goto(addr30);
      }
      
      public function §<!v§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         if(!(_loc6_ && param2))
         {
            §§push(param2);
            if(_loc5_ || this)
            {
               if(§§pop() < 0.001)
               {
                  if(!(_loc6_ && this))
                  {
                     §§push(0.001);
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc6_)
                        {
                           addr48:
                           param2 = §§pop();
                           if(_loc5_)
                           {
                              addr51:
                              §§push(param2);
                              if(!(_loc6_ && param1))
                              {
                                 addr59:
                                 if(§§pop() == 1)
                                 {
                                    if(_loc5_)
                                    {
                                       return;
                                    }
                                    addr64:
                                    §§push(param1);
                                    if(!_loc6_)
                                    {
                                       addr69:
                                       §§push(int(§§pop() * §&g§));
                                    }
                                    var _loc3_:* = §§pop();
                                    if(!_loc6_)
                                    {
                                       if(!this.§5N§)
                                       {
                                          this.§!H§[_loc3_ + 3] *= param2;
                                          if(_loc5_ || param2)
                                          {
                                             if(_loc5_ || param1)
                                             {
                                                if(!(_loc5_ || param2))
                                                {
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         this.§!H§[_loc3_ + 1] *= _loc4_;
                                                         loop1:
                                                         while(true)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               this.§!H§[_loc3_ + 2] *= _loc4_;
                                                               while(!(_loc6_ && _loc3_))
                                                               {
                                                                  this.§!H§[_loc3_ + 3] = param2;
                                                                  while(!_loc5_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  return;
                                                               }
                                                               break;
                                                               addr153:
                                                            }
                                                            addr242:
                                                            while(true)
                                                            {
                                                               §§push(param2);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§§pop() / _loc4_);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr221:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr221);
                                                            }
                                                            _loc4_ = §§pop();
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                      addr234:
                                                      while(true)
                                                      {
                                                         §§push(Number(this.§!H§[_loc3_ + 3]));
                                                      }
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         §§goto(addr242);
                                                      }
                                                   }
                                                }
                                                §§goto(addr74);
                                             }
                                             §§goto(addr153);
                                          }
                                          §§goto(addr135);
                                       }
                                    }
                                    §§goto(addr234);
                                 }
                                 §§goto(addr64);
                              }
                           }
                           §§goto(addr64);
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr64);
               }
               §§goto(addr51);
            }
            §§goto(addr48);
         }
         §§goto(addr64);
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         if(!(_loc9_ && param2))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() != this.§5N§)
               {
                  loop1:
                  while(true)
                  {
                     §§push(param2);
                     if(!_loc9_)
                     {
                        if(§§pop())
                        {
                           if(_loc8_ || this)
                           {
                              if(!(_loc8_ || _loc3_))
                              {
                                 §§goto(addr282);
                              }
                              §§push(this.§7-§);
                              if(!_loc9_)
                              {
                                 §§push(int(§§pop() * §&g§));
                              }
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr277:
                                 §§push(0);
                                 if(_loc8_ || param2)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc9_)
                                    {
                                       while(true)
                                       {
                                          if(!_loc8_)
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr277);
                                       }
                                       addr275:
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          if(_loc8_ || this)
                                          {
                                             if(§§pop() >= _loc3_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            break loop1;
                                                         }
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            loop6:
                                                            while(true)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc9_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     addr211:
                                                                  }
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           if(_loc8_ || param2)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc8_ || this)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(!(_loc9_ && this))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          addr191:
                                                                                          addr138:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr192:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                             }
                                                                                          }
                                                                                          addr138:
                                                                                          if(!(_loc8_ || param2))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc9_ && this)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          §§push(Number(§§pop()));
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§ !l§(_loc4_,_loc7_);
                                                                                                addr95:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop14:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_++;
                                                                                                      addr78:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc8_ || _loc3_))
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            while(_loc8_)
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               if(§§pop() == 0)
                                                                                                               {
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(!(_loc9_ && param2))
                                                                                                                     {
                                                                                                                        if(!(_loc8_ || param1))
                                                                                                                        {
                                                                                                                           addr184:
                                                                                                                           while(!(_loc9_ && param2))
                                                                                                                           {
                                                                                                                              §§goto(addr191);
                                                                                                                           }
                                                                                                                           continue loop6;
                                                                                                                           addr184:
                                                                                                                        }
                                                                                                                        §§push(§§pop() / _loc6_);
                                                                                                                        if(!(_loc8_ || param1))
                                                                                                                        {
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                        §§goto(addr138);
                                                                                                                     }
                                                                                                                     §§goto(addr192);
                                                                                                                  }
                                                                                                                  §§goto(addr138);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop9;
                                                                                                            addr193:
                                                                                                         }
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         addr224:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§5N§);
                                                                                                            break loop9;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr184);
                                                                                 }
                                                                                 §§goto(addr193);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(1);
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr183:
                                                                              }
                                                                              §§goto(addr184);
                                                                           }
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              break loop8;
                                                                           }
                                                                           addr208:
                                                                           §§push(1);
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc8_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              §§goto(addr211);
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr223:
                                                                           while(true)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                           }
                                                                        }
                                                                        addr222:
                                                                     }
                                                                     §§goto(addr224);
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               §§goto(addr223);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr102);
                                                   }
                                                   §§goto(addr78);
                                                }
                                                addr73:
                                                if(!_loc9_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr95);
                                             }
                                             else
                                             {
                                                §§push(this.§0j§(0));
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr208);
                                       }
                                       §§goto(addr183);
                                    }
                                    return;
                                    addr237:
                                 }
                              }
                           }
                           §§goto(addr275);
                        }
                        break;
                     }
                     continue loop0;
                  }
                  this.§5N§ = param1;
                  §§goto(addr73);
               }
               addr282:
               return;
            }
         }
         §§goto(addr237);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§5N§;
      }
      
      public function get §8!w§() : int
      {
         return this.§7-§;
      }
      
      public function set §8!w§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_ || this)
            {
               §§push(§#8§);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc5_)
                  {
                     §§push(§§pop() * §8$§);
                     if(!(_loc5_ && this))
                     {
                        addr525:
                        §§push(§§pop() - this.§4$§.length);
                     }
                     §§push(int(§§pop()));
                     loop1:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr531:
                        while(true)
                        {
                           §§push(int(this.§4$§.length));
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr503:
                              while(true)
                              {
                                 this.§4$§.length += _loc2_;
                                 addr486:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    continue loop1;
                                 }
                              }
                              addr430:
                              if(!(_loc6_ || _loc2_))
                              {
                                 continue;
                              }
                              addr437:
                              _loc3_ = §§pop();
                              if(_loc5_ && _loc3_)
                              {
                                 addr476:
                                 while(true)
                                 {
                                    §§push(0);
                                    if(_loc5_ && _loc3_)
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr430);
                                    §§goto(addr437);
                                 }
                                 addr476:
                              }
                              loop8:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop() / §8$§)
                                       {
                                          addr404:
                                          loop11:
                                          while(true)
                                          {
                                             this.§!H§.fixed = false;
                                             loop12:
                                             while(true)
                                             {
                                                §§push(param1);
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§&g§);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - this.§!H§.length);
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop()));
                                                            loop17:
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     loop20:
                                                                     while(_loc6_ || this)
                                                                     {
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(_loc2_);
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() < §§pop())
                                                                                 {
                                                                                    this.§!H§.push(0);
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    addr339:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 addr281:
                                                                                 loop29:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc6_ || param1))
                                                                                    {
                                                                                       continue loop22;
                                                                                    }
                                                                                    if(!(_loc6_ || _loc3_))
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       loop30:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§!H§.fixed = true;
                                                                                          loop31:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§1!7§.fixed = false;
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                {
                                                                                                   §§push(param1);
                                                                                                   loop33:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§<!a§);
                                                                                                      loop34:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc6_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() - this.§1!7§.length);
                                                                                                         }
                                                                                                         if(_loc5_ && this)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(int(§§pop()));
                                                                                                            loop35:
                                                                                                            while(!_loc5_)
                                                                                                            {
                                                                                                               _loc2_ = §§pop();
                                                                                                               loop36:
                                                                                                               while(_loc6_)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  loop37:
                                                                                                                  while(_loc6_)
                                                                                                                  {
                                                                                                                     _loc3_ = §§pop();
                                                                                                                     while(!_loc5_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           if(_loc6_ || param1)
                                                                                                                           {
                                                                                                                              if(!(_loc6_ || _loc2_))
                                                                                                                              {
                                                                                                                                 continue loop35;
                                                                                                                              }
                                                                                                                              if(_loc6_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§goto(addr173);
                                                                                                                                 §§push(_loc2_);
                                                                                                                              }
                                                                                                                              §§goto(addr339);
                                                                                                                              continue loop35;
                                                                                                                           }
                                                                                                                           addr180:
                                                                                                                           loop43:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc3_ = §§pop();
                                                                                                                              addr181:
                                                                                                                              while(!(_loc5_ && _loc3_))
                                                                                                                              {
                                                                                                                                 do
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    if(!(_loc5_ && param1))
                                                                                                                                    {
                                                                                                                                       if(_loc6_ || this)
                                                                                                                                       {
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             addr62:
                                                                                                                                             §§push(0);
                                                                                                                                             if(!(_loc6_ || this))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                   {
                                                                                                                                                      this.§1!7§.push(0);
                                                                                                                                                      break;
                                                                                                                                                      addr174:
                                                                                                                                                      addr340:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc2_);
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr180);
                                                                                                                                                   }
                                                                                                                                                   while(!(_loc5_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      _loc3_ = §§pop();
                                                                                                                                                      while(!(_loc5_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_ && _loc3_)
                                                                                                                                                         {
                                                                                                                                                            break loop22;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                            break loop35;
                                                                                                                                                            addr317:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         continue loop21;
                                                                                                                                                      }
                                                                                                                                                      continue loop11;
                                                                                                                                                   }
                                                                                                                                                   continue loop9;
                                                                                                                                                   §§goto(addr62);
                                                                                                                                                }
                                                                                                                                                loop42:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc3_++;
                                                                                                                                                   addr191:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         break loop42;
                                                                                                                                                      }
                                                                                                                                                      continue loop42;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr200);
                                                                                                                                                }
                                                                                                                                                §§goto(addr348);
                                                                                                                                                addr173:
                                                                                                                                             }
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                continue loop29;
                                                                                                                                             }
                                                                                                                                             continue loop34;
                                                                                                                                          }
                                                                                                                                          continue loop13;
                                                                                                                                       }
                                                                                                                                       continue loop37;
                                                                                                                                       continue loop37;
                                                                                                                                    }
                                                                                                                                    continue loop43;
                                                                                                                                 }
                                                                                                                                 while(!_loc5_);
                                                                                                                                 
                                                                                                                                 _loc3_++;
                                                                                                                                 break loop36;
                                                                                                                              }
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           addr200:
                                                                                                                        }
                                                                                                                        §§goto(addr339);
                                                                                                                     }
                                                                                                                     continue loop31;
                                                                                                                  }
                                                                                                                  continue loop33;
                                                                                                               }
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc3_++;
                                                                                                   addr303:
                                                                                                   if(_loc5_ && this)
                                                                                                   {
                                                                                                      break loop29;
                                                                                                   }
                                                                                                   if(!(_loc6_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   §§goto(addr317);
                                                                                                   addr324:
                                                                                                }
                                                                                                §§goto(addr271);
                                                                                                addr104:
                                                                                                if(!(_loc5_ && this))
                                                                                                {
                                                                                                   this.§7-§ = param1;
                                                                                                   addr111:
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue loop30;
                                                                                                   }
                                                                                                   addr100:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§goto(addr104);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr191);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr114:
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            §§goto(addr121);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr303);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr271);
                                                                                                      §§goto(addr111);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.§!H§.pop();
                                                                                    }
                                                                                    §§goto(addr324);
                                                                                 }
                                                                                 §§goto(addr338);
                                                                              }
                                                                              _loc3_++;
                                                                              §§goto(addr365);
                                                                           }
                                                                           §§goto(addr340);
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     continue loop12;
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
                                       else
                                       {
                                          this.§4$§.writeFloat(0);
                                       }
                                       §§goto(addr420);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr530:
                  }
                  §§goto(addr525);
                  §§push(0);
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
                  if(§§pop() > §§pop())
                  {
                     if(_loc6_)
                     {
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              if(_loc6_)
                              {
                                 this.§4$§.position = _loc4_;
                                 §§goto(addr476);
                              }
                              §§goto(addr531);
                           }
                           §§goto(addr503);
                        }
                        §§goto(addr486);
                     }
                     §§goto(addr476);
                  }
                  §§goto(addr404);
               }
            }
            §§goto(addr530);
         }
         §§goto(addr445);
      }
      
      public function get §!]§() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§4$§.position = 0;
         }
         return this.§4$§;
      }
      
      public function get §0<§() : Vector.<Number>
      {
         return this.§!H§;
      }
      
      public function get §94§() : Vector.<Number>
      {
         return this.§1!7§;
      }
   }
}
