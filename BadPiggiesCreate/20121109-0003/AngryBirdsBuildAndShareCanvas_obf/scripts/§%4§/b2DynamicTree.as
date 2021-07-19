package §%4§
{
   import §<!a§.*;
   import §<";§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §<!t§:b2DynamicTreeNode;
      
      private var §%!>§:b2DynamicTreeNode;
      
      private var §0!A§:uint;
      
      private var §`m§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            while(true)
            {
               this.§<!t§ = null;
               §§goto(addr81);
            }
         }
         addr81:
         while(true)
         {
            this.§%!>§ = null;
            do
            {
               this.§0!A§ = 0;
               do
               {
                  this.§`m§ = 0;
               }
               while(_loc1_);
               
            }
            while(!_loc2_);
            
            if(!(_loc1_ && _loc1_))
            {
               if(!(_loc1_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §1S§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§,I§();
         if(!_loc6_)
         {
            §§push(b2Settings.b2_aabbExtension);
            while(true)
            {
               §§push(Number(§§pop()));
               addr249:
               addr227:
               while(true)
               {
                  _loc4_ = §§pop();
               }
               if(_loc6_ && _loc3_)
               {
                  continue;
               }
               _loc5_ = §§pop();
               while(true)
               {
                  §§push(_loc3_.aabb);
                  loop4:
                  while(true)
                  {
                     §§push(§§pop().§=!H§);
                     loop5:
                     while(true)
                     {
                        §§push(param1.§=!H§);
                        loop6:
                        while(true)
                        {
                           §§push(§§pop().x);
                           loop7:
                           while(true)
                           {
                              §§push(_loc4_);
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                                 loop9:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    while(_loc7_ || _loc3_)
                                    {
                                       §§push(_loc3_.aabb);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(§§pop().§=!H§);
                                          if(!(_loc7_ || this))
                                          {
                                             break;
                                          }
                                          §§push(param1.§=!H§);
                                          if(!(_loc7_ || _loc3_))
                                          {
                                             continue loop6;
                                          }
                                          §§push(§§pop().y);
                                          if(!_loc6_)
                                          {
                                             if(_loc6_ && _loc3_)
                                             {
                                                continue loop7;
                                             }
                                             §§push(_loc5_);
                                             if(_loc6_ && param1)
                                             {
                                                continue loop8;
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          if(_loc6_ && this)
                                          {
                                             continue loop9;
                                          }
                                          §§pop().y = §§pop();
                                          loop12:
                                          while(true)
                                          {
                                             §§push(_loc3_.aabb);
                                             while(!_loc6_)
                                             {
                                                §§push(§§pop().§6P§);
                                                while(true)
                                                {
                                                   §§push(param1.§6P§);
                                                   addr134:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr135:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         addr136:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr137:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               continue loop12;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§push(_loc3_.aabb);
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   continue loop11;
                                                }
                                             }
                                             continue loop4;
                                          }
                                       }
                                       continue loop5;
                                    }
                                    addr250:
                                    while(true)
                                    {
                                       §§push(b2Settings.b2_aabbExtension);
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          else
                                          {
                                             §§goto(addr249);
                                          }
                                       }
                                       §§goto(addr227);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(_loc6_ && this)
                  {
                     continue;
                  }
                  §§goto(addr152);
               }
            }
         }
         §§goto(addr250);
      }
      
      public function §`q§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8>§(param1);
         }
         do
         {
            this.§%!c§(param1);
         }
         while(!(_loc2_ || param1));
         
      }
      
      public function §4#§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_)
         {
            b2Settings.b2Assert(param1.§%b§());
            loop0:
            while(true)
            {
               §§push(param1.aabb);
               loop1:
               while(true)
               {
                  §§push(§§pop().§`7§(param2));
                  loop2:
                  while(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        this.§8>§(param1);
                        loop4:
                        while(true)
                        {
                           §§push(b2Settings.b2_aabbExtension);
                           loop5:
                           while(true)
                           {
                              §§push(b2Settings.b2_aabbMultiplier);
                              if(!_loc6_)
                              {
                                 §§push(param3.x);
                                 if(_loc7_ || param3)
                                 {
                                    §§push(0);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       addr323:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc7_)
                                             {
                                                while(true)
                                                {
                                                   §§push(param3.x);
                                                   addr328:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      addr334:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                   }
                                                }
                                                addr326:
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc7_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                loop9:
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§push(b2Settings.b2_aabbExtension);
                                                      if(!(_loc6_ && this))
                                                      {
                                                         §§push(b2Settings.b2_aabbMultiplier);
                                                         if(_loc7_ || param1)
                                                         {
                                                            §§push(param3.y);
                                                            if(_loc7_)
                                                            {
                                                               continue loop6;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr257:
                                                            §§push(param3.y);
                                                            if(_loc6_)
                                                            {
                                                               addr275:
                                                               if(_loc7_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     addr280:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        addr292:
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc7_ || param2)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              loop11:
                                                                              for(; _loc7_; while(!(_loc6_ && param1))
                                                                              {
                                                                                 §§goto(addr157);
                                                                                 §§push(param1.aabb);
                                                                              })
                                                                              {
                                                                                 §§push(param1.aabb);
                                                                                 loop12:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§=!H§);
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param2.§=!H§);
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc7_ || param1)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                addr172:
                                                                                                §§push(_loc5_);
                                                                                                if(!(_loc7_ || this))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                addr191:
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§pop().y = §§pop();
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1.aabb);
                                                                                                      addr121:
                                                                                                      addr157:
                                                                                                      loop25:
                                                                                                      for(; !(_loc6_ && this); §§push(param1.aabb),if(_loc6_ && this)
                                                                                                      {
                                                                                                         continue;
                                                                                                      },if(!_loc7_)
                                                                                                      {
                                                                                                         continue loop12;
                                                                                                      },§§goto(addr69))
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         §§push(§§pop().§6P§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param2.§6P§);
                                                                                                            addr133:
                                                                                                            addr69:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(_loc7_ || param3)
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                                  addr142:
                                                                                                               }
                                                                                                               addr143:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  addr144:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && param3))
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           break loop2;
                                                                                                                        }
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(§§pop().§6P§);
                                                                                                            if(!(_loc7_ || param1))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§push(param2.§6P§);
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(_loc7_ || param3)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr142);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr143);
                                                                                                               }
                                                                                                               §§pop().y = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc7_ || param2)
                                                                                                                  {
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                                  §§goto(addr144);
                                                                                                                  addr117:
                                                                                                                  this.§&-§(param1);
                                                                                                                  if(!(_loc6_ && this))
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && this))
                                                                                                                     {
                                                                                                                        §§push(true);
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           return §§pop();
                                                                                                                        }
                                                                                                                        addr365:
                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                        {
                                                                                                                           return §§pop();
                                                                                                                        }
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            §§goto(addr133);
                                                                                                            §§goto(addr143);
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().§=!H§);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         §§push(param2.§=!H§);
                                                                                                         if(!(_loc7_ || param1))
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         §§push(§§pop().y);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§goto(addr172);
                                                                                                         }
                                                                                                         §§goto(addr191);
                                                                                                         §§goto(addr121);
                                                                                                      }
                                                                                                   }
                                                                                                   addr194:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   continue loop11;
                                                                                                }
                                                                                                addr211:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr211);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     §§goto(addr292);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(-§§pop());
                                                                        break loop10;
                                                                     }
                                                                     addr332:
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§push(§§pop());
                                                            §§goto(addr280);
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      §§goto(addr292);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr334);
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(param3.x);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr332);
                              }
                              §§goto(addr326);
                           }
                        }
                     }
                  }
                  §§goto(addr365);
               }
            }
         }
         §§goto(addr194);
      }
      
      public function §=f§(param1:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(_loc7_ || _loc2_)
         {
            if(this.§<!t§ == null)
            {
               if(!(_loc8_ && this))
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < param1)
         {
            _loc3_ = this.§<!t§;
            if(_loc7_)
            {
               §§push(0);
               if(!_loc8_)
               {
                  §§push(uint(§§pop()));
                  if(_loc7_ || _loc3_)
                  {
                     _loc4_ = §§pop();
                     if(!(_loc8_ && this))
                     {
                        loop1:
                        while(true)
                        {
                           if(_loc3_.§%b§() != false)
                           {
                              if(!(_loc8_ && param1))
                              {
                                 var _loc5_:*;
                                 var _loc6_:* = (_loc5_ = this).§0!A§ + 1;
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    _loc5_.§0!A§ = _loc6_;
                                 }
                                 if(_loc7_ || _loc2_)
                                 {
                                    break;
                                 }
                                 loop2:
                                 for(; false; _loc2_++,if(!(_loc8_ && this))
                                 {
                                    continue;
                                 },§§goto(addr170))
                                 {
                                    while(true)
                                    {
                                       this.§&-§(_loc3_);
                                       addr170:
                                       while(_loc7_ || param1)
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§goto(addr166);
                              }
                              addr191:
                           }
                           else
                           {
                              §§push(this.§0!A§);
                              while(true)
                              {
                                 §§push(§§pop() >> _loc4_);
                                 if(_loc7_ || this)
                                 {
                                    addr85:
                                    §§push(§§pop() & 1);
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             break loop1;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc3_.child2);
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc3_.child1);
                                       }
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          if(_loc7_)
                                          {
                                             §§push(_loc4_);
                                             if(_loc7_)
                                             {
                                                §§push(uint(§§pop() + 1 & 31));
                                             }
                                             _loc4_ = §§pop();
                                          }
                                          continue loop1;
                                       }
                                    }
                                    addr85:
                                 }
                                 §§goto(addr85);
                              }
                              addr74:
                           }
                        }
                        this.§8>§(_loc3_);
                        §§goto(addr191);
                        addr154:
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr74);
               }
               §§goto(addr85);
            }
            §§goto(addr154);
         }
      }
      
      public function §=!p§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§ S§;
      }
      
      public function §5%§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(!_loc10_)
         {
            if(this.§<!t§ == null)
            {
               if(_loc11_)
               {
                  §§goto(addr30);
               }
            }
            var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
            var _loc4_:int = 0;
            var _loc7_:*;
            _loc3_[_loc7_ = _loc4_++] = this.§<!t§;
            while(true)
            {
               if(_loc4_ <= 0)
               {
                  return;
               }
               §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§6m§(param2));
               if(_loc11_)
               {
                  if(§§pop())
                  {
                     if(_loc11_)
                     {
                        §§push(_loc5_.§%b§());
                        if(_loc11_)
                        {
                           addr83:
                           if(§§pop())
                           {
                              if(_loc11_)
                              {
                                 §§push(Boolean(param1(_loc5_)));
                                 if(!_loc10_)
                                 {
                                    addr95:
                                    if(!(_loc6_ = §§pop()))
                                    {
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 §§goto(addr95);
                              }
                           }
                           else
                           {
                              var _loc8_:*;
                              _loc3_[_loc8_ = _loc4_++] = _loc5_.child1;
                              if(_loc11_)
                              {
                                 var _loc9_:*;
                                 _loc3_[_loc9_ = _loc4_++] = _loc5_.child2;
                              }
                           }
                           continue;
                        }
                        §§goto(addr95);
                     }
                     break;
                  }
                  continue;
               }
               §§goto(addr83);
            }
            return;
         }
         addr30:
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc9_:b2AABB = null;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc14_:b2DynamicTreeNode = null;
         var _loc15_:b2Vec2 = null;
         var _loc16_:b2Vec2 = null;
         var _loc17_:Number = NaN;
         var _loc18_:b2RayCastInput = null;
         if(_loc23_)
         {
            if(this.§<!t§ == null)
            {
               if(_loc23_)
               {
                  §§goto(addr49);
               }
            }
            _loc3_ = param2.p1;
            var _loc4_:b2Vec2 = param2.p2;
            var _loc5_:b2Vec2;
            (_loc5_ = b2Math.§ !r§(_loc3_,_loc4_)).Normalize();
            var _loc6_:b2Vec2 = b2Math.§!!R§(1,_loc5_);
            var _loc7_:b2Vec2 = b2Math.§@!X§(_loc6_);
            §§push(param2.§"!7§);
            if(_loc23_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            _loc9_ = new b2AABB();
            if(_loc23_ || param2)
            {
               §§push(_loc3_.x);
               if(_loc23_ || param1)
               {
                  §§push(_loc8_);
                  while(true)
                  {
                     §§push(_loc4_.x);
                     addr236:
                     while(true)
                     {
                        §§push(_loc3_.x);
                        addr238:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           addr239:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              addr240:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc23_ || _loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr234:
               }
               loop5:
               while(true)
               {
                  _loc10_ = §§pop();
                  addr250:
                  while(true)
                  {
                     §§push(_loc3_.y);
                     if(_loc22_)
                     {
                        continue loop5;
                     }
                     §§push(_loc8_);
                     if(_loc23_)
                     {
                        §§push(_loc4_.y);
                        if(!(_loc22_ && _loc3_))
                        {
                           §§push(_loc3_.y);
                           if(_loc23_ || param1)
                           {
                              addr192:
                              §§push(§§pop() - §§pop());
                              if(!_loc22_)
                              {
                                 if(_loc23_ || _loc3_)
                                 {
                                    addr202:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc22_)
                                    {
                                       if(!_loc22_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc23_ || _loc3_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          continue loop5;
                                       }
                                       §§goto(addr234);
                                    }
                                    break;
                                 }
                                 §§goto(addr236);
                              }
                              §§goto(addr239);
                           }
                           §§goto(addr238);
                        }
                        §§goto(addr192);
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr240);
               }
            }
            §§goto(addr135);
         }
         addr49:
      }
      
      private function §,I§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2DynamicTreeNode = null;
         if(_loc3_)
         {
            §§push(this.§%!>§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  addr29:
                  _loc1_ = this.§%!>§;
                  if(!(_loc2_ && _loc1_))
                  {
                     this.§%!>§ = _loc1_.parent;
                     loop0:
                     while(true)
                     {
                        _loc1_.parent = null;
                        while(true)
                        {
                           _loc1_.child1 = null;
                           addr67:
                           if(_loc3_ || this)
                           {
                              if(_loc3_)
                              {
                                 return _loc1_;
                                 addr76:
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  else if(false)
                  {
                     while(true)
                     {
                        _loc1_.child2 = null;
                        if(!(_loc3_ || this))
                        {
                           continue;
                        }
                        §§goto(addr67);
                     }
                     §§goto(addr76);
                     addr56:
                  }
                  else
                  {
                     §§goto(addr102);
                  }
                  while(true)
                  {
                     §§goto(addr56);
                  }
               }
               addr102:
               return new b2DynamicTreeNode();
            }
         }
         §§goto(addr29);
      }
      
      private function §%!c§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.parent = this.§%!>§;
         }
         do
         {
            this.§%!>§ = param1;
         }
         while(_loc2_);
         
      }
      
      private function §&-§(param1:b2DynamicTreeNode) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(!(_loc12_ && this))
         {
            var _loc10_:*;
            §§push((_loc10_ = this).§`m§);
            if(!_loc12_)
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(_loc13_ || _loc3_)
            {
               _loc10_.§`m§ = _loc11_;
            }
            if(_loc13_ || param1)
            {
               §§push(this.§<!t§);
               loop1:
               while(true)
               {
                  §§push(null);
                  loop2:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        loop20:
                        while(true)
                        {
                           this.§<!t§ = param1;
                           loop21:
                           while(true)
                           {
                              addr68:
                              addr100:
                              while(true)
                              {
                                 §§push(this.§<!t§);
                                 if(!(_loc12_ && _loc3_))
                                 {
                                    §§push(null);
                                    if(_loc13_)
                                    {
                                       §§pop().parent = §§pop();
                                       if(!(_loc12_ && _loc2_))
                                       {
                                          if(!_loc12_)
                                          {
                                             return;
                                          }
                                          continue loop20;
                                       }
                                       continue loop21;
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                              addr100:
                              var _loc2_:b2Vec2 = param1.aabb.§1C§();
                              var _loc3_:b2DynamicTreeNode = this.§<!t§;
                              if(_loc13_)
                              {
                                 addr111:
                                 if(_loc3_.§%b§() == false)
                                 {
                                    break loop2;
                                 }
                                 var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                                 var _loc5_:b2DynamicTreeNode;
                                 (_loc5_ = this.§,I§()).parent = _loc4_;
                                 if(_loc13_)
                                 {
                                    _loc5_.§ S§ = null;
                                    if(!(_loc12_ && _loc3_))
                                    {
                                       §§push(_loc5_.aabb);
                                       while(true)
                                       {
                                          §§push(param1.aabb);
                                          while(true)
                                          {
                                             §§push(_loc3_.aabb);
                                             while(true)
                                             {
                                                §§pop().§^!%§(§§pop(),§§pop());
                                                if(_loc13_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         if(_loc3_.parent.child1 != _loc3_)
                                                         {
                                                            _loc4_.child2 = _loc5_;
                                                            loop7:
                                                            while(true)
                                                            {
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  _loc5_.child1 = _loc3_;
                                                                  if(!(_loc12_ && _loc2_))
                                                                  {
                                                                     _loc5_.child2 = param1;
                                                                     loop9:
                                                                     while(_loc13_ || this)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc3_.parent = _loc5_;
                                                                           if(!_loc13_)
                                                                           {
                                                                              addr294:
                                                                              break;
                                                                              addr321:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              param1.parent = _loc5_;
                                                                              continue loop7;
                                                                           }
                                                                           if(_loc13_)
                                                                           {
                                                                              addr424:
                                                                              return;
                                                                              addr416:
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           param1.parent = _loc5_;
                                                                           addr438:
                                                                           addr452:
                                                                           while(true)
                                                                           {
                                                                              if(_loc13_ || _loc3_)
                                                                              {
                                                                                 if(!(_loc12_ && param1))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 break loop8;
                                                                              }
                                                                              continue loop19;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§<!t§ = _loc5_;
                                                                              if(!_loc12_)
                                                                              {
                                                                                 addr433:
                                                                                 §§goto(addr424);
                                                                                 addr433:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr438);
                                                                              }
                                                                              §§goto(addr452);
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     addr384:
                                                                  }
                                                                  break;
                                                               }
                                                               addr471:
                                                               while(true)
                                                               {
                                                                  _loc3_.parent = _loc5_;
                                                                  §§goto(addr467);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr381);
                                                   }
                                                   else
                                                   {
                                                      _loc5_.child1 = _loc3_;
                                                      if(!_loc12_)
                                                      {
                                                         §§goto(addr422);
                                                      }
                                                   }
                                                   §§goto(addr433);
                                                }
                                                §§goto(addr471);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr452);
                                 }
                                 §§goto(addr351);
                              }
                              break loop2;
                           }
                        }
                        addr96:
                     }
                     else
                     {
                        §§goto(addr100);
                     }
                     §§goto(addr111);
                  }
                  do
                  {
                     _loc6_ = _loc3_.child1;
                     _loc7_ = _loc3_.child2;
                     if(!(_loc12_ && this))
                     {
                        §§push(Number(Math.abs((_loc6_.aabb.§=!H§.x + _loc6_.aabb.§6P§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§=!H§.y + _loc6_.aabb.§6P§.y) / 2 - _loc2_.y)));
                        if(_loc13_ || this)
                        {
                           _loc8_ = §§pop();
                           if(!_loc12_)
                           {
                              addr176:
                              §§push(Number(Math.abs((_loc7_.aabb.§=!H§.x + _loc7_.aabb.§6P§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§=!H§.y + _loc7_.aabb.§6P§.y) / 2 - _loc2_.y)));
                              if(_loc13_)
                              {
                                 _loc9_ = §§pop();
                                 if(!_loc12_)
                                 {
                                    addr216:
                                    if(_loc8_ >= _loc9_)
                                    {
                                       _loc3_ = _loc7_;
                                       continue;
                                    }
                                 }
                              }
                              §§goto(addr216);
                           }
                           _loc3_ = _loc6_;
                           if(!(_loc13_ || param1))
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr216);
                     }
                     §§goto(addr176);
                  }
                  while(_loc3_.§%b§() == false);
                  
                  §§goto(addr111);
               }
            }
            §§goto(addr96);
         }
         else if(false)
         {
            §§goto(addr68);
         }
         §§goto(addr100);
      }
      
      private function §8>§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(!(_loc6_ && param1))
         {
            if(param1 == this.§<!t§)
            {
               if(_loc7_)
               {
                  addr36:
                  this.§<!t§ = null;
                  if(!_loc7_)
                  {
                     addr42:
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
                              if(!_loc6_)
                              {
                                 addr74:
                                 if(_loc3_)
                                 {
                                    if(_loc7_)
                                    {
                                       if(_loc3_.child1 == _loc2_)
                                       {
                                          if(_loc7_)
                                          {
                                             _loc3_.child1 = _loc4_;
                                             addr84:
                                             if(_loc7_)
                                             {
                                                loop0:
                                                while(true)
                                                {
                                                   _loc4_.parent = _loc3_;
                                                   while(!(_loc6_ && param1))
                                                   {
                                                      this.§%!c§(_loc2_);
                                                      if(!_loc6_)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop0;
                                                         }
                                                         continue loop0;
                                                      }
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
                                                      addr193:
                                                      addr190:
                                                      this.§%!c§(_loc2_);
                                                      return;
                                                   }
                                                   _loc5_ = _loc3_.aabb;
                                                   if(!_loc6_)
                                                   {
                                                      _loc3_.aabb = b2AABB.§^!%§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                                                      if(_loc7_ || this)
                                                      {
                                                         if(!_loc5_.§`7§(_loc3_.aabb))
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr193);
                                                addr108:
                                             }
                                          }
                                       }
                                       else
                                       {
                                          _loc3_.child2 = _loc4_;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr108);
                                    }
                                 }
                                 else
                                 {
                                    this.§<!t§ = _loc4_;
                                    if(_loc7_ || this)
                                    {
                                       _loc4_.parent = null;
                                       if(!_loc6_)
                                       {
                                          §§goto(addr190);
                                       }
                                       §§goto(addr193);
                                    }
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr84);
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
               }
               return;
            }
            §§goto(addr42);
         }
         §§goto(addr36);
      }
   }
}
