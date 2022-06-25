package §break§
{
   import §2!+§.*;
   import §7!u§.*;
   import §72§.*;
   import §>H§.*;
   import §`w§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §5@§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §`o§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super();
         }
         do
         {
            this.§`o§ = param1;
            do
            {
               this.§2J§();
            }
            while(!_loc2_);
            
         }
         while(_loc3_ && param1);
         
      }
      
      b2internal function §8]§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            this.§5@§[param3][param4].createFcn = param1;
            while(true)
            {
               this.§5@§[param3][param4].destroyFcn = param2;
               loop1:
               while(!_loc5_)
               {
                  this.§5@§[param3][param4].primary = true;
                  loop2:
                  while(param3 != param4)
                  {
                     while(!_loc5_)
                     {
                        this.§5@§[param4][param3].createFcn = param1;
                        loop5:
                        while(!(_loc5_ && this))
                        {
                           continue loop2;
                           this.§5@§[param4][param3].primary = false;
                           if(_loc5_)
                           {
                              continue;
                           }
                           addr40:
                           if(_loc6_ || param3)
                           {
                              break loop2;
                           }
                           addr96:
                           if(!(_loc6_ || this))
                           {
                              continue loop2;
                           }
                           §§goto(addr81);
                           while(true)
                           {
                              this.§5@§[param4][param3].destroyFcn = param2;
                              continue loop5;
                              §§goto(addr40);
                           }
                        }
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr96);
      }
      
      b2internal function §2J§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_)
         {
            this.§5@§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§@!q§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(b2Shape.§@!q§);
               if(!_loc3_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc4_)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.§8]§(b2CircleContact.§`4§,b2CircleContact.§[M§,b2Shape.§=! §,b2Shape.§=! §);
                           loop1:
                           while(true)
                           {
                              this.§8]§(b2PolyAndCircleContact.§`4§,b2PolyAndCircleContact.§[M§,b2Shape.§6!t§,b2Shape.§=! §);
                              loop2:
                              while(!(_loc3_ && this))
                              {
                                 if(_loc4_)
                                 {
                                    this.§8]§(b2PolygonContact.§`4§,b2PolygonContact.§[M§,b2Shape.§6!t§,b2Shape.§6!t§);
                                    continue loop1;
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       addr161:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(b2Shape.§@!q§);
                                             while(§§pop() < §§pop())
                                             {
                                                this.§5@§[_loc1_][_loc2_] = new b2ContactRegister();
                                                while(!(_loc4_ || this))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                   }
                                                }
                                                _loc2_++;
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§goto(addr194);
                                                   §§goto(addr201);
                                                }
                                                addr194:
                                                addr201:
                                             }
                                             addr166:
                                             _loc1_++;
                                             break loop2;
                                             addr165:
                                          }
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                                 addr65:
                                 if(_loc3_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    this.§8]§(b2PolyAndEdgeContact.§`4§,b2PolyAndEdgeContact.§[M§,b2Shape.§6!t§,b2Shape.§=Q§);
                                    addr79:
                                    if(_loc4_)
                                    {
                                       return;
                                       addr63:
                                    }
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr65);
                                       §§goto(addr79);
                                    }
                                    continue;
                                 }
                                 §§goto(addr170);
                              }
                              continue loop0;
                           }
                           addr158:
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr158);
                  }
                  else
                  {
                     this.§5@§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§@!q§);
                  }
                  §§goto(addr218);
               }
               §§goto(addr165);
            }
            §§goto(addr161);
         }
      }
      
      public function §`4§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Contact = null;
         §§push(param1.§2!r§());
         if(!(_loc11_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§2!r§());
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§5@§[_loc3_][_loc4_]).§&E§);
         if(_loc10_ || _loc3_)
         {
            if(§§pop())
            {
               addr56:
               _loc6_ = _loc5_.§&E§;
               if(_loc10_)
               {
                  _loc5_.§&E§ = _loc6_.§3=§;
                  if(!_loc11_)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = _loc5_).§^!D§);
                     if(_loc10_ || param1)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc9_:* = §§pop();
                     if(_loc10_)
                     {
                        _loc8_.§^!D§ = _loc9_;
                     }
                     if(_loc11_)
                     {
                     }
                     addr111:
                     var _loc7_:Function;
                     if((_loc7_ = _loc5_.createFcn) == null)
                     {
                        return null;
                     }
                     if(_loc10_ || param2)
                     {
                        if(_loc5_.primary)
                        {
                           (_loc6_ = _loc7_(this.§`o§)).§<!e§(param1,param2);
                           addr128:
                           if(!(_loc11_ && param1))
                           {
                              return _loc6_;
                           }
                        }
                        (_loc6_ = _loc7_(this.§`o§)).§<!e§(param2,param1);
                        return _loc6_;
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr111);
               }
               _loc6_.§<!e§(param1,param2);
               if(!(_loc11_ && param2))
               {
                  return _loc6_;
               }
            }
            §§goto(addr111);
         }
         §§goto(addr56);
      }
      
      public function §[M§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param1))
         {
            §§push(param1.§"!m§.§63§);
            if(_loc9_ || _loc2_)
            {
               if(§§pop() > 0)
               {
                  if(_loc9_ || this)
                  {
                     addr43:
                     §§push(param1.§50§);
                     if(!_loc8_)
                     {
                        §§push(§§pop().m_body);
                        if(_loc9_)
                        {
                           §§push(true);
                           if(!(_loc8_ && _loc3_))
                           {
                              §§pop().SetAwake(§§pop());
                              addr66:
                              if(_loc9_)
                              {
                                 addr64:
                                 §§push(param1.§'z§.m_body);
                                 §§push(true);
                              }
                              §§push(param1.§50§.§2!r§());
                              if(_loc9_ || _loc3_)
                              {
                                 addr87:
                                 var _loc2_:int = §§pop();
                                 §§push(param1.§'z§.§2!r§());
                                 if(_loc9_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 var _loc6_:*;
                                 var _loc4_:b2ContactRegister;
                                 §§push((_loc6_ = _loc4_ = this.§5@§[_loc2_][_loc3_]).§^!D§);
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc7_:* = §§pop();
                                 if(_loc9_ || _loc2_)
                                 {
                                    _loc6_.§^!D§ = _loc7_;
                                 }
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    param1.§3=§ = _loc4_.§&E§;
                                    if(!_loc8_)
                                    {
                                       addr151:
                                       _loc4_.§&E§ = param1;
                                    }
                                    var _loc5_:Function;
                                    (_loc5_ = _loc4_.destroyFcn)(param1,this.§`o§);
                                    return;
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr87);
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
               §§goto(addr66);
            }
            §§goto(addr87);
         }
         §§goto(addr43);
      }
   }
}
