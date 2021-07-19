package §69§
{
   import § G§.*;
   import §&!"§.*;
   import §-!C§.*;
   import §9"§.*;
   import §>!@§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §]-§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §@!=§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§@!=§ = param1;
               §§goto(addr60);
            }
         }
         addr60:
         while(true)
         {
            this.§!!M§();
            if(_loc2_)
            {
               if(_loc2_ || param1)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      b2internal function §!e§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§]-§[param3][param4].createFcn = param1;
            while(true)
            {
               this.§]-§[param3][param4].destroyFcn = param2;
            }
            addr137:
         }
         loop1:
         while(true)
         {
            this.§]-§[param3][param4].primary = true;
            loop2:
            while(param3 != param4)
            {
               loop3:
               while(_loc6_)
               {
                  this.§]-§[param4][param3].createFcn = param1;
                  loop4:
                  while(!_loc5_)
                  {
                     this.§]-§[param4][param3].destroyFcn = param2;
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           continue loop1;
                        }
                        continue loop4;
                        addr81:
                        this.§]-§[param4][param3].primary = false;
                        if(!(_loc5_ && this))
                        {
                           if(_loc6_ || param2)
                           {
                              break loop2;
                           }
                           continue loop3;
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
                  continue loop2;
               }
               §§goto(addr137);
            }
            return;
         }
      }
      
      b2internal function §!!M§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(!(_loc4_ && _loc3_))
         {
            this.§]-§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§!!-§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(b2Shape.§!!-§);
               if(!(_loc4_ && this))
               {
                  if(§§pop() >= §§pop())
                  {
                     loop1:
                     while(!(_loc4_ && _loc2_))
                     {
                        this.§!e§(b2CircleContact.§?!@§,b2CircleContact.§4!L§,b2Shape.§9!T§,b2Shape.§9!T§);
                        loop2:
                        while(_loc3_ || _loc3_)
                        {
                           this.§!e§(b2PolyAndCircleContact.§?!@§,b2PolyAndCircleContact.§4!L§,b2Shape.§;!5§,b2Shape.§9!T§);
                           loop3:
                           for(; _loc3_ || this; if(!(_loc3_ || this))
                           {
                              continue;
                           },if(!_loc3_)
                           {
                              continue loop1;
                           },§§goto(addr80))
                           {
                              if(!_loc4_)
                              {
                                 this.§!e§(b2PolygonContact.§?!@§,b2PolygonContact.§4!L§,b2Shape.§;!5§,b2Shape.§;!5§);
                                 loop4:
                                 while(!_loc4_)
                                 {
                                    this.§!e§(b2EdgeAndCircleContact.§?!@§,b2EdgeAndCircleContact.§4!L§,b2Shape.§"?§,b2Shape.§9!T§);
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop4;
                                       addr80:
                                       this.§!e§(b2PolyAndEdgeContact.§?!@§,b2PolyAndEdgeContact.§4!L§,b2Shape.§;!5§,b2Shape.§"?§);
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             return;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 addr172:
                                 _loc1_++;
                                 break loop2;
                              }
                              while(true)
                              {
                                 _loc2_++;
                                 break loop3;
                                 addr179:
                                 this.§]-§[_loc1_][_loc2_] = new b2ContactRegister();
                              }
                           }
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr167:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(b2Shape.§!!-§);
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             §§goto(addr172);
                                          }
                                          else
                                          {
                                             §§goto(addr179);
                                          }
                                       }
                                       addr171:
                                    }
                                    else
                                    {
                                       addr191:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          break loop1;
                                       }
                                       addr191:
                                    }
                                 }
                                 addr199:
                              }
                           }
                        }
                        continue loop0;
                     }
                     while(true)
                     {
                        if(!(_loc4_ && this))
                        {
                           §§goto(addr199);
                        }
                        §§goto(addr191);
                     }
                  }
                  else
                  {
                     this.§]-§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§!!-§);
                  }
                  while(true)
                  {
                     §§goto(addr191);
                  }
               }
               §§goto(addr171);
            }
            §§goto(addr167);
         }
      }
      
      public function §?!@§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Contact = null;
         §§push(param1.§0!$§());
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§0!$§());
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§]-§[_loc3_][_loc4_]).§,-§);
         if(_loc10_ || param2)
         {
            if(§§pop())
            {
               addr51:
               _loc6_ = _loc5_.§,-§;
               if(_loc10_ || param2)
               {
                  _loc5_.§,-§ = _loc6_.§0]§;
                  if(_loc11_ && param2)
                  {
                  }
                  addr121:
                  var _loc7_:Function;
                  if((_loc7_ = _loc5_.createFcn) == null)
                  {
                     return null;
                  }
                  if(_loc10_)
                  {
                     if(_loc5_.primary)
                     {
                        addr133:
                        (_loc6_ = _loc7_(this.§@!=§)).§"o§(param1,param2);
                        if(!_loc11_)
                        {
                           return _loc6_;
                        }
                     }
                     (_loc6_ = _loc7_(this.§@!=§)).§"o§(param2,param1);
                     return _loc6_;
                  }
                  §§goto(addr133);
               }
               var _loc8_:*;
               §§push((_loc8_ = _loc5_).§8!F§);
               if(!(_loc11_ && this))
               {
                  §§push(§§pop() - 1);
               }
               var _loc9_:* = §§pop();
               if(_loc10_)
               {
                  _loc8_.§8!F§ = _loc9_;
               }
               if(!(_loc11_ && param2))
               {
                  _loc6_.§"o§(param1,param2);
                  if(!(_loc11_ && param1))
                  {
                     return _loc6_;
                  }
               }
            }
            §§goto(addr121);
         }
         §§goto(addr51);
      }
      
      public function §4!L§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param1))
         {
            §§push(param1.§'&§.§in §);
            if(!_loc8_)
            {
               if(§§pop() > 0)
               {
                  if(!(_loc8_ && this))
                  {
                     §§push(param1.§<D§);
                     if(_loc9_)
                     {
                        §§push(§§pop().m_body);
                        if(_loc9_)
                        {
                           §§push(true);
                           if(!(_loc8_ && _loc2_))
                           {
                              §§pop().SetAwake(§§pop());
                              addr61:
                              addr63:
                              if(_loc9_)
                              {
                                 addr59:
                                 §§push(param1.§+p§.m_body);
                                 §§push(true);
                              }
                              §§push(param1.§<D§.§0!$§());
                              if(!(_loc8_ && _loc2_))
                              {
                                 addr81:
                                 §§push(int(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              §§push(param1.§+p§.§0!$§());
                              if(_loc9_)
                              {
                                 §§push(int(§§pop()));
                              }
                              var _loc3_:* = §§pop();
                              var _loc6_:*;
                              var _loc4_:b2ContactRegister;
                              §§push((_loc6_ = _loc4_ = this.§]-§[_loc2_][_loc3_]).§8!F§);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc7_:* = §§pop();
                              if(!(_loc8_ && this))
                              {
                                 _loc6_.§8!F§ = _loc7_;
                              }
                              if(_loc9_)
                              {
                                 param1.§0]§ = _loc4_.§,-§;
                                 if(_loc9_)
                                 {
                                    addr126:
                                    _loc4_.§,-§ = param1;
                                 }
                                 var _loc5_:Function;
                                 (_loc5_ = _loc4_.destroyFcn)(param1,this.§@!=§);
                                 return;
                              }
                              §§goto(addr126);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr61);
                        }
                        §§goto(addr59);
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr59);
               }
               §§goto(addr61);
            }
            §§goto(addr81);
         }
         §§goto(addr61);
      }
   }
}
