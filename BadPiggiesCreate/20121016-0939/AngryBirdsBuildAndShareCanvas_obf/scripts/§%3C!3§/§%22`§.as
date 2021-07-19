package §<!3§
{
   import flash.utils.Dictionary;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedSuperclassName;
   
   public class §"`§
   {
       
      
      private var §#m§:Dictionary;
      
      private var § @§:Dictionary;
      
      public function §"`§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§ @§ = new Dictionary();
            while(true)
            {
               this.§#m§ = new Dictionary();
               loop1:
               while(_loc1_ || this)
               {
                  while(true)
                  {
                     super();
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      private function §'b§(param1:Class) : Vector.<Class>
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            addr112:
            while(true)
            {
               §§push(§§newactivation());
               addr95:
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  addr97:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §5!j§(param1:Class, param2:Class, param3:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:uint = param3.length;
         var _loc5_:* = uint(0);
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc7_ && param2))
            {
               if(§§pop() >= _loc4_)
               {
                  if(_loc6_)
                  {
                     break;
                  }
                  loop1:
                  while(!(_loc6_ || param2))
                  {
                     while(true)
                     {
                        _loc5_ = §§pop();
                        continue loop1;
                     }
                  }
                  continue;
               }
               this.§0!B§(param1,param2,param3[_loc5_]);
               while(true)
               {
                  §§push(_loc5_);
                  if(!_loc7_)
                  {
                     §§push(uint(§§pop() + 1));
                  }
               }
            }
            §§goto(addr56);
         }
      }
      
      public function §@"3§(param1:Class, param2:String) : Class
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = undefined;
         var _loc3_:* = this.§ @§[param1];
         if(_loc7_ || _loc3_)
         {
            if(_loc3_ != null)
            {
               if(_loc7_)
               {
                  var _loc5_:*;
                  _loc4_ = _loc5_ = _loc3_[param2];
                  if(_loc5_ != null)
                  {
                     if(_loc7_ || this)
                     {
                        return _loc4_ as Class;
                     }
                  }
                  if((_loc4_ = _loc3_["*"]) != null)
                  {
                     if(!_loc6_)
                     {
                        return _loc4_ as Class;
                     }
                  }
               }
               else
               {
                  §§goto(addr103);
               }
            }
            else
            {
               this.§]"&§(param1);
               if(_loc7_)
               {
                  §§goto(addr103);
               }
            }
            return null;
         }
         addr103:
         return this.§@"3§(param1,param2);
      }
      
      public function §0!B§(param1:Class, param2:Class, param3:String) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc7_:* = uint(0);
         var _loc8_:* = uint(0);
         var _loc9_:Class = null;
         if(!(_loc11_ && this))
         {
            if(this.§ @§[param2] == undefined)
            {
               if(_loc10_ || this)
               {
                  this.§]"&§(param2);
               }
            }
         }
         var _loc4_:Dictionary;
         var _loc5_:Class = (_loc4_ = this.§ @§)[param2][param3] as Class;
         if(!_loc11_)
         {
            _loc4_[param2][param3] = param1;
         }
         var _loc6_:Vector.<Class>;
         if((_loc6_ = this.§#m§[param2] as Vector.<Class>) != null)
         {
            if(_loc10_)
            {
               §§push(uint(_loc6_.length));
               if(!_loc11_)
               {
                  _loc7_ = §§pop();
                  if(_loc10_ || this)
                  {
                     addr109:
                     _loc8_ = uint(0);
                  }
                  while(_loc8_ < _loc7_)
                  {
                     _loc9_ = _loc6_[_loc8_];
                     if(!(_loc11_ && this))
                     {
                        if(_loc4_[_loc9_][param3] == _loc5_)
                        {
                           if(!_loc11_)
                           {
                              _loc4_[_loc9_][param3] = param1;
                              if(_loc11_ && param1)
                              {
                                 continue;
                              }
                           }
                        }
                        §§push(_loc8_);
                        if(!_loc11_)
                        {
                           §§push(uint(§§pop() + 1));
                        }
                        _loc8_ = §§pop();
                     }
                  }
                  §§goto(addr165);
               }
            }
            §§goto(addr109);
         }
         addr165:
      }
      
      private function §]"&§(param1:Class) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc8_:Class = null;
         var _loc9_:Dictionary = null;
         var _loc10_:* = null;
         var _loc11_:Dictionary = null;
         var _loc12_:Dictionary = null;
         var _loc13_:Vector.<Class> = null;
         var _loc14_:* = 0;
         var _loc15_:Class = null;
         var _loc2_:Dictionary = this.§ @§;
         var _loc3_:Dictionary = this.§#m§;
         var _loc4_:Dictionary = new Dictionary();
         var _loc6_:uint;
         var _loc5_:Vector.<Class>;
         var _loc7_:* = int(_loc6_ = (_loc5_ = this.§'b§(param1)).length);
         loop0:
         while(true)
         {
            §§push(_loc7_);
            if(_loc18_ || this)
            {
               §§push(§§pop() - 1);
               if(_loc18_ || this)
               {
                  §§push(§§pop());
                  if(!(_loc19_ && param1))
                  {
                     §§push(int(§§pop()));
                     if(_loc18_)
                     {
                        addr413:
                        _loc7_ = §§pop();
                        §§push(0);
                     }
                     if(§§pop() < §§pop())
                     {
                        break;
                     }
                     _loc8_ = _loc5_[_loc7_];
                     if((_loc9_ = _loc2_[_loc8_] as Dictionary) != null)
                     {
                        _loc11_ = new Dictionary();
                        if(_loc18_ || param1)
                        {
                           if(_loc4_ != null)
                           {
                              if(!_loc19_)
                              {
                                 §§push(0);
                                 if(_loc18_)
                                 {
                                    var _loc16_:* = §§pop();
                                    if(_loc18_ || _loc3_)
                                    {
                                       var _loc17_:* = _loc4_;
                                       if(!_loc19_)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc17_,_loc16_));
                                             if(_loc18_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc18_)
                                                   {
                                                      if(!(_loc19_ && _loc2_))
                                                      {
                                                         addr174:
                                                         if(_loc18_ || this)
                                                         {
                                                            addr183:
                                                            _loc16_ = 0;
                                                            addr182:
                                                            if(!_loc19_)
                                                            {
                                                               addr186:
                                                               _loc17_ = _loc9_;
                                                               if(!_loc19_)
                                                               {
                                                                  addr221:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc17_,_loc16_));
                                                                     break loop3;
                                                                  }
                                                                  addr221:
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc11_[_loc10_] = _loc9_[_loc10_];
                                                                  §§goto(addr221);
                                                               }
                                                               addr215:
                                                            }
                                                            addr224:
                                                         }
                                                         _loc4_ = _loc11_;
                                                         if(_loc19_ && this)
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(_loc3_[_loc8_] == undefined)
                                                         {
                                                            _loc3_[_loc8_] = _loc5_.slice(0,_loc7_);
                                                            continue loop0;
                                                         }
                                                         if(_loc19_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         _loc13_ = _loc3_[_loc8_] as Vector.<Class>;
                                                         if(!_loc19_)
                                                         {
                                                            §§push(_loc7_);
                                                            if(!_loc19_)
                                                            {
                                                               §§push(int(§§pop() - 1));
                                                               if(!(_loc19_ && this))
                                                               {
                                                                  addr316:
                                                                  _loc14_ = §§pop();
                                                                  if(_loc18_)
                                                                  {
                                                                     addr319:
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc14_);
                                                                        addr366:
                                                                        while(§§pop() >= 0)
                                                                        {
                                                                           _loc15_ = _loc5_[_loc14_];
                                                                           if(_loc18_ || this)
                                                                           {
                                                                              if(_loc13_.indexOf(_loc15_) == -1)
                                                                              {
                                                                                 if(!(_loc19_ && _loc2_))
                                                                                 {
                                                                                    _loc13_.push(_loc15_);
                                                                                    if(!(_loc18_ || _loc2_))
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§push(_loc14_);
                                                                              if(!(_loc19_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() - 1);
                                                                              }
                                                                              _loc14_ = §§pop();
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr366);
                                                            }
                                                            §§goto(addr316);
                                                         }
                                                         §§goto(addr319);
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                   addr223:
                                                   §§goto(addr224);
                                                }
                                                else
                                                {
                                                   §§push(§§nextname(_loc16_,_loc17_));
                                                   loop4:
                                                   while(true)
                                                   {
                                                      _loc10_ = §§pop();
                                                      addr159:
                                                      while(true)
                                                      {
                                                         addr144:
                                                         while(true)
                                                         {
                                                            _loc11_[_loc10_] = _loc4_[_loc10_];
                                                            continue loop4;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          for(; §§pop(); §§goto(addr221))
                                          {
                                             _loc10_ = §§nextname(_loc16_,_loc17_);
                                             if(_loc19_ && _loc3_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr215);
                                          }
                                          §§goto(addr223);
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr183);
                              }
                           }
                        }
                        §§goto(addr182);
                     }
                     else
                     {
                        _loc12_ = new Dictionary();
                        if(!_loc19_)
                        {
                           _loc16_ = 0;
                           if(_loc18_)
                           {
                              _loc17_ = _loc4_;
                              if(_loc18_ || this)
                              {
                                 for(_loc10_ in _loc17_)
                                 {
                                    if(!_loc18_)
                                    {
                                       continue;
                                    }
                                 }
                                 addr274:
                                 if(!(_loc19_ && this))
                                 {
                                    _loc2_[_loc8_] = _loc12_;
                                 }
                                 §§goto(addr286);
                                 addr271:
                              }
                              while(true)
                              {
                                 _loc12_[_loc10_] = _loc4_[_loc10_];
                                 §§goto(addr271);
                              }
                           }
                           §§goto(addr274);
                        }
                     }
                     §§goto(addr286);
                  }
                  §§goto(addr413);
               }
            }
            §§goto(addr413);
         }
      }
   }
}
