package §;T§
{
   import §"!9§.*;
   import §+S§.*;
   import §2"=§.*;
   import §5!o§.*;
   import §=o§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §=!B§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §=!6§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
         }
         while(true)
         {
            this.§=!6§ = param1;
            while(!(_loc3_ && param1))
            {
               this.§#2§();
               if(!(_loc3_ && _loc3_))
               {
                  return;
               }
            }
         }
      }
      
      b2internal function § "0§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§=!B§[param3][param4].createFcn = param1;
            loop0:
            while(true)
            {
               this.§=!B§[param3][param4].destroyFcn = param2;
               loop1:
               while(true)
               {
                  this.§=!B§[param3][param4].primary = true;
                  loop2:
                  while(true)
                  {
                     if(_loc6_)
                     {
                        if(param3 == param4)
                        {
                           break;
                        }
                        do
                        {
                           this.§=!B§[param4][param3].createFcn = param1;
                           loop4:
                           while(true)
                           {
                              this.§=!B§[param4][param3].destroyFcn = param2;
                              while(_loc6_)
                              {
                                 this.§=!B§[param4][param3].primary = false;
                                 if(_loc6_)
                                 {
                                    if(!(_loc5_ && param1))
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
                        
                        continue loop0;
                     }
                     continue loop1;
                  }
                  §§goto(addr20);
               }
            }
         }
         addr20:
      }
      
      b2internal function §#2§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(!(_loc3_ && _loc3_))
         {
            this.§=!B§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§;!Q§);
         }
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc1_))
            {
               if(_loc4_)
               {
                  §§push(b2Shape.§;!Q§);
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        while(_loc4_)
                        {
                           this.§ "0§(b2CircleContact.§-!x§,b2CircleContact.§;&§,b2Shape.§[x§,b2Shape.§[x§);
                           loop2:
                           while(true)
                           {
                              this.§ "0§(b2PolyAndCircleContact.§-!x§,b2PolyAndCircleContact.§;&§,b2Shape.§4A§,b2Shape.§[x§);
                              addr124:
                              while(true)
                              {
                                 this.§ "0§(b2PolygonContact.§-!x§,b2PolygonContact.§;&§,b2Shape.§4A§,b2Shape.§4A§);
                                 continue loop2;
                              }
                           }
                        }
                        while(!(_loc4_ || _loc1_))
                        {
                        }
                        continue;
                     }
                     this.§=!B§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§;!Q§);
                     while(true)
                     {
                        §§push(0);
                        addr199:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           §§goto(addr200);
                        }
                     }
                  }
                  §§goto(addr163);
               }
               §§goto(addr199);
            }
            §§goto(addr161);
         }
      }
      
      public function §-!x§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Contact = null;
         §§push(param1.§+!O§());
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§+!O§());
         if(!(_loc11_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§=!B§[_loc3_][_loc4_]).§,e§);
         if(!_loc11_)
         {
            if(§§pop())
            {
               addr51:
               _loc6_ = _loc5_.§,e§;
               if(!_loc11_)
               {
                  _loc5_.§,e§ = _loc6_.§>""§;
                  if(_loc10_ || this)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = _loc5_).§7!y§);
                     if(_loc10_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc9_:* = §§pop();
                     if(_loc10_ || param1)
                     {
                        _loc8_.§7!y§ = _loc9_;
                     }
                     if(!(_loc11_ && this))
                     {
                        addr103:
                        _loc6_.§%i§(param1,param2);
                        if(_loc11_ && param1)
                        {
                           addr116:
                           var _loc7_:Function;
                           if((_loc7_ = _loc5_.createFcn) == null)
                           {
                              return null;
                           }
                           if(_loc10_)
                           {
                              if(_loc5_.primary)
                              {
                                 addr128:
                                 (_loc6_ = _loc7_(this.§=!6§)).§%i§(param1,param2);
                                 if(!_loc11_)
                                 {
                                    return _loc6_;
                                 }
                              }
                              (_loc6_ = _loc7_(this.§=!6§)).§%i§(param2,param1);
                              return _loc6_;
                           }
                           §§goto(addr128);
                        }
                     }
                     §§goto(addr116);
                  }
                  return _loc6_;
               }
               §§goto(addr103);
            }
            §§goto(addr116);
         }
         §§goto(addr51);
      }
      
      public function §;&§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param1.§=&§.§<!c§);
            if(!(_loc8_ && _loc2_))
            {
               if(§§pop() > 0)
               {
                  if(!_loc8_)
                  {
                     §§push(param1.§5"$§);
                     if(!_loc8_)
                     {
                        §§push(§§pop().m_body);
                        if(_loc9_)
                        {
                           §§push(true);
                           if(_loc9_)
                           {
                              §§pop().SetAwake(§§pop());
                              §§goto(addr56);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr56);
                        }
                        §§goto(addr54);
                     }
                  }
                  §§goto(addr56);
               }
               addr56:
               if(!(_loc8_ && this))
               {
                  addr54:
                  §§push(param1.dynamic.m_body);
                  §§push(true);
               }
               §§push(param1.§5"$§.§+!O§());
               if(_loc9_ || this)
               {
               }
               §§goto(addr67);
            }
            addr67:
            var _loc2_:int = §§pop();
            §§push(param1.dynamic.§+!O§());
            if(_loc9_ || param1)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc6_:*;
            var _loc4_:b2ContactRegister;
            §§push((_loc6_ = _loc4_ = this.§=!B§[_loc2_][_loc3_]).§7!y§);
            if(_loc9_ || _loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc7_:* = §§pop();
            if(!_loc8_)
            {
               _loc6_.§7!y§ = _loc7_;
            }
            if(_loc9_ || param1)
            {
               param1.§>""§ = _loc4_.§,e§;
               if(!(_loc8_ && param1))
               {
                  _loc4_.§,e§ = param1;
               }
            }
            var _loc5_:Function;
            (_loc5_ = _loc4_.destroyFcn)(param1,this.§=!6§);
            return;
         }
         §§goto(addr56);
      }
   }
}
