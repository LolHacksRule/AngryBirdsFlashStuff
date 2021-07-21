package §"E§
{
   import flash.utils.Dictionary;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedSuperclassName;
   
   public class §&!h§
   {
       
      
      private var §>"8§:Dictionary;
      
      private var §2!C§:Dictionary;
      
      public function §&!h§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§2!C§ = new Dictionary();
            while(true)
            {
               this.§>"8§ = new Dictionary();
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            super();
            if(_loc1_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §1n§(param1:Class) : Vector.<Class>
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               for(; _loc5_; if(_loc4_ && _loc3_)
               {
                  continue;
               },§§pop().§§slot[4] = klass,if(_loc5_)
               {
                  loop7:
                  while(true)
                  {
                     §§push(§§newactivation());
                     if(!(_loc4_ && _loc2_))
                     {
                        while(true)
                        {
                           if(§§pop().§§slot[4] != null)
                           {
                              §§push(§§newactivation());
                              if(_loc5_)
                              {
                                 §§pop().§§slot[2].push(c);
                                 if(_loc5_)
                                 {
                                    if(true)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc4_)
                                       {
                                          addr178:
                                          §§pop().§§slot[4] = null;
                                          if(!(_loc5_ || _loc2_))
                                          {
                                             addr209:
                                             §§push(§§newactivation());
                                          }
                                       }
                                       else
                                       {
                                          addr178:
                                       }
                                       if((§§pop().§§slot[3] = getQualifiedSuperclassName(c)) == null)
                                       {
                                          addr169:
                                          continue;
                                          continue loop7;
                                          addr144:
                                       }
                                       if(_loc5_ || _loc2_)
                                       {
                                          break;
                                       }
                                       continue loop7;
                                       break loop7;
                                    }
                                    §§goto(addr36);
                                 }
                                 break;
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr209);
                        }
                        try
                        {
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§pop().§§slot[4] = getDefinitionByName(superClassName) as Class;
                           if(_loc4_ && this)
                           {
                              continue;
                           }
                           §§goto(addr144);
                        }
                        catch(e:ReferenceError)
                        {
                           var _loc3_:* = e;
                           if(_loc5_ || this)
                           {
                              var c:Class = Object;
                           }
                        }
                        §§goto(addr169);
                     }
                     break;
                  }
                  return §§pop().§§slot[2];
               },§§goto(addr67))
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  for(; !(_loc4_ && param1); while(!(_loc4_ && this))
                  {
                     §§goto(addr36);
                  })
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = new Vector.<Class>();
                        continue loop3;
                        addr36:
                        while(true)
                        {
                           §§push(§§newactivation());
                           if(!(_loc4_ && _loc2_))
                           {
                              continue loop2;
                           }
                           continue loop4;
                        }
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      public function §1"3§(param1:Class, param2:Class, param3:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:uint = param3.length;
         var _loc5_:* = uint(0);
         while(true)
         {
            §§push(_loc5_);
            if(_loc7_ || param1)
            {
               if(_loc7_ || param2)
               {
                  if(§§pop() >= _loc4_)
                  {
                     if(!(_loc6_ && param1))
                     {
                        break;
                     }
                     loop1:
                     while(_loc6_)
                     {
                        while(true)
                        {
                           _loc5_ = §§pop();
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  this.§]!n§(param1,param2,param3[_loc5_]);
                  while(true)
                  {
                     §§push(_loc5_);
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr67);
         }
      }
      
      public function §#">§(param1:Class, param2:String) : Class
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = undefined;
         var _loc3_:* = this.§2!C§[param1];
         if(!(_loc7_ && _loc3_))
         {
            if(_loc3_ != null)
            {
               if(_loc6_)
               {
                  if((_loc4_ = _loc3_[param2]) != null)
                  {
                     if(!_loc7_)
                     {
                        return _loc4_ as Class;
                     }
                  }
                  if((_loc4_ = _loc3_["*"]) != null)
                  {
                     if(_loc6_)
                     {
                        return _loc4_ as Class;
                     }
                  }
               }
               else
               {
                  §§goto(addr97);
               }
            }
            else
            {
               this.§`;§(param1);
               if(!_loc7_)
               {
                  addr97:
                  return this.§#">§(param1,param2);
               }
            }
         }
         return null;
      }
      
      public function §]!n§(param1:Class, param2:Class, param3:String) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc7_:* = uint(0);
         var _loc8_:* = uint(0);
         var _loc9_:Class = null;
         if(!(_loc11_ && param2))
         {
            if(this.§2!C§[param2] == undefined)
            {
               if(!(_loc11_ && param3))
               {
                  addr45:
                  this.§`;§(param2);
               }
            }
            var _loc4_:Dictionary;
            var _loc5_:Class = (_loc4_ = this.§2!C§)[param2][param3] as Class;
            if(!_loc11_)
            {
               _loc4_[param2][param3] = param1;
            }
            var _loc6_:Vector.<Class>;
            if((_loc6_ = this.§>"8§[param2] as Vector.<Class>) != null)
            {
               if(_loc10_ || param3)
               {
                  §§push(uint(_loc6_.length));
                  if(!_loc11_)
                  {
                     _loc7_ = §§pop();
                     if(!(_loc11_ && this))
                     {
                        addr114:
                        _loc8_ = uint(0);
                     }
                     while(_loc8_ < _loc7_)
                     {
                        _loc9_ = _loc6_[_loc8_];
                        if(_loc10_)
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
                           if(_loc10_ || param1)
                           {
                              §§push(uint(§§pop() + 1));
                           }
                           _loc8_ = §§pop();
                        }
                     }
                     §§goto(addr165);
                  }
               }
               §§goto(addr114);
            }
            addr165:
            return;
         }
         §§goto(addr45);
      }
      
      private function §`;§(param1:Class) : void
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
         var _loc2_:Dictionary = this.§2!C§;
         var _loc3_:Dictionary = this.§>"8§;
         var _loc4_:Dictionary = new Dictionary();
         var _loc6_:uint;
         var _loc5_:Vector.<Class>;
         var _loc7_:* = int(_loc6_ = (_loc5_ = this.§1n§(param1)).length);
         loop0:
         while(true)
         {
            §§push(_loc7_);
            if(!_loc18_)
            {
               §§push(§§pop() - 1);
               if(!(_loc18_ && _loc3_))
               {
                  §§push(§§pop());
                  if(_loc19_ || param1)
                  {
                     §§push(int(§§pop()));
                     if(!(_loc18_ && _loc2_))
                     {
                        _loc7_ = §§pop();
                        addr425:
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
                     if(_loc19_)
                     {
                        if(_loc4_ != null)
                        {
                           if(_loc19_ || this)
                           {
                              §§push(0);
                              if(_loc19_ || _loc2_)
                              {
                                 var _loc16_:* = §§pop();
                                 if(_loc19_ || _loc2_)
                                 {
                                    var _loc17_:* = _loc4_;
                                    if(!_loc18_)
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc17_,_loc16_));
                                          if(_loc19_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc18_ && this))
                                                {
                                                   if(!(_loc18_ && param1))
                                                   {
                                                      addr180:
                                                      if(_loc19_ || this)
                                                      {
                                                         addr189:
                                                         _loc16_ = 0;
                                                         addr188:
                                                         if(_loc19_)
                                                         {
                                                            addr192:
                                                            _loc17_ = _loc9_;
                                                            if(!_loc19_)
                                                            {
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc17_,_loc16_));
                                                               break loop2;
                                                            }
                                                            addr227:
                                                         }
                                                         addr231:
                                                         _loc4_ = _loc11_;
                                                         if(!(_loc18_ && _loc3_))
                                                         {
                                                            addr292:
                                                            if(_loc3_[_loc8_] == undefined)
                                                            {
                                                               _loc3_[_loc8_] = _loc5_.slice(0,_loc7_);
                                                               continue loop0;
                                                            }
                                                            if(!_loc19_)
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                         _loc13_ = _loc3_[_loc8_] as Vector.<Class>;
                                                         if(_loc19_ || _loc2_)
                                                         {
                                                            §§push(_loc7_);
                                                            if(_loc19_ || param1)
                                                            {
                                                               §§push(int(§§pop() - 1));
                                                               if(!(_loc18_ && _loc2_))
                                                               {
                                                                  addr332:
                                                                  _loc14_ = §§pop();
                                                                  if(!_loc18_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc14_);
                                                                     }
                                                                     addr376:
                                                                  }
                                                                  addr379:
                                                                  continue loop0;
                                                               }
                                                               for(; §§pop() >= 0; §§goto(addr376))
                                                               {
                                                                  _loc15_ = _loc5_[_loc14_];
                                                                  if(!(_loc18_ && _loc3_))
                                                                  {
                                                                     if(_loc13_.indexOf(_loc15_) == -1)
                                                                     {
                                                                        if(_loc18_ && _loc2_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr361:
                                                                        _loc13_.push(_loc15_);
                                                                        if(_loc18_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     §§push(_loc14_);
                                                                     if(!(_loc18_ && param1))
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     _loc14_ = §§pop();
                                                                     continue;
                                                                  }
                                                                  §§goto(addr361);
                                                               }
                                                               §§goto(addr379);
                                                            }
                                                         }
                                                         §§goto(addr332);
                                                         addr230:
                                                      }
                                                      §§goto(addr231);
                                                   }
                                                   §§goto(addr192);
                                                }
                                                addr229:
                                                §§goto(addr230);
                                             }
                                             else
                                             {
                                                §§push(§§nextname(_loc16_,_loc17_));
                                                loop3:
                                                while(true)
                                                {
                                                   _loc10_ = §§pop();
                                                   addr160:
                                                   while(true)
                                                   {
                                                      addr145:
                                                      while(true)
                                                      {
                                                         _loc11_[_loc10_] = _loc4_[_loc10_];
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       while(§§pop())
                                       {
                                          _loc10_ = §§nextname(_loc16_,_loc17_);
                                          if(_loc19_ || _loc3_)
                                          {
                                             _loc11_[_loc10_] = _loc9_[_loc10_];
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr229);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr189);
                           }
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr189);
                  }
                  else
                  {
                     _loc12_ = new Dictionary();
                     if(_loc19_)
                     {
                        _loc16_ = 0;
                        if(!(_loc18_ && _loc2_))
                        {
                           _loc17_ = _loc4_;
                           if(!_loc19_)
                           {
                           }
                           for(_loc10_ in _loc17_)
                           {
                              if(_loc19_)
                              {
                                 _loc12_[_loc10_] = _loc4_[_loc10_];
                              }
                           }
                        }
                        if(!(_loc18_ && param1))
                        {
                           _loc2_[_loc8_] = _loc12_;
                        }
                     }
                  }
                  §§goto(addr292);
               }
            }
            §§goto(addr425);
         }
      }
   }
}
