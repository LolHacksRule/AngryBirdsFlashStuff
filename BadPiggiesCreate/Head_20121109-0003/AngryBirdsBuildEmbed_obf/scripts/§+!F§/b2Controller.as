package §+!F§
{
   import § !t§.b2Body;
   import § !t§.b2DebugDraw;
   import § !t§.b2TimeStep;
   import § !t§.b2World;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var § <§:b2Controller;
      
      b2internal var §?!D§:b2Controller;
      
      protected var §-!2§:b2ControllerEdge;
      
      protected var §[b§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function §&E§(param1:b2TimeStep) : void
      {
      }
      
      public function §"!,§(param1:b2DebugDraw) : void
      {
      }
      
      public function §2r§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(!(_loc6_ && _loc2_))
         {
            _loc2_.§?!G§ = this;
            _loc2_.§`!s§ = param1;
            if(_loc5_ || _loc2_)
            {
               _loc2_.§for § = this.§-!2§;
               if(!_loc6_)
               {
                  _loc2_.§%!n§ = null;
                  if(_loc5_ || _loc3_)
                  {
                     this.§-!2§ = _loc2_;
                     §§push(_loc2_.§for §);
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           addr92:
                           if(_loc5_ || param1)
                           {
                              addr71:
                              §§push(_loc2_.§for §);
                           }
                           var _loc3_:*;
                           §§push((_loc3_ = this).§[b§);
                           if(_loc5_ || param1)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc4_:* = §§pop();
                           if(_loc5_)
                           {
                              _loc3_.§[b§ = _loc4_;
                           }
                           _loc2_.§7!c§ = param1.§`7§;
                           addr116:
                           _loc2_.§7!g§ = null;
                           param1.§`7§ = _loc2_;
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(_loc2_.§7!c§);
                              if(_loc5_ || _loc3_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr158:
                                       _loc2_.§7!c§.§7!g§ = _loc2_;
                                       if(_loc5_ || this)
                                       {
                                       }
                                    }
                                    §§goto(addr182);
                                 }
                                 §§push((_loc3_ = param1).§[w§);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 _loc4_ = §§pop();
                                 if(!_loc6_)
                                 {
                                    _loc3_.§[w§ = _loc4_;
                                 }
                                 addr182:
                                 return;
                              }
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr92);
                     }
                     §§pop().§%!n§ = _loc2_;
                     if(_loc6_ && this)
                     {
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr116);
               }
               §§goto(addr92);
            }
            §§goto(addr71);
         }
         §§goto(addr158);
      }
      
      public function §<![§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = param1.§`7§;
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     §§pop();
                     if(_loc5_)
                     {
                        §§push(_loc2_.§?!G§ == this);
                        if(!(_loc6_ && this))
                        {
                           addr51:
                           if(!§§pop())
                           {
                              continue;
                           }
                           §§push(_loc2_.§%!n§);
                           if(!(_loc6_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 addr64:
                                 _loc2_.§%!n§.§for § = _loc2_.§for §;
                              }
                              §§push(_loc2_.§for §);
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       _loc2_.§for §.§%!n§ = _loc2_.§%!n§;
                                       addr89:
                                       §§push(_loc2_.§7!c§);
                                       if(_loc5_)
                                       {
                                          addr99:
                                          if(§§pop())
                                          {
                                             §§push(_loc2_.§7!c§);
                                             break;
                                          }
                                          §§push(_loc2_.§7!g§);
                                          if(_loc5_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   addr108:
                                                   _loc2_.§7!g§.§7!c§ = _loc2_.§7!c§;
                                                }
                                             }
                                             if(this.§-!2§ == _loc2_)
                                             {
                                                if(_loc5_ || _loc2_)
                                                {
                                                   this.§-!2§ = _loc2_.§for §;
                                                }
                                                §§goto(addr183);
                                             }
                                             if(param1.§`7§ == _loc2_)
                                             {
                                                param1.§`7§ = _loc2_.§7!c§;
                                                if(!_loc5_)
                                                {
                                                }
                                                §§goto(addr183);
                                             }
                                             var _loc3_:*;
                                             §§push((_loc3_ = param1).§[w§);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             var _loc4_:* = §§pop();
                                             if(!_loc6_)
                                             {
                                                _loc3_.§[w§ = _loc4_;
                                             }
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                addr168:
                                                §§push((_loc3_ = this).§[b§);
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                _loc4_ = §§pop();
                                                if(_loc5_)
                                                {
                                                   _loc3_.§[b§ = _loc4_;
                                                }
                                             }
                                             §§goto(addr183);
                                          }
                                          §§goto(addr108);
                                       }
                                       break;
                                       addr76:
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr89);
                              }
                              §§goto(addr76);
                           }
                           §§goto(addr64);
                        }
                        §§goto(addr51);
                     }
                     addr183:
                     return;
                  }
               }
            }
            §§goto(addr51);
         }
         §§pop().§7!g§ = _loc2_.§7!g§;
         §§goto(addr99);
      }
      
      public function §6N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§-!2§)
         {
            this.§<![§(this.§-!2§.§`!s§);
            if(_loc2_ && _loc1_)
            {
               break;
            }
         }
      }
      
      public function §4!j§() : b2Controller
      {
         return this.§ <§;
      }
      
      public function §[j§() : b2World
      {
         return this.m_world;
      }
      
      public function §?!L§() : b2ControllerEdge
      {
         return this.§-!2§;
      }
   }
}
