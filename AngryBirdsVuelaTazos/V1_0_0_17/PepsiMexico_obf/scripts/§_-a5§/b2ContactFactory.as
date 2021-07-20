package §_-a5§
{
   import §_-Iw§.*;
   import §_-Ja§.*;
   import §_-Kt§.*;
   import §_-lh§.*;
   import §_-qg§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §_-g3§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §_-sB§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super();
            if(!_loc3_)
            {
               this.§_-sB§ = param1;
               if(!(_loc3_ && this))
               {
                  addr48:
                  this.§_-MM§();
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      b2internal function §_-n-§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§_-g3§[param3][param4].createFcn = param1;
            this.§_-g3§[param3][param4].destroyFcn = param2;
            if(_loc6_)
            {
               this.§_-g3§[param3][param4].primary = true;
               if(!(_loc5_ && param3))
               {
                  if(param3 != param4)
                  {
                     addr59:
                     this.§_-g3§[param4][param3].createFcn = param1;
                     if(_loc6_)
                     {
                        this.§_-g3§[param4][param3].destroyFcn = param2;
                        this.§_-g3§[param4][param3].primary = false;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr59);
      }
      
      b2internal function §_-MM§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_)
         {
            this.§_-g3§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§_-Hi§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            loop1:
            while(true)
            {
               §§push(b2Shape.§_-Hi§);
               while(§§pop() < §§pop())
               {
                  this.§_-g3§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§_-Hi§);
                  §§push(0);
                  if(_loc3_)
                  {
                     _loc2_ = §§pop();
                     if(_loc3_ || this)
                     {
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && this))
                        {
                           §§push(b2Shape.§_-Hi§);
                           if(_loc4_)
                           {
                              break;
                           }
                           if(§§pop() >= §§pop())
                           {
                              continue loop0;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     continue;
                  }
                  continue loop1;
               }
               this.§_-n-§(b2CircleContact.§_-xO§,b2CircleContact.§_-2A§,b2Shape.§_-n7§,b2Shape.§_-n7§);
               this.§_-n-§(b2PolyAndCircleContact.§_-xO§,b2PolyAndCircleContact.§_-2A§,b2Shape.§_-6T§,b2Shape.§_-n7§);
               if(_loc3_ || _loc1_)
               {
                  this.§_-n-§(b2PolygonContact.§_-xO§,b2PolygonContact.§_-2A§,b2Shape.§_-6T§,b2Shape.§_-6T§);
                  this.§_-n-§(b2EdgeAndCircleContact.§_-xO§,b2EdgeAndCircleContact.§_-2A§,b2Shape.§_-mn§,b2Shape.§_-n7§);
                  if(!_loc4_)
                  {
                     this.§_-n-§(b2PolyAndEdgeContact.§_-xO§,b2PolyAndEdgeContact.§_-2A§,b2Shape.§_-6T§,b2Shape.§_-mn§);
                     addr137:
                  }
                  return;
               }
               §§goto(addr137);
            }
         }
      }
      
      public function §_-xO§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Contact = null;
         §§push(param1.§_-ww§());
         if(_loc10_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§_-ww§());
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§_-g3§[_loc3_][_loc4_]).§_-wu§);
         if(!(_loc11_ && param1))
         {
            if(§§pop())
            {
               addr53:
               _loc6_ = _loc5_.§_-wu§;
               if(_loc10_ || param1)
               {
                  _loc5_.§_-wu§ = _loc6_.§_-NA§;
                  if(_loc11_)
                  {
                  }
                  addr115:
                  var _loc7_:Function;
                  if((_loc7_ = _loc5_.createFcn) != null)
                  {
                     if(_loc10_)
                     {
                        if(_loc5_.primary)
                        {
                           addr127:
                           (_loc6_ = _loc7_(this.§_-sB§)).§_-i0§(param1,param2);
                           if(_loc10_)
                           {
                              return _loc6_;
                           }
                        }
                        (_loc6_ = _loc7_(this.§_-sB§)).§_-i0§(param2,param1);
                        return _loc6_;
                     }
                     §§goto(addr127);
                  }
                  else
                  {
                     return null;
                  }
               }
               var _loc8_:*;
               §§push((_loc8_ = _loc5_).§_-Sa§);
               if(_loc10_ || param1)
               {
                  §§push(§§pop() - 1);
               }
               var _loc9_:* = §§pop();
               if(_loc10_ || param2)
               {
                  _loc8_.§_-Sa§ = _loc9_;
               }
               if(_loc10_)
               {
                  _loc6_.§_-i0§(param1,param2);
                  if(_loc10_ || param1)
                  {
                     return _loc6_;
                  }
               }
            }
            §§goto(addr115);
         }
         §§goto(addr53);
      }
      
      public function §_-2A§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            §§push(param1.§_-Xg§.§_-Tu§);
            if(!_loc8_)
            {
               if(§§pop() > 0)
               {
                  if(_loc9_)
                  {
                     addr25:
                     §§push(param1.§_-NZ§);
                     if(!_loc8_)
                     {
                        §§push(§§pop().m_body);
                        if(!_loc8_)
                        {
                           §§push(true);
                           if(!(_loc8_ && this))
                           {
                              §§pop().SetAwake(§§pop());
                              §§goto(addr48);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr48);
                        }
                        §§goto(addr46);
                     }
                     §§goto(addr48);
                  }
                  §§goto(addr46);
               }
               addr48:
               if(!_loc8_)
               {
                  addr46:
                  §§push(param1.§_-xL§.m_body);
                  §§push(true);
               }
               §§push(param1.§_-NZ§.§_-ww§());
               if(_loc8_ && this)
               {
               }
               §§goto(addr59);
            }
            addr59:
            var _loc2_:int = §§pop();
            §§push(param1.§_-xL§.§_-ww§());
            if(!(_loc8_ && param1))
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc6_:*;
            var _loc4_:b2ContactRegister;
            §§push((_loc6_ = _loc4_ = this.§_-g3§[_loc2_][_loc3_]).§_-Sa§);
            if(_loc9_)
            {
               §§push(§§pop() + 1);
            }
            var _loc7_:* = §§pop();
            if(!(_loc8_ && this))
            {
               _loc6_.§_-Sa§ = _loc7_;
            }
            if(!(_loc8_ && this))
            {
               param1.§_-NA§ = _loc4_.§_-wu§;
               if(_loc9_ || _loc3_)
               {
                  _loc4_.§_-wu§ = param1;
               }
            }
            var _loc5_:Function;
            (_loc5_ = _loc4_.destroyFcn)(param1,this.§_-sB§);
            return;
         }
         §§goto(addr25);
      }
   }
}
