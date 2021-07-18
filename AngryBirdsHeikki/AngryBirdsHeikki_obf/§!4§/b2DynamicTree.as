package §!4§
{
   import §6A§.*;
   import §^P§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §!^§:b2DynamicTreeNode;
      
      private var §76§:b2DynamicTreeNode;
      
      private var §5!C§:uint;
      
      private var §"I§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               this.§!^§ = null;
               loop1:
               while(true)
               {
                  this.§76§ = null;
                  while(true)
                  {
                     this.§5!C§ = 0;
                     continue loop1;
                     addr35:
                     if(!(_loc1_ && _loc1_))
                     {
                        if(_loc2_)
                        {
                           return;
                           addr54:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §+!#§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§6h§();
         if(_loc6_)
         {
            §§push(b2Settings.b2_aabbExtension);
            loop0:
            while(true)
            {
               §§push(Number(§§pop()));
               loop1:
               while(true)
               {
                  _loc4_ = §§pop();
                  while(true)
                  {
                     §§push(b2Settings.b2_aabbExtension);
                     if(!(_loc7_ && param2))
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§push(Number(§§pop()));
                     }
                     if(_loc6_)
                     {
                        _loc5_ = §§pop();
                        while(_loc6_ || param2)
                        {
                           addr107:
                           if(!_loc6_)
                           {
                              continue;
                           }
                           _loc3_.§<!B§ = param2;
                           loop21:
                           while(!(_loc7_ && this))
                           {
                              this.§5!<§(_loc3_);
                              if(_loc7_ && param2)
                              {
                                 continue;
                              }
                              if(!_loc7_)
                              {
                                 return _loc3_;
                              }
                              loop13:
                              while(!(_loc7_ && this))
                              {
                                 §§push(_loc3_.aabb);
                                 loop14:
                                 for(; !(_loc7_ && param2); while(true)
                                 {
                                    §§push(_loc3_.aabb);
                                    if(!(_loc6_ || param1))
                                    {
                                       continue loop14;
                                    }
                                    addr71:
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(§§pop().§[O§);
                                       if(_loc6_)
                                       {
                                          §§push(param1.§[O§);
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             §§push(§§pop().y);
                                             if(!_loc7_)
                                             {
                                                if(!(_loc7_ && param2))
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc6_)
                                                   {
                                                      addr104:
                                                      §§pop().y = §§pop() + §§pop();
                                                      break loop21;
                                                   }
                                                   §§goto(addr137);
                                                }
                                                break;
                                             }
                                             §§goto(addr104);
                                          }
                                          else
                                          {
                                             §§goto(addr133);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr131);
                                       }
                                       §§goto(addr133);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop().§?`§);
                                          addr189:
                                          while(true)
                                          {
                                             §§push(param1.§?`§);
                                             addr191:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr192:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   addr193:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      addr194:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         break loop13;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr71);
                                       }
                                       addr188:
                                    }
                                 },§§goto(addr138))
                                 {
                                    §§push(§§pop().§[O§);
                                    while(true)
                                    {
                                       §§push(param1.§[O§);
                                       addr133:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc7_)
                                          {
                                             addr137:
                                             §§push(_loc4_);
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                             }
                                             addr137:
                                          }
                                          addr138:
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             continue loop14;
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop().§?`§);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(param1.§?`§);
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(§§pop().y);
                                       if(_loc6_ || param1)
                                       {
                                          if(!_loc7_)
                                          {
                                             §§push(_loc5_);
                                             if(_loc6_ || this)
                                             {
                                                addr174:
                                                §§push(§§pop() - §§pop());
                                                if(!_loc7_)
                                                {
                                                   §§pop().y = §§pop();
                                                   continue loop13;
                                                }
                                                §§goto(addr192);
                                             }
                                             §§goto(addr193);
                                          }
                                          §§goto(addr194);
                                       }
                                       §§goto(addr174);
                                    }
                                    else
                                    {
                                       §§goto(addr191);
                                    }
                                    §§goto(addr123);
                                 }
                                 addr123:
                                 §§goto(addr189);
                              }
                              while(true)
                              {
                                 §§goto(addr143);
                              }
                           }
                           while(!_loc7_)
                           {
                              §§goto(addr107);
                              §§goto(addr53);
                           }
                           addr53:
                           §§goto(addr139);
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§goto(addr188);
         }
      }
      
      public function §&R§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§-!Y§(param1);
         }
         do
         {
            this.§+O§(param1);
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      public function §&W§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc6_ || this)
         {
            b2Settings.b2Assert(param1.§!!R§());
            while(true)
            {
               §§push(param1.aabb);
               while(true)
               {
                  §§push(§§pop().§;!$§(param2));
                  if(_loc6_ || param2)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           this.§-!Y§(param1);
                           loop3:
                           while(true)
                           {
                              if(_loc6_ || param1)
                              {
                                 §§push(b2Settings.b2_aabbExtension);
                                 if(_loc6_ || param3)
                                 {
                                    §§push(b2Settings.b2_aabbMultiplier);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(param3.x);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             loop7:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc6_ || param2)
                                                   {
                                                      §§push(param3.x);
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         addr356:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         addr269:
                                                         if(_loc6_ || param2)
                                                         {
                                                            addr303:
                                                            §§push(§§pop() * §§pop());
                                                            continue loop4;
                                                         }
                                                      }
                                                   }
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr359:
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(b2Settings.b2_aabbExtension);
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(b2Settings.b2_aabbMultiplier);
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     §§push(param3.y);
                                                                     if(!(_loc7_ && param3))
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc7_ && this)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           §§push(§§pop() > §§pop());
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              addr258:
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              §§push(param3.y);
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 §§goto(addr269);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr288:
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    if(_loc7_ && param2)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§goto(addr303);
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       addr355:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    addr354:
                                                                                 }
                                                                              }
                                                                              §§goto(addr356);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(param3.y);
                                                                              if(!(_loc7_ && param2))
                                                                              {
                                                                                 addr287:
                                                                                 §§push(-§§pop());
                                                                              }
                                                                           }
                                                                           §§goto(addr288);
                                                                        }
                                                                        §§goto(addr355);
                                                                     }
                                                                     §§goto(addr287);
                                                                  }
                                                                  §§goto(addr258);
                                                               }
                                                               else
                                                               {
                                                                  addr322:
                                                                  _loc5_ = §§pop();
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.aabb);
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§?`§);
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(param2.§?`§);
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       addr209:
                                                                                       while(_loc6_ || param2)
                                                                                       {
                                                                                          §§push(param1.aabb);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§?`§);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(param2.§?`§);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   if(_loc7_ && param2)
                                                                                                   {
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                }
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(_loc6_ || param3)
                                                                                                   {
                                                                                                      §§pop().y = §§pop();
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                }
                                                                                                continue loop22;
                                                                                             }
                                                                                             continue loop19;
                                                                                             addr54:
                                                                                             if(_loc6_ || param2)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(param3.x);
                                                }
                                                §§goto(addr354);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr359);
                              }
                           }
                           addr397:
                           addr400:
                           return §§pop();
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                     }
                     §§push(false);
                  }
                  §§goto(addr397);
               }
            }
         }
         §§goto(addr400);
      }
      
      public function §]Q§(param1:int) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(_loc8_)
         {
            if(this.§!^§ == null)
            {
               if(!(_loc7_ && param1))
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < param1)
         {
            _loc3_ = this.§!^§;
            if(_loc8_)
            {
               §§push(0);
               if(_loc8_ || _loc2_)
               {
                  §§push(uint(§§pop()));
                  if(_loc8_ || this)
                  {
                     _loc4_ = §§pop();
                     if(_loc8_)
                     {
                        loop1:
                        while(true)
                        {
                           if(_loc3_.§!!R§() != false)
                           {
                              if(!_loc7_)
                              {
                                 var _loc5_:*;
                                 var _loc6_:* = (_loc5_ = this).§5!C§ + 1;
                                 if(!_loc7_)
                                 {
                                    _loc5_.§5!C§ = _loc6_;
                                 }
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    _loc2_++;
                                    if(_loc8_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          this.§5!<§(_loc3_);
                                       }
                                    }
                                    while(!_loc7_)
                                    {
                                       continue loop8;
                                    }
                                 }
                                 continue loop0;
                                 addr168:
                              }
                           }
                           else
                           {
                              §§push(this.§5!C§);
                              while(true)
                              {
                                 §§push(§§pop() >> _loc4_);
                                 if(!(_loc7_ && param1))
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop() & 1);
                                    }
                                    addr89:
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc8_ || param1))
                                       {
                                          break loop1;
                                       }
                                       §§push(_loc3_.child2);
                                    }
                                    else
                                    {
                                       §§push(_loc3_.child1);
                                    }
                                    _loc3_ = §§pop();
                                    if(_loc8_ || _loc3_)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc7_)
                                       {
                                          §§push(uint(§§pop() + 1 & 31));
                                       }
                                       _loc4_ = §§pop();
                                    }
                                    continue loop1;
                                 }
                              }
                              addr70:
                           }
                        }
                        this.§-!Y§(_loc3_);
                     }
                     while(true)
                     {
                        §§goto(addr152);
                     }
                  }
                  §§goto(addr70);
               }
               §§goto(addr89);
            }
            §§goto(addr168);
         }
      }
      
      public function §,,§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§<!B§;
      }
      
      public function §&!K§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(!(_loc11_ && param1))
         {
            if(this.§!^§ == null)
            {
               if(!_loc11_)
               {
                  §§goto(addr34);
               }
            }
            var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
            var _loc4_:int = 0;
            var _loc7_:*;
            _loc3_[_loc7_ = _loc4_++] = this.§!^§;
            while(true)
            {
               if(_loc4_ <= 0)
               {
                  return;
               }
               §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§+!;§(param2));
               if(_loc10_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        §§push(_loc5_.§!!R§());
                        if(!(_loc11_ && _loc3_))
                        {
                           if(§§pop())
                           {
                              if(!_loc11_)
                              {
                                 §§push(Boolean(param1(_loc5_)));
                                 if(!(_loc11_ && param2))
                                 {
                                    addr112:
                                    §§push(_loc6_ = §§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    if(_loc10_)
                                    {
                                       break;
                                    }
                                 }
                              }
                           }
                           else
                           {
                              var _loc8_:*;
                              _loc3_[_loc8_ = _loc4_++] = _loc5_.child1;
                              if(_loc10_)
                              {
                                 var _loc9_:*;
                                 _loc3_[_loc9_ = _loc4_++] = _loc5_.child2;
                              }
                           }
                           continue;
                        }
                        §§goto(addr112);
                     }
                     break;
                  }
                  continue;
               }
               §§goto(addr112);
            }
            return;
         }
         addr34:
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc9_:b2AABB = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc14_:b2DynamicTreeNode = null;
         var _loc15_:b2Vec2 = null;
         var _loc16_:b2Vec2 = null;
         var _loc17_:* = NaN;
         var _loc18_:b2RayCastInput = null;
         if(_loc23_)
         {
            if(this.§!^§ == null)
            {
               if(_loc23_)
               {
                  return;
               }
            }
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2;
         (_loc5_ = b2Math.§8!Y§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§8V§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§,!I§(_loc6_);
         §§push(param2.§!!O§);
         if(_loc23_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         _loc9_ = new b2AABB();
         if(_loc23_ || _loc3_)
         {
            §§push(_loc3_.x);
            if(!(_loc22_ && this))
            {
               §§push(_loc8_);
               while(true)
               {
                  §§push(_loc4_.x);
                  addr238:
                  while(true)
                  {
                     §§push(_loc3_.x);
                     addr240:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr241:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr242:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                           }
                        }
                     }
                  }
               }
               addr236:
            }
            loop5:
            while(true)
            {
               §§push(Number(§§pop()));
               loop6:
               while(true)
               {
                  _loc10_ = §§pop();
                  while(true)
                  {
                     §§push(_loc3_.y);
                     if(_loc23_ || this)
                     {
                        if(_loc22_)
                        {
                           continue loop6;
                        }
                        §§push(_loc8_);
                        if(_loc23_ || this)
                        {
                           §§push(_loc4_.y);
                           if(!_loc22_)
                           {
                              if(!_loc22_)
                              {
                                 if(!_loc22_)
                                 {
                                    §§push(_loc3_.y);
                                    if(_loc23_)
                                    {
                                       addr201:
                                       §§push(§§pop() * (§§pop() - §§pop()));
                                       if(_loc23_ || param1)
                                       {
                                          if(!_loc22_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!_loc22_)
                                             {
                                                addr214:
                                                if(!(_loc23_ || this))
                                                {
                                                   break;
                                                }
                                                §§push(Number(§§pop()));
                                             }
                                             _loc11_ = §§pop();
                                             loop8:
                                             for(; _loc23_; loop11:
                                             while(!(_loc22_ && param1))
                                             {
                                                while(true)
                                                {
                                                   loop13:
                                                   do
                                                   {
                                                      §§push(_loc9_.§[O§);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§pop().x = Math.max(_loc3_.x,_loc10_);
                                                         while(!_loc22_)
                                                         {
                                                            §§push(_loc9_.§[O§);
                                                            if(!_loc23_)
                                                            {
                                                               continue loop14;
                                                            }
                                                            §§pop().y = Math.max(_loc3_.y,_loc11_);
                                                            if(_loc22_)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc23_ || param2)
                                                            {
                                                               continue loop13;
                                                            }
                                                            §§goto(addr167);
                                                         }
                                                         continue loop11;
                                                      }
                                                   }
                                                   while(false);
                                                   
                                                   var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
                                                   var _loc13_:int = 0;
                                                   var _loc19_:*;
                                                   _loc12_[_loc19_ = _loc13_++] = this.§!^§;
                                                   addr650:
                                                   if(_loc13_ > 0)
                                                   {
                                                      §§push((_loc14_ = _loc12_[--_loc13_]).aabb);
                                                      if(!(_loc22_ && param2))
                                                      {
                                                         if(§§pop().§+!;§(_loc9_) == false)
                                                         {
                                                            §§goto(addr650);
                                                         }
                                                         §§push(_loc14_.aabb);
                                                      }
                                                      _loc15_ = §§pop().§>O§();
                                                      _loc16_ = _loc14_.aabb.§7N§();
                                                      if(_loc23_)
                                                      {
                                                         §§push(Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x);
                                                         if(_loc23_ || _loc3_)
                                                         {
                                                            §§push(_loc7_.y);
                                                            if(!_loc22_)
                                                            {
                                                               §§push(§§pop() * _loc16_.y);
                                                               if(!(_loc22_ && param1))
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!_loc22_)
                                                                  {
                                                                     addr360:
                                                                     §§push(Number(§§pop()));
                                                                     if(!(_loc22_ && _loc3_))
                                                                     {
                                                                        addr368:
                                                                        §§push(§§pop());
                                                                        if(_loc23_ || this)
                                                                        {
                                                                           addr376:
                                                                           _loc17_ = §§pop();
                                                                           addr377:
                                                                           §§push(0);
                                                                        }
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           if(!_loc23_)
                                                                           {
                                                                           }
                                                                           §§goto(addr650);
                                                                        }
                                                                        if(_loc14_.§!!R§())
                                                                        {
                                                                           if(_loc23_)
                                                                           {
                                                                              addr387:
                                                                              (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                                                                              if(!_loc22_)
                                                                              {
                                                                                 _loc18_.p2 = param2.p2;
                                                                                 _loc18_.§!!O§ = param2.§!!O§;
                                                                                 addr587:
                                                                                 addr582:
                                                                                 §§push(Number(param1(_loc18_,_loc14_)));
                                                                                 §§push(Number(param1(_loc18_,_loc14_)));
                                                                                 if(!_loc22_)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    addr586:
                                                                                    §§push(0);
                                                                                 }
                                                                                 addr614:
                                                                                 addr609:
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    addr588:
                                                                                    if(!(_loc22_ && param1))
                                                                                    {
                                                                                       if(!(_loc23_ || param2))
                                                                                       {
                                                                                          §§goto(addr614);
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr609);
                                                                                 }
                                                                                 addr573:
                                                                                 _loc10_ = Number(_loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x));
                                                                                 addr561:
                                                                              }
                                                                              addr574:
                                                                              §§push(_loc3_.y);
                                                                              if(_loc23_)
                                                                              {
                                                                                 if(_loc23_ || param2)
                                                                                 {
                                                                                    if(_loc23_ || param1)
                                                                                    {
                                                                                       if(!(_loc22_ && _loc3_))
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          if(_loc23_)
                                                                                          {
                                                                                             if(_loc23_ || _loc3_)
                                                                                             {
                                                                                                if(!_loc22_)
                                                                                                {
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      §§push(_loc4_.y);
                                                                                                      if(!(_loc22_ && this))
                                                                                                      {
                                                                                                         if(_loc23_ || _loc3_)
                                                                                                         {
                                                                                                            if(!(_loc22_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(_loc3_.y);
                                                                                                               if(_loc23_ || param2)
                                                                                                               {
                                                                                                                  addr533:
                                                                                                                  §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                  if(!(_loc22_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr542:
                                                                                                                     if(_loc23_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc22_ && param1))
                                                                                                                        {
                                                                                                                           addr557:
                                                                                                                           _loc11_ = Number(§§pop());
                                                                                                                           addr558:
                                                                                                                           if(!_loc22_)
                                                                                                                           {
                                                                                                                              addr449:
                                                                                                                              _loc9_.§?`§.x = Math.min(_loc3_.x,_loc10_);
                                                                                                                              addr455:
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 if(_loc23_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_.§?`§);
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       §§pop().y = Math.min(_loc3_.y,_loc11_);
                                                                                                                                       addr423:
                                                                                                                                       _loc9_.§[O§.x = Math.max(_loc3_.x,_loc10_);
                                                                                                                                       addr420:
                                                                                                                                       addr445:
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_.§[O§);
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                §§pop().y = Math.max(_loc3_.y,_loc11_);
                                                                                                                                                if(_loc23_ || this)
                                                                                                                                                {
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr420);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr650);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr445);
                                                                                                                                                }
                                                                                                                                                §§goto(addr420);
                                                                                                                                             }
                                                                                                                                             §§goto(addr423);
                                                                                                                                          }
                                                                                                                                          §§goto(addr558);
                                                                                                                                       }
                                                                                                                                       §§goto(addr455);
                                                                                                                                    }
                                                                                                                                    §§goto(addr449);
                                                                                                                                 }
                                                                                                                                 §§goto(addr588);
                                                                                                                              }
                                                                                                                              §§goto(addr574);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr561);
                                                                                                                     }
                                                                                                                     §§goto(addr573);
                                                                                                                  }
                                                                                                                  §§goto(addr557);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr573);
                                                                                                      }
                                                                                                      §§goto(addr533);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr587);
                                                                                          }
                                                                                          §§goto(addr533);
                                                                                       }
                                                                                       §§goto(addr582);
                                                                                    }
                                                                                    §§goto(addr586);
                                                                                 }
                                                                                 §§goto(addr587);
                                                                              }
                                                                              §§goto(addr542);
                                                                           }
                                                                           §§goto(addr650);
                                                                        }
                                                                        var _loc20_:*;
                                                                        _loc12_[_loc20_ = _loc13_++] = _loc14_.child1;
                                                                        if(!_loc22_)
                                                                        {
                                                                           var _loc21_:*;
                                                                           _loc12_[_loc21_ = _loc13_++] = _loc14_.child2;
                                                                        }
                                                                        §§goto(addr650);
                                                                     }
                                                                     §§goto(addr377);
                                                                  }
                                                                  §§goto(addr368);
                                                               }
                                                            }
                                                            §§goto(addr376);
                                                         }
                                                         §§goto(addr360);
                                                      }
                                                      §§goto(addr387);
                                                   }
                                                   return;
                                                }
                                             })
                                             {
                                                §§push(_loc9_.§?`§);
                                                while(true)
                                                {
                                                   §§pop().x = Math.min(_loc3_.x,_loc10_);
                                                   addr167:
                                                   while(true)
                                                   {
                                                      §§push(_loc9_.§?`§);
                                                      if(!(_loc23_ || _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      §§pop().y = Math.min(_loc3_.y,_loc11_);
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                             continue;
                                          }
                                          §§goto(addr236);
                                       }
                                       §§goto(addr242);
                                    }
                                    §§goto(addr240);
                                 }
                                 §§goto(addr238);
                              }
                              §§goto(addr241);
                           }
                        }
                        §§goto(addr201);
                     }
                     §§goto(addr214);
                  }
                  continue loop5;
               }
            }
         }
         §§goto(addr157);
      }
      
      private function §6h§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2DynamicTreeNode = null;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§76§);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  return new b2DynamicTreeNode();
               }
               addr32:
               §§push(this.§76§);
            }
            _loc1_ = §§pop();
            if(_loc3_ || _loc1_)
            {
               this.§76§ = _loc1_.parent;
               _loc1_.parent = null;
            }
            _loc1_.child1 = null;
            _loc1_.child2 = null;
            return _loc1_;
         }
         §§goto(addr32);
      }
      
      private function §+O§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            param1.parent = this.§76§;
            do
            {
               this.§76§ = param1;
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      private function §5!<§(param1:b2DynamicTreeNode) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(_loc12_ || this)
         {
            var _loc10_:*;
            §§push((_loc10_ = this).§"I§);
            if(!_loc13_)
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(_loc12_ || this)
            {
               _loc10_.§"I§ = _loc11_;
            }
            if(_loc12_)
            {
               §§push(this.§!^§);
               loop1:
               while(true)
               {
                  §§push(null);
                  loop2:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc12_)
                        {
                           while(true)
                           {
                              this.§!^§ = param1;
                           }
                           addr90:
                        }
                        loop3:
                        while(true)
                        {
                           addr67:
                           addr94:
                           while(true)
                           {
                              §§push(this.§!^§);
                              if(!(_loc13_ && param1))
                              {
                                 §§push(null);
                                 if(_loc12_)
                                 {
                                    §§pop().parent = §§pop();
                                    if(!_loc13_)
                                    {
                                       return;
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           addr94:
                           var _loc2_:b2Vec2 = param1.aabb.§>O§();
                           var _loc3_:b2DynamicTreeNode = this.§!^§;
                           if(!_loc13_)
                           {
                              addr105:
                              if(_loc3_.§!!R§() == false)
                              {
                                 break loop2;
                              }
                              var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                              var _loc5_:b2DynamicTreeNode;
                              (_loc5_ = this.§6h§()).parent = _loc4_;
                              if(_loc12_)
                              {
                                 _loc5_.§<!B§ = null;
                                 if(_loc12_)
                                 {
                                    §§push(_loc5_.aabb);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(param1.aabb);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(_loc3_.aabb);
                                          loop6:
                                          while(true)
                                          {
                                             §§pop().§#2§(§§pop(),§§pop());
                                             loop7:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   _loc5_.child1 = _loc3_;
                                                   if(_loc12_)
                                                   {
                                                      §§goto(addr426);
                                                   }
                                                   break;
                                                }
                                                if(!(_loc13_ && this))
                                                {
                                                   if(_loc3_.parent.child1 == _loc3_)
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         _loc4_.child1 = _loc5_;
                                                         addr349:
                                                         _loc5_.child1 = _loc3_;
                                                         loop8:
                                                         while(true)
                                                         {
                                                            _loc5_.child2 = param1;
                                                            loop9:
                                                            while(true)
                                                            {
                                                               _loc3_.parent = _loc5_;
                                                               loop10:
                                                               while(_loc12_ || this)
                                                               {
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     param1.parent = _loc5_;
                                                                     if(_loc12_ || this)
                                                                     {
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_.aabb);
                                                                              if(!(_loc13_ && _loc3_))
                                                                              {
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§push(_loc5_.aabb);
                                                                                 if(!(_loc13_ && _loc3_))
                                                                                 {
                                                                                    if(_loc12_ || _loc2_)
                                                                                    {
                                                                                       if(§§pop().§;!$§(§§pop()))
                                                                                       {
                                                                                          if(!(_loc13_ && this))
                                                                                          {
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                break loop15;
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr306:
                                                                                          §§push(_loc4_.aabb);
                                                                                          §§push(_loc4_.child1.aabb);
                                                                                          §§push(_loc4_.child2.aabb);
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          §§pop().§#2§(§§pop(),§§pop());
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             break loop11;
                                                                                          }
                                                                                       }
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             _loc5_ = _loc4_;
                                                                                             if(!(_loc4_ = _loc4_.parent))
                                                                                             {
                                                                                                break loop15;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                       continue loop10;
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                              }
                                                                              §§goto(addr306);
                                                                           }
                                                                        }
                                                                        addr428:
                                                                        return;
                                                                        addr331:
                                                                     }
                                                                     break;
                                                                  }
                                                                  _loc5_.child2 = param1;
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     _loc3_.parent = _loc5_;
                                                                     addr464:
                                                                     while(!_loc12_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     addr444:
                                                                     break loop7;
                                                                     §§goto(addr428);
                                                                  }
                                                               }
                                                               continue loop7;
                                                            }
                                                         }
                                                         addr395:
                                                      }
                                                      §§goto(addr426);
                                                   }
                                                   else
                                                   {
                                                      _loc4_.child2 = _loc5_;
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         if(_loc13_ && this)
                                                         {
                                                            §§goto(addr395);
                                                         }
                                                         §§goto(addr349);
                                                      }
                                                   }
                                                   param1.parent = _loc5_;
                                                   break;
                                                }
                                                §§goto(addr426);
                                             }
                                             do
                                             {
                                                this.§!^§ = _loc5_;
                                             }
                                             while(_loc13_ && _loc2_);
                                             
                                             if(_loc13_)
                                             {
                                                §§goto(addr464);
                                             }
                                             §§goto(addr444);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr470);
                              }
                              §§goto(addr331);
                           }
                           break loop2;
                        }
                     }
                     else
                     {
                        §§goto(addr94);
                     }
                     §§goto(addr105);
                  }
                  do
                  {
                     _loc6_ = _loc3_.child1;
                     _loc7_ = _loc3_.child2;
                     if(_loc12_ || _loc3_)
                     {
                        §§push(Number(Math.abs((_loc6_.aabb.§?`§.x + _loc6_.aabb.§[O§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§?`§.y + _loc6_.aabb.§[O§.y) / 2 - _loc2_.y)));
                        if(!_loc13_)
                        {
                           _loc8_ = §§pop();
                           if(!(_loc13_ && _loc2_))
                           {
                              addr170:
                              §§push(Number(Math.abs((_loc7_.aabb.§?`§.x + _loc7_.aabb.§[O§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§?`§.y + _loc7_.aabb.§[O§.y) / 2 - _loc2_.y)));
                              if(!(_loc13_ && this))
                              {
                                 addr211:
                                 _loc9_ = §§pop();
                                 if(!(_loc13_ && param1))
                                 {
                                    addr230:
                                    if(_loc8_ >= _loc9_)
                                    {
                                       _loc3_ = _loc7_;
                                       continue;
                                    }
                                 }
                                 _loc3_ = _loc6_;
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                           }
                           §§goto(addr230);
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr170);
                  }
                  while(_loc3_.§!!R§() == false);
                  
                  §§goto(addr105);
               }
            }
            else if(false)
            {
               §§goto(addr67);
            }
            §§goto(addr94);
         }
         §§goto(addr90);
      }
      
      private function §-!Y§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(!(_loc6_ && _loc3_))
         {
            if(param1 == this.§!^§)
            {
               if(_loc7_)
               {
                  addr36:
                  this.§!^§ = null;
                  if(_loc7_)
                  {
                     return;
                  }
               }
            }
            var _loc2_:b2DynamicTreeNode = param1.parent;
            var _loc3_:b2DynamicTreeNode = _loc2_.parent;
            if(_loc7_)
            {
               §§push(_loc2_.child1);
               if(_loc7_ || param1)
               {
                  if(§§pop() == param1)
                  {
                     addr63:
                     _loc4_ = _loc2_.child2;
                     if(_loc7_)
                     {
                        addr74:
                        if(_loc3_)
                        {
                           if(_loc7_ || this)
                           {
                              if(_loc3_.child1 == _loc2_)
                              {
                                 if(_loc7_)
                                 {
                                    _loc3_.child1 = _loc4_;
                                    if(_loc7_ || this)
                                    {
                                       while(true)
                                       {
                                          _loc4_.parent = _loc3_;
                                       }
                                       addr125:
                                       addr109:
                                    }
                                    loop0:
                                    while(true)
                                    {
                                       this.§+O§(_loc2_);
                                       if(_loc6_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       if(_loc7_)
                                       {
                                          while(true)
                                          {
                                             if(true)
                                             {
                                                break loop0;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr203);
                                             }
                                             _loc5_ = _loc3_.aabb;
                                             if(!_loc6_)
                                             {
                                                _loc3_.aabb = b2AABB.§#2§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                                                if(_loc7_)
                                                {
                                                   if(!_loc5_.§;!$§(_loc3_.aabb))
                                                   {
                                                      continue;
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          addr203:
                                          return;
                                          addr165:
                                          addr123:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr134:
                                       }
                                       §§goto(addr125);
                                    }
                                    §§goto(addr165);
                                 }
                                 §§goto(addr109);
                              }
                              else
                              {
                                 _loc3_.child2 = _loc4_;
                              }
                           }
                           §§goto(addr134);
                        }
                        else
                        {
                           this.§!^§ = _loc4_;
                           if(!(_loc6_ && this))
                           {
                              _loc4_.parent = null;
                              if(_loc7_ || _loc2_)
                              {
                                 this.§+O§(_loc2_);
                              }
                           }
                        }
                        §§goto(addr203);
                     }
                     §§goto(addr123);
                  }
                  else
                  {
                     addr72:
                     _loc4_ = _loc2_.child1;
                  }
                  §§goto(addr74);
               }
               §§goto(addr72);
            }
            §§goto(addr63);
         }
         §§goto(addr36);
      }
   }
}
