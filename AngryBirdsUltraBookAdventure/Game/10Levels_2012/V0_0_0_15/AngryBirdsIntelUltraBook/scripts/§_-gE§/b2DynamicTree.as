package §_-gE§
{
   import §_-5§.*;
   import §_-Yp§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §_-YV§:b2DynamicTreeNode;
      
      private var §_-6d§:b2DynamicTreeNode;
      
      private var §_-qV§:uint;
      
      private var § else§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
            while(true)
            {
               this.§_-YV§ = null;
               loop1:
               for(; _loc1_; if(_loc2_ && _loc1_)
               {
                  continue;
               },§§goto(addr73))
               {
                  this.§_-6d§ = null;
                  loop2:
                  while(true)
                  {
                     this.§_-qV§ = 0;
                     while(true)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           continue loop1;
                        }
                        continue loop2;
                        addr73:
                        this.§ else§ = 0;
                        if(_loc1_)
                        {
                           return;
                           addr44:
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §_-7Y§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§_-0-L§();
         if(_loc6_)
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
                     if(!(_loc7_ && this))
                     {
                        §§push(Number(§§pop()));
                     }
                     if(_loc7_)
                     {
                        break;
                     }
                     if(_loc6_)
                     {
                        _loc5_ = §§pop();
                        while(!(_loc7_ && this))
                        {
                        }
                        continue;
                        addr232:
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §§push(_loc3_.aabb);
            loop5:
            while(true)
            {
               §§push(§§pop().§_-Bv§);
               loop6:
               while(true)
               {
                  §§push(param1.§_-Bv§);
                  loop7:
                  while(true)
                  {
                     §§push(§§pop().x);
                     if(_loc6_ || param2)
                     {
                        §§push(_loc4_);
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           addr175:
                           §§push(_loc5_);
                           if(!(_loc6_ || param2))
                           {
                              continue;
                           }
                           addr184:
                           §§pop().y = §§pop() - §§pop();
                           while(_loc6_)
                           {
                              §§push(_loc3_.aabb);
                              loop13:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop().§_-MB§);
                                    while(true)
                                    {
                                       §§push(param1.§_-MB§);
                                       addr140:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr141:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             addr142:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr143:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   continue loop13;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop().§_-Bv§);
                                       if(!(_loc6_ || _loc3_))
                                       {
                                          continue loop6;
                                       }
                                       §§push(param1.§_-Bv§);
                                       if(_loc7_ && param2)
                                       {
                                          continue loop7;
                                       }
                                       §§push(§§pop().y);
                                       if(_loc6_ || param1)
                                       {
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          §§goto(addr175);
                                       }
                                       §§goto(addr184);
                                    }
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       addr215:
                                       while(true)
                                       {
                                          §§goto(addr148);
                                       }
                                    }
                                    addr148:
                                    addr204:
                                 }
                              }
                              continue loop5;
                              if(_loc7_ && this)
                              {
                                 continue;
                              }
                              §§goto(addr60);
                           }
                           §§goto(addr232);
                        }
                     }
                     §§goto(addr204);
                  }
               }
            }
         }
      }
      
      public function §_-yw§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-MI§(param1);
         }
         do
         {
            this.§_-0BS§(param1);
         }
         while(!_loc3_);
         
      }
      
      public function §_-BG§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!(_loc7_ && param3))
         {
            b2Settings.b2Assert(param1.§_-EF§());
            loop0:
            while(true)
            {
               §§push(param1.aabb);
               loop1:
               while(true)
               {
                  §§push(§§pop().§_-PI§(param2));
                  addr370:
                  addr372:
                  while(!§§pop())
                  {
                     while(true)
                     {
                        this.§_-MI§(param1);
                        loop4:
                        while(true)
                        {
                           §§push(b2Settings.b2_aabbExtension);
                           while(true)
                           {
                              §§push(b2Settings.b2_aabbMultiplier);
                              loop6:
                              while(true)
                              {
                                 §§push(param3.x);
                                 if(!_loc7_)
                                 {
                                    §§push(0);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       addr329:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             addr330:
                                             while(true)
                                             {
                                                §§push(param3.x);
                                                addr332:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                }
                                             }
                                             addr330:
                                          }
                                          else
                                          {
                                             §§push(param3.x);
                                             while(true)
                                             {
                                                §§push(-§§pop());
                                                addr337:
                                                addr248:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                }
                                                if(_loc6_ || this)
                                                {
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          addr338:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             addr339:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc7_ && param1))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                loop13:
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                   addr359:
                                                   while(true)
                                                   {
                                                      §§push(b2Settings.b2_aabbExtension);
                                                      if(!_loc7_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      addr310:
                                                      addr309:
                                                      _loc5_ = §§pop();
                                                      while(_loc6_ || param3)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(param1.aabb);
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§_-Bv§);
                                                               addr200:
                                                               while(true)
                                                               {
                                                                  §§push(param2.§_-Bv§);
                                                                  addr202:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           addr178:
                                                                           §§push(_loc5_);
                                                                           if(_loc7_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§pop().y = §§pop() - §§pop();
                                                                           loop26:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(param1.aabb);
                                                                                 while(!_loc7_)
                                                                                 {
                                                                                    §§push(§§pop().§_-MB§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param2.§_-MB§);
                                                                                       addr122:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr123:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             addr124:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                addr125:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   continue loop26;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§push(param1.aabb);
                                                                                    if(!(_loc7_ && param1))
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                 }
                                                                                 continue loop19;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        addr206:
                                                                     }
                                                                     addr207:
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        §§goto(addr208);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop6;
                                                }
                                                §§goto(addr330);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr332);
                              }
                              if(_loc7_ && param1)
                              {
                                 continue;
                              }
                              §§push(b2Settings.b2_aabbMultiplier);
                              if(!_loc7_)
                              {
                                 if(!(_loc7_ && this))
                                 {
                                    §§push(param3.y);
                                    if(_loc6_ || param1)
                                    {
                                       §§goto(addr248);
                                    }
                                    §§goto(addr291);
                                 }
                                 §§goto(addr330);
                              }
                              §§goto(addr274);
                           }
                        }
                     }
                  }
                  return false;
               }
            }
         }
         §§goto(addr317);
      }
      
      public function §_-DT§(param1:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(_loc7_)
         {
            if(this.§_-YV§ == null)
            {
               if(_loc7_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < param1)
         {
            _loc3_ = this.§_-YV§;
            if(_loc7_ || param1)
            {
               §§push(0);
               if(_loc7_)
               {
                  §§push(uint(§§pop()));
                  if(!(_loc8_ && param1))
                  {
                     _loc4_ = §§pop();
                     if(!(_loc8_ && _loc3_))
                     {
                        loop1:
                        while(true)
                        {
                           if(_loc3_.§_-EF§() != false)
                           {
                              if(_loc7_ || this)
                              {
                                 break;
                              }
                              loop2:
                              while(true)
                              {
                                 _loc2_++;
                                 if(!(_loc7_ || param1))
                                 {
                                    continue;
                                 }
                                 if(_loc7_ || _loc3_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    addr171:
                                    while(true)
                                    {
                                    }
                                    addr171:
                                 }
                                 while(true)
                                 {
                                    this.§_-05F§(_loc3_);
                                    continue loop2;
                                 }
                              }
                              continue loop0;
                           }
                           addr69:
                           §§push(this.§_-qV§);
                           while(true)
                           {
                              §§push(§§pop() >> _loc4_);
                              if(_loc7_)
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
                                       §§push(_loc3_.child2);
                                    }
                                    else
                                    {
                                       §§push(_loc3_.child1);
                                    }
                                    _loc3_ = §§pop();
                                    if(_loc7_)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc8_)
                                       {
                                          §§push(uint(§§pop() + 1 & 31));
                                       }
                                       _loc4_ = §§pop();
                                    }
                                    continue loop1;
                                 }
                                 addr85:
                              }
                              §§goto(addr85);
                           }
                        }
                        var _loc5_:*;
                        var _loc6_:* = (_loc5_ = this).§_-qV§ + 1;
                        if(_loc7_)
                        {
                           _loc5_.§_-qV§ = _loc6_;
                        }
                        if(_loc8_)
                        {
                        }
                        §§goto(addr171);
                     }
                     this.§_-MI§(_loc3_);
                     §§goto(addr171);
                  }
                  §§goto(addr69);
               }
               §§goto(addr85);
            }
            §§goto(addr171);
         }
      }
      
      public function §_-082§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§_-05u§;
      }
      
      public function §_-CP§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(_loc10_ || this)
         {
            if(this.§_-YV§ == null)
            {
               if(!_loc11_)
               {
                  return;
               }
            }
         }
         var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc4_:int = 0;
         var _loc7_:*;
         _loc3_[_loc7_ = _loc4_++] = this.§_-YV§;
         while(true)
         {
            if(_loc4_ <= 0)
            {
               return;
            }
            §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§_-Rd§(param2));
            if(!(_loc11_ && param2))
            {
               if(!§§pop())
               {
                  continue;
               }
               if(!_loc10_)
               {
                  continue;
               }
               §§push(_loc5_.§_-EF§());
               if(_loc10_)
               {
                  addr92:
                  if(§§pop())
                  {
                     if(_loc10_ || param2)
                     {
                        §§push(Boolean(param1(_loc5_)));
                        if(!(_loc11_ && param1))
                        {
                           addr114:
                           if(!(_loc6_ = §§pop()))
                           {
                              if(!_loc11_)
                              {
                                 break;
                              }
                           }
                        }
                        §§goto(addr114);
                     }
                  }
                  else
                  {
                     var _loc8_:*;
                     _loc3_[_loc8_ = _loc4_++] = _loc5_.child1;
                     if(!_loc11_)
                     {
                        var _loc9_:*;
                        _loc3_[_loc9_ = _loc4_++] = _loc5_.child2;
                     }
                  }
                  continue;
               }
               §§goto(addr114);
            }
            §§goto(addr92);
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
         var _loc17_:* = NaN;
         var _loc18_:b2RayCastInput = null;
         if(_loc23_)
         {
            if(this.§_-YV§ == null)
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
         (_loc5_ = b2Math.§_-DO§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§_-2t§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§_-02-§(_loc6_);
         §§push(param2.§_-r9§);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         _loc9_ = new b2AABB();
         if(_loc23_)
         {
            §§push(_loc3_.x);
            while(true)
            {
               §§push(_loc8_);
               loop1:
               while(true)
               {
                  §§push(_loc4_.x);
                  loop2:
                  while(true)
                  {
                     §§push(_loc3_.x);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc22_ && param2))
                              {
                                 §§push(Number(§§pop()));
                              }
                              loop6:
                              while(true)
                              {
                                 _loc10_ = §§pop();
                                 addr250:
                                 while(true)
                                 {
                                    §§push(_loc3_.y);
                                    if(!(_loc22_ && param2))
                                    {
                                       §§push(_loc8_);
                                       if(_loc23_)
                                       {
                                          if(_loc22_ && _loc3_)
                                          {
                                             continue loop5;
                                          }
                                          §§push(_loc4_.y);
                                          if(!_loc22_)
                                          {
                                             if(!_loc23_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(_loc3_.y);
                                             if(_loc22_ && this)
                                             {
                                                continue loop3;
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          if(_loc22_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(§§pop() * §§pop());
                                       }
                                       if(!(_loc23_ || this))
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc23_ || param1))
                                       {
                                          continue loop6;
                                       }
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc23_ || this))
               {
                  continue;
               }
               _loc11_ = §§pop();
               loop8:
               while(true)
               {
                  §§push(_loc9_.§_-Bv§);
                  while(true)
                  {
                     §§pop().x = Math.min(_loc3_.x,_loc10_);
                     while(true)
                     {
                        §§push(_loc9_.§_-Bv§);
                        if(_loc22_)
                        {
                           break;
                        }
                        §§pop().y = Math.min(_loc3_.y,_loc11_);
                        loop11:
                        while(!_loc22_)
                        {
                           while(true)
                           {
                              §§push(_loc9_.§_-MB§);
                              addr122:
                              while(true)
                              {
                                 §§pop().x = Math.max(_loc3_.x,_loc10_);
                                 while(true)
                                 {
                                    if(_loc23_ || param1)
                                    {
                                       §§push(_loc9_.§_-MB§);
                                       if(!_loc22_)
                                       {
                                          §§pop().y = Math.max(_loc3_.y,_loc11_);
                                          if(!(_loc23_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          if(!_loc23_)
                                          {
                                             continue loop8;
                                          }
                                          if(_loc23_ || param2)
                                          {
                                             while(false)
                                             {
                                                §§goto(addr119);
                                             }
                                             var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
                                             var _loc13_:int = 0;
                                             var _loc19_:*;
                                             _loc12_[_loc19_ = _loc13_++] = this.§_-YV§;
                                             while(_loc13_ > 0)
                                             {
                                                §§push((_loc14_ = _loc12_[--_loc13_]).aabb);
                                                if(!_loc22_)
                                                {
                                                   if(§§pop().§_-Rd§(_loc9_) == false)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc14_.aabb);
                                                }
                                                _loc15_ = §§pop().§_-sF§();
                                                _loc16_ = _loc14_.aabb.§_-Uo§();
                                                if(_loc23_)
                                                {
                                                   §§push(Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x);
                                                   if(_loc23_ || _loc3_)
                                                   {
                                                      §§push(_loc7_.y);
                                                      if(!_loc22_)
                                                      {
                                                         §§push(§§pop() * _loc16_.y);
                                                         if(_loc23_)
                                                         {
                                                            addr352:
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc22_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!_loc22_)
                                                               {
                                                                  addr358:
                                                                  §§push(§§pop());
                                                                  if(_loc23_)
                                                                  {
                                                                     addr361:
                                                                     _loc17_ = §§pop();
                                                                     addr362:
                                                                     §§push(0);
                                                                  }
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(!_loc22_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr372:
                                                                     (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                                                                     if(_loc23_)
                                                                     {
                                                                        _loc18_.p2 = param2.p2;
                                                                        while(true)
                                                                        {
                                                                           _loc18_.§_-r9§ = param2.§_-r9§;
                                                                        }
                                                                        addr604:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(param1(_loc18_,_loc14_)));
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc22_)
                                                                           {
                                                                              _loc8_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                              }
                                                                              addr590:
                                                                           }
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 addr592:
                                                                                 return;
                                                                              }
                                                                              addr550:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_.x);
                                                                                 loop23:
                                                                                 while(_loc23_)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_.x);
                                                                                       if(_loc23_)
                                                                                       {
                                                                                          §§push(_loc3_.x);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                          }
                                                                                          addr562:
                                                                                       }
                                                                                       addr563:
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          loop27:
                                                                                          while(_loc23_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc23_ || param2)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             loop28:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc10_ = §§pop();
                                                                                                addr576:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      §§push(_loc3_.y);
                                                                                                      if(_loc23_ || param1)
                                                                                                      {
                                                                                                         if(!(_loc22_ && param2))
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            if(!(_loc22_ && this))
                                                                                                            {
                                                                                                               if(!_loc22_)
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            addr525:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!(_loc22_ && param2))
                                                                                                            {
                                                                                                               continue loop28;
                                                                                                            }
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   §§goto(addr604);
                                                                                                }
                                                                                                continue loop26;
                                                                                             }
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr590);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     if(!_loc14_.§_-EF§())
                                                                     {
                                                                        var _loc20_:*;
                                                                        _loc12_[_loc20_ = _loc13_++] = _loc14_.child1;
                                                                        if(!(_loc22_ && _loc3_))
                                                                        {
                                                                           var _loc21_:*;
                                                                           _loc12_[_loc21_ = _loc13_++] = _loc14_.child2;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     if(_loc22_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr372);
                                                                  }
                                                                  §§goto(addr372);
                                                               }
                                                               §§goto(addr362);
                                                            }
                                                            §§goto(addr358);
                                                         }
                                                         §§goto(addr361);
                                                      }
                                                      §§goto(addr352);
                                                   }
                                                   §§goto(addr358);
                                                }
                                                §§goto(addr372);
                                             }
                                             return;
                                             addr117:
                                          }
                                          §§goto(addr250);
                                       }
                                       break;
                                    }
                                    continue loop11;
                                 }
                                 §§goto(addr122);
                                 continue loop11;
                              }
                           }
                           continue loop8;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      private function §_-0-L§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2DynamicTreeNode = null;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§_-6d§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  return new b2DynamicTreeNode();
               }
               addr41:
               §§push(this.§_-6d§);
            }
            _loc1_ = §§pop();
            if(!_loc3_)
            {
               this.§_-6d§ = _loc1_.parent;
               loop0:
               do
               {
                  _loc1_.parent = null;
                  while(true)
                  {
                     _loc1_.child1 = null;
                     while(!_loc3_)
                     {
                        _loc1_.child2 = null;
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(!_loc2_);
               
            }
            return _loc1_;
         }
         §§goto(addr41);
      }
      
      private function §_-0BS§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            param1.parent = this.§_-6d§;
         }
         do
         {
            this.§_-6d§ = param1;
         }
         while(!_loc2_);
         
      }
      
      private function §_-05F§(param1:b2DynamicTreeNode) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(!_loc12_)
         {
            var _loc10_:*;
            §§push((_loc10_ = this).§ else§);
            if(!(_loc12_ && _loc3_))
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(_loc13_ || _loc3_)
            {
               _loc10_.§ else§ = _loc11_;
            }
            if(_loc13_ || param1)
            {
               §§push(this.§_-YV§);
               loop0:
               while(true)
               {
                  §§push(null);
                  addr98:
                  while(§§pop() == §§pop())
                  {
                     if(_loc12_ && _loc3_)
                     {
                        continue loop0;
                     }
                  }
                  var _loc2_:b2Vec2 = param1.aabb.§_-sF§();
                  var _loc3_:b2DynamicTreeNode = this.§_-YV§;
                  if(!(_loc12_ && _loc2_))
                  {
                     if(_loc3_.§_-EF§() == false)
                     {
                        addr130:
                        do
                        {
                           _loc6_ = _loc3_.child1;
                           _loc7_ = _loc3_.child2;
                           if(_loc13_)
                           {
                              §§push(Number(Math.abs((_loc6_.aabb.§_-Bv§.x + _loc6_.aabb.§_-MB§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§_-Bv§.y + _loc6_.aabb.§_-MB§.y) / 2 - _loc2_.y)));
                              if(!_loc12_)
                              {
                                 _loc8_ = §§pop();
                                 if(_loc13_ || _loc3_)
                                 {
                                    addr186:
                                    §§push(Number(Math.abs((_loc7_.aabb.§_-Bv§.x + _loc7_.aabb.§_-MB§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§_-Bv§.y + _loc7_.aabb.§_-MB§.y) / 2 - _loc2_.y)));
                                    if(_loc13_)
                                    {
                                       _loc9_ = §§pop();
                                       if(_loc13_ || this)
                                       {
                                          addr241:
                                          if(_loc8_ >= _loc9_)
                                          {
                                             _loc3_ = _loc7_;
                                             continue;
                                          }
                                       }
                                    }
                                    §§goto(addr241);
                                 }
                                 _loc3_ = _loc6_;
                                 if(!(_loc13_ || _loc3_))
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr241);
                           }
                           §§goto(addr186);
                        }
                        while(_loc3_.§_-EF§() == false);
                        
                     }
                     var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                     var _loc5_:b2DynamicTreeNode;
                     (_loc5_ = this.§_-0-L§()).parent = _loc4_;
                     if(!_loc12_)
                     {
                        _loc5_.§_-05u§ = null;
                        while(true)
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
                                    §§pop().§_-WW§(§§pop(),§§pop());
                                    loop7:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          _loc5_.child1 = _loc3_;
                                          if(!(_loc12_ && this))
                                          {
                                             §§goto(addr437);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(_loc3_.parent.child1 == _loc3_)
                                          {
                                             if(!_loc12_)
                                             {
                                                _loc4_.child1 = _loc5_;
                                                loop9:
                                                while(true)
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      _loc5_.child1 = _loc3_;
                                                      if(!(_loc13_ || this))
                                                      {
                                                         break;
                                                      }
                                                      continue loop9;
                                                      addr389:
                                                      while(true)
                                                      {
                                                         continue loop10;
                                                      }
                                                   }
                                                   addr477:
                                                   loop18:
                                                   while(true)
                                                   {
                                                      param1.parent = _loc5_;
                                                      addr470:
                                                      while(true)
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            break loop7;
                                                         }
                                                         continue loop18;
                                                      }
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          _loc4_.child2 = _loc5_;
                                          §§goto(addr389);
                                       }
                                       §§goto(addr439);
                                       §§goto(addr437);
                                    }
                                    while(true)
                                    {
                                       this.§_-YV§ = _loc5_;
                                       if(_loc13_)
                                       {
                                          if(_loc13_ || _loc2_)
                                          {
                                             §§goto(addr465);
                                          }
                                          else
                                          {
                                             §§goto(addr481);
                                          }
                                       }
                                       §§goto(addr470);
                                    }
                                 }
                              }
                              if(_loc12_ && _loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr308);
                              §§push(_loc4_.child1.aabb);
                           }
                        }
                     }
                     §§goto(addr342);
                  }
                  §§goto(addr130);
               }
            }
         }
         while(true)
         {
            this.§_-YV§ = param1;
            §§goto(addr109);
         }
      }
      
      private function §_-MI§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(!_loc7_)
         {
            if(param1 == this.§_-YV§)
            {
               if(_loc6_)
               {
                  this.§_-YV§ = null;
                  if(_loc7_ && param1)
                  {
                     addr41:
                     var _loc2_:b2DynamicTreeNode = param1.parent;
                     var _loc3_:b2DynamicTreeNode = _loc2_.parent;
                     if(_loc6_ || _loc2_)
                     {
                        §§push(_loc2_.child1);
                        if(!_loc7_)
                        {
                           if(§§pop() == param1)
                           {
                              addr62:
                              _loc4_ = _loc2_.child2;
                              if(_loc6_)
                              {
                                 §§goto(addr73);
                              }
                              §§goto(addr98);
                           }
                           else
                           {
                              addr71:
                              _loc4_ = _loc2_.child1;
                           }
                           addr73:
                           if(_loc3_)
                           {
                              if(_loc6_)
                              {
                                 if(_loc3_.child1 == _loc2_)
                                 {
                                    if(_loc6_ || _loc2_)
                                    {
                                       addr98:
                                       _loc3_.child1 = _loc4_;
                                       if(_loc6_ || _loc3_)
                                       {
                                       }
                                       do
                                       {
                                          this.§_-0BS§(_loc2_);
                                       }
                                       while(!_loc6_);
                                       
                                       addr123:
                                       if(_loc6_)
                                       {
                                          if(false)
                                          {
                                             addr119:
                                             while(true)
                                             {
                                                _loc4_.parent = _loc3_;
                                                §§goto(addr123);
                                             }
                                             addr119:
                                          }
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                _loc5_ = _loc3_.aabb;
                                                if(_loc6_ || this)
                                                {
                                                   _loc3_.aabb = b2AABB.§_-WW§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc5_.§_-PI§(_loc3_.aabb))
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             if(_loc6_ || param1)
                                             {
                                                break;
                                             }
                                             addr194:
                                             _loc4_.parent = null;
                                             if(!_loc7_)
                                             {
                                                this.§_-0BS§(_loc2_);
                                             }
                                             §§goto(addr202);
                                          }
                                          §§goto(addr202);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr119);
                                       }
                                       addr128:
                                    }
                                    §§goto(addr119);
                                 }
                                 else
                                 {
                                    _loc3_.child2 = _loc4_;
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr98);
                           }
                           else
                           {
                              this.§_-YV§ = _loc4_;
                              if(_loc6_ || this)
                              {
                                 §§goto(addr194);
                              }
                           }
                           addr202:
                           return;
                        }
                        §§goto(addr71);
                     }
                     §§goto(addr62);
                  }
               }
               return;
            }
         }
         §§goto(addr41);
      }
   }
}
