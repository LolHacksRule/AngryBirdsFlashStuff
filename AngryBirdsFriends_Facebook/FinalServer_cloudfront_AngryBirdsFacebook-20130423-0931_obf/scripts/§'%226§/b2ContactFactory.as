package §'"6§
{
   import §!"3§.*;
   import §'"-§.*;
   import §,"[§.*;
   import §6!^§.*;
   import §6"1§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §'D§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §>!`§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super();
            while(true)
            {
               this.§>!`§ = param1;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§+!1§();
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
         §§goto(addr51);
      }
      
      b2internal function §0"S§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§'D§[param3][param4].createFcn = param1;
            loop0:
            while(true)
            {
               this.§'D§[param3][param4].destroyFcn = param2;
               loop1:
               while(true)
               {
                  this.§'D§[param3][param4].primary = true;
                  loop2:
                  while(param3 != param4)
                  {
                     while(_loc5_)
                     {
                        loop6:
                        while(_loc5_ || this)
                        {
                           if(!_loc6_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                           this.§'D§[param4][param3].primary = false;
                           if(!(_loc5_ || param3))
                           {
                              continue;
                           }
                           if(!_loc6_)
                           {
                              break loop2;
                           }
                           addr102:
                           while(true)
                           {
                              this.§'D§[param4][param3].destroyFcn = param2;
                              continue loop6;
                           }
                        }
                     }
                     continue loop0;
                  }
                  return;
               }
            }
         }
         while(true)
         {
            this.§'D§[param4][param3].createFcn = param1;
            §§goto(addr102);
         }
      }
      
      b2internal function §+!1§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         if(!_loc3_)
         {
            this.§'D§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§,!@§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_ || this)
            {
               if(!_loc3_)
               {
                  §§push(b2Shape.§,!@§);
                  if(!_loc3_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop1:
                        while(_loc4_)
                        {
                           this.§0"S§(b2CircleContact.§3!N§,b2CircleContact.§2!s§,b2Shape.§ "&§,b2Shape.§ "&§);
                           loop2:
                           while(!(_loc3_ && this))
                           {
                              this.§0"S§(b2PolyAndCircleContact.§3!N§,b2PolyAndCircleContact.§2!s§,b2Shape.§8x§,b2Shape.§ "&§);
                              loop3:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 if(_loc3_ && _loc3_)
                                 {
                                    break;
                                 }
                                 this.§0"S§(b2PolygonContact.§3!N§,b2PolygonContact.§2!s§,b2Shape.§8x§,b2Shape.§8x§);
                                 loop4:
                                 while(true)
                                 {
                                    this.§0"S§(b2EdgeAndCircleContact.§3!N§,b2EdgeAndCircleContact.§2!s§,b2Shape.§?!7§,b2Shape.§ "&§);
                                    while(_loc4_ || _loc2_)
                                    {
                                       this.§0"S§(b2PolyAndEdgeContact.§3!N§,b2PolyAndEdgeContact.§2!s§,b2Shape.§8x§,b2Shape.§?!7§);
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          continue loop4;
                                       }
                                    }
                                    addr185:
                                    _loc1_++;
                                    break loop3;
                                 }
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       return;
                                    }
                                    addr228:
                                    _loc2_ = 0;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr182:
                                    while(true)
                                    {
                                       §§push(b2Shape.§,!@§);
                                       addr184:
                                       while(true)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             addr202:
                                             this.§'D§[_loc1_][_loc2_] = new b2ContactRegister();
                                             break loop1;
                                          }
                                          §§goto(addr185);
                                       }
                                    }
                                 }
                              }
                              continue loop0;
                           }
                           §§goto(addr180);
                        }
                        while(true)
                        {
                           _loc2_++;
                           §§goto(addr199);
                           §§goto(addr202);
                        }
                     }
                     else
                     {
                        this.§'D§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§,!@§);
                     }
                     §§goto(addr228);
                  }
                  §§goto(addr184);
               }
               §§goto(addr228);
            }
            §§goto(addr182);
         }
      }
      
      public function §3!N§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:b2Contact = null;
         §§push(param1.§>!f§());
         if(_loc11_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§>!f§());
         if(_loc11_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§'D§[_loc3_][_loc4_]).§?"N§);
         if(_loc11_)
         {
            if(§§pop())
            {
               §§goto(addr57);
            }
            §§goto(addr132);
         }
         addr57:
         _loc6_ = _loc5_.§?"N§;
         if(_loc11_ || _loc3_)
         {
            _loc5_.§?"N§ = _loc6_.§?!g§;
            if(_loc10_ && param2)
            {
            }
            addr132:
            var _loc7_:Function;
            if((_loc7_ = _loc5_.createFcn) == null)
            {
               return null;
            }
            if(_loc11_ || this)
            {
               if(_loc5_.primary)
               {
                  (_loc6_ = _loc7_(this.§>!`§)).§<"U§(param1,param2);
                  addr149:
                  if(_loc11_ || this)
                  {
                     return _loc6_;
                  }
               }
               (_loc6_ = _loc7_(this.§>!`§)).§<"U§(param2,param1);
               return _loc6_;
            }
            §§goto(addr149);
         }
         var _loc8_:*;
         §§push((_loc8_ = _loc5_).§"!,§);
         if(!(_loc10_ && this))
         {
            §§push(§§pop() - 1);
         }
         var _loc9_:* = §§pop();
         if(!(_loc10_ && param2))
         {
            _loc8_.§"!,§ = _loc9_;
         }
         if(!(_loc10_ && param1))
         {
            _loc6_.§<"U§(param1,param2);
            if(_loc10_ && param1)
            {
               §§goto(addr132);
            }
         }
         return _loc6_;
      }
      
      public function §2!s§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            §§push(param1.§<!+§.§0,§);
            if(_loc8_)
            {
               if(§§pop() > 0)
               {
                  if(_loc8_ || _loc2_)
                  {
                     addr32:
                     §§push(param1.§4!?§);
                     if(_loc8_ || param1)
                     {
                        §§push(§§pop().m_body);
                        if(_loc8_)
                        {
                           §§push(true);
                           if(_loc8_)
                           {
                              §§pop().SetAwake(§§pop());
                              §§goto(addr55);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr55);
                        }
                        §§goto(addr53);
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr53);
               }
               addr55:
               if(!_loc9_)
               {
                  addr53:
                  §§push(param1.§3!B§.m_body);
                  §§push(true);
               }
               §§push(param1.§4!?§.§>!f§());
               if(_loc9_ && _loc3_)
               {
               }
               §§goto(addr76);
            }
            addr76:
            var _loc2_:int = §§pop();
            §§push(param1.§3!B§.§>!f§());
            if(!_loc9_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc6_:*;
            var _loc4_:b2ContactRegister;
            §§push((_loc6_ = _loc4_ = this.§'D§[_loc2_][_loc3_]).§"!,§);
            if(!(_loc9_ && _loc3_))
            {
               §§push(§§pop() + 1);
            }
            var _loc7_:* = §§pop();
            if(!_loc9_)
            {
               _loc6_.§"!,§ = _loc7_;
            }
            if(!(_loc9_ && _loc3_))
            {
               param1.§?!g§ = _loc4_.§?"N§;
               if(_loc8_ || _loc2_)
               {
                  _loc4_.§?"N§ = param1;
               }
            }
            var _loc5_:Function;
            (_loc5_ = _loc4_.destroyFcn)(param1,this.§>!`§);
            return;
         }
         §§goto(addr32);
      }
   }
}
