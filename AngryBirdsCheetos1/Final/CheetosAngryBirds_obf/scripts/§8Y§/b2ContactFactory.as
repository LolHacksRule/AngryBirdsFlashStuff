package §8Y§
{
   import §&U§.*;
   import §0!G§.*;
   import §2!F§.*;
   import §9"§.*;
   import §`j§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §?"§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §,]§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§,]§ = param1;
               §§goto(addr60);
            }
         }
         addr60:
         while(true)
         {
            this.§&!4§();
            if(_loc2_ || this)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      b2internal function §%!_§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§?"§[param3][param4].createFcn = param1;
            while(true)
            {
               this.§?"§[param3][param4].destroyFcn = param2;
               addr51:
               if(_loc5_ && param1)
               {
                  continue;
               }
               §§goto(addr20);
            }
         }
         loop1:
         while(true)
         {
            this.§?"§[param3][param4].primary = true;
            loop2:
            while(param3 != param4)
            {
               do
               {
                  this.§?"§[param4][param3].createFcn = param1;
                  loop4:
                  while(true)
                  {
                     this.§?"§[param4][param3].destroyFcn = param2;
                     while(_loc6_)
                     {
                        this.§?"§[param4][param3].primary = false;
                        if(_loc6_)
                        {
                           if(_loc6_ || param1)
                           {
                              break loop4;
                           }
                           continue loop4;
                        }
                     }
                     continue loop2;
                  }
               }
               while(!_loc6_);
               
               continue loop1;
            }
            addr20:
            return;
         }
      }
      
      b2internal function §&!4§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_)
         {
            this.§?"§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§53§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(b2Shape.§53§);
               if(_loc4_)
               {
                  if(§§pop() >= §§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(_loc4_ || _loc1_)
                        {
                           this.§%!_§(b2CircleContact.§>y§,b2CircleContact.§;@§,b2Shape.§&!L§,b2Shape.§&!L§);
                           loop2:
                           while(!_loc3_)
                           {
                              this.§%!_§(b2PolyAndCircleContact.§>y§,b2PolyAndCircleContact.§;@§,b2Shape.§,!K§,b2Shape.§&!L§);
                              while(true)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(_loc3_ && _loc3_)
                                    {
                                       break;
                                    }
                                    this.§%!_§(b2PolygonContact.§>y§,b2PolygonContact.§;@§,b2Shape.§,!K§,b2Shape.§,!K§);
                                    continue;
                                 }
                                 continue loop2;
                              }
                              loop10:
                              while(true)
                              {
                                 addr166:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr168:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          break loop1;
                                       }
                                       §§push(b2Shape.§53§);
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             §§goto(addr173);
                                          }
                                          else
                                          {
                                             this.§?"§[_loc1_][_loc2_] = new b2ContactRegister();
                                          }
                                          §§goto(addr191);
                                       }
                                    }
                                    continue loop10;
                                 }
                              }
                           }
                           continue loop0;
                        }
                        if(!(_loc4_ || _loc3_))
                        {
                           continue;
                        }
                        if(!(_loc3_ && this))
                        {
                           break loop0;
                        }
                        while(true)
                        {
                           §§goto(addr166);
                           break loop1;
                        }
                        addr195:
                     }
                     while(true)
                     {
                        _loc2_ = §§pop();
                        §§goto(addr195);
                     }
                     addr194:
                  }
                  else
                  {
                     this.§?"§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§53§);
                  }
                  §§goto(addr194);
                  §§push(0);
               }
               §§goto(addr172);
            }
            §§goto(addr168);
         }
      }
      
      public function §>y§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:b2Contact = null;
         §§push(param1.§"!M§());
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§"!M§());
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§?"§[_loc3_][_loc4_]).§+!§);
         if(_loc11_ || param2)
         {
            if(§§pop())
            {
               addr52:
               _loc6_ = _loc5_.§+!§;
               if(!_loc10_)
               {
                  _loc5_.§+!§ = _loc6_.§#!&§;
                  if(!_loc10_)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = _loc5_).§-5§);
                     if(_loc11_ || param1)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc9_:* = §§pop();
                     if(!_loc10_)
                     {
                        _loc8_.§-5§ = _loc9_;
                     }
                     if(!_loc10_)
                     {
                        _loc6_.§8j§(param1,param2);
                        if(!_loc11_)
                        {
                           addr102:
                           var _loc7_:Function;
                           if((_loc7_ = _loc5_.createFcn) == null)
                           {
                              return null;
                           }
                           if(!_loc10_)
                           {
                              if(_loc5_.primary)
                              {
                                 addr114:
                                 (_loc6_ = _loc7_(this.§,]§)).§8j§(param1,param2);
                                 if(_loc11_ || param1)
                                 {
                                    return _loc6_;
                                 }
                              }
                              (_loc6_ = _loc7_(this.§,]§)).§8j§(param2,param1);
                              return _loc6_;
                           }
                           §§goto(addr114);
                        }
                     }
                     §§goto(addr102);
                  }
                  return _loc6_;
               }
            }
            §§goto(addr102);
         }
         §§goto(addr52);
      }
      
      public function §;@§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            §§push(param1.§&C§.§!$§);
            if(_loc8_)
            {
               if(§§pop() > 0)
               {
                  if(_loc8_ || _loc2_)
                  {
                     §§push(param1.§1!,§);
                     if(!(_loc9_ && this))
                     {
                        §§push(§§pop().m_body);
                        if(!_loc9_)
                        {
                           §§push(true);
                           if(!_loc9_)
                           {
                              §§pop().SetAwake(§§pop());
                              addr55:
                              if(_loc8_)
                              {
                                 addr53:
                                 §§push(param1.§7+§.m_body);
                                 §§push(true);
                              }
                              §§push(param1.§1!,§.§"!M§());
                              if(!(_loc9_ && _loc2_))
                              {
                                 addr66:
                                 var _loc2_:int = §§pop();
                                 §§push(param1.§7+§.§"!M§());
                                 if(_loc8_ || _loc2_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 var _loc6_:*;
                                 var _loc4_:b2ContactRegister;
                                 §§push((_loc6_ = _loc4_ = this.§?"§[_loc2_][_loc3_]).§-5§);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc7_:* = §§pop();
                                 if(!_loc9_)
                                 {
                                    _loc6_.§-5§ = _loc7_;
                                 }
                                 if(!(_loc9_ && param1))
                                 {
                                    param1.§#!&§ = _loc4_.§+!§;
                                    if(_loc8_ || param1)
                                    {
                                       addr130:
                                       _loc4_.§+!§ = param1;
                                    }
                                    var _loc5_:Function;
                                    (_loc5_ = _loc4_.destroyFcn)(param1,this.§,]§);
                                    return;
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr66);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr55);
                        }
                        §§goto(addr53);
                     }
                  }
               }
               §§goto(addr55);
            }
            §§goto(addr66);
         }
         §§goto(addr55);
      }
   }
}
