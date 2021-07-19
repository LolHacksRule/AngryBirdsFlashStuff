package §-"&§
{
   import §"y§.*;
   import §'F§.*;
   import §3!`§.*;
   import §6Z§.*;
   import §^9§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §4!$§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §]"#§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            while(true)
            {
               this.§]"#§ = param1;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§[!Z§();
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr60);
      }
      
      b2internal function §0!A§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            this.§4!$§[param3][param4].createFcn = param1;
            loop0:
            while(true)
            {
               this.§4!$§[param3][param4].destroyFcn = param2;
               loop1:
               while(true)
               {
                  this.§4!$§[param3][param4].primary = true;
                  while(param3 != param4)
                  {
                     if(!_loc5_)
                     {
                        if(_loc6_)
                        {
                           continue loop1;
                        }
                        continue;
                     }
                     addr93:
                     loop3:
                     while(true)
                     {
                        this.§4!$§[param4][param3].destroyFcn = param2;
                        addr69:
                        while(true)
                        {
                           this.§4!$§[param4][param3].primary = false;
                           if(_loc6_)
                           {
                              if(_loc6_)
                              {
                                 continue loop0;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  addr25:
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      b2internal function §[!Z§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_ || _loc1_)
         {
            this.§4!$§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§@!y§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(b2Shape.§@!y§);
               if(_loc3_ || this)
               {
                  if(§§pop() >= §§pop())
                  {
                     loop1:
                     while(!(_loc4_ && _loc1_))
                     {
                        this.§0!A§(b2CircleContact.§2#§,b2CircleContact.§5f§,b2Shape.§9_§,b2Shape.§9_§);
                        while(true)
                        {
                           this.§0!A§(b2PolyAndCircleContact.§2#§,b2PolyAndCircleContact.§5f§,b2Shape.§2e§,b2Shape.§9_§);
                           loop3:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 continue loop1;
                              }
                              if(!(_loc3_ || _loc1_))
                              {
                                 break;
                                 addr222:
                              }
                              this.§0!A§(b2PolygonContact.§2#§,b2PolygonContact.§5f§,b2Shape.§2e§,b2Shape.§2e§);
                              while(true)
                              {
                                 this.§0!A§(b2EdgeAndCircleContact.§2#§,b2EdgeAndCircleContact.§5f§,b2Shape.§[!Q§,b2Shape.§9_§);
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop3;
                                 }
                                 if(_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 addr183:
                                 while(true)
                                 {
                                    §§goto(addr158);
                                 }
                              }
                           }
                           while(true)
                           {
                              _loc2_ = §§pop();
                              §§goto(addr199);
                           }
                        }
                     }
                     while(true)
                     {
                        _loc2_++;
                        §§goto(addr183);
                        §§goto(addr186);
                     }
                  }
                  else
                  {
                     this.§4!$§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§@!y§);
                  }
                  §§goto(addr222);
               }
               §§goto(addr169);
            }
            §§goto(addr160);
         }
      }
      
      public function §2#§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Contact = null;
         §§push(param1.§<!A§());
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§<!A§());
         if(!(_loc11_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§4!$§[_loc3_][_loc4_]).§[#§);
         if(_loc10_ || _loc3_)
         {
            if(§§pop())
            {
               addr56:
               _loc6_ = _loc5_.§[#§;
               if(!(_loc11_ && param1))
               {
                  _loc5_.§[#§ = _loc6_.§0!>§;
                  if(!_loc11_)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = _loc5_).§9-§);
                     if(!(_loc11_ && param1))
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc9_:* = §§pop();
                     if(_loc10_ || _loc3_)
                     {
                        _loc8_.§9-§ = _loc9_;
                     }
                     if(!(_loc11_ && param2))
                     {
                        addr113:
                        _loc6_.§?!r§(param1,param2);
                        if(!_loc10_)
                        {
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
                                 (_loc6_ = _loc7_(this.§]"#§)).§?!r§(param1,param2);
                                 if(!(_loc11_ && this))
                                 {
                                    return _loc6_;
                                 }
                              }
                              (_loc6_ = _loc7_(this.§]"#§)).§?!r§(param2,param1);
                              return _loc6_;
                           }
                           §§goto(addr133);
                        }
                     }
                     return _loc6_;
                  }
                  §§goto(addr113);
               }
            }
            §§goto(addr121);
         }
         §§goto(addr56);
      }
      
      public function §5f§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            §§push(param1.§=!P§.§26§);
            if(_loc8_)
            {
               if(§§pop() > 0)
               {
                  if(_loc8_)
                  {
                     §§push(param1.§]R§);
                     if(!_loc9_)
                     {
                        §§push(§§pop().m_body);
                        if(_loc8_)
                        {
                           §§push(true);
                           if(_loc8_ || _loc3_)
                           {
                              §§pop().SetAwake(§§pop());
                              addr50:
                              addr52:
                              if(_loc8_)
                              {
                                 addr48:
                                 §§push(param1.§7!&§.m_body);
                                 §§push(true);
                              }
                              §§push(param1.§]R§.§<!A§());
                              if(!(_loc9_ && this))
                              {
                                 addr60:
                                 §§push(int(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              §§push(param1.§7!&§.§<!A§());
                              if(!(_loc9_ && _loc3_))
                              {
                                 §§push(int(§§pop()));
                              }
                              var _loc3_:* = §§pop();
                              var _loc6_:*;
                              var _loc4_:b2ContactRegister;
                              §§push((_loc6_ = _loc4_ = this.§4!$§[_loc2_][_loc3_]).§9-§);
                              if(!_loc9_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc7_:* = §§pop();
                              if(!_loc9_)
                              {
                                 _loc6_.§9-§ = _loc7_;
                              }
                              if(!(_loc9_ && _loc2_))
                              {
                                 param1.§0!>§ = _loc4_.§[#§;
                                 if(_loc8_ || param1)
                                 {
                                    addr125:
                                    _loc4_.§[#§ = param1;
                                 }
                                 var _loc5_:Function;
                                 (_loc5_ = _loc4_.destroyFcn)(param1,this.§]"#§);
                                 return;
                              }
                              §§goto(addr125);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr50);
                        }
                        §§goto(addr48);
                     }
                     §§goto(addr52);
                  }
                  §§goto(addr48);
               }
               §§goto(addr50);
            }
            §§goto(addr60);
         }
         §§goto(addr50);
      }
   }
}
