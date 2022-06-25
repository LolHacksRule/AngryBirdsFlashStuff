package §7a§
{
   import § D§.*;
   import §&!-§.*;
   import §0!'§.*;
   import §8>§.*;
   import §;u§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §37§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §>#§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            this.§>#§ = param1;
            do
            {
               this.§ %§();
            }
            while(!_loc3_);
            
         }
         while(_loc2_ && _loc2_);
         
      }
      
      b2internal function §;!1§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§37§[param3][param4].createFcn = param1;
            loop0:
            while(true)
            {
               this.§37§[param3][param4].destroyFcn = param2;
               loop1:
               while(true)
               {
                  this.§37§[param3][param4].primary = true;
                  while(true)
                  {
                     if(param3 == param4)
                     {
                        break;
                        addr71:
                     }
                     while(_loc6_)
                     {
                        this.§37§[param4][param3].createFcn = param1;
                        continue loop1;
                     }
                     continue loop0;
                     addr49:
                     if(_loc5_ && param1)
                     {
                        continue;
                     }
                     this.§37§[param4][param3].primary = false;
                     addr66:
                     if(!_loc6_)
                     {
                        while(_loc6_)
                        {
                           §§goto(addr49);
                           §§goto(addr66);
                        }
                        continue loop1;
                        addr47:
                     }
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§goto(addr71);
                  }
                  return;
               }
            }
         }
         while(true)
         {
            this.§37§[param4][param3].destroyFcn = param2;
            §§goto(addr47);
         }
      }
      
      b2internal function § %§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_)
         {
            this.§37§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§">§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(b2Shape.§">§);
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop() >= §§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           this.§;!1§(b2CircleContact.§5=§,b2CircleContact.§"L§,b2Shape.§8&§,b2Shape.§8&§);
                           loop2:
                           for(; !_loc4_; if(_loc4_ && _loc1_)
                           {
                              continue;
                           },if(!_loc3_)
                           {
                              continue loop0;
                           },if(!_loc4_)
                           {
                              return;
                           },§§goto(addr210))
                           {
                              this.§;!1§(b2PolyAndCircleContact.§5=§,b2PolyAndCircleContact.§"L§,b2Shape.§8y§,b2Shape.§8&§);
                              while(true)
                              {
                                 this.§;!1§(b2PolygonContact.§5=§,b2PolygonContact.§"L§,b2Shape.§8y§,b2Shape.§8y§);
                                 continue loop1;
                                 addr85:
                                 if(!(_loc3_ || this))
                                 {
                                    continue;
                                 }
                                 if(_loc3_)
                                 {
                                    this.§;!1§(b2PolyAndEdgeContact.§5=§,b2PolyAndEdgeContact.§"L§,b2Shape.§8y§,b2Shape.§<!o§);
                                    addr94:
                                    if(_loc3_ || _loc1_)
                                    {
                                       continue loop2;
                                    }
                                    addr78:
                                    while(true)
                                    {
                                       if(!(_loc3_ || this))
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr85);
                                       §§goto(addr94);
                                    }
                                 }
                                 addr198:
                                 loop7:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr174:
                                    while(true)
                                    {
                                       if(_loc4_ && this)
                                       {
                                          break loop1;
                                       }
                                       §§push(b2Shape.§">§);
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             break loop2;
                                          }
                                          addr210:
                                          this.§37§[_loc1_][_loc2_] = new b2ContactRegister();
                                          _loc2_++;
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                           _loc1_++;
                           continue loop0;
                        }
                     }
                     while(true)
                     {
                        _loc2_ = §§pop();
                        §§goto(addr214);
                        §§goto(addr174);
                     }
                     addr213:
                  }
                  else
                  {
                     this.§37§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§">§);
                  }
                  §§goto(addr213);
                  §§push(0);
               }
               §§goto(addr183);
            }
            §§goto(addr174);
         }
      }
      
      public function §5=§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Contact = null;
         §§push(param1.§0!@§());
         if(!(_loc11_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§0!@§());
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§37§[_loc3_][_loc4_]).§3!q§);
         if(!(_loc11_ && _loc3_))
         {
            if(§§pop())
            {
               addr56:
               _loc6_ = _loc5_.§3!q§;
               if(_loc10_)
               {
                  _loc5_.§3!q§ = _loc6_.§7n§;
                  if(_loc10_ || param1)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = _loc5_).§@g§);
                     if(!(_loc11_ && _loc3_))
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc9_:* = §§pop();
                     if(_loc10_ || param1)
                     {
                        _loc8_.§@g§ = _loc9_;
                     }
                     if(!_loc10_)
                     {
                     }
                     addr121:
                     var _loc7_:Function;
                     if((_loc7_ = _loc5_.createFcn) == null)
                     {
                        return null;
                     }
                     if(_loc10_ || param2)
                     {
                        if(_loc5_.primary)
                        {
                           (_loc6_ = _loc7_(this.§>#§)).§#[§(param1,param2);
                           addr138:
                           if(_loc10_)
                           {
                              return _loc6_;
                           }
                        }
                        (_loc6_ = _loc7_(this.§>#§)).§#[§(param2,param1);
                        return _loc6_;
                     }
                     §§goto(addr138);
                  }
                  _loc6_.§#[§(param1,param2);
                  if(!(_loc11_ && _loc3_))
                  {
                     return _loc6_;
                  }
               }
            }
            §§goto(addr121);
         }
         §§goto(addr56);
      }
      
      public function §"L§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            §§push(param1.§?K§.§]B§);
            if(!(_loc8_ && param1))
            {
               if(§§pop() > 0)
               {
                  if(!(_loc8_ && this))
                  {
                     addr38:
                     §§push(param1.§48§);
                     if(_loc9_)
                     {
                        §§push(§§pop().m_body);
                        if(!(_loc8_ && param1))
                        {
                           §§push(true);
                           if(_loc9_)
                           {
                              §§pop().SetAwake(§§pop());
                              §§goto(addr76);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr76);
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr64);
               }
               addr76:
               if(!(_loc8_ && param1))
               {
                  addr64:
                  §§push(param1.§[=§.m_body);
                  §§push(true);
               }
               §§push(param1.§48§.§0!@§());
               if(!_loc9_)
               {
               }
               §§goto(addr82);
            }
            addr82:
            var _loc2_:int = §§pop();
            §§push(param1.§[=§.§0!@§());
            if(!_loc8_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc6_:*;
            var _loc4_:b2ContactRegister;
            §§push((_loc6_ = _loc4_ = this.§37§[_loc2_][_loc3_]).§@g§);
            if(_loc9_ || _loc2_)
            {
               §§push(§§pop() + 1);
            }
            var _loc7_:* = §§pop();
            if(_loc9_ || this)
            {
               _loc6_.§@g§ = _loc7_;
            }
            if(!(_loc8_ && _loc2_))
            {
               param1.§7n§ = _loc4_.§3!q§;
               if(_loc9_)
               {
                  _loc4_.§3!q§ = param1;
               }
            }
            var _loc5_:Function;
            (_loc5_ = _loc4_.destroyFcn)(param1,this.§>#§);
            return;
         }
         §§goto(addr38);
      }
   }
}
