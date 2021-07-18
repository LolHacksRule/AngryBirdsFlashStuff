package §;!e§
{
   import §"J§.*;
   import §%4§.*;
   import §2k§.*;
   import §<!a§.*;
   import §<";§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §[!y§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §9"6§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super();
            while(true)
            {
               this.§9"6§ = param1;
               while(!(_loc3_ && _loc2_))
               {
                  this.§3!h§();
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr48:
               }
            }
         }
         §§goto(addr48);
      }
      
      b2internal function §&M§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            this.§[!y§[param3][param4].createFcn = param1;
            loop0:
            while(true)
            {
               this.§[!y§[param3][param4].destroyFcn = param2;
               while(true)
               {
                  this.§[!y§[param3][param4].primary = true;
                  loop2:
                  while(!_loc5_)
                  {
                     if(param3 == param4)
                     {
                        addr25:
                     }
                     loop3:
                     while(!_loc5_)
                     {
                        this.§[!y§[param4][param3].createFcn = param1;
                        loop4:
                        for(; _loc6_; while(_loc6_ || param3)
                        {
                           this.§[!y§[param4][param3].primary = false;
                           if(!(_loc5_ && param3))
                           {
                              if(_loc6_)
                              {
                                 §§goto(addr25);
                              }
                              continue loop3;
                           }
                        })
                        {
                           while(true)
                           {
                              this.§[!y§[param4][param3].destroyFcn = param2;
                              continue loop4;
                           }
                        }
                        continue loop2;
                     }
                     continue loop0;
                     return;
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      b2internal function §3!h§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         if(!(_loc3_ && _loc1_))
         {
            this.§[!y§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§1!v§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(!_loc3_)
               {
                  §§push(b2Shape.§1!v§);
                  if(_loc4_ || _loc2_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop1:
                        while(true)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              this.§&M§(b2CircleContact.§`!P§,b2CircleContact.§3!0§,b2Shape.§;n§,b2Shape.§;n§);
                              while(!_loc3_)
                              {
                                 this.§&M§(b2PolyAndCircleContact.§`!P§,b2PolyAndCircleContact.§3!0§,b2Shape.§<!D§,b2Shape.§;n§);
                                 while(!_loc3_)
                                 {
                                    this.§&M§(b2PolygonContact.§`!P§,b2PolygonContact.§3!0§,b2Shape.§<!D§,b2Shape.§<!D§);
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc3_ && _loc1_)
                                          {
                                             break;
                                          }
                                          this.§&M§(b2EdgeAndCircleContact.§`!P§,b2EdgeAndCircleContact.§3!0§,b2Shape.§=!E§,b2Shape.§;n§);
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    while(_loc3_)
                                    {
                                       while(true)
                                       {
                                          §§goto(addr166);
                                       }
                                    }
                                    continue loop0;
                                    if(!(_loc4_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    if(!_loc3_)
                                    {
                                       §§goto(addr84);
                                    }
                                    §§goto(addr195);
                                 }
                              }
                              while(true)
                              {
                                 _loc2_++;
                                 §§goto(addr179);
                              }
                           }
                           else
                           {
                              addr194:
                              _loc2_ = 0;
                              addr218:
                           }
                           §§goto(addr195);
                        }
                     }
                     else
                     {
                        this.§[!y§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§1!v§);
                     }
                     §§goto(addr218);
                  }
                  §§goto(addr170);
               }
               §§goto(addr194);
            }
            §§goto(addr168);
         }
      }
      
      public function §`!P§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:b2Contact = null;
         §§push(param1.§;!F§());
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§;!F§());
         if(!(_loc10_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§[!y§[_loc3_][_loc4_]).§^!r§);
         if(!(_loc10_ && this))
         {
            if(§§pop())
            {
               addr57:
               _loc6_ = _loc5_.§^!r§;
               if(_loc11_ || _loc3_)
               {
                  _loc5_.§^!r§ = _loc6_.§7!'§;
                  if(!_loc10_)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = _loc5_).§<!§);
                     if(!(_loc10_ && param1))
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc9_:* = §§pop();
                     if(_loc11_ || this)
                     {
                        _loc8_.§<!§ = _loc9_;
                     }
                     if(_loc10_ && param1)
                     {
                     }
                     addr127:
                     var _loc7_:Function;
                     if((_loc7_ = _loc5_.createFcn) == null)
                     {
                        return null;
                     }
                     if(!_loc10_)
                     {
                        if(_loc5_.primary)
                        {
                           addr139:
                           (_loc6_ = _loc7_(this.§9"6§)).§+N§(param1,param2);
                           if(!_loc10_)
                           {
                              return _loc6_;
                           }
                        }
                        (_loc6_ = _loc7_(this.§9"6§)).§+N§(param2,param1);
                        return _loc6_;
                     }
                     §§goto(addr139);
                  }
                  _loc6_.§+N§(param1,param2);
                  if(_loc11_ || param2)
                  {
                     return _loc6_;
                  }
               }
            }
            §§goto(addr127);
         }
         §§goto(addr57);
      }
      
      public function §3!0§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && _loc3_))
         {
            §§push(param1.§ !"§.§`!>§);
            if(!_loc8_)
            {
               if(§§pop() > 0)
               {
                  if(_loc9_)
                  {
                     §§push(param1.§9!<§);
                     if(_loc9_)
                     {
                        §§push(§§pop().m_body);
                        if(!_loc8_)
                        {
                           §§push(true);
                           if(_loc9_)
                           {
                              §§pop().SetAwake(§§pop());
                              §§goto(addr56);
                           }
                           §§pop().SetAwake(§§pop());
                           addr56:
                           §§goto(addr58);
                        }
                        §§goto(addr54);
                     }
                     addr58:
                     if(_loc9_ || _loc2_)
                     {
                        addr54:
                        §§push(param1.§%,§.m_body);
                        §§push(true);
                     }
                     §§push(param1.§9!<§.§;!F§());
                     if(!(_loc8_ && _loc3_))
                     {
                        addr66:
                        §§push(int(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     §§push(param1.§%,§.§;!F§());
                     if(_loc9_ || param1)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     var _loc6_:*;
                     var _loc4_:b2ContactRegister;
                     §§push((_loc6_ = _loc4_ = this.§[!y§[_loc2_][_loc3_]).§<!§);
                     if(_loc9_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc7_:* = §§pop();
                     if(!(_loc8_ && this))
                     {
                        _loc6_.§<!§ = _loc7_;
                     }
                     if(_loc9_ || this)
                     {
                        param1.§7!'§ = _loc4_.§^!r§;
                        if(!(_loc8_ && _loc2_))
                        {
                           _loc4_.§^!r§ = param1;
                        }
                     }
                     var _loc5_:Function;
                     (_loc5_ = _loc4_.destroyFcn)(param1,this.§9"6§);
                     return;
                  }
                  §§goto(addr54);
               }
               §§goto(addr56);
            }
            §§goto(addr66);
         }
         §§goto(addr54);
      }
   }
}
