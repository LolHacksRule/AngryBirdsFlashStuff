package §!D§
{
   import §#]§.*;
   import §4!!§.*;
   import §48§.*;
   import §55§.*;
   import §<!`§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §!>§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §"!7§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super();
            while(true)
            {
               this.§"!7§ = param1;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§5!r§();
                     if(!(_loc3_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
      
      b2internal function §&!p§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§!>§[param3][param4].createFcn = param1;
         }
         loop0:
         while(true)
         {
            this.§!>§[param3][param4].destroyFcn = param2;
            loop1:
            while(true)
            {
               this.§!>§[param3][param4].primary = true;
               loop2:
               for(; param3 != param4; while(!(_loc5_ && param3))
               {
                  continue loop1;
               })
               {
                  while(true)
                  {
                     this.§!>§[param4][param3].createFcn = param1;
                     continue loop2;
                     addr52:
                     if(_loc6_ || this)
                     {
                        continue loop0;
                     }
                  }
               }
               addr20:
               return;
               if(!_loc5_)
               {
                  this.§!>§[param4][param3].destroyFcn = param2;
                  while(true)
                  {
                     if(_loc6_)
                     {
                        §§goto(addr52);
                     }
                     §§goto(addr89);
                     addr76:
                     this.§!>§[param4][param3].primary = false;
                     if(!(_loc6_ || param1))
                     {
                        continue;
                     }
                     §§goto(addr20);
                  }
                  continue loop0;
               }
            }
         }
      }
      
      b2internal function §5!r§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         if(!_loc3_)
         {
            this.§!>§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§'"A§);
         }
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(!_loc3_)
               {
                  §§push(b2Shape.§'"A§);
                  if(!(_loc3_ && _loc2_))
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop1:
                        for(; _loc4_; if(!(_loc4_ || _loc2_))
                        {
                           continue;
                        },this.§&!p§(b2PolygonContact.§?!Q§,b2PolygonContact.§'S§,b2Shape.§@!#§,b2Shape.§@!#§),while(true)
                        {
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 continue;
                              }
                           }
                           else
                           {
                              §§goto(addr115);
                           }
                        },§§goto(addr163),addr205:)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              if(!_loc3_)
                              {
                                 this.§&!p§(b2CircleContact.§?!Q§,b2CircleContact.§'S§,b2Shape.§'!U§,b2Shape.§'!U§);
                                 loop2:
                                 while(true)
                                 {
                                    this.§&!p§(b2PolyAndCircleContact.§?!Q§,b2PolyAndCircleContact.§'S§,b2Shape.§@!#§,b2Shape.§'!U§);
                                    addr115:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                              else
                              {
                                 _loc2_++;
                                 loop7:
                                 while(true)
                                 {
                                    addr163:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       addr165:
                                       while(true)
                                       {
                                          §§push(b2Shape.§'"A§);
                                          addr167:
                                          while(true)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                this.§!>§[_loc1_][_loc2_] = new b2ContactRegister();
                                                continue loop7;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr201:
                                 addr189:
                              }
                           }
                           _loc1_++;
                           break;
                        }
                        while(_loc3_ && _loc1_)
                        {
                           §§goto(addr189);
                           §§goto(addr168);
                        }
                        continue;
                     }
                     this.§!>§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§'"A§);
                     addr204:
                     _loc2_ = 0;
                     §§goto(addr205);
                  }
                  §§goto(addr167);
               }
               §§goto(addr204);
            }
            §§goto(addr165);
         }
      }
      
      public function §?!Q§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Contact = null;
         §§push(param1.§"r§());
         if(_loc10_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§"r§());
         if(_loc10_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§!>§[_loc3_][_loc4_]).§;§);
         if(_loc10_)
         {
            if(§§pop())
            {
               addr56:
               _loc6_ = _loc5_.§;§;
               if(!(_loc11_ && _loc3_))
               {
                  _loc5_.§;§ = _loc6_.§%"@§;
                  if(!_loc11_)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = _loc5_).§;"0§);
                     if(_loc10_ || param1)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc9_:* = §§pop();
                     if(_loc10_)
                     {
                        _loc8_.§;"0§ = _loc9_;
                     }
                     if(_loc11_)
                     {
                     }
                     addr116:
                     var _loc7_:Function;
                     if((_loc7_ = _loc5_.createFcn) == null)
                     {
                        return null;
                     }
                     if(!_loc11_)
                     {
                        if(_loc5_.primary)
                        {
                           (_loc6_ = _loc7_(this.§"!7§)).§<t§(param1,param2);
                           addr128:
                           if(!(_loc11_ && param2))
                           {
                              return _loc6_;
                           }
                        }
                        (_loc6_ = _loc7_(this.§"!7§)).§<t§(param2,param1);
                        return _loc6_;
                     }
                     §§goto(addr128);
                  }
               }
               _loc6_.§<t§(param1,param2);
               if(!(_loc11_ && this))
               {
                  return _loc6_;
               }
            }
            §§goto(addr116);
         }
         §§goto(addr56);
      }
      
      public function §'S§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param1.§@! §.§^M§);
            if(_loc9_ || _loc3_)
            {
               if(§§pop() > 0)
               {
                  if(!(_loc8_ && param1))
                  {
                     addr38:
                     §§push(param1.§3t§);
                     if(!(_loc8_ && this))
                     {
                        §§push(§§pop().m_body);
                        if(!(_loc8_ && this))
                        {
                           §§push(true);
                           if(!_loc8_)
                           {
                              §§pop().SetAwake(§§pop());
                              addr66:
                              addr78:
                              if(_loc9_)
                              {
                                 addr64:
                                 §§push(param1.§?!p§.m_body);
                                 §§push(true);
                              }
                              §§push(param1.§3t§.§"r§());
                              if(_loc9_)
                              {
                                 addr81:
                                 §§push(int(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              §§push(param1.§?!p§.§"r§());
                              if(!_loc8_)
                              {
                                 §§push(int(§§pop()));
                              }
                              var _loc3_:* = §§pop();
                              var _loc6_:*;
                              var _loc4_:b2ContactRegister;
                              §§push((_loc6_ = _loc4_ = this.§!>§[_loc2_][_loc3_]).§;"0§);
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc7_:* = §§pop();
                              if(_loc9_ || _loc2_)
                              {
                                 _loc6_.§;"0§ = _loc7_;
                              }
                              if(!(_loc8_ && param1))
                              {
                                 param1.§%"@§ = _loc4_.§;§;
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    addr151:
                                    _loc4_.§;§ = param1;
                                 }
                                 var _loc5_:Function;
                                 (_loc5_ = _loc4_.destroyFcn)(param1,this.§"!7§);
                                 return;
                              }
                              §§goto(addr151);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr66);
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr64);
               }
               §§goto(addr66);
            }
            §§goto(addr81);
         }
         §§goto(addr38);
      }
   }
}
