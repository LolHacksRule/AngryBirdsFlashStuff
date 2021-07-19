package §'"-§
{
   import §,"[§.*;
   import §6!^§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §`!b§:b2DynamicTreeNode;
      
      private var §43§:b2DynamicTreeNode;
      
      private var §%"X§:uint;
      
      private var §1!<§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§`!b§ = null;
               loop1:
               do
               {
                  this.§43§ = null;
                  while(true)
                  {
                     this.§%"X§ = 0;
                     while(_loc2_ || _loc2_)
                     {
                        if(_loc2_)
                        {
                           this.§1!<§ = 0;
                           if(_loc2_ || _loc2_)
                           {
                              continue loop1;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
               while(_loc1_ && _loc2_);
               
            }
         }
      }
      
      public function §!!$§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§2!a§();
         if(_loc7_ || param1)
         {
            §§push(b2Settings.b2_aabbExtension);
            loop0:
            while(true)
            {
               §§push(Number(§§pop()));
               while(true)
               {
                  _loc4_ = §§pop();
                  while(true)
                  {
                     §§push(b2Settings.b2_aabbExtension);
                     if(!_loc6_)
                     {
                        if(!(_loc7_ || this))
                        {
                           break;
                        }
                        if(!_loc7_)
                        {
                           continue loop0;
                        }
                        §§push(Number(§§pop()));
                     }
                     _loc5_ = §§pop();
                     loop3:
                     for(; !(_loc6_ && param2); while(_loc7_ || param1)
                     {
                        §§goto(addr154);
                        §§push(_loc3_.aabb);
                     })
                     {
                        §§push(_loc3_.aabb);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop().§8"S§);
                           loop5:
                           while(true)
                           {
                              §§push(param1.§8"S§);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 if(_loc7_ || this)
                                 {
                                    §§push(_loc4_);
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr174:
                                       §§push(_loc5_);
                                       if(!(_loc7_ || this))
                                       {
                                          continue;
                                       }
                                       addr183:
                                       §§push(§§pop() - §§pop());
                                       if(!_loc6_)
                                       {
                                          §§pop().y = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             §§push(_loc3_.aabb);
                                             addr129:
                                             addr154:
                                             while(!(_loc6_ && param2))
                                             {
                                                §§push(§§pop().§4B§);
                                                while(true)
                                                {
                                                   §§push(param1.§4B§);
                                                   addr139:
                                                   addr74:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr140:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         addr141:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr142:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               continue loop11;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§push(§§pop().§4B§);
                                                   if(!(_loc7_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(param1.§4B§);
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop().y);
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         §§push(_loc5_);
                                                         if(!_loc6_)
                                                         {
                                                            addr98:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc7_ || this)
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  §§pop().y = §§pop();
                                                                  loop19:
                                                                  while(!_loc6_)
                                                                  {
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        _loc3_.§-!"§ = param2;
                                                                        while(!_loc6_)
                                                                        {
                                                                           this.§?" §(_loc3_);
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break loop20;
                                                                              }
                                                                              continue loop19;
                                                                           }
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     return _loc3_;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr140);
                                                            }
                                                            §§goto(addr142);
                                                         }
                                                         §§goto(addr141);
                                                      }
                                                      §§goto(addr98);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr139);
                                                   }
                                                }
                                                §§push(_loc3_.aabb);
                                                if(!(_loc7_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(_loc6_)
                                                {
                                                   continue loop4;
                                                }
                                                §§goto(addr74);
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop().§8"S§);
                                                if(!_loc7_)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(param1.§8"S§);
                                                if(!(_loc7_ || param2))
                                                {
                                                   continue loop6;
                                                }
                                                §§push(§§pop().y);
                                                if(_loc7_ || _loc3_)
                                                {
                                                   §§goto(addr174);
                                                }
                                                §§goto(addr183);
                                                §§goto(addr129);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          continue loop3;
                                       }
                                       addr203:
                                    }
                                 }
                                 §§goto(addr203);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      public function §&-§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=!V§(param1);
         }
         do
         {
            this.§94§(param1);
         }
         while(_loc3_ && _loc3_);
         
      }
      
      public function § c§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(_loc7_ || param2)
         {
            b2Settings.b2Assert(param1.§3!n§());
            loop0:
            while(true)
            {
               §§push(param1.aabb);
               loop1:
               while(true)
               {
                  §§push(§§pop().§?"3§(param2));
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           this.§=!V§(param1);
                           loop4:
                           while(true)
                           {
                              if(_loc6_ && param2)
                              {
                                 continue loop3;
                              }
                              if(!(_loc6_ && this))
                              {
                                 §§push(b2Settings.b2_aabbExtension);
                                 if(_loc7_)
                                 {
                                    §§push(b2Settings.b2_aabbMultiplier);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(param3.x);
                                       if(_loc7_)
                                       {
                                          §§push(0);
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             addr301:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc7_ || param2)
                                                   {
                                                      §§push(param3.x);
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         addr317:
                                                         addr248:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         if(!(_loc7_ || param2))
                                                         {
                                                            continue;
                                                         }
                                                         addr270:
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc7_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  addr286:
                                                                  _loc5_ = §§pop();
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.aabb);
                                                                     loop17:
                                                                     while(_loc7_)
                                                                     {
                                                                        §§push(§§pop().§8"S§);
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(param2.§8"S§);
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
                                                                                       loop23:
                                                                                       while(_loc7_)
                                                                                       {
                                                                                          §§push(param1.aabb);
                                                                                          while(!_loc6_)
                                                                                          {
                                                                                             §§push(§§pop().§8"S§);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             §§push(param2.§8"S§);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             §§push(§§pop().y);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(!(_loc7_ || param2))
                                                                                                {
                                                                                                   continue loop22;
                                                                                                }
                                                                                                if(_loc6_ && param2)
                                                                                                {
                                                                                                   continue loop20;
                                                                                                }
                                                                                                §§push(_loc5_);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   continue loop21;
                                                                                                }
                                                                                                §§push(§§pop() - §§pop());
                                                                                             }
                                                                                             §§pop().y = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1.aabb);
                                                                                                loop26:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().§4B§);
                                                                                                   addr110:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param2.§4B§);
                                                                                                      addr112:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(!(_loc6_ && this))
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            addr121:
                                                                                                         }
                                                                                                         addr122:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            addr123:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc6_ && param3))
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     continue loop26;
                                                                                                                  }
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               continue loop23;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                       continue loop16;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               §§goto(addr319);
                                                            }
                                                            §§goto(addr320);
                                                         }
                                                         §§goto(addr286);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr319);
                                                   }
                                                   addr318:
                                                }
                                                else
                                                {
                                                   §§push(param3.x);
                                                }
                                             }
                                             §§push(0);
                                             if(!(_loc7_ || this))
                                             {
                                                continue;
                                             }
                                             §§push(§§pop() > §§pop());
                                             if(!(_loc6_ && this))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§push(param3.y);
                                                         if(_loc7_)
                                                         {
                                                            §§goto(addr248);
                                                         }
                                                         §§goto(addr262);
                                                      }
                                                      §§goto(addr318);
                                                   }
                                                   §§goto(addr270);
                                                }
                                                §§push(param3.y);
                                                if(_loc6_)
                                                {
                                                }
                                                §§goto(addr262);
                                             }
                                             §§goto(addr301);
                                          }
                                       }
                                       §§goto(addr315);
                                    }
                                 }
                                 §§goto(addr320);
                              }
                           }
                           §§goto(addr360);
                        }
                     }
                     if(_loc6_)
                     {
                        continue loop0;
                     }
                     addr360:
                     return §§pop();
                     §§push(false);
                  }
               }
            }
         }
         §§goto(addr167);
      }
      
      public function § r§(param1:int) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(!(_loc7_ && param1))
         {
            if(this.§`!b§ == null)
            {
               if(!_loc7_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < param1)
         {
            _loc3_ = this.§`!b§;
            if(_loc8_)
            {
               §§push(0);
               if(!(_loc7_ && _loc3_))
               {
                  §§push(uint(§§pop()));
                  if(!(_loc7_ && param1))
                  {
                     _loc4_ = §§pop();
                     if(!(_loc7_ && _loc2_))
                     {
                        loop1:
                        while(true)
                        {
                           if(_loc3_.§3!n§() != false)
                           {
                              if(_loc8_)
                              {
                                 var _loc5_:*;
                                 var _loc6_:* = (_loc5_ = this).§%"X§ + 1;
                                 if(_loc8_ || this)
                                 {
                                    _loc5_.§%"X§ = _loc6_;
                                 }
                                 if(_loc8_)
                                 {
                                    this.§=!V§(_loc3_);
                                    break;
                                 }
                                 loop5:
                                 while(false)
                                 {
                                    while(true)
                                    {
                                       this.§?" §(_loc3_);
                                       loop4:
                                       while(true)
                                       {
                                          if(!_loc8_)
                                          {
                                             break loop1;
                                          }
                                          while(true)
                                          {
                                             _loc2_++;
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                continue loop5;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                              §§goto(addr178);
                           }
                           else
                           {
                              §§push(this.§%"X§);
                              while(true)
                              {
                                 §§push(§§pop() >> _loc4_);
                                 if(!_loc7_)
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
                                       if(_loc7_)
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
                                       if(!(_loc7_ && param1))
                                       {
                                          §§push(_loc4_);
                                          if(_loc8_ || _loc3_)
                                          {
                                             §§push(uint(§§pop() + 1 & 31));
                                          }
                                          _loc4_ = §§pop();
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              addr75:
                           }
                        }
                        while(true)
                        {
                           §§goto(addr172);
                        }
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr75);
               }
               §§goto(addr89);
            }
            §§goto(addr178);
         }
      }
      
      public function §""8§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§-!"§;
      }
      
      public function §^"Y§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(_loc10_ || this)
         {
            if(this.§`!b§ == null)
            {
               if(_loc10_)
               {
                  return;
               }
            }
         }
         var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc4_:int = 0;
         var _loc7_:*;
         _loc3_[_loc7_ = _loc4_++] = this.§`!b§;
         while(true)
         {
            if(_loc4_ <= 0)
            {
               return;
            }
            §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§9e§(param2));
            if(!(_loc11_ && this))
            {
               if(!§§pop())
               {
                  continue;
               }
               if(_loc11_ && param1)
               {
                  continue;
               }
               §§push(_loc5_.§3!n§());
               if(!(_loc11_ && param1))
               {
                  if(§§pop())
                  {
                     if(!(_loc11_ && param1))
                     {
                        §§push(Boolean(param1(_loc5_)));
                        if(_loc10_)
                        {
                           addr117:
                           §§push(_loc6_ = §§pop());
                        }
                        if(!§§pop())
                        {
                           if(_loc10_ || this)
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
            }
            §§goto(addr117);
         }
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
         var _loc17_:Number = NaN;
         var _loc18_:b2RayCastInput = null;
         if(!(_loc22_ && param2))
         {
            if(this.§`!b§ == null)
            {
               if(!_loc22_)
               {
                  return;
               }
            }
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2;
         (_loc5_ = b2Math.§9N§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§6!?§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§@"B§(_loc6_);
         §§push(param2.§;"I§);
         if(!_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         _loc9_ = new b2AABB();
         if(_loc23_)
         {
            §§push(_loc3_.x);
            loop0:
            while(true)
            {
               §§push(_loc8_);
               if(!(_loc22_ && _loc3_))
               {
                  §§push(_loc4_.x);
                  while(true)
                  {
                     §§push(_loc3_.x);
                     addr258:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr259:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                        }
                     }
                     addr204:
                     if(!(_loc23_ || param1))
                     {
                        continue;
                     }
                     §§push(_loc3_.y);
                     if(!_loc22_)
                     {
                        addr216:
                        §§push(§§pop() * (§§pop() - §§pop()));
                        if(_loc23_ || _loc3_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc23_ || this)
                           {
                              if(_loc23_)
                              {
                                 continue loop0;
                              }
                              loop5:
                              while(true)
                              {
                                 _loc10_ = §§pop();
                                 addr270:
                                 addr260:
                                 while(true)
                                 {
                                    §§push(_loc3_.y);
                                    if(!(_loc22_ && _loc3_))
                                    {
                                       §§push(_loc8_);
                                       if(!(_loc22_ && _loc3_))
                                       {
                                          §§push(_loc4_.y);
                                          if(!_loc22_)
                                          {
                                             if(!_loc22_)
                                             {
                                                §§goto(addr204);
                                             }
                                             §§goto(addr259);
                                          }
                                       }
                                       §§goto(addr216);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc23_ || param2)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           addr242:
                           _loc11_ = §§pop();
                           loop7:
                           while(true)
                           {
                              §§push(_loc9_.§8"S§);
                              loop8:
                              while(true)
                              {
                                 §§pop().x = Math.min(_loc3_.x,_loc10_);
                                 addr179:
                                 while(true)
                                 {
                                    §§push(_loc9_.§8"S§);
                                    if(!_loc22_)
                                    {
                                       §§pop().y = Math.min(_loc3_.y,_loc11_);
                                       continue loop7;
                                    }
                                    continue loop8;
                                 }
                              }
                           }
                        }
                        §§goto(addr260);
                     }
                     §§goto(addr258);
                  }
               }
               §§goto(addr260);
            }
         }
         §§goto(addr179);
      }
      
      private function §2!a§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2DynamicTreeNode = null;
         if(_loc2_ || this)
         {
            §§push(this.§43§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  return new b2DynamicTreeNode();
               }
               addr31:
               §§push(this.§43§);
            }
            _loc1_ = §§pop();
            if(!_loc3_)
            {
               this.§43§ = _loc1_.parent;
            }
            _loc1_.parent = null;
            _loc1_.child1 = null;
            do
            {
               _loc1_.child2 = null;
            }
            while(_loc3_);
            
            return _loc1_;
         }
         §§goto(addr31);
      }
      
      private function §94§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            param1.parent = this.§43§;
         }
         do
         {
            this.§43§ = param1;
         }
         while(_loc3_ && _loc3_);
         
      }
      
      private function §?" §(param1:b2DynamicTreeNode) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(!_loc13_)
         {
            var _loc10_:*;
            §§push((_loc10_ = this).§1!<§);
            if(_loc12_)
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(!(_loc13_ && this))
            {
               _loc10_.§1!<§ = _loc11_;
            }
            if(!_loc13_)
            {
               §§push(this.§`!b§);
               loop0:
               while(true)
               {
                  §§push(null);
                  addr87:
                  while(§§pop() == §§pop())
                  {
                     if(!(_loc13_ && param1))
                     {
                        this.§`!b§ = param1;
                     }
                     continue loop0;
                  }
                  var _loc2_:b2Vec2 = param1.aabb.§4P§();
                  var _loc3_:b2DynamicTreeNode = this.§`!b§;
                  if(!(_loc13_ && _loc2_))
                  {
                     if(_loc3_.§3!n§() == false)
                     {
                        addr119:
                        do
                        {
                           _loc6_ = _loc3_.child1;
                           _loc7_ = _loc3_.child2;
                           if(!(_loc13_ && _loc3_))
                           {
                              §§push(Number(Math.abs((_loc6_.aabb.§8"S§.x + _loc6_.aabb.§4B§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§8"S§.y + _loc6_.aabb.§4B§.y) / 2 - _loc2_.y)));
                              if(_loc12_)
                              {
                                 _loc8_ = §§pop();
                                 if(_loc12_ || this)
                                 {
                                    §§push(Number(Math.abs((_loc7_.aabb.§8"S§.x + _loc7_.aabb.§4B§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§8"S§.y + _loc7_.aabb.§4B§.y) / 2 - _loc2_.y)));
                                    if(_loc12_)
                                    {
                                       _loc9_ = §§pop();
                                       addr232:
                                       if(_loc12_)
                                       {
                                          §§push(_loc8_);
                                       }
                                       _loc3_ = _loc6_;
                                       if(_loc13_ && this)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                 }
                                 §§goto(addr232);
                              }
                              if(§§pop() >= _loc9_)
                              {
                                 _loc3_ = _loc7_;
                                 continue;
                              }
                           }
                           §§goto(addr232);
                        }
                        while(_loc3_.§3!n§() == false);
                        
                     }
                     var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                     var _loc5_:b2DynamicTreeNode;
                     (_loc5_ = this.§2!a§()).parent = _loc4_;
                     if(_loc12_ || _loc2_)
                     {
                        _loc5_.§-!"§ = null;
                        if(!_loc13_)
                        {
                           §§push(_loc5_.aabb);
                           loop2:
                           while(true)
                           {
                              §§push(param1.aabb);
                              loop3:
                              while(true)
                              {
                                 §§push(_loc3_.aabb);
                                 loop4:
                                 while(true)
                                 {
                                    §§pop().§9!-§(§§pop(),§§pop());
                                    loop5:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          _loc5_.child1 = _loc3_;
                                          if(_loc12_)
                                          {
                                             §§goto(addr421);
                                          }
                                          break;
                                       }
                                       if(!_loc13_)
                                       {
                                          while(true)
                                          {
                                             if(_loc3_.parent.child1 == _loc3_)
                                             {
                                                if(_loc12_ || _loc2_)
                                                {
                                                   _loc4_.child1 = _loc5_;
                                                   if(_loc12_ || _loc2_)
                                                   {
                                                      loop10:
                                                      while(true)
                                                      {
                                                         _loc5_.child1 = _loc3_;
                                                         loop11:
                                                         while(true)
                                                         {
                                                            _loc5_.child2 = param1;
                                                            loop12:
                                                            while(_loc12_)
                                                            {
                                                               _loc3_.parent = _loc5_;
                                                               loop13:
                                                               while(_loc12_ || _loc3_)
                                                               {
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     param1.parent = _loc5_;
                                                                     if(!_loc12_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc13_)
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_.aabb);
                                                                              if(_loc12_ || _loc2_)
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 §§push(_loc5_.aabb);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    if(§§pop().§?"3§(§§pop()))
                                                                                    {
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          break loop5;
                                                                                       }
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       addr415:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr299:
                                                                                       §§push(_loc4_.aabb);
                                                                                       §§push(_loc4_.child1.aabb);
                                                                                       if(_loc13_ && _loc3_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       §§push(_loc4_.child2.aabb);
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§pop().§9!-§(§§pop(),§§pop());
                                                                                       if(_loc12_ || param1)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          _loc5_ = _loc4_;
                                                                                          if(_loc4_ = _loc4_.parent)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr415);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             param1.parent = _loc5_;
                                                                                             break loop5;
                                                                                          }
                                                                                          addr449:
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             break loop14;
                                                                                          }
                                                                                          addr451:
                                                                                          addr461:
                                                                                       }
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                              }
                                                                              §§goto(addr299);
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc3_.parent = _loc5_;
                                                                     §§goto(addr449);
                                                                  }
                                                                  §§goto(addr451);
                                                               }
                                                               continue loop11;
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc5_.child2 = param1;
                                                      addr421:
                                                      §§goto(addr465);
                                                      addr421:
                                                   }
                                                   §§goto(addr465);
                                                }
                                                §§goto(addr461);
                                             }
                                             else
                                             {
                                                _loc4_.child2 = _loc5_;
                                             }
                                             §§goto(addr362);
                                          }
                                          addr368:
                                       }
                                       §§goto(addr421);
                                    }
                                    do
                                    {
                                       this.§`!b§ = _loc5_;
                                    }
                                    while(!_loc12_);
                                    
                                    if(_loc12_ || param1)
                                    {
                                    }
                                    §§goto(addr449);
                                 }
                              }
                           }
                        }
                        §§goto(addr465);
                     }
                     §§goto(addr368);
                  }
                  §§goto(addr119);
               }
               addr86:
            }
            do
            {
               §§push(this.§`!b§);
               if(!(_loc13_ && this))
               {
                  §§push(null);
                  if(_loc12_ || param1)
                  {
                     continue;
                  }
               }
               else
               {
                  §§goto(addr86);
               }
               §§goto(addr87);
            }
            while(§§pop().parent = §§pop(), _loc13_);
            
         }
      }
      
      private function §=!V§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(!(_loc7_ && _loc3_))
         {
            if(param1 == this.§`!b§)
            {
               if(_loc6_)
               {
                  addr35:
                  this.§`!b§ = null;
                  if(!(_loc7_ && _loc2_))
                  {
                     return;
                  }
               }
            }
            var _loc2_:b2DynamicTreeNode = param1.parent;
            var _loc3_:b2DynamicTreeNode = _loc2_.parent;
            if(!_loc7_)
            {
               §§push(_loc2_.child1);
               if(!(_loc7_ && param1))
               {
                  if(§§pop() == param1)
                  {
                     addr67:
                     _loc4_ = _loc2_.child2;
                     if(!_loc7_)
                     {
                        §§goto(addr78);
                     }
                     §§goto(addr133);
                  }
                  else
                  {
                     addr76:
                     _loc4_ = _loc2_.child1;
                  }
                  addr78:
                  if(_loc3_)
                  {
                     if(_loc6_)
                     {
                        if(_loc3_.child1 == _loc2_)
                        {
                           if(!_loc7_)
                           {
                              _loc3_.child1 = _loc4_;
                              if(!(_loc7_ && _loc3_))
                              {
                                 loop1:
                                 while(true)
                                 {
                                    _loc4_.parent = _loc3_;
                                    addr128:
                                    while(true)
                                    {
                                       this.§94§(_loc2_);
                                       if(!_loc6_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc6_ || _loc2_))
                                       {
                                          addr133:
                                          while(true)
                                          {
                                             continue loop1;
                                          }
                                          addr133:
                                       }
                                    }
                                 }
                                 addr124:
                                 addr108:
                              }
                              while(false)
                              {
                                 §§goto(addr124);
                                 §§goto(addr128);
                              }
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    _loc5_ = _loc3_.aabb;
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       _loc3_.aabb = b2AABB.§9!-§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                                       if(_loc6_)
                                       {
                                          if(!_loc5_.§?"3§(_loc3_.aabb))
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 if(_loc6_ || _loc3_)
                                 {
                                    break;
                                 }
                                 addr194:
                                 _loc4_.parent = null;
                                 if(!_loc7_)
                                 {
                                    this.§94§(_loc2_);
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr108);
                        }
                        else
                        {
                           _loc3_.child2 = _loc4_;
                           §§goto(addr133);
                        }
                     }
                     §§goto(addr128);
                  }
                  else
                  {
                     this.§`!b§ = _loc4_;
                     if(!_loc7_)
                     {
                        §§goto(addr194);
                     }
                  }
                  addr202:
                  return;
               }
               §§goto(addr76);
            }
            §§goto(addr67);
         }
         §§goto(addr35);
      }
   }
}
