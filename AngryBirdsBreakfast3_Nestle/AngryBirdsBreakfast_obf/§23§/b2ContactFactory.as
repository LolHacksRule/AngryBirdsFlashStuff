package §23§
{
   import §!§.*;
   import §'!_§.*;
   import §0"!§.*;
   import §=!!§.*;
   import §@!E§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §#!=§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §;!b§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super();
            while(true)
            {
               this.§;!b§ = param1;
               while(_loc2_)
               {
                  this.§`D§();
                  if(_loc2_ || param1)
                  {
                     return;
                     addr48:
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      b2internal function §2!a§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            this.§#!=§[param3][param4].createFcn = param1;
            loop0:
            while(true)
            {
               this.§#!=§[param3][param4].destroyFcn = param2;
               loop1:
               while(true)
               {
                  this.§#!=§[param3][param4].primary = true;
                  loop2:
                  for(; param3 != param4; while(_loc5_ || this)
                  {
                     if(!_loc5_)
                     {
                        continue loop1;
                     }
                  })
                  {
                     while(true)
                     {
                        this.§#!=§[param4][param3].createFcn = param1;
                        continue loop2;
                        addr41:
                        if(!(_loc6_ && param2))
                        {
                           if(!_loc6_)
                           {
                              break loop2;
                           }
                           continue loop0;
                        }
                     }
                  }
                  return;
               }
            }
         }
         while(true)
         {
            this.§#!=§[param4][param3].destroyFcn = param2;
            do
            {
               this.§#!=§[param4][param3].primary = false;
            }
            while(!_loc5_);
            
            if(_loc5_)
            {
               §§goto(addr41);
            }
            §§goto(addr83);
         }
      }
      
      b2internal function §`D§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_)
         {
            this.§#!=§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§"a§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(b2Shape.§"a§);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() >= §§pop())
                  {
                     loop1:
                     while(!_loc4_)
                     {
                        if(_loc3_)
                        {
                           this.§2!a§(b2CircleContact.§'!D§,b2CircleContact.§7!d§,b2Shape.§+!B§,b2Shape.§+!B§);
                           loop2:
                           while(true)
                           {
                              this.§2!a§(b2PolyAndCircleContact.§'!D§,b2PolyAndCircleContact.§7!d§,b2Shape.§3!;§,b2Shape.§+!B§);
                              loop3:
                              while(true)
                              {
                                 this.§2!a§(b2PolygonContact.§'!D§,b2PolygonContact.§7!d§,b2Shape.§3!;§,b2Shape.§3!;§);
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop3;
                                    addr116:
                                    this.§2!a§(b2EdgeAndCircleContact.§'!D§,b2EdgeAndCircleContact.§7!d§,b2Shape.§ 8§,b2Shape.§+!B§);
                                    do
                                    {
                                       this.§2!a§(b2PolyAndEdgeContact.§'!D§,b2PolyAndEdgeContact.§7!d§,b2Shape.§3!;§,b2Shape.§ 8§);
                                    }
                                    while(!(_loc3_ || _loc3_));
                                    
                                    if(_loc4_ && _loc1_)
                                    {
                                       continue;
                                    }
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          return;
                                       }
                                       addr217:
                                       addr165:
                                       if(_loc3_)
                                       {
                                          _loc1_++;
                                          addr168:
                                          if(_loc3_ || _loc3_)
                                          {
                                             continue loop0;
                                          }
                                          loop10:
                                          while(true)
                                          {
                                             addr158:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                addr160:
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(b2Shape.§"a§);
                                                      while(true)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            this.§#!=§[_loc1_][_loc2_] = new b2ContactRegister();
                                                            _loc2_++;
                                                            addr190:
                                                            break loop1;
                                                            addr190:
                                                         }
                                                         §§goto(addr165);
                                                      }
                                                      continue loop0;
                                                      addr164:
                                                   }
                                                   addr193:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      continue loop10;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr193);
                                       }
                                    }
                                    §§goto(addr168);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        §§goto(addr190);
                     }
                     while(true)
                     {
                        §§goto(addr158);
                        §§goto(addr190);
                     }
                  }
                  else
                  {
                     this.§#!=§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§"a§);
                  }
                  §§goto(addr217);
               }
               §§goto(addr164);
            }
            §§goto(addr160);
         }
      }
      
      public function §'!D§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Contact = null;
         §§push(param1.§4!v§());
         if(_loc10_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§4!v§());
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§#!=§[_loc3_][_loc4_]).§'!<§);
         if(!_loc11_)
         {
            if(§§pop())
            {
               addr51:
               _loc6_ = _loc5_.§'!<§;
               if(!(_loc11_ && _loc3_))
               {
                  _loc5_.§'!<§ = _loc6_.§6!c§;
                  if(!_loc11_)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = _loc5_).§[!7§);
                     if(_loc10_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc9_:* = §§pop();
                     if(_loc10_ || param1)
                     {
                        _loc8_.§[!7§ = _loc9_;
                     }
                     if(!(_loc11_ && _loc3_))
                     {
                        _loc6_.§[!2§(param1,param2);
                        if(_loc11_)
                        {
                           addr111:
                           var _loc7_:Function;
                           if((_loc7_ = _loc5_.createFcn) == null)
                           {
                              return null;
                           }
                           if(!_loc11_)
                           {
                              if(_loc5_.primary)
                              {
                                 addr123:
                                 (_loc6_ = _loc7_(this.§;!b§)).§[!2§(param1,param2);
                                 if(!(_loc11_ && param1))
                                 {
                                    return _loc6_;
                                 }
                              }
                              (_loc6_ = _loc7_(this.§;!b§)).§[!2§(param2,param1);
                              return _loc6_;
                           }
                           §§goto(addr123);
                        }
                     }
                     return _loc6_;
                  }
               }
            }
            §§goto(addr111);
         }
         §§goto(addr51);
      }
      
      public function §7!d§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && _loc3_))
         {
            §§push(param1.§=!u§.§4!5§);
            if(_loc9_ || _loc2_)
            {
               if(§§pop() > 0)
               {
                  if(_loc9_ || _loc2_)
                  {
                     §§push(param1.§2!k§);
                     if(!(_loc8_ && _loc2_))
                     {
                        §§push(§§pop().m_body);
                        if(!(_loc8_ && _loc3_))
                        {
                           §§push(true);
                           if(_loc9_)
                           {
                              §§pop().SetAwake(§§pop());
                              addr76:
                              addr78:
                              if(_loc9_ || param1)
                              {
                                 addr74:
                                 §§push(param1.§4!l§.m_body);
                                 §§push(true);
                              }
                              §§push(param1.§2!k§.§4!v§());
                              if(!(_loc8_ && _loc3_))
                              {
                                 addr96:
                                 §§push(int(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              §§push(param1.§4!l§.§4!v§());
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§push(int(§§pop()));
                              }
                              var _loc3_:* = §§pop();
                              var _loc6_:*;
                              var _loc4_:b2ContactRegister;
                              §§push((_loc6_ = _loc4_ = this.§#!=§[_loc2_][_loc3_]).§[!7§);
                              if(_loc9_ || _loc2_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc7_:* = §§pop();
                              if(!_loc8_)
                              {
                                 _loc6_.§[!7§ = _loc7_;
                              }
                              if(_loc9_ || _loc3_)
                              {
                                 param1.§6!c§ = _loc4_.§'!<§;
                                 if(!(_loc8_ && this))
                                 {
                                    addr156:
                                    _loc4_.§'!<§ = param1;
                                 }
                                 var _loc5_:Function;
                                 (_loc5_ = _loc4_.destroyFcn)(param1,this.§;!b§);
                                 return;
                              }
                              §§goto(addr156);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr76);
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr74);
               }
               §§goto(addr76);
            }
            §§goto(addr96);
         }
         §§goto(addr74);
      }
   }
}
