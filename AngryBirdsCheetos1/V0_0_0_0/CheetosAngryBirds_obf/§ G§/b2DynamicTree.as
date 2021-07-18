package § G§
{
   import §9"§.*;
   import §>!@§.*;
   
   public class b2DynamicTree
   {
       
      
      private var § !"§:b2DynamicTreeNode;
      
      private var §4!2§:b2DynamicTreeNode;
      
      private var §24§:uint;
      
      private var §+R§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               this.§ !"§ = null;
               addr80:
               while(true)
               {
                  this.§4!2§ = null;
               }
               addr53:
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               this.§+R§ = 0;
               addr60:
               if(_loc1_ || this)
               {
                  addr44:
                  if(!_loc1_)
                  {
                     while(true)
                     {
                        this.§24§ = 0;
                        addr51:
                        while(!_loc2_)
                        {
                           §§goto(addr53);
                           §§goto(addr60);
                        }
                        §§goto(addr80);
                        §§goto(addr44);
                     }
                     addr75:
                  }
                  return;
               }
               §§goto(addr51);
            }
         }
         §§goto(addr75);
      }
      
      public function §7=§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§%%§();
         if(!(_loc6_ && param2))
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
                     if(!(_loc6_ && _loc3_))
                     {
                        if(!_loc7_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     addr227:
                     _loc5_ = §§pop();
                     while(!(_loc6_ && param2))
                     {
                        loop12:
                        for(; !(_loc6_ && param2); while(_loc7_ || param2)
                        {
                           _loc3_.§7! § = param2;
                           do
                           {
                              this.§76§(_loc3_);
                           }
                           while(!_loc7_);
                           
                           if(!_loc7_)
                           {
                              continue;
                           }
                           if(_loc7_)
                           {
                              return _loc3_;
                           }
                           §§goto(addr146);
                        })
                        {
                           §§push(_loc3_.aabb);
                           loop13:
                           while(true)
                           {
                              §§push(§§pop().§,e§);
                              while(true)
                              {
                                 §§push(param1.§,e§);
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             addr146:
                                             while(!(_loc6_ && param2))
                                             {
                                                continue loop13;
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                §§push(_loc3_.aabb);
                                                loop11:
                                                while(true)
                                                {
                                                   if(_loc7_ || param2)
                                                   {
                                                      §§push(§§pop().§ 1§);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(param1.§ 1§);
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(!_loc6_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  addr176:
                                                                  §§push(_loc5_);
                                                                  if(_loc7_ || param2)
                                                                  {
                                                                     addr185:
                                                                     §§pop().y = §§pop() - §§pop();
                                                                     continue loop12;
                                                                  }
                                                                  addr204:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     break loop11;
                                                                     §§goto(addr176);
                                                                  }
                                                                  addr204:
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr185);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr204);
                                                                  §§push(_loc4_);
                                                               }
                                                               break loop11;
                                                            }
                                                            addr200:
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                         }
                                                         addr198:
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop11;
                                                      }
                                                      addr197:
                                                   }
                                                   §§goto(addr198);
                                                }
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   continue loop10;
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
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr197);
         }
      }
      
      public function §'!F§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'!5§(param1);
            do
            {
               this.§ !9§(param1);
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function §]!T§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc6_ || param1)
         {
            b2Settings.b2Assert(param1.§#x§());
            loop0:
            while(true)
            {
               §§push(param1.aabb);
               loop1:
               while(true)
               {
                  §§push(§§pop().§2!A§(param2));
                  addr397:
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§goto(addr399);
                     }
                     loop3:
                     while(true)
                     {
                        this.§'!5§(param1);
                        loop4:
                        while(true)
                        {
                           §§push(b2Settings.b2_aabbExtension);
                           if(_loc6_ || param2)
                           {
                              §§push(b2Settings.b2_aabbMultiplier);
                              if(_loc6_)
                              {
                                 §§push(param3.x);
                                 if(!(_loc7_ && this))
                                 {
                                    §§push(0);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       addr354:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                while(true)
                                                {
                                                   §§push(param3.x);
                                                   addr359:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      addr365:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                   }
                                                }
                                                addr357:
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc7_ && this))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   addr374:
                                                }
                                                loop8:
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(b2Settings.b2_aabbExtension);
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         §§push(b2Settings.b2_aabbMultiplier);
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(param3.y);
                                                            if(!_loc7_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            addr303:
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         addr304:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc6_ || param2)
                                                         {
                                                            continue loop8;
                                                         }
                                                         addr320:
                                                         _loc5_ = §§pop();
                                                         while(!(_loc7_ && this))
                                                         {
                                                            §§push(param1.aabb);
                                                            continue loop1;
                                                            addr121:
                                                            if(_loc7_ && param2)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc7_ && param2)
                                                            {
                                                               continue loop9;
                                                            }
                                                            if(_loc6_ || param1)
                                                            {
                                                               this.§76§(param1);
                                                               addr142:
                                                               if(_loc6_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  addr224:
                                                                  loop26:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.aabb);
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr68:
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           addr75:
                                                                           §§push(§§pop().§,e§);
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              §§push(param2.§,e§);
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc6_ || param2)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr104:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc6_ || param3)
                                                                                       {
                                                                                          if(!(_loc7_ && this))
                                                                                          {
                                                                                             §§pop().y = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   §§goto(addr121);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            addr146:
                                                                                                            break;
                                                                                                            addr146:
                                                                                                         }
                                                                                                         §§push(param1.aabb);
                                                                                                         while(!(_loc7_ && param3))
                                                                                                         {
                                                                                                            §§push(§§pop().§,e§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param2.§,e§);
                                                                                                               addr156:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                               }
                                                                                                               §§goto(addr75);
                                                                                                            }
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      addr230:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1.aabb);
                                                                                                         break loop26;
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   addr208:
                                                                                                   addr400:
                                                                                                }
                                                                                                §§goto(addr142);
                                                                                             }
                                                                                             addr399:
                                                                                             return false;
                                                                                             addr119:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             addr158:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          continue loop26;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr158);
                                                                                 }
                                                                                 §§goto(addr104);
                                                                              }
                                                                              §§goto(addr156);
                                                                           }
                                                                           §§goto(addr154);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr146);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§ 1§);
                                                                     if(!(_loc6_ || this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(param2.§ 1§);
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        if(_loc6_)
                                                                        {
                                                                           if(!(_loc7_ && this))
                                                                           {
                                                                              §§push(_loc5_);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 addr205:
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§pop().y = §§pop();
                                                                                    §§goto(addr208);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                    }
                                                                                    addr229:
                                                                                 }
                                                                                 §§goto(addr230);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr228:
                                                                              }
                                                                              §§goto(addr229);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              addr227:
                                                                           }
                                                                           §§goto(addr228);
                                                                        }
                                                                        §§goto(addr205);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        addr226:
                                                                     }
                                                                     §§goto(addr227);
                                                                     §§goto(addr68);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr226);
                                                                     §§goto(addr164);
                                                                  }
                                                                  addr164:
                                                               }
                                                               §§goto(addr119);
                                                            }
                                                            §§goto(addr399);
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr363:
                                             §§push(param3.x);
                                             while(true)
                                             {
                                                §§push(-§§pop());
                                                addr364:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr363:
                                          }
                                          §§goto(addr365);
                                       }
                                    }
                                 }
                                 §§goto(addr363);
                              }
                              §§goto(addr357);
                           }
                           §§goto(addr374);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr400);
      }
      
      public function §`!8§(param1:int) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(_loc8_)
         {
            if(this.§ !"§ == null)
            {
               if(_loc8_)
               {
                  §§goto(addr31);
               }
            }
            var _loc2_:int = 0;
            loop0:
            while(_loc2_ < param1)
            {
               _loc3_ = this.§ !"§;
               if(!_loc7_)
               {
                  §§push(0);
                  if(!_loc7_)
                  {
                     §§push(uint(§§pop()));
                     if(!_loc7_)
                     {
                        _loc4_ = §§pop();
                        if(_loc8_)
                        {
                           loop1:
                           while(true)
                           {
                              if(_loc3_.§#x§() != false)
                              {
                                 if(_loc8_ || _loc2_)
                                 {
                                    addr110:
                                    var _loc5_:*;
                                    var _loc6_:* = (_loc5_ = this).§24§ + 1;
                                    if(!_loc7_)
                                    {
                                       _loc5_.§24§ = _loc6_;
                                    }
                                    if(_loc8_ || _loc3_)
                                    {
                                       this.§'!5§(_loc3_);
                                       break;
                                       addr130:
                                    }
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    _loc2_++;
                                    if(_loc7_ && param1)
                                    {
                                       continue;
                                    }
                                    if(_loc7_)
                                    {
                                       break loop1;
                                    }
                                    if(true)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       this.§76§(_loc3_);
                                       continue loop2;
                                    }
                                 }
                                 continue loop0;
                              }
                              addr55:
                              §§push(this.§24§);
                              while(true)
                              {
                                 §§push(§§pop() >> _loc4_);
                                 if(!_loc7_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop() & 1);
                                    }
                                    addr59:
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc7_)
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
                                    if(!(_loc7_ && _loc2_))
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
                           }
                           while(true)
                           {
                              §§goto(addr144);
                           }
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr59);
               }
               §§goto(addr110);
            }
            return;
         }
         addr31:
      }
      
      public function §^y§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§7! §;
      }
      
      public function §;!@§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(!_loc11_)
         {
            if(this.§ !"§ == null)
            {
               if(!(_loc11_ && param2))
               {
                  §§goto(addr34);
               }
            }
            var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
            var _loc4_:int = 0;
            var _loc7_:*;
            _loc3_[_loc7_ = _loc4_++] = this.§ !"§;
            while(true)
            {
               if(_loc4_ <= 0)
               {
                  return;
               }
               §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§;!4§(param2));
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     if(!_loc11_)
                     {
                        §§push(_loc5_.§#x§());
                        if(_loc10_)
                        {
                           addr87:
                           if(!§§pop())
                           {
                              var _loc8_:*;
                              _loc3_[_loc8_ = _loc4_++] = _loc5_.child1;
                              if(!(_loc11_ && param2))
                              {
                                 var _loc9_:*;
                                 _loc3_[_loc9_ = _loc4_++] = _loc5_.child2;
                              }
                              continue;
                           }
                           if(!(_loc10_ || _loc3_))
                           {
                              continue;
                           }
                           §§push(Boolean(param1(_loc5_)));
                           if(!(_loc11_ && this))
                           {
                              §§push(_loc6_ = §§pop());
                           }
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
                  continue;
               }
               §§goto(addr87);
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
         if(!(_loc22_ && _loc3_))
         {
            if(this.§ !"§ == null)
            {
               if(!(_loc22_ && _loc3_))
               {
                  return;
               }
            }
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2;
         (_loc5_ = b2Math.§?d§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§@!"§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§9!&§(_loc6_);
         §§push(param2.§79§);
         if(_loc23_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         _loc9_ = new b2AABB();
         if(!_loc22_)
         {
            §§push(_loc3_.x);
            loop0:
            while(true)
            {
               §§push(_loc8_);
               if(_loc23_)
               {
                  §§push(_loc4_.x);
                  while(true)
                  {
                     §§push(_loc3_.x);
                     addr265:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr266:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                        }
                     }
                     addr204:
                     if(!(_loc23_ || param2))
                     {
                        continue;
                     }
                     §§push(_loc3_.y);
                     if(_loc23_ || _loc3_)
                     {
                        addr221:
                        §§push(§§pop() - §§pop());
                        if(_loc23_ || this)
                        {
                           addr229:
                           §§push(§§pop() + §§pop() * §§pop());
                           if(!(_loc22_ && param1))
                           {
                              if(!(_loc22_ && this))
                              {
                                 if(_loc22_)
                                 {
                                    continue loop0;
                                 }
                                 addr247:
                                 §§push(Number(§§pop()));
                                 if(_loc23_ || _loc3_)
                                 {
                                    _loc11_ = §§pop();
                                    while(true)
                                    {
                                       §§push(_loc9_.§ 1§);
                                       loop9:
                                       while(true)
                                       {
                                          §§pop().x = Math.min(_loc3_.x,_loc10_);
                                          addr167:
                                          addr270:
                                          while(_loc23_ || param2)
                                          {
                                             continue loop9;
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             §§push(_loc3_.y);
                                             if(!(_loc22_ && param2))
                                             {
                                                §§push(_loc8_);
                                                if(!_loc22_)
                                                {
                                                   if(_loc23_ || param1)
                                                   {
                                                      §§push(_loc4_.y);
                                                      if(_loc23_ || this)
                                                      {
                                                         §§goto(addr204);
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr268:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr269:
                                                         while(true)
                                                         {
                                                            _loc10_ = §§pop();
                                                            continue loop7;
                                                         }
                                                      }
                                                   }
                                                   addr267:
                                                }
                                                §§goto(addr229);
                                             }
                                             §§goto(addr247);
                                          }
                                       }
                                       loop11:
                                       while(!(_loc22_ && this))
                                       {
                                          loop12:
                                          do
                                          {
                                             §§push(_loc9_.§,e§);
                                             loop13:
                                             while(true)
                                             {
                                                §§pop().x = Math.max(_loc3_.x,_loc10_);
                                                while(true)
                                                {
                                                   if(!_loc22_)
                                                   {
                                                      if(_loc22_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc9_.§,e§);
                                                      if(_loc23_)
                                                      {
                                                         §§pop().y = Math.max(_loc3_.y,_loc11_);
                                                         if(!(_loc22_ && this))
                                                         {
                                                            continue loop12;
                                                         }
                                                         continue;
                                                      }
                                                      continue loop13;
                                                   }
                                                   continue loop11;
                                                }
                                                §§goto(addr167);
                                             }
                                          }
                                          while(false);
                                          
                                          var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
                                          var _loc13_:int = 0;
                                          var _loc19_:*;
                                          _loc12_[_loc19_ = _loc13_++] = this.§ !"§;
                                          addr665:
                                          if(_loc13_ > 0)
                                          {
                                             §§push((_loc14_ = _loc12_[--_loc13_]).aabb);
                                             if(_loc23_)
                                             {
                                                if(§§pop().§;!4§(_loc9_) == false)
                                                {
                                                   §§goto(addr665);
                                                }
                                                §§push(_loc14_.aabb);
                                             }
                                             _loc15_ = §§pop().§&&§();
                                             _loc16_ = _loc14_.aabb.§[!=§();
                                             if(!_loc22_)
                                             {
                                                §§push(Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x);
                                                if(!(_loc22_ && _loc3_))
                                                {
                                                   §§push(_loc7_.y);
                                                   if(!(_loc22_ && param1))
                                                   {
                                                      §§push(§§pop() * _loc16_.y);
                                                      if(_loc23_ || _loc3_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc23_)
                                                         {
                                                            addr385:
                                                            §§push(Number(§§pop()));
                                                            if(_loc23_)
                                                            {
                                                               addr388:
                                                               §§push(§§pop());
                                                               if(_loc23_)
                                                               {
                                                                  addr391:
                                                                  _loc17_ = §§pop();
                                                               }
                                                               addr393:
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(!(_loc22_ && this))
                                                                  {
                                                                     addr401:
                                                                     §§goto(addr665);
                                                                  }
                                                                  addr412:
                                                                  (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                                                                  if(_loc23_)
                                                                  {
                                                                     _loc18_.p2 = param2.p2;
                                                                     _loc18_.§79§ = param2.§79§;
                                                                     addr610:
                                                                     §§push(Number(param1(_loc18_,_loc14_)));
                                                                     if(!_loc22_)
                                                                     {
                                                                        addr609:
                                                                        §§push(_loc8_ = §§pop());
                                                                     }
                                                                     addr619:
                                                                     addr624:
                                                                     if(§§pop() != 0)
                                                                     {
                                                                        addr581:
                                                                        §§push(_loc3_.x);
                                                                        §§push(_loc8_ * (_loc4_.x - _loc3_.x));
                                                                        if(_loc23_)
                                                                        {
                                                                           addr597:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc23_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           _loc10_ = §§pop();
                                                                           addr598:
                                                                           §§push(_loc3_.y);
                                                                           if(!_loc22_)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(!_loc22_)
                                                                              {
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    if(_loc23_ || param1)
                                                                                    {
                                                                                       §§push(_loc4_.y);
                                                                                       if(!(_loc22_ && param1))
                                                                                       {
                                                                                          if(_loc23_)
                                                                                          {
                                                                                             if(_loc23_)
                                                                                             {
                                                                                                §§push(_loc3_.y);
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   addr544:
                                                                                                   §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!(_loc22_ && param1))
                                                                                                      {
                                                                                                         addr555:
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            addr558:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc23_ || _loc3_)
                                                                                                            {
                                                                                                               if(!(_loc22_ && param1))
                                                                                                               {
                                                                                                                  _loc11_ = §§pop();
                                                                                                                  addr573:
                                                                                                                  if(!(_loc22_ && param2))
                                                                                                                  {
                                                                                                                     addr493:
                                                                                                                     _loc9_.§ 1§.x = Math.min(_loc3_.x,_loc10_);
                                                                                                                     addr499:
                                                                                                                     if(!(_loc22_ && this))
                                                                                                                     {
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           §§push(_loc9_.§ 1§);
                                                                                                                           if(!_loc22_)
                                                                                                                           {
                                                                                                                              §§pop().y = Math.min(_loc3_.y,_loc11_);
                                                                                                                              addr482:
                                                                                                                              if(!(_loc22_ && this))
                                                                                                                              {
                                                                                                                                 addr455:
                                                                                                                                 _loc9_.§,e§.x = Math.max(_loc3_.x,_loc10_);
                                                                                                                                 addr452:
                                                                                                                                 if(!(_loc22_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_.§,e§);
                                                                                                                                       if(!_loc22_)
                                                                                                                                       {
                                                                                                                                          §§pop().y = Math.max(_loc3_.y,_loc11_);
                                                                                                                                          if(!(_loc22_ && this))
                                                                                                                                          {
                                                                                                                                             if(!(_loc22_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr452);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr665);
                                                                                                                                                }
                                                                                                                                                addr613:
                                                                                                                                                §§goto(addr581);
                                                                                                                                             }
                                                                                                                                             §§goto(addr482);
                                                                                                                                          }
                                                                                                                                          §§goto(addr452);
                                                                                                                                       }
                                                                                                                                       §§goto(addr455);
                                                                                                                                    }
                                                                                                                                    §§goto(addr619);
                                                                                                                                 }
                                                                                                                                 §§goto(addr499);
                                                                                                                              }
                                                                                                                              §§goto(addr573);
                                                                                                                           }
                                                                                                                           §§goto(addr493);
                                                                                                                        }
                                                                                                                        §§goto(addr624);
                                                                                                                     }
                                                                                                                     §§goto(addr612);
                                                                                                                  }
                                                                                                                  §§goto(addr598);
                                                                                                               }
                                                                                                               §§goto(addr610);
                                                                                                            }
                                                                                                            §§goto(addr597);
                                                                                                         }
                                                                                                         §§goto(addr581);
                                                                                                      }
                                                                                                      §§goto(addr558);
                                                                                                   }
                                                                                                   §§goto(addr609);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr581);
                                                                                       }
                                                                                       §§goto(addr544);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr581);
                                                                              }
                                                                              §§goto(addr544);
                                                                           }
                                                                           §§goto(addr555);
                                                                        }
                                                                        §§goto(addr610);
                                                                     }
                                                                     addr612:
                                                                     return;
                                                                  }
                                                                  §§goto(addr613);
                                                               }
                                                               if(_loc14_.§#x§())
                                                               {
                                                                  if(_loc23_ || param2)
                                                                  {
                                                                     §§goto(addr412);
                                                                  }
                                                                  §§goto(addr665);
                                                               }
                                                               var _loc20_:*;
                                                               _loc12_[_loc20_ = _loc13_++] = _loc14_.child1;
                                                               if(_loc23_ || param1)
                                                               {
                                                                  var _loc21_:*;
                                                                  _loc12_[_loc21_ = _loc13_++] = _loc14_.child2;
                                                               }
                                                               §§goto(addr665);
                                                            }
                                                            §§goto(addr393);
                                                            §§push(0);
                                                         }
                                                      }
                                                      §§goto(addr388);
                                                   }
                                                   §§goto(addr391);
                                                }
                                                §§goto(addr385);
                                             }
                                             §§goto(addr401);
                                          }
                                          return;
                                       }
                                    }
                                 }
                                 §§goto(addr268);
                              }
                              §§goto(addr269);
                           }
                           §§goto(addr247);
                        }
                        §§goto(addr266);
                     }
                     §§goto(addr265);
                  }
               }
               §§goto(addr267);
            }
         }
         §§goto(addr270);
      }
      
      private function §%%§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2DynamicTreeNode = null;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§4!2§);
            if(_loc3_ || _loc1_)
            {
               if(!§§pop())
               {
                  return new b2DynamicTreeNode();
               }
               addr37:
               §§push(this.§4!2§);
            }
            _loc1_ = §§pop();
            if(!(_loc2_ && _loc1_))
            {
               this.§4!2§ = _loc1_.parent;
               while(true)
               {
                  _loc1_.parent = null;
                  loop1:
                  while(_loc3_ || _loc2_)
                  {
                     _loc1_.child1 = null;
                     while(true)
                     {
                        _loc1_.child2 = null;
                        if(!_loc2_)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              break;
                           }
                           continue loop1;
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr84);
         }
         §§goto(addr37);
      }
      
      private function § !9§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.parent = this.§4!2§;
         }
         do
         {
            this.§4!2§ = param1;
         }
         while(!_loc2_);
         
      }
      
      private function §76§(param1:b2DynamicTreeNode) : void
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
            §§push((_loc10_ = this).§+R§);
            if(_loc13_ || this)
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(!(_loc12_ && _loc3_))
            {
               _loc10_.§+R§ = _loc11_;
            }
            if(_loc13_ || _loc3_)
            {
               §§push(this.§ !"§);
               loop1:
               while(true)
               {
                  §§push(null);
                  loop2:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        loop3:
                        while(true)
                        {
                           this.§ !"§ = param1;
                           loop4:
                           while(true)
                           {
                              addr73:
                              addr105:
                              while(true)
                              {
                                 §§push(this.§ !"§);
                                 if(_loc13_ || param1)
                                 {
                                    §§push(null);
                                    if(!_loc12_)
                                    {
                                       §§pop().parent = §§pop();
                                       if(!_loc12_)
                                       {
                                          if(_loc13_ || _loc3_)
                                          {
                                             return;
                                             addr96:
                                          }
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                              addr105:
                              var _loc2_:b2Vec2 = param1.aabb.§&&§();
                              var _loc3_:b2DynamicTreeNode = this.§ !"§;
                              if(_loc13_)
                              {
                                 addr116:
                                 if(_loc3_.§#x§() == false)
                                 {
                                    break loop2;
                                 }
                                 var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                                 var _loc5_:b2DynamicTreeNode;
                                 (_loc5_ = this.§%%§()).parent = _loc4_;
                                 if(_loc13_ || _loc2_)
                                 {
                                    _loc5_.§7! § = null;
                                    if(_loc13_ || param1)
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
                                                §§pop().§]!6§(§§pop(),§§pop());
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(_loc3_.parent.child1 != _loc3_)
                                                         {
                                                            _loc4_.child2 = _loc5_;
                                                            if(_loc13_ || _loc2_)
                                                            {
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  _loc5_.child1 = _loc3_;
                                                                  if(_loc13_)
                                                                  {
                                                                     _loc5_.child2 = param1;
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        _loc3_.parent = _loc5_;
                                                                        if(!_loc13_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!_loc12_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           addr434:
                                                                           return;
                                                                           addr426:
                                                                           addr311:
                                                                           addr358:
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     this.§ !"§ = _loc5_;
                                                                     if(_loc13_ || _loc2_)
                                                                     {
                                                                        if(!_loc13_)
                                                                        {
                                                                           param1.parent = _loc5_;
                                                                           addr477:
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr472:
                                                                     if(!(_loc12_ && this))
                                                                     {
                                                                        §§goto(addr472);
                                                                     }
                                                                     break loop9;
                                                                  }
                                                                  break;
                                                                  while(true)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               §§goto(addr434);
                                                               addr450:
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr393);
                                                         if(!(_loc13_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr311);
                                                      }
                                                      _loc3_.parent = _loc5_;
                                                      §§goto(addr477);
                                                   }
                                                   else
                                                   {
                                                      _loc5_.child1 = _loc3_;
                                                      if(_loc13_)
                                                      {
                                                         §§goto(addr432);
                                                      }
                                                   }
                                                   §§goto(addr472);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr450);
                                 }
                                 §§goto(addr358);
                              }
                              break loop2;
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr105);
                     }
                     §§goto(addr116);
                  }
                  do
                  {
                     _loc6_ = _loc3_.child1;
                     _loc7_ = _loc3_.child2;
                     if(!_loc12_)
                     {
                        §§push(Number(Math.abs((_loc6_.aabb.§ 1§.x + _loc6_.aabb.§,e§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§ 1§.y + _loc6_.aabb.§,e§.y) / 2 - _loc2_.y)));
                        if(_loc13_ || param1)
                        {
                           _loc8_ = §§pop();
                           if(_loc13_ || this)
                           {
                              §§push(Number(Math.abs((_loc7_.aabb.§ 1§.x + _loc7_.aabb.§,e§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§ 1§.y + _loc7_.aabb.§,e§.y) / 2 - _loc2_.y)));
                              if(!_loc12_)
                              {
                                 addr217:
                                 _loc9_ = §§pop();
                                 addr238:
                                 if(_loc13_ || _loc3_)
                                 {
                                    §§push(_loc8_);
                                 }
                                 _loc3_ = _loc6_;
                                 if(_loc12_)
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
                           §§goto(addr238);
                        }
                     }
                     §§goto(addr217);
                  }
                  while(_loc3_.§#x§() == false);
                  
                  §§goto(addr116);
               }
            }
            §§goto(addr96);
         }
         else if(false)
         {
            §§goto(addr73);
         }
         §§goto(addr105);
      }
      
      private function §'!5§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(_loc6_ || this)
         {
            if(param1 == this.§ !"§)
            {
               if(_loc6_ || _loc2_)
               {
                  this.§ !"§ = null;
                  if(_loc6_)
                  {
                     return;
                  }
               }
            }
         }
         var _loc2_:b2DynamicTreeNode = param1.parent;
         var _loc3_:b2DynamicTreeNode = _loc2_.parent;
         if(_loc6_)
         {
            §§push(_loc2_.child1);
            if(_loc6_)
            {
               if(§§pop() == param1)
               {
                  addr62:
                  _loc4_ = _loc2_.child2;
                  if(!(_loc7_ && _loc2_))
                  {
                     §§goto(addr78);
                  }
                  §§goto(addr108);
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
                        if(!(_loc7_ && param1))
                        {
                           _loc3_.child1 = _loc4_;
                           if(!_loc7_)
                           {
                              while(true)
                              {
                                 _loc4_.parent = _loc3_;
                                 §§goto(addr133);
                              }
                              addr129:
                              addr108:
                           }
                        }
                        §§goto(addr133);
                     }
                     else
                     {
                        _loc3_.child2 = _loc4_;
                     }
                     while(true)
                     {
                        §§goto(addr129);
                     }
                  }
                  addr133:
                  while(true)
                  {
                     this.§ !9§(_loc2_);
                     if(_loc7_ && param1)
                     {
                        continue;
                     }
                     if(_loc6_ || _loc3_)
                     {
                        if(true)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        §§goto(addr212);
                     }
                     _loc5_ = _loc3_.aabb;
                     if(!_loc7_)
                     {
                        _loc3_.aabb = b2AABB.§]!6§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                        if(_loc6_ || _loc2_)
                        {
                           if(!_loc5_.§2!A§(_loc3_.aabb))
                           {
                              continue;
                           }
                        }
                     }
                     break;
                  }
                  §§goto(addr212);
               }
               else
               {
                  this.§ !"§ = _loc4_;
                  if(!(_loc7_ && this))
                  {
                     _loc4_.parent = null;
                     if(!(_loc7_ && _loc3_))
                     {
                        this.§ !9§(_loc2_);
                     }
                  }
               }
               addr212:
               return;
            }
            §§goto(addr76);
         }
         §§goto(addr62);
      }
   }
}
