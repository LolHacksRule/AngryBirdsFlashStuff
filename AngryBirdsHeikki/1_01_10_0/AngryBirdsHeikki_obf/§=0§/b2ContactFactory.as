package §=0§
{
   import §!4§.*;
   import §3!R§.*;
   import §6A§.*;
   import §7q§.*;
   import §^P§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §9!H§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §[!<§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
            while(true)
            {
               this.§[!<§ = param1;
               loop1:
               while(!(_loc2_ && _loc3_))
               {
                  while(true)
                  {
                     this.§3!O§();
                     if(!(_loc2_ && param1))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr71);
      }
      
      b2internal function §2!Q§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§9!H§[param3][param4].createFcn = param1;
            while(true)
            {
               this.§9!H§[param3][param4].destroyFcn = param2;
            }
            addr136:
         }
         while(true)
         {
            this.§9!H§[param3][param4].primary = true;
            while(!(_loc6_ && param2))
            {
               if(param3 == param4)
               {
                  return;
               }
               addr19:
               for(; _loc5_ || param2; this.§9!H§[param4][param3].createFcn = param1,do
               {
                  this.§9!H§[param4][param3].destroyFcn = param2;
                  do
                  {
                     this.§9!H§[param4][param3].primary = false;
                  }
                  while(!(_loc5_ || param3));
                  
               }
               while(_loc6_);
               ,if(_loc6_ && param3)
               {
                  continue;
               },§§goto(addr19))
               {
                  if(!_loc6_)
                  {
                     continue;
                  }
                  §§goto(addr136);
               }
            }
         }
      }
      
      b2internal function §3!O§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(!_loc4_)
         {
            this.§9!H§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§"b§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_ || this)
            {
               §§push(b2Shape.§"b§);
               if(!_loc4_)
               {
                  if(§§pop() >= §§pop())
                  {
                     loop1:
                     do
                     {
                        this.§2!Q§(b2CircleContact.§;O§,b2CircleContact.§;!^§,b2Shape.§,!#§,b2Shape.§,!#§);
                        loop2:
                        while(!_loc4_)
                        {
                           this.§2!Q§(b2PolyAndCircleContact.§;O§,b2PolyAndCircleContact.§;!^§,b2Shape.§=!'§,b2Shape.§,!#§);
                           do
                           {
                              this.§2!Q§(b2PolygonContact.§;O§,b2PolygonContact.§;!^§,b2Shape.§=!'§,b2Shape.§=!'§);
                              loop4:
                              while(true)
                              {
                                 if(_loc3_ || _loc1_)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          this.§2!Q§(b2EdgeAndCircleContact.§;O§,b2EdgeAndCircleContact.§;!^§,b2Shape.§%m§,b2Shape.§,!#§);
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   while(!_loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr188:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                         }
                                                      }
                                                   }
                                                   _loc1_++;
                                                }
                                                else
                                                {
                                                   addr167:
                                                }
                                                continue;
                                                break;
                                             }
                                             continue loop4;
                                          }
                                          continue loop0;
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          addr160:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             addr162:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push(b2Shape.§"b§);
                                                   while(true)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         addr176:
                                                         this.§9!H§[_loc1_][_loc2_] = new b2ContactRegister();
                                                         break loop2;
                                                      }
                                                      §§goto(addr167);
                                                   }
                                                   addr166:
                                                }
                                                §§goto(addr188);
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 continue loop2;
                              }
                              while(true)
                              {
                                 §§goto(addr160);
                              }
                           }
                           while(!(_loc3_ || this));
                           
                           continue loop1;
                        }
                        while(true)
                        {
                           _loc2_++;
                           §§goto(addr173);
                           §§goto(addr176);
                        }
                     }
                     while(!(_loc3_ || this));
                     
                     if(!(_loc4_ && _loc2_))
                     {
                        break;
                     }
                     continue;
                  }
                  this.§9!H§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§"b§);
                  §§goto(addr212);
               }
               §§goto(addr166);
            }
            §§goto(addr162);
         }
      }
      
      public function §;O§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Contact = null;
         §§push(param1.§0i§());
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§0i§());
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§9!H§[_loc3_][_loc4_]).§<!"§);
         if(!_loc11_)
         {
            if(§§pop())
            {
               addr46:
               _loc6_ = _loc5_.§<!"§;
               if(_loc10_)
               {
                  _loc5_.§<!"§ = _loc6_.§>W§;
                  if(_loc10_ || _loc3_)
                  {
                     addr61:
                     var _loc8_:*;
                     §§push((_loc8_ = _loc5_).§"F§);
                     if(!(_loc11_ && this))
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc9_:* = §§pop();
                     if(_loc10_)
                     {
                        _loc8_.§"F§ = _loc9_;
                     }
                     if(_loc10_ || this)
                     {
                        _loc6_.§;!C§(param1,param2);
                        if(_loc11_ && this)
                        {
                           addr111:
                           var _loc7_:Function;
                           if((_loc7_ = _loc5_.createFcn) == null)
                           {
                              return null;
                           }
                           if(!(_loc11_ && _loc3_))
                           {
                              if(_loc5_.primary)
                              {
                                 addr128:
                                 (_loc6_ = _loc7_(this.§[!<§)).§;!C§(param1,param2);
                                 if(_loc10_ || param2)
                                 {
                                    return _loc6_;
                                 }
                              }
                              (_loc6_ = _loc7_(this.§[!<§)).§;!C§(param2,param1);
                              return _loc6_;
                           }
                           §§goto(addr128);
                        }
                     }
                     §§goto(addr111);
                  }
                  return _loc6_;
               }
               §§goto(addr61);
            }
            §§goto(addr111);
         }
         §§goto(addr46);
      }
      
      public function §;!^§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            §§push(param1.§1`§.§;6§);
            if(!_loc9_)
            {
               if(§§pop() > 0)
               {
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push(param1.§&4§);
                     if(!(_loc9_ && _loc2_))
                     {
                        §§push(§§pop().m_body);
                        if(!_loc9_)
                        {
                           §§push(true);
                           if(_loc8_ || _loc3_)
                           {
                              §§pop().SetAwake(§§pop());
                              addr60:
                              if(_loc8_)
                              {
                                 addr58:
                                 §§push(param1.§;,§.m_body);
                                 §§push(true);
                              }
                              §§push(param1.§&4§.§0i§());
                              if(!(_loc9_ && this))
                              {
                                 addr81:
                                 var _loc2_:int = §§pop();
                                 §§push(param1.§;,§.§0i§());
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 var _loc6_:*;
                                 var _loc4_:b2ContactRegister;
                                 §§push((_loc6_ = _loc4_ = this.§9!H§[_loc2_][_loc3_]).§"F§);
                                 if(_loc8_ || _loc3_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc7_:* = §§pop();
                                 if(!_loc9_)
                                 {
                                    _loc6_.§"F§ = _loc7_;
                                 }
                                 if(_loc8_)
                                 {
                                    param1.§>W§ = _loc4_.§<!"§;
                                    if(!(_loc9_ && this))
                                    {
                                       addr135:
                                       _loc4_.§<!"§ = param1;
                                    }
                                    var _loc5_:Function;
                                    (_loc5_ = _loc4_.destroyFcn)(param1,this.§[!<§);
                                    return;
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr81);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr60);
                        }
                        §§goto(addr58);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr58);
               }
               §§goto(addr60);
            }
            §§goto(addr81);
         }
         §§goto(addr60);
      }
   }
}
