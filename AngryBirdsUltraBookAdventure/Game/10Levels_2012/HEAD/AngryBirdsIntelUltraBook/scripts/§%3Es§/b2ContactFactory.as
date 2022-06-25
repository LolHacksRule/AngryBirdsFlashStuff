package §>s§
{
   import §,X§.*;
   import §1%§.*;
   import §8!H§.*;
   import §?!&§.*;
   import §`!H§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §-p§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §5!X§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§5!X§ = param1;
               §§goto(addr46);
            }
         }
         addr46:
         while(true)
         {
            this.§>![§();
            if(_loc2_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      b2internal function §+d§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§-p§[param3][param4].createFcn = param1;
            while(true)
            {
               this.§-p§[param3][param4].destroyFcn = param2;
               loop1:
               while(true)
               {
                  this.§-p§[param3][param4].primary = true;
                  loop2:
                  while(param3 != param4)
                  {
                     while(_loc5_)
                     {
                        this.§-p§[param4][param3].createFcn = param1;
                        loop4:
                        while(!_loc6_)
                        {
                           this.§-p§[param4][param3].destroyFcn = param2;
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop4;
                           }
                           §§goto(addr70);
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
                  §§goto(addr24);
               }
            }
         }
         addr24:
      }
      
      b2internal function §>![§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(!(_loc3_ && _loc2_))
         {
            this.§-p§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§-w§);
         }
         §§push(0);
         if(_loc4_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(_loc4_)
               {
                  §§push(b2Shape.§-w§);
                  if(_loc4_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc3_)
                        {
                           if(_loc4_)
                           {
                              if(!(_loc3_ && _loc1_))
                              {
                                 this.§+d§(b2CircleContact.§;!]§,b2CircleContact.§"!Q§,b2Shape.§'o§,b2Shape.§'o§);
                                 while(true)
                                 {
                                    this.§+d§(b2PolyAndCircleContact.§;!]§,b2PolyAndCircleContact.§"!Q§,b2Shape.§1!f§,b2Shape.§'o§);
                                    loop9:
                                    while(_loc4_)
                                    {
                                       this.§+d§(b2PolygonContact.§;!]§,b2PolygonContact.§"!Q§,b2Shape.§1!f§,b2Shape.§1!f§);
                                       do
                                       {
                                          this.§+d§(b2EdgeAndCircleContact.§;!]§,b2EdgeAndCircleContact.§"!Q§,b2Shape.§]&§,b2Shape.§'o§);
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!(_loc4_ || _loc3_))
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop9;
                                          }
                                          loop12:
                                          while(!(_loc4_ || _loc1_))
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      addr199:
                                                      while(true)
                                                      {
                                                         §§push(b2Shape.§-w§);
                                                         addr202:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     if(_loc4_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr221:
                                                                                 §§push(int(§§pop()));
                                                                                 while(true)
                                                                                 {
                                                                                    _loc1_ = §§pop();
                                                                                    continue loop12;
                                                                                 }
                                                                                 addr221:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                 }
                                                                                 addr240:
                                                                              }
                                                                           }
                                                                           §§goto(addr221);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ && _loc2_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           addr248:
                                                                           _loc2_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              continue loop2;
                                                                              §§goto(addr248);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr221);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                        }
                                                                     }
                                                                     addr261:
                                                                  }
                                                                  §§goto(addr240);
                                                               }
                                                               addr203:
                                                            }
                                                            else
                                                            {
                                                               this.§-p§[_loc1_][_loc2_] = new b2ContactRegister();
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                      }
                                                   }
                                                   addr285:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         §§push(int(§§pop()));
                                                      }
                                                      continue loop13;
                                                   }
                                                   addr301:
                                                }
                                             }
                                          }
                                          continue loop0;
                                       }
                                       while(_loc3_ && this);
                                       
                                       return;
                                    }
                                 }
                                 addr196:
                              }
                              §§goto(addr249);
                           }
                           §§goto(addr203);
                        }
                        §§goto(addr196);
                     }
                     else
                     {
                        this.§-p§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§-w§);
                     }
                     §§goto(addr301);
                  }
                  §§goto(addr202);
               }
               §§goto(addr199);
            }
            §§goto(addr221);
         }
      }
      
      public function §;!]§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Contact = null;
         §§push(param1.§3r§());
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§3r§());
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister = this.§-p§[_loc3_][_loc4_];
         if(!(_loc11_ && param2))
         {
            §§push(_loc5_.pool);
            if(!(_loc11_ && _loc3_))
            {
               if(§§pop())
               {
                  §§goto(addr59);
               }
               §§goto(addr115);
            }
            addr59:
            _loc6_ = _loc5_.pool;
            §§goto(addr57);
         }
         addr57:
         if(_loc10_)
         {
            _loc5_.pool = _loc6_.§!J§;
            if(_loc10_ || _loc3_)
            {
               var _loc8_:*;
               §§push((_loc8_ = _loc5_).§^'§);
               if(!(_loc11_ && _loc3_))
               {
                  §§push(§§pop() - 1);
               }
               var _loc9_:* = §§pop();
               if(!_loc11_)
               {
                  _loc8_.§^'§ = _loc9_;
               }
               if(!_loc11_)
               {
                  _loc6_.§`!B§(param1,param2);
                  if(!_loc10_)
                  {
                     addr115:
                     var _loc7_:Function = _loc5_.createFcn;
                     if(!(_loc11_ && param2))
                     {
                        if(_loc7_ != null)
                        {
                           if(_loc10_)
                           {
                              addr131:
                              if(_loc5_.primary)
                              {
                                 §§goto(addr134);
                              }
                              §§goto(addr162);
                           }
                           addr134:
                           _loc6_ = _loc7_(this.§5!X§);
                           if(_loc10_)
                           {
                              _loc6_.§`!B§(param1,param2);
                              if(!_loc10_)
                              {
                                 addr162:
                                 _loc6_ = _loc7_(this.§5!X§);
                                 if(_loc10_ || param2)
                                 {
                                    _loc6_.§`!B§(param2,param1);
                                 }
                                 return _loc6_;
                              }
                           }
                           return _loc6_;
                        }
                        return null;
                     }
                     §§goto(addr131);
                  }
               }
            }
            §§goto(addr115);
         }
         return _loc6_;
      }
      
      public function §"!Q§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && _loc3_))
         {
            §§push(param1.§]0§.§7I§);
            if(!(_loc9_ && _loc2_))
            {
               if(§§pop() > 0)
               {
                  if(!(_loc9_ && param1))
                  {
                     §§push(param1.§]r§);
                     if(_loc8_ || _loc3_)
                     {
                        §§push(§§pop().m_body);
                        if(!(_loc9_ && param1))
                        {
                           §§push(true);
                           if(_loc8_)
                           {
                              §§pop().SetAwake(§§pop());
                              §§goto(addr82);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr82);
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr79);
               }
               addr82:
               if(!_loc9_)
               {
                  addr79:
                  §§push(param1.§"!F§.m_body);
                  §§push(true);
               }
               §§push(param1.§]r§.§3r§());
               if(!_loc8_)
               {
               }
               §§goto(addr88);
            }
            addr88:
            var _loc2_:int = §§pop();
            §§push(param1.§"!F§.§3r§());
            if(_loc8_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:b2ContactRegister = this.§-p§[_loc2_][_loc3_];
            if(!_loc9_)
            {
               var _loc6_:*;
               §§push((_loc6_ = _loc4_).§^'§);
               if(!_loc9_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc7_:* = §§pop();
               if(!_loc9_)
               {
                  _loc6_.§^'§ = _loc7_;
               }
               if(!(_loc9_ && this))
               {
                  §§goto(addr138);
               }
               §§goto(addr144);
            }
            addr138:
            param1.§!J§ = _loc4_.pool;
            if(!_loc9_)
            {
               addr144:
               _loc4_.pool = param1;
            }
            var _loc5_:Function = _loc4_.destroyFcn;
            if(_loc8_)
            {
               _loc5_(param1,this.§5!X§);
            }
            return;
         }
         §§goto(addr82);
      }
   }
}
