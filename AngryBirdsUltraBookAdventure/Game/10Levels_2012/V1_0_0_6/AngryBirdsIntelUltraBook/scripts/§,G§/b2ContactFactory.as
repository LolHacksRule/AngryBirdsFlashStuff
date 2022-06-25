package §,G§
{
   import §#V§.*;
   import §,C§.*;
   import §3!m§.*;
   import §8w§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §]>§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §7!a§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super();
         }
         while(true)
         {
            this.§7!a§ = param1;
            while(_loc2_ || _loc3_)
            {
               this.§3!N§();
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      b2internal function §7!R§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            this.§]>§[param3][param4].createFcn = param1;
            while(true)
            {
               this.§]>§[param3][param4].destroyFcn = param2;
               loop1:
               while(true)
               {
                  this.§]>§[param3][param4].primary = true;
                  loop2:
                  while(param3 != param4)
                  {
                     while(_loc6_)
                     {
                        continue loop1;
                        addr52:
                        if(!(_loc5_ && param2))
                        {
                           this.§]>§[param4][param3].primary = false;
                           addr69:
                           if(_loc5_)
                           {
                              while(!_loc5_)
                              {
                                 §§goto(addr52);
                                 §§goto(addr69);
                              }
                              while(true)
                              {
                                 this.§]>§[param4][param3].destroyFcn = param2;
                                 §§goto(addr50);
                              }
                              addr50:
                              addr103:
                           }
                           break loop2;
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr103);
      }
      
      b2internal function §3!N§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(!(_loc4_ && _loc2_))
         {
            this.§]>§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§6§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc4_ && this))
            {
               if(!(_loc4_ && _loc1_))
               {
                  §§push(b2Shape.§6§);
                  if(_loc3_ || this)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop1:
                        while(_loc3_ || _loc2_)
                        {
                           this.§7!R§(b2CircleContact.§1#§,b2CircleContact.§,!W§,b2Shape.§1"§,b2Shape.§1"§);
                           loop2:
                           while(_loc3_ || this)
                           {
                              if(_loc3_)
                              {
                                 this.§7!R§(b2PolyAndCircleContact.§1#§,b2PolyAndCircleContact.§,!W§,b2Shape.§+!N§,b2Shape.§1"§);
                                 loop3:
                                 while(_loc3_)
                                 {
                                    this.§7!R§(b2PolygonContact.§1#§,b2PolygonContact.§,!W§,b2Shape.§+!N§,b2Shape.§+!N§);
                                    do
                                    {
                                       this.§7!R§(b2EdgeAndCircleContact.§1#§,b2EdgeAndCircleContact.§,!W§,b2Shape.§`!<§,b2Shape.§1"§);
                                       while(true)
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                          _loc2_++;
                                          break loop1;
                                       }
                                       continue loop3;
                                    }
                                    while(_loc4_);
                                    
                                    if(!_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          return;
                                       }
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                                 while(!(_loc3_ || _loc2_))
                                 {
                                 }
                                 _loc1_++;
                                 break;
                                 addr177:
                              }
                              else
                              {
                                 addr213:
                                 _loc2_ = 0;
                                 addr227:
                              }
                              while(true)
                              {
                                 addr172:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr174:
                                    while(true)
                                    {
                                       §§push(b2Shape.§6§);
                                       addr176:
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             §§goto(addr177);
                                          }
                                          else
                                          {
                                             this.§]>§[_loc1_][_loc2_] = new b2ContactRegister();
                                             §§goto(addr210);
                                          }
                                       }
                                    }
                                    break loop1;
                                 }
                              }
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§goto(addr172);
                        }
                     }
                     else
                     {
                        this.§]>§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§6§);
                     }
                     §§goto(addr227);
                  }
                  §§goto(addr176);
               }
               §§goto(addr213);
            }
            §§goto(addr174);
         }
      }
      
      public function §1#§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Contact = null;
         §§push(param1.§'!_§());
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§'!_§());
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§]>§[_loc3_][_loc4_]).§8]§);
         if(_loc10_)
         {
            if(§§pop())
            {
               addr46:
               _loc6_ = _loc5_.§8]§;
               if(!_loc11_)
               {
                  _loc5_.§8]§ = _loc6_.§@o§;
                  if(_loc10_)
                  {
                     addr56:
                     var _loc8_:*;
                     §§push((_loc8_ = _loc5_).§`w§);
                     if(_loc10_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc9_:* = §§pop();
                     if(_loc10_ || this)
                     {
                        _loc8_.§`w§ = _loc9_;
                     }
                     if(_loc10_ || param2)
                     {
                     }
                     addr106:
                     var _loc7_:Function;
                     if((_loc7_ = _loc5_.createFcn) == null)
                     {
                        return null;
                     }
                     if(!(_loc11_ && _loc3_))
                     {
                        if(_loc5_.primary)
                        {
                           (_loc6_ = _loc7_(this.§7!a§)).§@!b§(param1,param2);
                           addr123:
                           if(_loc10_)
                           {
                              return _loc6_;
                           }
                        }
                        (_loc6_ = _loc7_(this.§7!a§)).§@!b§(param2,param1);
                        return _loc6_;
                     }
                     §§goto(addr123);
                  }
                  _loc6_.§@!b§(param1,param2);
                  if(_loc10_ || this)
                  {
                     return _loc6_;
                  }
                  §§goto(addr106);
               }
            }
            §§goto(addr56);
         }
         §§goto(addr46);
      }
      
      public function §,!W§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && _loc3_))
         {
            §§push(param1.§2?§.§2V§);
            if(!_loc8_)
            {
               if(§§pop() > 0)
               {
                  if(!(_loc8_ && this))
                  {
                     addr38:
                     §§push(param1.§3t§);
                     if(_loc9_ || param1)
                     {
                        §§push(§§pop().m_body);
                        if(!(_loc8_ && param1))
                        {
                           §§push(true);
                           if(!_loc8_)
                           {
                              §§pop().SetAwake(§§pop());
                              §§goto(addr66);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr66);
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr64);
               }
               addr66:
               if(!_loc8_)
               {
                  addr64:
                  §§push(param1.§[i§.m_body);
                  §§push(true);
               }
               §§push(param1.§3t§.§'!_§());
               if(_loc9_ || param1)
               {
               }
               §§goto(addr87);
            }
            addr87:
            var _loc2_:int = §§pop();
            §§push(param1.§[i§.§'!_§());
            if(!(_loc8_ && _loc2_))
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc6_:*;
            var _loc4_:b2ContactRegister;
            §§push((_loc6_ = _loc4_ = this.§]>§[_loc2_][_loc3_]).§`w§);
            if(!(_loc8_ && _loc3_))
            {
               §§push(§§pop() + 1);
            }
            var _loc7_:* = §§pop();
            if(_loc9_ || this)
            {
               _loc6_.§`w§ = _loc7_;
            }
            if(_loc9_)
            {
               param1.§@o§ = _loc4_.§8]§;
               if(_loc9_)
               {
                  _loc4_.§8]§ = param1;
               }
            }
            var _loc5_:Function;
            (_loc5_ = _loc4_.destroyFcn)(param1,this.§7!a§);
            return;
         }
         §§goto(addr38);
      }
   }
}
