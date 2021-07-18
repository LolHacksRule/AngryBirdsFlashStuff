package §_-wT§
{
   import flash.utils.Dictionary;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedSuperclassName;
   
   public class §_-c9§
   {
       
      
      private var §_-3B§:Dictionary;
      
      private var §_-M-§:Dictionary;
      
      public function §_-c9§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§_-M-§ = new Dictionary();
            if(!(_loc2_ && _loc1_))
            {
               this.§_-3B§ = new Dictionary();
               if(_loc1_ || _loc1_)
               {
               }
               §§goto(addr58);
            }
            super();
         }
         addr58:
      }
      
      private function §_-rR§(param1:Class) : Vector.<Class>
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[3] = null;
            if(_loc5_ || _loc3_)
            {
               §§push(§§newactivation());
               if(_loc5_ || _loc3_)
               {
                  §§pop().§§slot[1] = param1;
                  if(_loc5_)
                  {
                     §§push(§§newactivation());
                     if(_loc4_ && param1)
                     {
                     }
                     §§goto(addr60);
                  }
                  addr59:
                  addr60:
                  §§pop().§§slot[4] = klass;
                  addr64:
                  loop0:
                  while(true)
                  {
                     §§push(§§newactivation());
                     if(!_loc4_)
                     {
                        while(§§pop().§§slot[4] != null)
                        {
                           §§push(§§newactivation());
                           if(_loc5_ || param1)
                           {
                              §§pop().§§slot[2].push(c);
                              if(_loc5_)
                              {
                                 §§push(§§newactivation());
                                 if(_loc5_ || this)
                                 {
                                    if((§§pop().§§slot[3] = getQualifiedSuperclassName(c)) != null)
                                    {
                                       if(_loc4_ && this)
                                       {
                                          break;
                                       }
                                       try
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc5_ || _loc2_))
                                          {
                                             break loop0;
                                          }
                                          §§pop().§§slot[4] = getDefinitionByName(superClassName) as Class;
                                          if(_loc4_ && _loc3_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       catch(e:ReferenceError)
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             var c:Class = Object;
                                          }
                                       }
                                       continue loop0;
                                    }
                                    §§push(§§newactivation());
                                    if(_loc4_ && _loc3_)
                                    {
                                       continue;
                                    }
                                 }
                                 §§pop().§§slot[4] = null;
                                 if(_loc4_ && this)
                                 {
                                    break;
                                 }
                              }
                              continue loop0;
                           }
                        }
                        §§push(§§newactivation());
                        break;
                     }
                     break;
                  }
                  return §§pop().§§slot[2];
                  §§push(§§newactivation());
               }
               §§pop().§§slot[2] = new Vector.<Class>();
               if(_loc5_)
               {
                  §§goto(addr59);
               }
               §§goto(addr64);
            }
            §§goto(addr59);
         }
         §§goto(addr60);
      }
      
      public function §_-tG§(param1:Class, param2:Class, param3:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:uint = param3.length;
         var _loc5_:* = uint(0);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            while(§§pop() < _loc4_)
            {
               this.§_-Ym§(param1,param2,param3[_loc5_]);
               if(_loc7_)
               {
                  break;
               }
               §§push(_loc5_);
               if(_loc6_ || param1)
               {
                  §§push(uint(§§pop() + 1));
                  if(_loc7_ && param2)
                  {
                     continue;
                  }
               }
               _loc5_ = §§pop();
               if(!_loc6_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
      }
      
      public function §_-eX§(param1:Class, param2:String) : Class
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = undefined;
         var _loc3_:* = this.§_-M-§[param1];
         if(!(_loc6_ && _loc3_))
         {
            if(_loc3_ != null)
            {
               if(_loc7_ || _loc3_)
               {
                  if((_loc4_ = _loc3_[param2]) != null)
                  {
                     if(_loc7_)
                     {
                        return _loc4_ as Class;
                     }
                  }
                  if((_loc4_ = _loc3_["*"]) != null)
                  {
                     if(_loc7_)
                     {
                        return _loc4_ as Class;
                     }
                  }
               }
               else
               {
                  §§goto(addr94);
               }
            }
            else
            {
               this.§_-uG§(param1);
               if(!_loc6_)
               {
                  addr94:
                  return this.§_-eX§(param1,param2);
               }
            }
         }
         return null;
      }
      
      public function §_-Ym§(param1:Class, param2:Class, param3:String) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc7_:* = uint(0);
         var _loc8_:* = uint(0);
         var _loc9_:Class = null;
         if(!(_loc11_ && this))
         {
            if(this.§_-M-§[param2] == undefined)
            {
               if(_loc10_ || param1)
               {
                  addr42:
                  this.§_-uG§(param2);
               }
            }
            var _loc4_:Dictionary;
            var _loc5_:Class = (_loc4_ = this.§_-M-§)[param2][param3] as Class;
            if(_loc10_)
            {
               _loc4_[param2][param3] = param1;
            }
            var _loc6_:Vector.<Class>;
            if((_loc6_ = this.§_-3B§[param2] as Vector.<Class>) != null)
            {
               if(_loc10_)
               {
                  §§push(uint(_loc6_.length));
                  if(_loc10_)
                  {
                     _loc7_ = §§pop();
                     §§goto(addr104);
                  }
                  _loc8_ = §§pop();
               }
               §§goto(addr104);
            }
            addr104:
            if(_loc10_ || this)
            {
               §§push(uint(0));
            }
            while(_loc8_ < _loc7_)
            {
               _loc9_ = _loc6_[_loc8_];
               if(!_loc11_)
               {
                  if(_loc4_[_loc9_][param3] == _loc5_)
                  {
                     if(!_loc11_)
                     {
                        _loc4_[_loc9_][param3] = param1;
                        if(!_loc10_)
                        {
                           continue;
                        }
                     }
                  }
                  §§push(_loc8_);
                  if(_loc10_ || param2)
                  {
                     §§push(uint(§§pop() + 1));
                  }
                  _loc8_ = §§pop();
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      private function §_-uG§(param1:Class) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc8_:Class = null;
         var _loc9_:Dictionary = null;
         var _loc10_:* = null;
         var _loc11_:Dictionary = null;
         var _loc12_:Dictionary = null;
         var _loc13_:Vector.<Class> = null;
         var _loc14_:* = 0;
         var _loc15_:Class = null;
         var _loc2_:Dictionary = this.§_-M-§;
         var _loc3_:Dictionary = this.§_-3B§;
         var _loc4_:Dictionary = new Dictionary();
         var _loc6_:uint;
         var _loc5_:Vector.<Class>;
         var _loc7_:* = int(_loc6_ = (_loc5_ = this.§_-rR§(param1)).length);
         loop0:
         while(true)
         {
            §§push(_loc7_);
            if(!(_loc18_ && this))
            {
               §§push(§§pop() - 1);
               if(_loc19_ || _loc3_)
               {
                  addr395:
                  §§push(§§pop());
                  if(!(_loc18_ && _loc2_))
                  {
                     §§push(int(§§pop()));
                     if(_loc19_)
                     {
                        _loc7_ = §§pop();
                        addr414:
                        §§push(0);
                     }
                  }
                  if(§§pop() < §§pop())
                  {
                     break;
                  }
                  _loc8_ = _loc5_[_loc7_];
                  if((_loc9_ = _loc2_[_loc8_] as Dictionary) != null)
                  {
                     _loc11_ = new Dictionary();
                     if(!(_loc18_ && this))
                     {
                        if(_loc4_ != null)
                        {
                           if(_loc19_)
                           {
                              §§push(0);
                              if(_loc19_)
                              {
                                 var _loc16_:* = §§pop();
                                 if(!(_loc18_ && param1))
                                 {
                                    var _loc17_:* = _loc4_;
                                    if(_loc19_)
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc17_,_loc16_));
                                          if(_loc19_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc18_ && _loc2_))
                                                {
                                                   if(!(_loc18_ && _loc2_))
                                                   {
                                                      addr160:
                                                      if(_loc19_ || param1)
                                                      {
                                                         addr169:
                                                         _loc16_ = 0;
                                                         if(_loc19_)
                                                         {
                                                            _loc17_ = _loc9_;
                                                            if(_loc19_ || param1)
                                                            {
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc17_,_loc16_));
                                                               break loop3;
                                                            }
                                                            addr209:
                                                         }
                                                      }
                                                      addr213:
                                                      _loc4_ = _loc11_;
                                                      if(!(_loc19_ || _loc3_))
                                                      {
                                                         continue loop0;
                                                      }
                                                      if(_loc3_[_loc8_] == undefined)
                                                      {
                                                         _loc3_[_loc8_] = _loc5_.slice(0,_loc7_);
                                                         continue loop0;
                                                      }
                                                      if(!(_loc19_ || _loc2_))
                                                      {
                                                         continue loop0;
                                                      }
                                                      _loc13_ = _loc3_[_loc8_] as Vector.<Class>;
                                                      if(_loc19_)
                                                      {
                                                         §§push(_loc7_);
                                                         if(!_loc18_)
                                                         {
                                                            §§push(int(§§pop() - 1));
                                                            if(_loc19_)
                                                            {
                                                               _loc14_ = §§pop();
                                                               if(_loc19_ || this)
                                                               {
                                                                  addr327:
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc14_);
                                                                     addr369:
                                                                     while(§§pop() >= 0)
                                                                     {
                                                                        _loc15_ = _loc5_[_loc14_];
                                                                        if(_loc19_)
                                                                        {
                                                                           if(_loc13_.indexOf(_loc15_) == -1)
                                                                           {
                                                                              if(_loc18_ && _loc3_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              _loc13_.push(_loc15_);
                                                                              if(!(_loc19_ || _loc2_))
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§push(_loc14_);
                                                                        if(_loc19_ || param1)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        _loc14_ = §§pop();
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                         §§goto(addr369);
                                                      }
                                                      §§goto(addr327);
                                                   }
                                                   addr212:
                                                   §§goto(addr213);
                                                }
                                                addr211:
                                                §§goto(addr212);
                                             }
                                             else
                                             {
                                                §§push(§§nextname(_loc16_,_loc17_));
                                                if(_loc19_)
                                                {
                                                   _loc10_ = §§pop();
                                                   if(!_loc19_)
                                                   {
                                                      continue;
                                                   }
                                                   _loc11_[_loc10_] = _loc4_[_loc10_];
                                                   if(_loc19_)
                                                   {
                                                      §§push(_loc10_);
                                                   }
                                                   while(true)
                                                   {
                                                      _loc9_[_loc10_] = _loc4_[_loc10_];
                                                      continue loop3;
                                                   }
                                                   addr135:
                                                }
                                                if(§§pop() in _loc9_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc19_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr135);
                                             }
                                          }
                                          break;
                                       }
                                       while(§§pop())
                                       {
                                          _loc10_ = §§nextname(_loc16_,_loc17_);
                                          if(!(_loc18_ && param1))
                                          {
                                             _loc11_[_loc10_] = _loc9_[_loc10_];
                                          }
                                          §§goto(addr209);
                                       }
                                       §§goto(addr211);
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr169);
                           }
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr160);
                  }
                  else
                  {
                     _loc12_ = new Dictionary();
                     if(!(_loc18_ && _loc3_))
                     {
                        _loc16_ = 0;
                        if(_loc19_ || param1)
                        {
                           _loc17_ = _loc4_;
                           if(_loc19_ || _loc2_)
                           {
                              for(_loc10_ in _loc17_)
                              {
                                 if(!(_loc19_ || param1))
                                 {
                                    continue;
                                 }
                              }
                              addr277:
                              if(_loc19_ || param1)
                              {
                                 _loc2_[_loc8_] = _loc12_;
                              }
                              §§goto(addr289);
                              addr274:
                           }
                           while(true)
                           {
                              _loc12_[_loc10_] = _loc4_[_loc10_];
                              §§goto(addr274);
                           }
                        }
                        §§goto(addr277);
                     }
                  }
                  §§goto(addr289);
               }
               §§goto(addr414);
            }
            §§goto(addr395);
         }
      }
   }
}
