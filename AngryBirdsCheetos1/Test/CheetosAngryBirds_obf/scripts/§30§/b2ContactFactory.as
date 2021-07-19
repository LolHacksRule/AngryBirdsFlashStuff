package §30§
{
   import § o§.*;
   import §"0§.*;
   import §-r§.*;
   import §6!H§.*;
   import §]!S§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §]i§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §`!Y§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§`!Y§ = param1;
               while(_loc2_ || _loc3_)
               {
                  this.§]!-§();
                  if(_loc3_)
                  {
                     continue;
                  }
                  return;
                  addr38:
               }
            }
         }
         §§goto(addr38);
      }
      
      b2internal function §'u§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            this.§]i§[param3][param4].createFcn = param1;
            loop0:
            while(true)
            {
               this.§]i§[param3][param4].destroyFcn = param2;
               while(true)
               {
                  this.§]i§[param3][param4].primary = true;
                  while(param3 != param4)
                  {
                     while(!_loc5_)
                     {
                     }
                  }
                  addr25:
                  addr86:
                  return;
                  loop5:
                  while(!(_loc5_ && param1))
                  {
                     this.§]i§[param4][param3].destroyFcn = param2;
                     while(_loc6_)
                     {
                        if(_loc6_)
                        {
                           this.§]i§[param4][param3].primary = false;
                           if(!(_loc6_ || param1))
                           {
                              continue;
                           }
                           if(_loc5_)
                           {
                              continue loop5;
                           }
                           §§goto(addr25);
                           continue;
                        }
                        continue loop0;
                     }
                     §§goto(addr76);
                  }
               }
            }
         }
         while(true)
         {
            this.§]i§[param4][param3].createFcn = param1;
            §§goto(addr86);
         }
      }
      
      b2internal function §]!-§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(!(_loc3_ && _loc2_))
         {
            this.§]i§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§2!6§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               if(_loc4_ || _loc2_)
               {
                  §§push(b2Shape.§2!6§);
                  if(!_loc3_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop1:
                        while(_loc4_)
                        {
                           this.§'u§(b2CircleContact.§#!M§,b2CircleContact.§[!$§,b2Shape.§,-§,b2Shape.§,-§);
                           while(!_loc3_)
                           {
                              this.§'u§(b2PolyAndCircleContact.§#!M§,b2PolyAndCircleContact.§[!$§,b2Shape.§"![§,b2Shape.§,-§);
                              while(!_loc3_)
                              {
                                 this.§'u§(b2PolygonContact.§#!M§,b2PolygonContact.§[!$§,b2Shape.§"![§,b2Shape.§"![§);
                                 loop4:
                                 while(_loc4_)
                                 {
                                    this.§'u§(b2EdgeAndCircleContact.§#!M§,b2EdgeAndCircleContact.§[!$§,b2Shape.§#!D§,b2Shape.§,-§);
                                    while(true)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop4;
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       _loc1_++;
                                       addr179:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             break loop8;
                                          }
                                          addr223:
                                          while(true)
                                          {
                                             §§push(0);
                                             addr199:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                addr200:
                                                while(true)
                                                {
                                                   addr173:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      addr175:
                                                      while(true)
                                                      {
                                                         §§push(b2Shape.§2!6§);
                                                         addr177:
                                                         while(true)
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               this.§]i§[_loc1_][_loc2_] = new b2ContactRegister();
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                                 if(_loc3_ && this)
                                 {
                                    continue;
                                 }
                                 if(_loc4_ || this)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       break loop0;
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr179);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr173);
                              break loop1;
                           }
                        }
                        while(true)
                        {
                           _loc2_++;
                           §§goto(addr184);
                        }
                     }
                     else
                     {
                        this.§]i§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§2!6§);
                     }
                     §§goto(addr223);
                  }
                  §§goto(addr177);
               }
               §§goto(addr199);
            }
            §§goto(addr175);
         }
      }
      
      public function §#!M§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:b2Contact = null;
         §§push(param1.§7!_§());
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§7!_§());
         if(!(_loc10_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§]i§[_loc3_][_loc4_]).§"!7§);
         if(_loc11_ || _loc3_)
         {
            if(§§pop())
            {
               §§goto(addr57);
            }
            §§goto(addr112);
         }
         addr57:
         _loc6_ = _loc5_.§"!7§;
         if(!_loc10_)
         {
            _loc5_.§"!7§ = _loc6_.§-![§;
            if(!_loc10_)
            {
               var _loc8_:*;
               §§push((_loc8_ = _loc5_).§7!L§);
               if(!_loc10_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc9_:* = §§pop();
               if(_loc11_ || _loc3_)
               {
                  _loc8_.§7!L§ = _loc9_;
               }
               if(!_loc11_)
               {
               }
               §§goto(addr110);
            }
            _loc6_.§2'§(param1,param2);
            if(_loc10_ && param2)
            {
               addr112:
               var _loc7_:Function;
               if((_loc7_ = _loc5_.createFcn) == null)
               {
                  return null;
               }
               if(!_loc10_)
               {
                  if(_loc5_.primary)
                  {
                     addr124:
                     (_loc6_ = _loc7_(this.§`!Y§)).§2'§(param1,param2);
                     if(!(_loc10_ && this))
                     {
                        return _loc6_;
                     }
                  }
                  (_loc6_ = _loc7_(this.§`!Y§)).§2'§(param2,param1);
                  return _loc6_;
               }
               §§goto(addr124);
            }
         }
         addr110:
         return _loc6_;
      }
      
      public function §[!$§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param1.§-0§.§break§);
            if(!(_loc8_ && _loc2_))
            {
               if(§§pop() > 0)
               {
                  if(!(_loc8_ && _loc2_))
                  {
                     addr38:
                     §§push(param1.§45§);
                     if(!(_loc8_ && param1))
                     {
                        §§push(§§pop().m_body);
                        if(!(_loc8_ && this))
                        {
                           §§push(true);
                           if(!(_loc8_ && _loc2_))
                           {
                              §§pop().SetAwake(§§pop());
                              addr81:
                              if(!_loc8_)
                              {
                                 addr79:
                                 §§push(param1.§?G§.m_body);
                                 §§push(true);
                              }
                              §§push(param1.§45§.§7!_§());
                              if(_loc9_)
                              {
                                 addr87:
                                 var _loc2_:int = §§pop();
                                 §§push(param1.§?G§.§7!_§());
                                 if(!_loc8_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 var _loc6_:*;
                                 var _loc4_:b2ContactRegister;
                                 §§push((_loc6_ = _loc4_ = this.§]i§[_loc2_][_loc3_]).§7!L§);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc7_:* = §§pop();
                                 if(!_loc8_)
                                 {
                                    _loc6_.§7!L§ = _loc7_;
                                 }
                                 if(_loc9_ || this)
                                 {
                                    param1.§-![§ = _loc4_.§"!7§;
                                    if(_loc9_)
                                    {
                                       addr131:
                                       _loc4_.§"!7§ = param1;
                                    }
                                    var _loc5_:Function;
                                    (_loc5_ = _loc4_.destroyFcn)(param1,this.§`!Y§);
                                    return;
                                 }
                                 §§goto(addr131);
                              }
                              §§goto(addr87);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr81);
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr79);
               }
               §§goto(addr81);
            }
            §§goto(addr87);
         }
         §§goto(addr38);
      }
   }
}
