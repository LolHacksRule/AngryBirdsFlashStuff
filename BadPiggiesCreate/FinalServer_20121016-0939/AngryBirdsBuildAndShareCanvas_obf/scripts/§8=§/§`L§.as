package §8=§
{
   import flash.utils.Dictionary;
   
   public class §`L§ extends §4"+§
   {
       
      
      protected var §,_§:Dictionary;
      
      protected var § !3§:Dictionary;
      
      protected var §"!c§:Object = null;
      
      protected var §^"?§:Dictionary;
      
      protected var §-!m§:Dictionary;
      
      public function §`L§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§-!m§ = new Dictionary();
            while(true)
            {
               this.§,_§ = new Dictionary();
               loop1:
               while(_loc1_ || _loc2_)
               {
                  this.§ !3§ = new Dictionary();
                  do
                  {
                     this.§^"?§ = new Dictionary();
                     while(!(_loc2_ && _loc1_))
                     {
                        super();
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        §§goto(addr33);
                     }
                     continue loop1;
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§"!c§[param1] = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§"!c§ = param1;
         }
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§,_§[param1] = param2;
         }
         do
         {
            this.§^"?§["dest." + param1] = param3;
         }
         while(!_loc5_);
         
      }
      
      override public function get target() : Object
      {
         return this.§"!c§;
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§-!m§[param1] = param2;
            do
            {
               this.§^"?§["source." + param1] = param3;
            }
            while(!_loc4_);
            
         }
      }
      
      override protected function newInstance() : §4"+§
      {
         return new §`L§();
      }
      
      private function §&'§(param1:Object, param2:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            if(_loc6_)
            {
               param1[_loc3_] = param2[_loc3_];
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc8_:Vector.<Number> = null;
         var _loc9_:uint = 0;
         var _loc10_:* = uint(0);
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = null;
         §§push(1 - param1);
         if(_loc19_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Object = this.§"!c§;
         var _loc4_:Dictionary = this.§,_§;
         var _loc5_:Dictionary = this.§-!m§;
         var _loc7_:Dictionary = this.§ !3§;
         loop0:
         for(_loc14_ in _loc4_)
         {
            if(!_loc18_)
            {
               loop1:
               while(true)
               {
                  §§push(Number(_loc5_[_loc14_]));
                  if(_loc19_ || param1)
                  {
                     _loc6_ = §§pop();
                     if(_loc19_ || this)
                     {
                        §§push(param1);
                        if(!_loc18_)
                        {
                           §§push(1);
                           if(_loc19_)
                           {
                              §§push(§§pop() == §§pop());
                              if(!(_loc18_ && _loc3_))
                              {
                                 §§push(!§§pop());
                                 if(_loc19_ || _loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       addr96:
                                       §§pop();
                                       if(_loc19_ || _loc3_)
                                       {
                                          if(false)
                                          {
                                             continue;
                                          }
                                          §§push((_loc8_ = this.§ !3§[_loc14_] as Vector.<Number>) == null);
                                          if(_loc19_ || this)
                                          {
                                             addr161:
                                             if(!§§pop())
                                             {
                                                if(!_loc18_)
                                                {
                                                   if((_loc9_ = _loc8_.length) == 1)
                                                   {
                                                      if(!(_loc18_ && _loc2_))
                                                      {
                                                         addr181:
                                                         _loc3_[_loc14_] = _loc6_ + param1 * (2 * _loc2_ * (_loc8_[0] - _loc6_) + param1 * (_loc4_[_loc14_] - _loc6_));
                                                         if(!_loc19_)
                                                         {
                                                            loop3:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_);
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc18_)
                                                                        {
                                                                           _loc12_ = §§pop();
                                                                           loop6:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc18_ && this))
                                                                              {
                                                                                 §§push((_loc8_[0] + _loc8_[1]) / 2);
                                                                                 if(!(_loc18_ && this))
                                                                                 {
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       if(_loc19_ || _loc2_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc18_ && _loc3_))
                                                                                             {
                                                                                                _loc13_ = §§pop();
                                                                                                loop13:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      loop2:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc3_[_loc14_] = _loc12_ + _loc11_ * (2 * (1 - _loc11_) * (_loc8_[_loc10_] - _loc12_) + _loc11_ * (_loc13_ - _loc12_));
                                                                                                         addr266:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc18_ && this))
                                                                                                            {
                                                                                                               if(_loc19_ || _loc2_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(!(_loc18_ && param1))
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               loop28:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(_loc4_[_loc14_]));
                                                                                                                  addr368:
                                                                                                                  while(!_loc18_)
                                                                                                                  {
                                                                                                                     _loc13_ = §§pop();
                                                                                                                     §§goto(addr371);
                                                                                                                     continue loop28;
                                                                                                                  }
                                                                                                                  loop15:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc10_);
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        addr477:
                                                                                                                        §§push(§§pop() - §§pop() * (1 / _loc9_));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           §§goto(addr477);
                                                                                                                        }
                                                                                                                        addr482:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc19_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr492:
                                                                                                                              loop17:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                 addr493:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc10_);
                                                                                                                                    while(!_loc18_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() == 0)
                                                                                                                                       {
                                                                                                                                          continue loop3;
                                                                                                                                       }
                                                                                                                                       §§push(_loc10_);
                                                                                                                                       if(_loc18_ && _loc3_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(§§pop() == _loc9_ - 1)
                                                                                                                                       {
                                                                                                                                          continue loop13;
                                                                                                                                       }
                                                                                                                                       §§push((_loc8_[_loc10_ - 1] + _loc8_[_loc10_]) / 2);
                                                                                                                                       loop20:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          loop21:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   break loop1;
                                                                                                                                                }
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      _loc12_ = §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            continue loop6;
                                                                                                                                                         }
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            continue loop3;
                                                                                                                                                         }
                                                                                                                                                         §§push((_loc8_[_loc10_] + _loc8_[_loc10_ + 1]) / 2);
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               continue loop20;
                                                                                                                                                            }
                                                                                                                                                            continue loop21;
                                                                                                                                                         }
                                                                                                                                                         addr305:
                                                                                                                                                         if(!(_loc18_ && this))
                                                                                                                                                         {
                                                                                                                                                            continue loop5;
                                                                                                                                                         }
                                                                                                                                                         addr320:
                                                                                                                                                         §§goto(addr368);
                                                                                                                                                         while(_loc19_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc18_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               continue loop2;
                                                                                                                                                            }
                                                                                                                                                            continue loop13;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop17;
                                                                                                                                                      addr358:
                                                                                                                                                   }
                                                                                                                                                   continue loop4;
                                                                                                                                                }
                                                                                                                                                continue loop12;
                                                                                                                                             }
                                                                                                                                             addr411:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc12_ = §§pop();
                                                                                                                                                continue loop28;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop12;
                                                                                                                           }
                                                                                                                           addr491:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           loop16:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr498:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 addr509:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(uint(§§pop() >> §§pop()));
                                                                                                                                 }
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr497:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc10_ = §§pop();
                                                                                                                           addr512:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop15;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr371:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr320);
                                                                                                            }
                                                                                                            §§goto(addr358);
                                                                                                         }
                                                                                                         addr208:
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      addr231:
                                                                                                   }
                                                                                                   §§goto(addr493);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr491);
                                                                                          }
                                                                                          addr440:
                                                                                       }
                                                                                       §§goto(addr498);
                                                                                    }
                                                                                    §§goto(addr482);
                                                                                 }
                                                                                 §§goto(addr440);
                                                                              }
                                                                              §§goto(addr512);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr496:
                                                                        }
                                                                        §§goto(addr497);
                                                                     }
                                                                  }
                                                                  §§goto(addr492);
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr207:
                                                         }
                                                         §§goto(addr208);
                                                      }
                                                      §§goto(addr493);
                                                   }
                                                   else
                                                   {
                                                      §§push(param1);
                                                   }
                                                   §§goto(addr496);
                                                }
                                                §§goto(addr400);
                                             }
                                             else
                                             {
                                                _loc3_[_loc14_] = _loc6_ * _loc2_ + _loc4_[_loc14_] * param1;
                                                if(!(_loc18_ && _loc2_))
                                                {
                                                   if(true)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr231);
                                                }
                                             }
                                             §§goto(addr266);
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr400);
                                    }
                                    §§goto(addr161);
                                 }
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr509);
                        }
                        §§goto(addr498);
                     }
                     §§goto(addr181);
                  }
                  break;
               }
               while(true)
               {
                  §§goto(addr411);
               }
            }
            §§goto(addr207);
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc1_:String = null;
         var _loc6_:Vector.<Number> = null;
         var _loc7_:* = uint(0);
         var _loc8_:* = uint(0);
         var _loc2_:Object = this.§"!c§;
         var _loc3_:Dictionary = this.§-!m§;
         var _loc4_:Dictionary = this.§,_§;
         var _loc5_:Dictionary = this.§ !3§;
         var _loc9_:Dictionary = this.§^"?§;
         var _loc10_:* = 0;
         var _loc11_:* = _loc3_;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc11_,_loc10_));
            if(!(_loc12_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(!(_loc12_ && _loc1_))
                  {
                     if(_loc13_)
                     {
                        if(!_loc12_)
                        {
                           §§push(0);
                           if(_loc13_ || _loc3_)
                           {
                              _loc10_ = §§pop();
                              if(!(_loc12_ && this))
                              {
                                 _loc11_ = _loc4_;
                                 if(!_loc12_)
                                 {
                                    addr230:
                                    §§push(§§hasnext(_loc11_,_loc10_));
                                    if(_loc13_)
                                    {
                                       if(§§pop())
                                       {
                                          _loc1_ = §§nextname(_loc10_,_loc11_);
                                          addr195:
                                          addr229:
                                          if(_loc3_[_loc1_] == undefined)
                                          {
                                             if(_loc13_ || this)
                                             {
                                                _loc3_[_loc1_] = _loc2_[_loc1_];
                                             }
                                             addr214:
                                             if(!(_loc12_ && _loc2_))
                                             {
                                                addr162:
                                                if(_loc9_["dest." + _loc1_])
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         _loc4_[_loc1_] += _loc2_[_loc1_];
                                                         addr193:
                                                         if(false)
                                                         {
                                                            §§goto(addr195);
                                                         }
                                                         §§goto(addr230);
                                                         addr173:
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                   §§goto(addr193);
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr229);
                                          }
                                          §§goto(addr162);
                                       }
                                       if(_loc13_ || _loc3_)
                                       {
                                          if(!(_loc12_ && _loc2_))
                                          {
                                             if(_loc13_ || this)
                                             {
                                                addr258:
                                                _loc10_ = 0;
                                                addr257:
                                                if(!_loc12_)
                                                {
                                                   addr261:
                                                   _loc11_ = _loc5_;
                                                   if(_loc13_)
                                                   {
                                                      addr363:
                                                      §§push(§§hasnext(_loc11_,_loc10_));
                                                      break;
                                                   }
                                                   §§push(uint((_loc6_ = _loc5_[_loc1_] as Vector.<Number>).length));
                                                   if(!_loc12_)
                                                   {
                                                      _loc7_ = §§pop();
                                                      if(!_loc12_)
                                                      {
                                                         §§push(uint(0));
                                                         loop7:
                                                         while(true)
                                                         {
                                                            _loc8_ = §§pop();
                                                            if(_loc13_ || _loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  addr360:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     while(§§pop() < _loc7_)
                                                                     {
                                                                        if(_loc9_["cp." + _loc1_ + "." + _loc8_])
                                                                        {
                                                                           addr338:
                                                                           if(!_loc12_)
                                                                           {
                                                                              _loc6_[_loc8_] += _loc2_[_loc1_];
                                                                           }
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr338:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc8_);
                                                                           if(_loc12_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(uint(§§pop() + 1));
                                                                           if(!_loc13_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop7;
                                                                           §§goto(addr338);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr313:
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr363);
                                                   }
                                                   §§goto(addr306);
                                                }
                                                addr366:
                                             }
                                             return;
                                          }
                                          §§goto(addr261);
                                       }
                                       addr365:
                                       §§goto(addr366);
                                    }
                                    break;
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr261);
                           }
                           §§goto(addr258);
                        }
                        §§goto(addr257);
                     }
                     §§goto(addr258);
                  }
                  §§goto(addr365);
               }
               else
               {
                  _loc1_ = §§nextname(_loc10_,_loc11_);
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        if(_loc4_[_loc1_] == undefined)
                        {
                           continue loop1;
                        }
                        loop5:
                        while(_loc9_["source." + _loc1_])
                        {
                           if(!_loc12_)
                           {
                              addr64:
                              if(_loc13_ || _loc1_)
                              {
                                 _loc3_[_loc1_] += _loc2_[_loc1_];
                              }
                              else
                              {
                                 while(true)
                                 {
                                    continue loop5;
                                    §§goto(addr64);
                                 }
                                 addr109:
                              }
                           }
                           if(!(_loc12_ && _loc2_))
                           {
                              if(true)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            break;
         }
         while(§§pop())
         {
            _loc1_ = §§nextname(_loc10_,_loc11_);
            §§goto(addr261);
            §§goto(addr363);
         }
         §§goto(addr365);
      }
      
      public function §6!!§(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Vector.<Number>;
         if((_loc4_ = this.§ !3§[param1] as Vector.<Number>) == null)
         {
            if(_loc7_ || param1)
            {
               this.§ !3§[param1] = _loc4_ = new Vector.<Number>();
               §§goto(addr61);
            }
            §§goto(addr71);
         }
         addr61:
         _loc4_.push(param2);
         if(!(_loc6_ && param3))
         {
            this.§^"?§["cp." + param1 + "." + _loc4_.length] = param3;
            addr71:
         }
      }
      
      override public function getObject(param1:String) : Object
      {
         return this.§"!c§[param1];
      }
      
      override protected function copyFrom(param1:§4"+§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§`L§ = param1 as §`L§;
         if(!(_loc4_ && _loc3_))
         {
            this.§"!c§ = _loc2_.§"!c§;
            loop0:
            while(true)
            {
               this.§&'§(this.§-!m§,_loc2_.§-!m§);
               while(true)
               {
                  this.§&'§(this.§,_§,_loc2_.§,_§);
                  while(_loc3_ || _loc2_)
                  {
                     if(!_loc4_)
                     {
                        this.§&'§(this.§ !3§,_loc2_.§ !3§);
                        loop3:
                        while(_loc3_)
                        {
                           while(true)
                           {
                              this.§&'§(this.§^"?§,_loc2_.§^"?§);
                              if(!(_loc4_ && _loc2_))
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
         §§goto(addr77);
      }
   }
}
