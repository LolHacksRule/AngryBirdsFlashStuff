package §8[§
{
   import §+#$§.*;
   import §3"5§.*;
   import §4!$§.*;
   import §5"i§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §1!3§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §+!z§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§+!z§ = param1;
               while(!_loc3_)
               {
                  this.§4#O§();
                  if(_loc2_ || this)
                  {
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      b2internal function §29§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            this.§1!3§[param3][param4].createFcn = param1;
            while(true)
            {
               this.§1!3§[param3][param4].destroyFcn = param2;
               addr123:
               while(true)
               {
                  this.§1!3§[param3][param4].primary = true;
                  addr45:
                  if(!(_loc5_ && param1))
                  {
                     §§goto(addr25);
                  }
               }
            }
            addr142:
         }
         loop2:
         for(; param3 != param4; while(true)
         {
            if(_loc5_ && param2)
            {
               continue loop2;
            }
            if(_loc6_)
            {
               this.§1!3§[param4][param3].destroyFcn = param2;
               §§goto(addr72);
            }
            else
            {
               §§goto(addr142);
            }
         },§§goto(addr123))
         {
            while(true)
            {
               this.§1!3§[param4][param3].createFcn = param1;
               continue loop2;
               addr74:
               if(!(_loc6_ || param2))
               {
                  continue;
               }
               this.§1!3§[param4][param3].primary = false;
               addr81:
               if(_loc5_ && this)
               {
                  while(!_loc5_)
                  {
                     §§goto(addr74);
                     §§goto(addr81);
                  }
                  continue loop2;
                  addr72:
               }
               §§goto(addr45);
            }
         }
         addr25:
      }
      
      b2internal function §4#O§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_ || this)
         {
            this.§1!3§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§`"#§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_ || this)
            {
               §§push(b2Shape.§`"#§);
               if(_loc4_ || _loc2_)
               {
                  if(§§pop() >= §§pop())
                  {
                     loop1:
                     while(_loc4_ || _loc1_)
                     {
                        this.§29§(b2CircleContact.§=!S§,b2CircleContact.§;!"§,b2Shape.§;!T§,b2Shape.§;!T§);
                        loop2:
                        while(!(_loc3_ && this))
                        {
                           if(!_loc3_)
                           {
                              this.§29§(b2PolyAndCircleContact.§=!S§,b2PolyAndCircleContact.§;!"§,b2Shape.§ !7§,b2Shape.§;!T§);
                              loop3:
                              while(true)
                              {
                                 this.§29§(b2PolygonContact.§=!S§,b2PolygonContact.§;!"§,b2Shape.§ !7§,b2Shape.§ !7§);
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       this.§29§(b2EdgeAndCircleContact.§=!S§,b2EdgeAndCircleContact.§;!"§,b2Shape.§5"l§,b2Shape.§;!T§);
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         continue;
                                                      }
                                                      addr223:
                                                      §§push(0);
                                                      loop8:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         addr200:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            addr175:
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§push(b2Shape.§`"#§);
                                                               while(true)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     break loop2;
                                                                  }
                                                                  this.§1!3§[_loc1_][_loc2_] = new b2ContactRegister();
                                                                  break loop5;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   break;
                                                }
                                                continue loop1;
                                             }
                                             continue loop2;
                                          }
                                          continue loop3;
                                       }
                                       _loc2_++;
                                       break loop1;
                                       addr196:
                                    }
                                    break;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       return;
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr200);
                        }
                        _loc1_++;
                        continue loop0;
                     }
                     while(true)
                     {
                        §§goto(addr200);
                        §§goto(addr196);
                     }
                  }
                  else
                  {
                     this.§1!3§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§`"#§);
                  }
                  §§goto(addr223);
               }
               §§goto(addr179);
            }
            §§goto(addr175);
         }
      }
      
      public function §=!S§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Contact = null;
         §§push(param1.§8! §());
         if(_loc10_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§8! §());
         if(!(_loc11_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§1!3§[_loc3_][_loc4_]).§"=§);
         if(_loc10_ || _loc3_)
         {
            if(§§pop())
            {
               addr61:
               _loc6_ = _loc5_.§"=§;
               if(_loc10_ || this)
               {
                  _loc5_.§"=§ = _loc6_.§!"!§;
                  if(!_loc11_)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = _loc5_).§4!T§);
                     if(!_loc11_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc9_:* = §§pop();
                     if(_loc10_)
                     {
                        _loc8_.§4!T§ = _loc9_;
                     }
                     if(!_loc11_)
                     {
                        _loc6_.§'B§(param1,param2);
                        if(_loc11_ && this)
                        {
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
                                 addr128:
                                 (_loc6_ = _loc7_(this.§+!z§)).§'B§(param1,param2);
                                 if(!_loc11_)
                                 {
                                    return _loc6_;
                                 }
                              }
                              (_loc6_ = _loc7_(this.§+!z§)).§'B§(param2,param1);
                              return _loc6_;
                           }
                           §§goto(addr128);
                        }
                     }
                  }
                  return _loc6_;
               }
            }
            §§goto(addr116);
         }
         §§goto(addr61);
      }
      
      public function §;!"§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && this))
         {
            §§push(param1.§!#Y§.§6#;§);
            if(_loc9_)
            {
               if(§§pop() > 0)
               {
                  if(!_loc8_)
                  {
                     addr33:
                     §§push(param1.§8"Q§);
                     if(_loc9_)
                     {
                        §§push(§§pop().m_body);
                        if(_loc9_)
                        {
                           §§push(true);
                           if(_loc9_)
                           {
                              §§pop().SetAwake(§§pop());
                              addr56:
                              addr58:
                              if(!(_loc8_ && param1))
                              {
                                 addr54:
                                 §§push(param1.§?# §.m_body);
                                 §§push(true);
                              }
                              §§push(param1.§8"Q§.§8! §());
                              if(_loc9_ || _loc2_)
                              {
                                 addr66:
                                 §§push(int(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              §§push(param1.§?# §.§8! §());
                              if(_loc9_)
                              {
                                 §§push(int(§§pop()));
                              }
                              var _loc3_:* = §§pop();
                              var _loc6_:*;
                              var _loc4_:b2ContactRegister;
                              §§push((_loc6_ = _loc4_ = this.§1!3§[_loc2_][_loc3_]).§4!T§);
                              if(_loc9_ || _loc3_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc7_:* = §§pop();
                              if(_loc9_ || param1)
                              {
                                 _loc6_.§4!T§ = _loc7_;
                              }
                              if(!_loc8_)
                              {
                                 param1.§!"!§ = _loc4_.§"=§;
                                 if(_loc9_ || _loc3_)
                                 {
                                    addr131:
                                    _loc4_.§"=§ = param1;
                                 }
                                 var _loc5_:Function;
                                 (_loc5_ = _loc4_.destroyFcn)(param1,this.§+!z§);
                                 return;
                              }
                              §§goto(addr131);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr56);
                        }
                        §§goto(addr54);
                     }
                     §§goto(addr58);
                  }
                  §§goto(addr54);
               }
               §§goto(addr56);
            }
            §§goto(addr66);
         }
         §§goto(addr33);
      }
   }
}
