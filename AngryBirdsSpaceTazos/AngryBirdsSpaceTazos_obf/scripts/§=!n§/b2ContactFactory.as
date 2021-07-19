package §=!n§
{
   import §'!&§.*;
   import §,Z§.*;
   import §3c§.*;
   import §9t§.*;
   import §@!'§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §!!P§:Vector.<Vector.<b2ContactRegister>>;
      
      private var § B§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
         }
         do
         {
            this.§ B§ = param1;
            do
            {
               this.§^x§();
            }
            while(_loc3_ && _loc3_);
            
         }
         while(_loc3_);
         
      }
      
      b2internal function §""=§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§!!P§[param3][param4].createFcn = param1;
            loop0:
            while(true)
            {
               this.§!!P§[param3][param4].destroyFcn = param2;
               loop1:
               while(true)
               {
                  this.§!!P§[param3][param4].primary = true;
                  loop2:
                  while(param3 != param4)
                  {
                     loop3:
                     while(_loc6_)
                     {
                        this.§!!P§[param4][param3].createFcn = param1;
                        while(true)
                        {
                           this.§!!P§[param4][param3].destroyFcn = param2;
                           loop5:
                           while(!(_loc5_ && param3))
                           {
                              if(_loc6_)
                              {
                                 while(true)
                                 {
                                    this.§!!P§[param4][param3].primary = false;
                                    if(!_loc5_)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(_loc6_ || param3)
                                          {
                                             break loop2;
                                          }
                                          continue loop2;
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    continue loop5;
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                        }
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      b2internal function §^x§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(!_loc3_)
         {
            this.§!!P§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§=",§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_ || _loc3_)
            {
               §§push(b2Shape.§=",§);
               if(_loc4_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!(_loc3_ && this))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.§""=§(b2CircleContact.§]H§,b2CircleContact.§^!a§,b2Shape.§-M§,b2Shape.§-M§);
                           loop3:
                           while(true)
                           {
                              this.§""=§(b2PolyAndCircleContact.§]H§,b2PolyAndCircleContact.§^!a§,b2Shape.§4"+§,b2Shape.§-M§);
                              while(true)
                              {
                                 this.§""=§(b2PolygonContact.§]H§,b2PolygonContact.§^!a§,b2Shape.§4"+§,b2Shape.§4"+§);
                                 loop5:
                                 for(; !(_loc3_ && this); while(true)
                                 {
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue loop5;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc4_ || _loc2_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr178);
                                 },continue loop0)
                                 {
                                    if(_loc4_)
                                    {
                                       this.§""=§(b2EdgeAndCircleContact.§]H§,b2EdgeAndCircleContact.§^!a§,b2Shape.§0"§,b2Shape.§-M§);
                                       continue;
                                    }
                                    addr171:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       addr173:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(b2Shape.§=",§);
                                             while(true)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   this.§!!P§[_loc1_][_loc2_] = new b2ContactRegister();
                                                   break loop5;
                                                }
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                addr223:
                                                while(true)
                                                {
                                                   §§push(0);
                                                }
                                             }
                                             _loc1_++;
                                             continue loop0;
                                             addr177:
                                          }
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             §§goto(addr200);
                                          }
                                       }
                                    }
                                    addr200:
                                 }
                                 addr196:
                                 _loc2_++;
                              }
                           }
                           addr170:
                        }
                        while(true)
                        {
                           §§goto(addr171);
                           §§goto(addr196);
                        }
                     }
                     §§goto(addr170);
                  }
                  else
                  {
                     this.§!!P§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§=",§);
                  }
                  §§goto(addr223);
               }
               §§goto(addr177);
            }
            §§goto(addr173);
         }
      }
      
      public function §]H§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Contact = null;
         §§push(param1.§@!N§());
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§@!N§());
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§!!P§[_loc3_][_loc4_]).§%g§);
         if(!(_loc11_ && param1))
         {
            if(§§pop())
            {
               §§goto(addr51);
            }
            §§goto(addr106);
         }
         addr51:
         _loc6_ = _loc5_.§%g§;
         if(!_loc11_)
         {
            _loc5_.§%g§ = _loc6_.§+!o§;
            if(_loc10_ || param2)
            {
               var _loc8_:*;
               §§push((_loc8_ = _loc5_).§1y§);
               if(_loc10_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc9_:* = §§pop();
               if(!_loc11_)
               {
                  _loc8_.§1y§ = _loc9_;
               }
               if(_loc10_ || param1)
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
                     addr123:
                     (_loc6_ = _loc7_(this.§ B§)).§`"<§(param1,param2);
                     if(_loc10_)
                     {
                        return _loc6_;
                     }
                  }
                  (_loc6_ = _loc7_(this.§ B§)).§`"<§(param2,param1);
                  return _loc6_;
               }
               §§goto(addr123);
            }
            _loc6_.§`"<§(param1,param2);
            if(!_loc10_)
            {
               §§goto(addr106);
            }
         }
         return _loc6_;
      }
      
      public function §^!a§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            §§push(param1.§8!?§.§[!J§);
            if(!(_loc8_ && param1))
            {
               if(§§pop() > 0)
               {
                  if(_loc9_ || this)
                  {
                     §§push(param1.§;"B§);
                     if(!(_loc8_ && _loc2_))
                     {
                        §§push(§§pop().m_body);
                        if(_loc9_)
                        {
                           §§push(true);
                           if(!_loc8_)
                           {
                              §§pop().SetAwake(§§pop());
                              addr61:
                              if(!_loc8_)
                              {
                                 addr59:
                                 §§push(param1.§8q§.m_body);
                                 §§push(true);
                              }
                              §§push(param1.§;"B§.§@!N§());
                              if(!(_loc8_ && _loc3_))
                              {
                                 addr72:
                                 var _loc2_:int = §§pop();
                                 §§push(param1.§8q§.§@!N§());
                                 if(!(_loc8_ && this))
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 var _loc6_:*;
                                 var _loc4_:b2ContactRegister;
                                 §§push((_loc6_ = _loc4_ = this.§!!P§[_loc2_][_loc3_]).§1y§);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc7_:* = §§pop();
                                 if(_loc9_ || _loc2_)
                                 {
                                    _loc6_.§1y§ = _loc7_;
                                 }
                                 if(!(_loc8_ && this))
                                 {
                                    param1.§+!o§ = _loc4_.§%g§;
                                    if(_loc9_ || param1)
                                    {
                                       addr141:
                                       _loc4_.§%g§ = param1;
                                    }
                                    var _loc5_:Function;
                                    (_loc5_ = _loc4_.destroyFcn)(param1,this.§ B§);
                                    return;
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr72);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr61);
                        }
                        §§goto(addr59);
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr59);
               }
               §§goto(addr61);
            }
            §§goto(addr72);
         }
         §§goto(addr59);
      }
   }
}
