package §3c§
{
   import §9t§.*;
   import §@!'§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §1!^§:b2DynamicTreeNode;
      
      private var §@"#§:b2DynamicTreeNode;
      
      private var §#!>§:uint;
      
      private var §>!W§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
         while(true)
         {
            this.§1!^§ = null;
            while(_loc2_ || _loc2_)
            {
               this.§@"#§ = null;
               while(!(_loc1_ && this))
               {
                  this.§#!>§ = 0;
                  while(_loc2_)
                  {
                     this.§>!W§ = 0;
                     if(_loc2_ || _loc1_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      public function §'!C§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§+"6§();
         if(_loc7_ || param2)
         {
            §§push(b2Settings.b2_aabbExtension);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
            loop0:
            while(true)
            {
               _loc4_ = §§pop();
               while(true)
               {
                  §§push(b2Settings.b2_aabbExtension);
                  if(_loc7_)
                  {
                     continue loop0;
                  }
                  addr237:
                  _loc5_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(_loc3_.aabb);
                     addr197:
                     while(true)
                     {
                        §§push(§§pop().§<!@§);
                        addr198:
                        while(true)
                        {
                           §§push(param1.§<!@§);
                           addr200:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr201:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 addr202:
                                 while(true)
                                 {
                                    §§push(§§pop() - §§pop());
                                    addr203:
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr193);
      }
      
      public function §&1§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%"C§(param1);
            do
            {
               this.§#!Q§(param1);
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      public function §1i§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc6_)
         {
            b2Settings.b2Assert(param1.§ _§());
            loop0:
            while(true)
            {
               §§push(param1.aabb);
               loop1:
               while(true)
               {
                  §§push(§§pop().§""B§(param2));
                  if(!(_loc6_ && this))
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && this))
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                        }
                        addr391:
                     }
                     while(true)
                     {
                        this.§%"C§(param1);
                        while(!_loc6_)
                        {
                           §§push(b2Settings.b2_aabbExtension);
                           loop5:
                           while(true)
                           {
                              §§push(b2Settings.b2_aabbMultiplier);
                              loop6:
                              while(true)
                              {
                                 §§push(param3.x);
                                 while(true)
                                 {
                                    §§push(0);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       loop9:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(param3.x);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(-§§pop());
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop15:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               addr344:
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(b2Settings.b2_aabbExtension);
                                                                  if(_loc7_ || param2)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     if(_loc6_ && param3)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push(b2Settings.b2_aabbMultiplier);
                                                                     if(_loc7_ || this)
                                                                     {
                                                                        §§push(param3.y);
                                                                        if(!(_loc7_ || param2))
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        §§push(0);
                                                                        if(_loc6_ && param2)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        §§push(§§pop() > §§pop());
                                                                        if(!(_loc7_ || param2))
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(param3.y);
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                           addr300:
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              if(!(_loc7_ || param3))
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr319:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              _loc5_ = §§pop();
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1.aabb);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§<!@§);
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param2.§<!@§);
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             loop24:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1.aabb);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         §§push(§§pop().§<!@§);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(param2.§<!@§);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            continue loop22;
                                                                                                         }
                                                                                                         §§push(§§pop().y);
                                                                                                         if(!(_loc6_ && param3))
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               continue loop23;
                                                                                                            }
                                                                                                            §§push(_loc5_);
                                                                                                            if(_loc6_ && param1)
                                                                                                            {
                                                                                                               continue loop24;
                                                                                                            }
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                         }
                                                                                                         if(!(_loc7_ || param2))
                                                                                                         {
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                         §§pop().y = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.aabb);
                                                                                                            loop29:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().§2!1§);
                                                                                                               addr124:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param2.§2!1§);
                                                                                                                  addr126:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     addr127:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        addr128:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           addr129:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              addr130:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop29;
                                                                                                                                 }
                                                                                                                                 continue loop26;
                                                                                                                              }
                                                                                                                              continue loop18;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr42:
                                                                                                            if(!(_loc6_ && param1))
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               if(!(_loc6_ && this))
                                                                                                               {
                                                                                                                  return §§pop();
                                                                                                               }
                                                                                                               break loop1;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    if(!(_loc7_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(§§pop().§2!1§);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(param2.§2!1§);
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(!(_loc6_ && param3))
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(!(_loc6_ && param3))
                                                                                                {
                                                                                                   addr95:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc7_ || this)
                                                                                                   {
                                                                                                      §§pop().y = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         §§goto(addr130);
                                                                                                         addr119:
                                                                                                         this.§;!L§(param1);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr42);
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   §§goto(addr127);
                                                                                                }
                                                                                                §§goto(addr128);
                                                                                             }
                                                                                             §§goto(addr129);
                                                                                          }
                                                                                          §§goto(addr95);
                                                                                       }
                                                                                       §§goto(addr126);
                                                                                    }
                                                                                    §§goto(addr124);
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(param3.x);
                                                                                 addr334:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                              }
                                                                              addr332:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(param3.y);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(-§§pop());
                                                                           }
                                                                        }
                                                                        if(_loc6_ && this)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     §§goto(addr300);
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr332);
                                       }
                                    }
                                 }
                              }
                           }
                           if(_loc6_ && param3)
                           {
                              continue;
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr391);
                     }
                  }
                  break;
               }
               addr390:
               return §§pop();
            }
         }
         §§goto(addr344);
      }
      
      public function §+!P§(param1:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(_loc7_)
         {
            if(this.§1!^§ == null)
            {
               if(!_loc8_)
               {
                  §§goto(addr30);
               }
            }
            var _loc2_:int = 0;
            loop0:
            while(_loc2_ < param1)
            {
               _loc3_ = this.§1!^§;
               if(_loc7_)
               {
                  §§push(0);
                  if(_loc7_ || _loc3_)
                  {
                     §§push(uint(§§pop()));
                     if(!_loc8_)
                     {
                        _loc4_ = §§pop();
                        if(_loc7_ || this)
                        {
                           while(true)
                           {
                              if(_loc3_.§ _§() != false)
                              {
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    break;
                                 }
                                 this.§%"C§(_loc3_);
                                 loop2:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       this.§;!L§(_loc3_);
                                       do
                                       {
                                          _loc2_++;
                                       }
                                       while(!(_loc7_ || this));
                                       
                                       if(!_loc8_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop2;
                                    }
                                    continue loop0;
                                 }
                                 addr134:
                                 addr166:
                              }
                              else
                              {
                                 §§push(this.§#!>§);
                              }
                           }
                           addr119:
                           var _loc5_:*;
                           var _loc6_:* = (_loc5_ = this).§#!>§ + 1;
                           if(_loc7_)
                           {
                              _loc5_.§#!>§ = _loc6_;
                           }
                           if(!_loc8_)
                           {
                              §§goto(addr134);
                           }
                           §§goto(addr166);
                           addr108:
                        }
                        §§goto(addr119);
                     }
                     while(true)
                     {
                        §§push(§§pop() >> _loc4_);
                        if(_loc7_)
                        {
                           §§push(§§pop() & 1);
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc8_)
                        {
                           §§push(_loc3_.child2);
                        }
                        §§goto(addr119);
                     }
                     else
                     {
                        §§push(_loc3_.child1);
                     }
                     _loc3_ = §§pop();
                     if(_loc7_)
                     {
                        §§push(_loc4_);
                        if(_loc7_ || this)
                        {
                           §§push(uint(§§pop() + 1 & 31));
                        }
                        _loc4_ = §§pop();
                     }
                     §§goto(addr108);
                  }
               }
               §§goto(addr119);
            }
            return;
         }
         addr30:
      }
      
      public function §%!g§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§!!%§;
      }
      
      public function §6!?§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(_loc10_ || param2)
         {
            if(this.§1!^§ == null)
            {
               if(_loc10_ || param2)
               {
                  return;
               }
            }
         }
         var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc4_:int = 0;
         var _loc7_:*;
         _loc3_[_loc7_ = _loc4_++] = this.§1!^§;
         while(true)
         {
            if(_loc4_ <= 0)
            {
               return;
            }
            §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§5"0§(param2));
            if(_loc10_ || _loc3_)
            {
               if(!§§pop())
               {
                  continue;
               }
               if(_loc10_)
               {
                  §§push(_loc5_.§ _§());
                  if(!(_loc11_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc10_ || this)
                        {
                           addr110:
                           §§push(Boolean(param1(_loc5_)));
                           if(_loc10_)
                           {
                              addr117:
                              §§push(_loc6_ = §§pop());
                           }
                           if(!§§pop())
                           {
                              if(_loc10_)
                              {
                                 break;
                              }
                              continue;
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
                  §§goto(addr117);
               }
               §§goto(addr110);
            }
            §§goto(addr117);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc22_:Boolean = true;
         var _loc23_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc9_:b2AABB = null;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc14_:b2DynamicTreeNode = null;
         var _loc15_:b2Vec2 = null;
         var _loc16_:b2Vec2 = null;
         var _loc17_:Number = NaN;
         var _loc18_:b2RayCastInput = null;
         if(_loc22_ || param1)
         {
            if(this.§1!^§ == null)
            {
               if(!_loc23_)
               {
                  §§goto(addr53);
               }
            }
            _loc3_ = param2.p1;
            var _loc4_:b2Vec2 = param2.p2;
            var _loc5_:b2Vec2;
            (_loc5_ = b2Math.§,!`§(_loc3_,_loc4_)).Normalize();
            var _loc6_:b2Vec2 = b2Math.§@N§(1,_loc5_);
            var _loc7_:b2Vec2 = b2Math.§4!A§(_loc6_);
            §§push(param2.§7"?§);
            if(_loc22_)
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            _loc9_ = new b2AABB();
            if(_loc22_ || param1)
            {
               §§push(_loc3_.x);
               if(_loc22_ || param1)
               {
                  §§push(_loc8_);
                  while(true)
                  {
                     §§push(_loc4_.x);
                     addr240:
                     addr213:
                     while(true)
                     {
                        §§push(_loc3_.x);
                        addr242:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           addr243:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              addr244:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc23_ && param2))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                        }
                     }
                     addr213:
                     if(!(_loc22_ || this))
                     {
                        continue;
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc22_)
                     {
                        addr223:
                        if(_loc22_)
                        {
                           addr226:
                           _loc11_ = §§pop();
                           loop7:
                           while(true)
                           {
                              §§push(_loc9_.§<!@§);
                              loop8:
                              while(true)
                              {
                                 §§pop().x = Math.min(_loc3_.x,_loc10_);
                                 addr166:
                                 while(_loc22_)
                                 {
                                    continue loop8;
                                 }
                                 continue loop7;
                              }
                           }
                        }
                        while(true)
                        {
                           _loc10_ = §§pop();
                           §§goto(addr254);
                        }
                        addr253:
                     }
                     §§goto(addr226);
                  }
               }
               §§goto(addr253);
            }
            §§goto(addr139);
         }
         addr53:
      }
      
      private function §+"6§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2DynamicTreeNode = null;
         if(_loc2_)
         {
            §§push(this.§@"#§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  return new b2DynamicTreeNode();
               }
               addr26:
               §§push(this.§@"#§);
            }
            _loc1_ = §§pop();
            if(_loc2_ || _loc1_)
            {
               this.§@"#§ = _loc1_.parent;
               while(true)
               {
                  _loc1_.parent = null;
                  do
                  {
                     _loc1_.child1 = null;
                  }
                  while(!_loc2_);
                  
                  §§goto(addr80);
               }
            }
            addr80:
            while(true)
            {
               _loc1_.child2 = null;
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
            return _loc1_;
         }
         §§goto(addr26);
      }
      
      private function §#!Q§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.parent = this.§@"#§;
            do
            {
               this.§@"#§ = param1;
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      private function §;!L§(param1:b2DynamicTreeNode) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(!(_loc13_ && _loc2_))
         {
            var _loc10_:*;
            §§push((_loc10_ = this).§>!W§);
            if(!_loc13_)
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(_loc12_ || this)
            {
               _loc10_.§>!W§ = _loc11_;
            }
            if(!(_loc13_ && param1))
            {
               §§push(this.§1!^§);
               loop0:
               while(true)
               {
                  §§push(null);
                  addr97:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc13_ && _loc3_)
                        {
                           continue loop0;
                        }
                     }
                     else
                     {
                        var _loc2_:b2Vec2 = param1.aabb.§4!F§();
                        var _loc3_:b2DynamicTreeNode = this.§1!^§;
                        if(!_loc13_)
                        {
                           if(_loc3_.§ _§() == false)
                           {
                              addr124:
                              do
                              {
                                 _loc6_ = _loc3_.child1;
                                 _loc7_ = _loc3_.child2;
                                 if(_loc12_)
                                 {
                                    §§push(Number(Math.abs((_loc6_.aabb.§<!@§.x + _loc6_.aabb.§2!1§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§<!@§.y + _loc6_.aabb.§2!1§.y) / 2 - _loc2_.y)));
                                    if(_loc12_)
                                    {
                                       _loc8_ = §§pop();
                                       if(!(_loc13_ && this))
                                       {
                                          §§push(Number(Math.abs((_loc7_.aabb.§<!@§.x + _loc7_.aabb.§2!1§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§<!@§.y + _loc7_.aabb.§2!1§.y) / 2 - _loc2_.y)));
                                          if(_loc12_)
                                          {
                                             addr216:
                                             _loc9_ = §§pop();
                                             addr237:
                                             if(!(_loc13_ && param1))
                                             {
                                                addr234:
                                                §§push(_loc8_);
                                             }
                                             _loc3_ = _loc6_;
                                             if(_loc13_ && this)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          if(§§pop() >= _loc9_)
                                          {
                                             _loc3_ = _loc7_;
                                             continue;
                                          }
                                       }
                                       §§goto(addr237);
                                    }
                                    §§goto(addr216);
                                 }
                                 §§goto(addr234);
                              }
                              while(_loc3_.§ _§() == false);
                              
                           }
                           var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                           var _loc5_:b2DynamicTreeNode;
                           (_loc5_ = this.§+"6§()).parent = _loc4_;
                           if(!_loc13_)
                           {
                              _loc5_.§!!%§ = null;
                              loop2:
                              while(true)
                              {
                                 §§push(_loc5_.aabb);
                                 addr401:
                                 while(true)
                                 {
                                    §§push(param1.aabb);
                                    addr403:
                                    while(true)
                                    {
                                       §§push(_loc3_.aabb);
                                       addr405:
                                       while(true)
                                       {
                                          §§pop().§@B§(§§pop(),§§pop());
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                while(_loc3_.parent.child1 != _loc3_)
                                                {
                                                   _loc4_.child2 = _loc5_;
                                                   if(_loc12_)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         continue;
                                                      }
                                                      loop8:
                                                      while(true)
                                                      {
                                                         _loc5_.child1 = _loc3_;
                                                         if(_loc13_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop2;
                                                         addr397:
                                                         while(true)
                                                         {
                                                            continue loop8;
                                                         }
                                                      }
                                                      _loc3_.parent = _loc5_;
                                                      addr454:
                                                      if(_loc12_ || this)
                                                      {
                                                      }
                                                      addr475:
                                                      §§goto(addr475);
                                                   }
                                                   param1.parent = _loc5_;
                                                   addr447:
                                                   if(!_loc13_)
                                                   {
                                                      this.§1!^§ = _loc5_;
                                                      if(_loc13_)
                                                      {
                                                         §§goto(addr447);
                                                      }
                                                      addr433:
                                                      return;
                                                      addr442:
                                                   }
                                                   §§goto(addr454);
                                                }
                                                while(true)
                                                {
                                                   _loc4_.child1 = _loc5_;
                                                   if(_loc12_)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr397);
                                                   }
                                                   §§goto(addr471);
                                                }
                                                continue;
                                                addr390:
                                             }
                                             _loc5_.child1 = _loc3_;
                                             if(_loc12_ || _loc3_)
                                             {
                                                _loc5_.child2 = param1;
                                             }
                                             §§goto(addr454);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr397);
                        }
                        §§goto(addr124);
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§1!^§ = param1;
            §§goto(addr108);
         }
      }
      
      private function §%"C§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(!_loc6_)
         {
            if(param1 == this.§1!^§)
            {
               if(!_loc6_)
               {
                  addr31:
                  this.§1!^§ = null;
                  if(!_loc6_)
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
               if(!_loc6_)
               {
                  if(§§pop() == param1)
                  {
                     addr53:
                     _loc4_ = _loc2_.child2;
                     if(!_loc6_)
                     {
                        addr64:
                        if(_loc3_)
                        {
                           if(_loc7_ || _loc3_)
                           {
                              if(_loc3_.child1 == _loc2_)
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    addr84:
                                    _loc3_.child1 = _loc4_;
                                    if(_loc7_)
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          _loc4_.parent = _loc3_;
                                          do
                                          {
                                             this.§#!Q§(_loc2_);
                                          }
                                          while(_loc6_ && _loc2_);
                                          
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             break;
                                          }
                                          addr129:
                                          while(true)
                                          {
                                             continue loop1;
                                          }
                                       }
                                       addr120:
                                    }
                                    §§goto(addr129);
                                 }
                                 while(false)
                                 {
                                    §§goto(addr120);
                                 }
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc7_ || _loc3_)
                                       {
                                          break;
                                       }
                                       addr208:
                                       addr205:
                                       this.§#!Q§(_loc2_);
                                       return;
                                    }
                                    _loc5_ = _loc3_.aabb;
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       _loc3_.aabb = b2AABB.§@B§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                                       if(!_loc6_)
                                       {
                                          if(!_loc5_.§""B§(_loc3_.aabb))
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr208);
                              }
                              else
                              {
                                 _loc3_.child2 = _loc4_;
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr84);
                        }
                        else
                        {
                           this.§1!^§ = _loc4_;
                           if(_loc7_ || _loc2_)
                           {
                              _loc4_.parent = null;
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§goto(addr205);
                              }
                              §§goto(addr208);
                           }
                        }
                        §§goto(addr208);
                     }
                     §§goto(addr84);
                  }
                  else
                  {
                     addr62:
                     _loc4_ = _loc2_.child1;
                  }
                  §§goto(addr64);
               }
               §§goto(addr62);
            }
            §§goto(addr53);
         }
         §§goto(addr31);
      }
   }
}
