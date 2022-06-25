package §_-0DM§
{
   import §_-03n§.*;
   import §_-5§.*;
   import §_-Yp§.*;
   import §_-aU§.*;
   import §_-gE§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §_-9j§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §_-qZ§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§_-qZ§ = param1;
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§_-W-§();
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
         §§goto(addr45);
      }
      
      b2internal function §_-o3§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§_-9j§[param3][param4].createFcn = param1;
            while(true)
            {
               this.§_-9j§[param3][param4].destroyFcn = param2;
               while(!_loc5_)
               {
                  this.§_-9j§[param3][param4].primary = true;
                  loop2:
                  while(!(_loc5_ && this))
                  {
                     if(param3 != param4)
                     {
                        loop3:
                        while(true)
                        {
                           this.§_-9j§[param4][param3].createFcn = param1;
                           loop4:
                           while(true)
                           {
                              this.§_-9j§[param4][param3].destroyFcn = param2;
                              addr71:
                              while(true)
                              {
                                 this.§_-9j§[param4][param3].primary = false;
                                 if(_loc5_ && param3)
                                 {
                                    continue;
                                 }
                                 if(!(_loc6_ || param1))
                                 {
                                    continue loop4;
                                 }
                                 if(!_loc6_)
                                 {
                                    continue loop3;
                                 }
                                 if(!_loc6_)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      b2internal function §_-W-§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(!(_loc4_ && _loc3_))
         {
            this.§_-9j§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§_-ZC§);
         }
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               if(!_loc4_)
               {
                  §§push(b2Shape.§_-ZC§);
                  if(!_loc4_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop1:
                        for(; !_loc4_; if(!(_loc3_ || _loc2_))
                        {
                           continue;
                        },if(!(_loc4_ && _loc1_))
                        {
                           this.§_-o3§(b2EdgeAndCircleContact.§_-xb§,b2EdgeAndCircleContact.§_-01§,b2Shape.§_-Ee§,b2Shape.§_-rv§);
                           §§goto(addr72);
                        })
                        {
                           this.§_-o3§(b2CircleContact.§_-xb§,b2CircleContact.§_-01§,b2Shape.§_-rv§,b2Shape.§_-rv§);
                           while(true)
                           {
                              this.§_-o3§(b2PolyAndCircleContact.§_-xb§,b2PolyAndCircleContact.§_-01§,b2Shape.§_-04L§,b2Shape.§_-rv§);
                              loop3:
                              while(!(_loc4_ && this))
                              {
                                 this.§_-o3§(b2PolygonContact.§_-xb§,b2PolygonContact.§_-01§,b2Shape.§_-04L§,b2Shape.§_-04L§);
                                 loop4:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop3;
                                    addr72:
                                    while(true)
                                    {
                                       if(_loc3_ || _loc1_)
                                       {
                                          if(!(_loc3_ || this))
                                          {
                                             break;
                                          }
                                          if(!(_loc3_ || _loc1_))
                                          {
                                             _loc2_++;
                                             break;
                                          }
                                          addr215:
                                          continue;
                                       }
                                       continue loop4;
                                    }
                                    addr175:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       addr177:
                                       loop9:
                                       while(true)
                                       {
                                          §§push(b2Shape.§_-ZC§);
                                          addr179:
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      _loc1_++;
                                                      break loop1;
                                                   }
                                                   break loop4;
                                                }
                                                break loop1;
                                             }
                                             this.§_-9j§[_loc1_][_loc2_] = new b2ContactRegister();
                                             §§goto(addr215);
                                             continue loop9;
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr175);
                                 }
                              }
                           }
                        }
                        continue;
                     }
                     this.§_-9j§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§_-ZC§);
                     addr218:
                     _loc2_ = 0;
                     §§goto(addr219);
                  }
                  §§goto(addr179);
               }
               §§goto(addr218);
            }
            §§goto(addr177);
         }
      }
      
      public function §_-xb§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Contact = null;
         §§push(param1.§_-oF§());
         if(!(_loc11_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§_-oF§());
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§_-9j§[_loc3_][_loc4_]).§_-Gm§);
         if(_loc10_)
         {
            if(§§pop())
            {
               addr51:
               _loc6_ = _loc5_.§_-Gm§;
               if(!(_loc11_ && this))
               {
                  _loc5_.§_-Gm§ = _loc6_.§_-oz§;
                  if(!_loc11_)
                  {
                     addr66:
                     var _loc8_:*;
                     §§push((_loc8_ = _loc5_).§_-bx§);
                     if(_loc10_ || _loc3_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc9_:* = §§pop();
                     if(!_loc11_)
                     {
                        _loc8_.§_-bx§ = _loc9_;
                     }
                     if(!(_loc11_ && param1))
                     {
                        _loc6_.§_-8Y§(param1,param2);
                        if(!_loc10_)
                        {
                           addr111:
                           var _loc7_:Function;
                           if((_loc7_ = _loc5_.createFcn) == null)
                           {
                              return null;
                           }
                           if(!(_loc11_ && param2))
                           {
                              if(_loc5_.primary)
                              {
                                 (_loc6_ = _loc7_(this.§_-qZ§)).§_-8Y§(param1,param2);
                                 addr128:
                                 if(!_loc11_)
                                 {
                                    return _loc6_;
                                 }
                              }
                              (_loc6_ = _loc7_(this.§_-qZ§)).§_-8Y§(param2,param1);
                              return _loc6_;
                           }
                           §§goto(addr128);
                        }
                     }
                     §§goto(addr111);
                  }
                  return _loc6_;
               }
               §§goto(addr66);
            }
            §§goto(addr111);
         }
         §§goto(addr51);
      }
      
      public function §_-01§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param1.§_-07u§.§_-XO§);
            if(!_loc8_)
            {
               if(§§pop() > 0)
               {
                  if(_loc9_)
                  {
                     §§push(param1.§_-f-§);
                     if(!(_loc8_ && param1))
                     {
                        §§push(§§pop().m_body);
                        if(!_loc8_)
                        {
                           §§push(true);
                           if(_loc9_ || param1)
                           {
                              §§pop().SetAwake(§§pop());
                              §§goto(addr61);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr61);
                        }
                        §§goto(addr59);
                     }
                  }
                  §§goto(addr61);
               }
               addr61:
               if(_loc9_ || this)
               {
                  addr59:
                  §§push(param1.§_-N-§.m_body);
                  §§push(true);
               }
               §§push(param1.§_-f-§.§_-oF§());
               if(_loc8_)
               {
               }
               §§goto(addr77);
            }
            addr77:
            var _loc2_:int = §§pop();
            §§push(param1.§_-N-§.§_-oF§());
            if(_loc9_ || param1)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc6_:*;
            var _loc4_:b2ContactRegister;
            §§push((_loc6_ = _loc4_ = this.§_-9j§[_loc2_][_loc3_]).§_-bx§);
            if(_loc9_)
            {
               §§push(§§pop() + 1);
            }
            var _loc7_:* = §§pop();
            if(!_loc8_)
            {
               _loc6_.§_-bx§ = _loc7_;
            }
            if(_loc9_ || param1)
            {
               param1.§_-oz§ = _loc4_.§_-Gm§;
               if(!(_loc8_ && _loc2_))
               {
                  _loc4_.§_-Gm§ = param1;
               }
            }
            var _loc5_:Function;
            (_loc5_ = _loc4_.destroyFcn)(param1,this.§_-qZ§);
            return;
         }
         §§goto(addr61);
      }
   }
}
