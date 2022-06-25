package §#!0§
{
   import §!m§.*;
   import §+!g§.*;
   import §0!3§.*;
   import §>!8§.*;
   import §>!L§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §9!a§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §6I§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super();
         }
         while(true)
         {
            this.§6I§ = param1;
            while(_loc3_)
            {
               this.§89§();
               if(_loc3_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      b2internal function §'c§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§9!a§[param3][param4].createFcn = param1;
            loop0:
            while(true)
            {
               this.§9!a§[param3][param4].destroyFcn = param2;
               while(true)
               {
                  this.§9!a§[param3][param4].primary = true;
                  addr108:
                  while(param3 != param4)
                  {
                     continue loop0;
                  }
                  addr20:
                  addr86:
                  return;
                  if(_loc5_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     this.§9!a§[param4][param3].destroyFcn = param2;
                     addr47:
                     addr84:
                     while(_loc6_ || param1)
                     {
                        this.§9!a§[param4][param3].primary = false;
                        if(_loc5_)
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           continue loop0;
                        }
                        §§goto(addr20);
                     }
                     while(!_loc5_)
                     {
                        §§goto(addr86);
                        §§goto(addr47);
                     }
                     §§goto(addr108);
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      b2internal function §89§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(!_loc4_)
         {
            this.§9!a§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§[I§);
         }
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc3_))
            {
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     §§push(b2Shape.§[I§);
                     if(!_loc4_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           while(true)
                           {
                              this.§'c§(b2CircleContact.§@!L§,b2CircleContact.§"G§,b2Shape.§^%§,b2Shape.§^%§);
                              loop2:
                              while(!(_loc4_ && _loc1_))
                              {
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    this.§'c§(b2PolyAndCircleContact.§@!L§,b2PolyAndCircleContact.§"G§,b2Shape.§9Q§,b2Shape.§^%§);
                                    while(true)
                                    {
                                       this.§'c§(b2PolygonContact.§@!L§,b2PolygonContact.§"G§,b2Shape.§9Q§,b2Shape.§9Q§);
                                       loop4:
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          if(!_loc4_)
                                          {
                                             continue;
                                          }
                                          addr226:
                                          addr269:
                                          §§push(_loc2_ + 1);
                                          if(!(_loc4_ && this))
                                          {
                                             if(_loc3_)
                                             {
                                                addr237:
                                                §§push(int(§§pop()));
                                                loop11:
                                                while(true)
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      addr245:
                                                      if(!_loc4_)
                                                      {
                                                         addr247:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            addr204:
                                                            while(true)
                                                            {
                                                               §§push(b2Shape.§[I§);
                                                               addr207:
                                                               addr222:
                                                               while(true)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     break loop2;
                                                                  }
                                                                  this.§9!a§[_loc1_][_loc2_] = new b2ContactRegister();
                                                                  §§goto(addr269);
                                                               }
                                                               addr222:
                                                               _loc1_ = int(§§pop());
                                                               break loop4;
                                                            }
                                                            §§goto(addr247);
                                                         }
                                                         addr202:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr202);
                                                      }
                                                      addr274:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                         continue loop11;
                                                      }
                                                      addr272:
                                                   }
                                                }
                                                addr237:
                                             }
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                §§goto(addr274);
                                             }
                                          }
                                          §§goto(addr237);
                                       }
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    §§push(0);
                                    addr290:
                                 }
                                 §§goto(addr272);
                              }
                              §§push(_loc1_);
                              if(!(_loc4_ && _loc1_))
                              {
                                 if(_loc4_)
                                 {
                                    §§goto(addr226);
                                 }
                                 §§push(§§pop() + 1);
                                 if(!_loc3_)
                                 {
                                 }
                              }
                              §§goto(addr222);
                           }
                        }
                        else
                        {
                           this.§9!a§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§[I§);
                        }
                        §§goto(addr290);
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr237);
               }
               §§goto(addr204);
            }
            §§goto(addr222);
         }
      }
      
      public function §@!L§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:b2Contact = null;
         §§push(param1.§6!-§());
         if(!(_loc10_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§6!-§());
         if(!(_loc10_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister = this.§9!a§[_loc3_][_loc4_];
         if(!(_loc10_ && param2))
         {
            §§push(_loc5_.pool);
            if(_loc11_)
            {
               if(§§pop())
               {
                  addr65:
                  _loc6_ = _loc5_.pool;
                  if(_loc11_ || param1)
                  {
                     _loc5_.pool = _loc6_.§,!Z§;
                     if(!(_loc10_ && param1))
                     {
                        var _loc8_:*;
                        §§push((_loc8_ = _loc5_).§8!W§);
                        if(_loc11_)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc9_:* = §§pop();
                        if(_loc11_ || param2)
                        {
                           _loc8_.§8!W§ = _loc9_;
                        }
                        if(_loc11_ || param1)
                        {
                        }
                        addr136:
                        var _loc7_:Function = _loc5_.createFcn;
                        if(_loc11_ || param1)
                        {
                           if(_loc7_ != null)
                           {
                              if(_loc11_ || param1)
                              {
                                 addr157:
                                 if(_loc5_.primary)
                                 {
                                    §§goto(addr160);
                                 }
                                 §§goto(addr193);
                              }
                              addr160:
                              _loc6_ = _loc7_(this.§6I§);
                              if(!_loc10_)
                              {
                                 _loc6_.§9=§(param1,param2);
                                 if(!(_loc11_ || param1))
                                 {
                                    addr193:
                                    _loc6_ = _loc7_(this.§6I§);
                                    if(!(_loc10_ && param1))
                                    {
                                       _loc6_.§9=§(param2,param1);
                                    }
                                    return _loc6_;
                                 }
                              }
                              return _loc6_;
                           }
                           return null;
                        }
                        §§goto(addr157);
                     }
                     _loc6_.§9=§(param1,param2);
                     if(_loc11_ || param1)
                     {
                        return _loc6_;
                     }
                  }
               }
               §§goto(addr136);
            }
         }
         §§goto(addr65);
      }
      
      public function §"G§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param1.§,S§.§5<§);
            if(_loc9_)
            {
               if(§§pop() > 0)
               {
                  if(!_loc8_)
                  {
                     §§push(param1.§7d§);
                     if(_loc9_ || _loc3_)
                     {
                        §§push(§§pop().m_body);
                        if(_loc9_)
                        {
                           §§push(true);
                           if(_loc9_)
                           {
                              §§pop().SetAwake(§§pop());
                              §§goto(addr58);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr58);
                        }
                        §§goto(addr55);
                     }
                     §§goto(addr58);
                  }
                  §§goto(addr55);
               }
               addr58:
               if(_loc9_ || _loc2_)
               {
                  addr55:
                  §§push(param1.§-F§.m_body);
                  §§push(true);
               }
               §§push(param1.§7d§.§6!-§());
               if(_loc9_ || param1)
               {
               }
               §§goto(addr79);
            }
            addr79:
            var _loc2_:int = §§pop();
            §§push(param1.§-F§.§6!-§());
            if(_loc9_ || _loc2_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:b2ContactRegister = this.§9!a§[_loc2_][_loc3_];
            if(_loc9_ || this)
            {
               var _loc6_:*;
               §§push((_loc6_ = _loc4_).§8!W§);
               if(!_loc8_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc7_:* = §§pop();
               if(!(_loc8_ && this))
               {
                  _loc6_.§8!W§ = _loc7_;
               }
               if(!(_loc8_ && _loc3_))
               {
                  param1.§,!Z§ = _loc4_.pool;
                  if(_loc8_)
                  {
                  }
                  §§goto(addr153);
               }
               _loc4_.pool = param1;
            }
            addr153:
            var _loc5_:Function = _loc4_.destroyFcn;
            if(!_loc8_)
            {
               _loc5_(param1,this.§6I§);
            }
            return;
         }
         §§goto(addr58);
      }
   }
}
