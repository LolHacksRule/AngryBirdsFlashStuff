package §]s§
{
   import flash.utils.Dictionary;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedSuperclassName;
   
   public class §&[§
   {
       
      
      private var §7!&§:Dictionary;
      
      private var §;!6§:Dictionary;
      
      public function §&[§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§;!6§ = new Dictionary();
            if(!_loc1_)
            {
               this.§7!&§ = new Dictionary();
               if(_loc2_)
               {
                  addr46:
                  super();
               }
               return;
            }
         }
         §§goto(addr46);
      }
      
      private function §^!k§(param1:Class) : Vector.<Class>
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc4_ && _loc3_))
         {
            §§pop().§§slot[3] = null;
            if(!_loc4_)
            {
               §§push(§§newactivation());
               if(_loc5_ || _loc2_)
               {
                  addr42:
                  §§pop().§§slot[1] = param1;
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§newactivation());
                     if(_loc5_ || _loc2_)
                     {
                        §§pop().§§slot[2] = new Vector.<Class>();
                        if(_loc4_)
                        {
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr68);
                  }
                  §§push(§§newactivation());
               }
               addr68:
               §§pop().§§slot[4] = klass;
               §§goto(addr72);
            }
            addr72:
            loop0:
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
                           if(!(_loc5_ || param1))
                           {
                              break;
                           }
                           §§push(§§newactivation());
                           if(_loc5_)
                           {
                              if((§§pop().§§slot[3] = getQualifiedSuperclassName(c)) == null)
                              {
                                 §§push(§§newactivation());
                                 if(_loc5_)
                                 {
                                    §§pop().§§slot[4] = null;
                                    if(_loc4_)
                                    {
                                       addr198:
                                       §§push(§§newactivation());
                                    }
                                    continue loop0;
                                    break loop0;
                                 }
                              }
                              if(!(_loc5_ || _loc3_))
                              {
                                 break;
                              }
                              try
                              {
                                 §§push(§§newactivation());
                                 if(_loc4_ && _loc2_)
                                 {
                                    break loop0;
                                 }
                                 §§pop().§§slot[4] = getDefinitionByName(superClassName) as Class;
                                 if(!(_loc4_ && this))
                                 {
                                    break;
                                 }
                              }
                              catch(e:ReferenceError)
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    var c:Class = Object;
                                 }
                                 addr178:
                              }
                              continue loop0;
                              break loop0;
                           }
                        }
                        continue;
                     }
                     §§goto(addr198);
                  }
                  §§goto(addr178);
               }
               break;
            }
            return §§pop().§§slot[2];
         }
         §§goto(addr42);
      }
      
      public function §6p§(param1:Class, param2:Class, param3:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:uint = param3.length;
         var _loc5_:* = uint(0);
         while(true)
         {
            §§push(_loc5_);
            while(true)
            {
               if(§§pop() < _loc4_)
               {
                  this.§3!3§(param1,param2,param3[_loc5_]);
                  if(_loc7_ && param3)
                  {
                     break;
                  }
                  §§push(_loc5_);
                  if(_loc7_ && param1)
                  {
                     continue;
                  }
                  §§push(uint(§§pop() + 1));
                  if(_loc7_)
                  {
                     continue;
                  }
                  _loc5_ = §§pop();
                  if(_loc6_ || param2)
                  {
                     break;
                  }
               }
               return;
            }
         }
      }
      
      public function §7!<§(param1:Class, param2:String) : Class
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = undefined;
         var _loc3_:* = this.§;!6§[param1];
         if(_loc6_)
         {
            if(_loc3_ != null)
            {
               if(!_loc7_)
               {
                  if((_loc4_ = _loc3_[param2]) != null)
                  {
                     if(_loc6_ || this)
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
               this.§'Q§(param1);
               if(!_loc7_)
               {
                  addr97:
                  return this.§7!<§(param1,param2);
               }
            }
         }
         return null;
      }
      
      public function §3!3§(param1:Class, param2:Class, param3:String) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc7_:* = uint(0);
         var _loc8_:* = uint(0);
         var _loc9_:Class = null;
         if(!_loc10_)
         {
            if(this.§;!6§[param2] == undefined)
            {
               if(_loc11_ || this)
               {
                  addr41:
                  this.§'Q§(param2);
               }
            }
            var _loc4_:Dictionary;
            var _loc5_:Class = (_loc4_ = this.§;!6§)[param2][param3] as Class;
            if(_loc11_ || param2)
            {
               _loc4_[param2][param3] = param1;
            }
            var _loc6_:Vector.<Class>;
            if((_loc6_ = this.§7!&§[param2] as Vector.<Class>) != null)
            {
               if(!_loc10_)
               {
                  §§push(uint(_loc6_.length));
                  if(_loc11_ || param3)
                  {
                     _loc7_ = §§pop();
                     §§goto(addr116);
                  }
                  _loc8_ = §§pop();
               }
               §§goto(addr116);
            }
            addr116:
            if(_loc11_ || param3)
            {
               §§push(uint(0));
            }
            while(_loc8_ < _loc7_)
            {
               _loc9_ = _loc6_[_loc8_];
               if(!(_loc10_ && param3))
               {
                  if(_loc4_[_loc9_][param3] == _loc5_)
                  {
                     if(_loc10_ && param3)
                     {
                        continue;
                     }
                     addr154:
                     _loc4_[_loc9_][param3] = param1;
                     if(_loc10_)
                     {
                        continue;
                     }
                  }
                  §§push(_loc8_);
                  if(_loc11_ || param1)
                  {
                     §§push(uint(§§pop() + 1));
                  }
                  _loc8_ = §§pop();
                  continue;
               }
               §§goto(addr154);
            }
            return;
         }
         §§goto(addr41);
      }
      
      private function §'Q§(param1:Class) : void
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
         var _loc2_:Dictionary = this.§;!6§;
         var _loc3_:Dictionary = this.§7!&§;
         var _loc4_:Dictionary = new Dictionary();
         var _loc6_:uint;
         var _loc5_:Vector.<Class>;
         var _loc7_:* = int(_loc6_ = (_loc5_ = this.§^!k§(param1)).length);
         loop0:
         while(true)
         {
            §§push(_loc7_);
            if(!_loc19_)
            {
               §§push(§§pop() - 1);
               if(!_loc19_)
               {
                  §§push(§§pop());
                  if(!(_loc19_ && param1))
                  {
                     §§push(int(§§pop()));
                     if(_loc18_ || param1)
                     {
                        _loc7_ = §§pop();
                        addr412:
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
                     if(!_loc19_)
                     {
                        if(_loc4_ != null)
                        {
                           if(!(_loc19_ && this))
                           {
                              §§push(0);
                              if(!(_loc19_ && param1))
                              {
                                 var _loc16_:* = §§pop();
                                 if(!(_loc19_ && this))
                                 {
                                    var _loc17_:* = _loc4_;
                                    if(!_loc19_)
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc17_,_loc16_));
                                          if(!(_loc19_ && _loc3_))
                                          {
                                             if(!§§pop())
                                             {
                                                if(!_loc19_)
                                                {
                                                   if(!_loc19_)
                                                   {
                                                      if(!_loc19_)
                                                      {
                                                         addr176:
                                                         _loc16_ = 0;
                                                         addr175:
                                                         if(!(_loc19_ && this))
                                                         {
                                                            _loc17_ = _loc9_;
                                                            if(!_loc18_)
                                                            {
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc17_,_loc16_));
                                                               break loop3;
                                                            }
                                                            addr214:
                                                         }
                                                         addr218:
                                                         _loc4_ = _loc11_;
                                                         if(_loc19_ && _loc3_)
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
                                                         if(_loc18_ || this)
                                                         {
                                                            §§push(_loc7_);
                                                            if(!(_loc19_ && param1))
                                                            {
                                                               §§push(int(§§pop() - 1));
                                                               if(!(_loc19_ && this))
                                                               {
                                                                  _loc14_ = §§pop();
                                                                  if(_loc18_ || _loc2_)
                                                                  {
                                                                     addr332:
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc14_);
                                                                        addr369:
                                                                        while(§§pop() >= 0)
                                                                        {
                                                                           _loc15_ = _loc5_[_loc14_];
                                                                           if(_loc18_)
                                                                           {
                                                                              if(_loc13_.indexOf(_loc15_) == -1)
                                                                              {
                                                                                 if(_loc18_ || _loc2_)
                                                                                 {
                                                                                    _loc13_.push(_loc15_);
                                                                                    if(_loc19_ && this)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§push(_loc14_);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(§§pop() - 1);
                                                                              }
                                                                              _loc14_ = §§pop();
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                            §§goto(addr369);
                                                         }
                                                         §§goto(addr332);
                                                         addr217:
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                addr216:
                                                §§goto(addr218);
                                             }
                                             else
                                             {
                                                §§push(§§nextname(_loc16_,_loc17_));
                                                if(!_loc19_)
                                                {
                                                   _loc10_ = §§pop();
                                                   if(_loc18_)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc11_[_loc10_] = _loc4_[_loc10_];
                                                         if(_loc19_ && this)
                                                         {
                                                            continue loop3;
                                                         }
                                                      }
                                                      addr128:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc10_);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!(§§pop() in _loc9_))
                                                   {
                                                      if(!(_loc19_ && _loc3_))
                                                      {
                                                         _loc9_[_loc10_] = _loc4_[_loc10_];
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       while(§§pop())
                                       {
                                          _loc10_ = §§nextname(_loc16_,_loc17_);
                                          if(_loc18_)
                                          {
                                             _loc11_[_loc10_] = _loc9_[_loc10_];
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr128);
                                 }
                                 §§goto(addr218);
                              }
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr176);
                  }
                  else
                  {
                     _loc12_ = new Dictionary();
                     if(!_loc19_)
                     {
                        _loc16_ = 0;
                        if(!(_loc19_ && _loc3_))
                        {
                           _loc17_ = _loc4_;
                           if(!(_loc19_ && this))
                           {
                              for(_loc10_ in _loc17_)
                              {
                                 if(!(_loc18_ || _loc2_))
                                 {
                                    continue;
                                 }
                              }
                              addr277:
                              if(_loc18_)
                              {
                                 _loc2_[_loc8_] = _loc12_;
                              }
                              §§goto(addr284);
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
                  §§goto(addr284);
               }
            }
            §§goto(addr412);
         }
      }
   }
}
