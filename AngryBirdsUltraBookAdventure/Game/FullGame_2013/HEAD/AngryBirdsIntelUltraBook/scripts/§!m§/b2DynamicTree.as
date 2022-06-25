package §!m§
{
   import §+!g§.*;
   import §>!8§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §>!]§:b2DynamicTreeNode;
      
      private var §7!f§:b2DynamicTreeNode;
      
      private var §,y§:uint;
      
      private var §?U§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               this.§>!]§ = null;
               loop1:
               while(true)
               {
                  this.§7!f§ = null;
                  while(true)
                  {
                     this.§,y§ = 0;
                     while(!(_loc2_ && _loc2_))
                     {
                        continue loop1;
                        this.§?U§ = 0;
                        if(!_loc2_)
                        {
                           return;
                           addr39:
                        }
                     }
                  }
               }
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr75);
            }
         }
         §§goto(addr39);
      }
      
      public function §>!I§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§do§();
         if(_loc7_)
         {
            §§push(b2Settings.b2_aabbExtension);
            loop0:
            while(true)
            {
               §§push(Number(§§pop()));
               while(true)
               {
                  _loc4_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(b2Settings.b2_aabbExtension);
                     if(_loc7_)
                     {
                        if(!_loc7_)
                        {
                           break;
                        }
                        §§push(Number(§§pop()));
                     }
                     if(!_loc7_)
                     {
                        continue loop0;
                     }
                     _loc5_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc3_.aabb);
                        while(true)
                        {
                           §§push(§§pop().§4m§);
                           loop5:
                           while(true)
                           {
                              §§push(param1.§4m§);
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
                                          addr204:
                                          while(true)
                                          {
                                             §§push(_loc3_.aabb);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop().§4m§);
                                                if(!(_loc7_ || param1))
                                                {
                                                   break;
                                                }
                                                §§push(param1.§4m§);
                                                if(!_loc7_)
                                                {
                                                   continue loop6;
                                                }
                                                §§push(§§pop().y);
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc6_ && param2)
                                                   {
                                                      continue loop8;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                if(_loc6_)
                                                {
                                                   continue loop9;
                                                }
                                                if(_loc6_ && param2)
                                                {
                                                   continue loop7;
                                                }
                                                §§pop().y = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc3_.aabb);
                                                   addr131:
                                                   loop13:
                                                   while(_loc7_)
                                                   {
                                                      §§push(§§pop().§=!`§);
                                                      while(true)
                                                      {
                                                         §§push(param1.§=!`§);
                                                         addr136:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            addr137:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               addr138:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr139:
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
                                                   continue loop11;
                                                }
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr68:
                           if(!(_loc7_ || param1))
                           {
                              continue;
                           }
                           §§push(§§pop().§=!`§);
                           if(_loc7_)
                           {
                              §§push(param1.§=!`§);
                              if(_loc7_)
                              {
                                 §§push(§§pop().y);
                                 if(_loc7_ || param1)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc6_)
                                    {
                                       addr94:
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_)
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             §§pop().y = §§pop();
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.aabb);
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         §§goto(addr68);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr131);
                                                      }
                                                   }
                                                   return _loc3_;
                                                }
                                                addr140:
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                addr52:
                                                if(!_loc6_)
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop3;
                                             }
                                             §§goto(addr204);
                                          }
                                          §§goto(addr137);
                                       }
                                       §§goto(addr139);
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr134);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr140);
      }
      
      public function §,!c§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§<!&§(param1);
         }
         do
         {
            this.§-X§(param1);
         }
         while(_loc2_ && param1);
         
      }
      
      public function §]Z§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_ || param2)
         {
            b2Settings.b2Assert(param1.§&!+§());
            while(true)
            {
               §§push(param1.aabb);
               while(true)
               {
                  §§push(§§pop().§!!4§(param2));
                  if(_loc7_)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           this.§<!&§(param1);
                           loop3:
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 §§push(b2Settings.b2_aabbExtension);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(b2Settings.b2_aabbMultiplier);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(param3.x);
                                       if(!_loc6_)
                                       {
                                          §§push(0);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             loop7:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(param3.x);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(-§§pop());
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§push(b2Settings.b2_aabbExtension);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(b2Settings.b2_aabbMultiplier);
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           §§push(param3.y);
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              §§push(0);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              §§push(§§pop() > §§pop());
                                                                              if(_loc6_ && param2)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr230:
                                                                                    §§push(param3.y);
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       addr239:
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       addr312:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr252:
                                                                                       §§push(-§§pop());
                                                                                       if(!(_loc7_ || param1))
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                                 if(!(_loc7_ || param3))
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr287:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc7_ || param2))
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       _loc5_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1.aabb);
                                                                                          loop15:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§4m§);
                                                                                             addr185:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param2.§4m§);
                                                                                                addr187:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr188:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      addr189:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         addr190:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            addr191:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1.aabb);
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(!(_loc6_ && param3))
                                                                                          {
                                                                                             this.§5!Y§(param1);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §§push(true);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   return §§pop();
                                                                                                }
                                                                                                break loop3;
                                                                                             }
                                                                                             §§goto(addr112);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr287);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr312);
                                                                                    }
                                                                                    addr310:
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(param3.y);
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    §§goto(addr252);
                                                                                 }
                                                                              }
                                                                              §§goto(addr252);
                                                                           }
                                                                           §§goto(addr239);
                                                                        }
                                                                        §§goto(addr230);
                                                                     }
                                                                     §§goto(addr287);
                                                                  }
                                                                  continue loop4;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr310);
                                             }
                                          }
                                       }
                                       §§goto(addr239);
                                    }
                                 }
                              }
                           }
                           addr354:
                           addr362:
                           return §§pop();
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                     }
                     §§push(false);
                  }
                  §§goto(addr354);
               }
               if(_loc6_ && param2)
               {
                  continue;
               }
               §§goto(addr362);
            }
         }
         §§goto(addr362);
      }
      
      public function §`!6§(param1:int) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(!(_loc7_ && _loc3_))
         {
            if(this.§>!]§ == null)
            {
               if(!_loc7_)
               {
                  §§goto(addr36);
               }
            }
            §§push(0);
            if(!(_loc7_ && _loc3_))
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            loop0:
            while(_loc2_ < param1)
            {
               _loc3_ = this.§>!]§;
               if(_loc8_)
               {
                  §§push(0);
                  if(_loc8_ || _loc2_)
                  {
                     §§push(uint(§§pop()));
                     if(_loc8_ || this)
                     {
                        _loc4_ = §§pop();
                        if(!(_loc7_ && _loc2_))
                        {
                           loop1:
                           while(true)
                           {
                              §§push(_loc3_.§&!+§());
                              loop2:
                              while(true)
                              {
                                 if(§§pop() != false)
                                 {
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       var _loc5_:*;
                                       var _loc6_:* = (_loc5_ = this).§,y§ + 1;
                                       if(_loc8_)
                                       {
                                          _loc5_.§,y§ = _loc6_;
                                       }
                                       if(!_loc7_)
                                       {
                                          this.§<!&§(_loc3_);
                                          addr163:
                                          while(true)
                                          {
                                             addr204:
                                             while(true)
                                             {
                                                this.§5!Y§(_loc3_);
                                             }
                                          }
                                          addr214:
                                          addr163:
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop() + 1);
                                                if(_loc8_)
                                                {
                                                   break loop2;
                                                }
                                                addr177:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc7_ && _loc3_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(_loc8_ || param1)
                                                   {
                                                      while(false)
                                                      {
                                                      }
                                                      continue loop0;
                                                      addr202:
                                                   }
                                                   §§goto(addr214);
                                                   §§goto(addr204);
                                                }
                                             }
                                             addr173:
                                          }
                                          break loop2;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.§,y§);
                                    while(true)
                                    {
                                       §§push(§§pop() >> _loc4_);
                                       if(!(_loc8_ || this))
                                       {
                                          break loop2;
                                       }
                                       §§push(§§pop() & 1);
                                       if(!_loc8_)
                                       {
                                          break loop2;
                                       }
                                       §§push(Boolean(§§pop()));
                                       if(!_loc7_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                §§push(_loc3_.child2);
                                             }
                                             else
                                             {
                                                §§goto(addr163);
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc3_.child1);
                                          }
                                          _loc3_ = §§pop();
                                          if(!_loc7_)
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc7_ && param1))
                                             {
                                                §§push(uint(§§pop() + 1 & 31));
                                             }
                                             _loc4_ = §§pop();
                                          }
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                    addr83:
                                 }
                                 §§goto(addr163);
                              }
                              while(true)
                              {
                                 §§goto(addr177);
                              }
                           }
                        }
                        §§goto(addr202);
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr173);
               }
               §§goto(addr163);
            }
            return;
         }
         addr36:
      }
      
      public function §9!X§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§+!f§;
      }
      
      public function §99§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(!(_loc11_ && _loc3_))
         {
            if(this.§>!]§ == null)
            {
               if(_loc10_ || param1)
               {
                  return;
               }
            }
         }
         var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         §§push(0);
         if(_loc10_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc7_:* = _loc4_++;
         _loc3_[_loc7_] = this.§>!]§;
         while(true)
         {
            if(_loc4_ <= 0)
            {
               return;
            }
            _loc5_ = _loc3_[--_loc4_];
            if(!(_loc11_ && param2))
            {
               §§push(_loc5_.aabb.§ V§(param2));
               if(!_loc11_)
               {
                  if(§§pop())
                  {
                     if(!_loc11_)
                     {
                        §§push(_loc5_.§&!+§());
                        if(_loc10_)
                        {
                           if(§§pop())
                           {
                              if(!_loc11_)
                              {
                                 §§push(Boolean(param1(_loc5_)));
                                 if(_loc10_)
                                 {
                                    _loc6_ = §§pop();
                                    if(!(_loc10_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    addr128:
                                    §§push(_loc6_);
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       addr137:
                                       if(!§§pop())
                                       {
                                          if(_loc10_)
                                          {
                                             break;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr137);
                              }
                           }
                           else
                           {
                              var _loc8_:* = _loc4_++;
                              _loc3_[_loc8_] = _loc5_.child1;
                              if(_loc10_ || param1)
                              {
                                 var _loc9_:* = _loc4_++;
                                 _loc3_[_loc9_] = _loc5_.child2;
                              }
                           }
                           continue;
                        }
                        §§goto(addr137);
                     }
                     break;
                  }
                  continue;
               }
               §§goto(addr137);
            }
            §§goto(addr128);
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
         if(_loc23_ || param2)
         {
            if(this.§>!]§ == null)
            {
               if(_loc23_)
               {
                  §§goto(addr54);
               }
            }
            _loc3_ = param2.p1;
            var _loc4_:b2Vec2 = param2.p2;
            var _loc5_:b2Vec2 = b2Math.§2!C§(_loc3_,_loc4_);
            if(_loc23_)
            {
               _loc5_.Normalize();
            }
            var _loc6_:b2Vec2 = b2Math.§2!Q§(1,_loc5_);
            var _loc7_:b2Vec2 = b2Math.§`!M§(_loc6_);
            §§push(param2.§-Q§);
            if(_loc23_)
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            _loc9_ = new b2AABB();
            if(!(_loc22_ && this))
            {
               §§push(_loc3_.x);
               loop0:
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
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc10_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc3_.y);
                                          if(!_loc22_)
                                          {
                                             if(_loc22_ && this)
                                             {
                                                break;
                                             }
                                             if(!_loc23_)
                                             {
                                                continue loop6;
                                             }
                                             if(_loc22_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(_loc8_);
                                             if(!_loc22_)
                                             {
                                                if(_loc22_ && param2)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(_loc4_.y);
                                                if(_loc23_)
                                                {
                                                   if(_loc22_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§push(_loc3_.y);
                                                   if(_loc22_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                if(_loc22_ && this)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                             if(_loc22_ && _loc3_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc23_ || param1)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          _loc11_ = §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             §§push(_loc9_.§4m§);
                                             while(true)
                                             {
                                                §§pop().x = Math.min(_loc3_.x,_loc10_);
                                                while(true)
                                                {
                                                   §§push(_loc9_.§4m§);
                                                   if(!(_loc23_ || param2))
                                                   {
                                                      break;
                                                      addr159:
                                                   }
                                                   §§pop().y = Math.min(_loc3_.y,_loc11_);
                                                   while(!(_loc22_ && param1))
                                                   {
                                                      continue loop9;
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
               §§push(_loc9_.§=!`§);
               if(!_loc22_)
               {
                  §§pop().y = Math.max(_loc3_.y,_loc11_);
                  if(_loc23_ || _loc3_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr137);
               }
               §§goto(addr130);
            }
            var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
            §§push(0);
            if(!_loc22_)
            {
               §§push(int(§§pop()));
            }
            var _loc13_:* = §§pop();
            var _loc19_:* = _loc13_++;
            _loc12_[_loc19_] = this.§>!]§;
            while(_loc13_ > 0)
            {
               _loc14_ = _loc12_[--_loc13_];
               if(!(_loc22_ && param2))
               {
                  §§push(_loc14_.aabb);
                  if(_loc23_ || _loc3_)
                  {
                     if(§§pop().§ V§(_loc9_) == false)
                     {
                        addr316:
                        continue;
                     }
                     §§push(_loc14_.aabb);
                  }
                  _loc15_ = §§pop().§0!8§();
                  _loc16_ = _loc14_.aabb.§&o§();
                  if(!_loc22_)
                  {
                     §§push(Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x);
                     if(_loc23_)
                     {
                        §§push(_loc7_.y);
                        if(_loc23_ || param1)
                        {
                           §§push(§§pop() * _loc16_.y);
                           if(_loc23_ || param1)
                           {
                              §§push(§§pop() - §§pop());
                              if(!(_loc22_ && param1))
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc22_)
                                 {
                                    addr397:
                                    _loc17_ = §§pop();
                                    if(!(_loc22_ && param1))
                                    {
                                       §§goto(addr406);
                                    }
                                    continue;
                                 }
                                 §§goto(addr406);
                              }
                              §§goto(addr397);
                           }
                        }
                        addr406:
                        if(_loc17_ > 0)
                        {
                           if(_loc22_ && param2)
                           {
                              §§goto(addr421);
                           }
                        }
                        else
                        {
                           if(!_loc14_.§&!+§())
                           {
                              var _loc20_:* = _loc13_++;
                              _loc12_[_loc20_] = _loc14_.child1;
                              if(_loc23_)
                              {
                                 var _loc21_:* = _loc13_++;
                                 _loc12_[_loc21_] = _loc14_.child2;
                              }
                              continue;
                           }
                           if(_loc22_)
                           {
                              continue;
                           }
                           §§goto(addr421);
                        }
                        §§goto(addr421);
                     }
                     §§goto(addr397);
                  }
                  addr421:
                  _loc18_ = new b2RayCastInput();
                  if(_loc23_ || this)
                  {
                     _loc18_.p1 = param2.p1;
                     loop18:
                     while(true)
                     {
                        _loc18_.p2 = param2.p2;
                        loop19:
                        while(true)
                        {
                           _loc18_.§-Q§ = param2.§-Q§;
                           loop20:
                           while(true)
                           {
                              §§push(Number(param1(_loc18_,_loc14_)));
                              loop21:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 loop22:
                                 while(true)
                                 {
                                    §§push(_loc8_);
                                    loop23:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop24:
                                       while(true)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             addr634:
                                             if(_loc22_)
                                             {
                                                continue loop20;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(_loc3_.x);
                                                loop26:
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   loop27:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.x);
                                                      loop28:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.x);
                                                         loop29:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            loop30:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               loop31:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc22_ && this))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  loop32:
                                                                  while(true)
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                     addr629:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_.y);
                                                                        if(!_loc22_)
                                                                        {
                                                                           if(!_loc23_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(_loc8_);
                                                                           if(!_loc22_)
                                                                           {
                                                                              if(!(_loc23_ || param2))
                                                                              {
                                                                                 continue loop27;
                                                                              }
                                                                              if(!_loc23_)
                                                                              {
                                                                                 continue loop24;
                                                                              }
                                                                              §§push(_loc4_.y);
                                                                              if(!(_loc22_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc23_ || param1))
                                                                                 {
                                                                                    continue loop30;
                                                                                 }
                                                                                 §§push(_loc3_.y);
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    continue loop29;
                                                                                 }
                                                                                 §§push(§§pop() - §§pop());
                                                                              }
                                                                              if(_loc22_ && param2)
                                                                              {
                                                                                 continue loop28;
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           if(!(_loc23_ || param1))
                                                                           {
                                                                              continue loop31;
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc22_ && param1))
                                                                           {
                                                                              if(!_loc23_)
                                                                              {
                                                                                 continue loop21;
                                                                              }
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        if(_loc23_)
                                                                        {
                                                                           if(_loc23_)
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                              while(!(_loc22_ && this))
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              continue loop22;
                                                                              addr594:
                                                                           }
                                                                           continue loop26;
                                                                        }
                                                                        continue loop32;
                                                                     }
                                                                     continue loop23;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr609:
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr515:
                           if(_loc22_ && _loc3_)
                           {
                              continue;
                           }
                           §§push(_loc9_.§4m§);
                           if(!_loc22_)
                           {
                              §§pop().y = Math.min(_loc3_.y,_loc11_);
                              loop37:
                              while(true)
                              {
                                 if(_loc23_ || param2)
                                 {
                                    if(!_loc22_)
                                    {
                                       loop38:
                                       while(true)
                                       {
                                          §§push(_loc9_.§=!`§);
                                          loop39:
                                          while(true)
                                          {
                                             §§pop().x = Math.max(_loc3_.x,_loc10_);
                                             while(!_loc22_)
                                             {
                                                §§push(_loc9_.§=!`§);
                                                if(!(_loc22_ && _loc3_))
                                                {
                                                   §§pop().y = Math.max(_loc3_.y,_loc11_);
                                                   if(!_loc22_)
                                                   {
                                                      continue loop38;
                                                   }
                                                   continue;
                                                }
                                                continue loop39;
                                             }
                                             continue loop37;
                                          }
                                       }
                                       §§goto(addr609);
                                    }
                                    break;
                                 }
                                 addr506:
                                 while(true)
                                 {
                                    if(!_loc22_)
                                    {
                                       if(_loc23_ || param2)
                                       {
                                          §§goto(addr515);
                                       }
                                       else
                                       {
                                          §§goto(addr634);
                                       }
                                    }
                                 }
                                 continue loop19;
                                 §§goto(addr629);
                              }
                              §§goto(addr594);
                           }
                           while(true)
                           {
                              §§pop().x = Math.min(_loc3_.x,_loc10_);
                              §§goto(addr506);
                              §§goto(addr522);
                           }
                           addr522:
                        }
                     }
                  }
                  return;
               }
               §§goto(addr316);
            }
            return;
         }
         addr54:
      }
      
      private function §do§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2DynamicTreeNode = null;
         if(_loc3_)
         {
            §§push(this.§7!f§);
            if(!(_loc2_ && this))
            {
               if(!§§pop())
               {
                  return new b2DynamicTreeNode();
               }
               addr33:
               §§push(this.§7!f§);
            }
            _loc1_ = §§pop();
            if(_loc3_ || _loc2_)
            {
               this.§7!f§ = _loc1_.parent;
               _loc1_.parent = null;
            }
            while(true)
            {
               _loc1_.child1 = null;
               while(!(_loc2_ && _loc3_))
               {
                  _loc1_.child2 = null;
                  if(!_loc2_)
                  {
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr33);
      }
      
      private function §-X§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.parent = this.§7!f§;
         }
         do
         {
            this.§7!f§ = param1;
         }
         while(_loc2_ && _loc3_);
         
      }
      
      private function §5!Y§(param1:b2DynamicTreeNode) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(!(_loc13_ && _loc3_))
         {
            var _loc10_:*;
            §§push((_loc10_ = this).§?U§);
            if(!(_loc13_ && param1))
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(_loc12_)
            {
               _loc10_.§?U§ = _loc11_;
            }
            if(_loc12_ || _loc3_)
            {
               §§push(this.§>!]§);
               loop17:
               while(true)
               {
                  §§push(null);
                  loop18:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        while(true)
                        {
                           this.§>!]§ = param1;
                           §§push(this.§>!]§);
                           if(!_loc13_)
                           {
                              §§push(null);
                              if(_loc12_ || param1)
                              {
                                 §§pop().parent = §§pop();
                                 if(!(_loc13_ && this))
                                 {
                                    return;
                                 }
                                 continue;
                              }
                              continue loop18;
                           }
                           continue loop17;
                        }
                        addr104:
                        var _loc2_:b2Vec2 = param1.aabb.§0!8§();
                        var _loc3_:b2DynamicTreeNode = this.§>!]§;
                        §§push(_loc13_);
                        if(_loc13_)
                        {
                           addr116:
                           §§pop();
                           §§push(Boolean(_loc3_));
                           break;
                        }
                        break;
                        addr100:
                     }
                     §§goto(addr104);
                     §§goto(addr116);
                  }
                  if(!§§pop())
                  {
                     if(_loc3_.§&!+§() == false)
                     {
                        addr124:
                        do
                        {
                           _loc6_ = _loc3_.child1;
                           _loc7_ = _loc3_.child2;
                           if(!_loc13_)
                           {
                              §§push(Number(Math.abs((_loc6_.aabb.§4m§.x + _loc6_.aabb.§=!`§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§4m§.y + _loc6_.aabb.§=!`§.y) / 2 - _loc2_.y)));
                              if(_loc12_ || _loc2_)
                              {
                                 _loc8_ = §§pop();
                                 if(!_loc13_)
                                 {
                                    §§push(Number(Math.abs((_loc7_.aabb.§4m§.x + _loc7_.aabb.§=!`§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§4m§.y + _loc7_.aabb.§=!`§.y) / 2 - _loc2_.y)));
                                    if(_loc12_)
                                    {
                                       addr220:
                                       _loc9_ = §§pop();
                                       addr231:
                                       if(_loc12_ || param1)
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
                                    if(§§pop() >= _loc9_)
                                    {
                                       _loc3_ = _loc7_;
                                       continue;
                                    }
                                 }
                                 §§goto(addr231);
                              }
                           }
                           §§goto(addr220);
                        }
                        while(_loc3_.§&!+§() == false);
                        
                     }
                     var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                     var _loc5_:b2DynamicTreeNode = this.§do§();
                     if(!_loc13_)
                     {
                        _loc5_.parent = _loc4_;
                        loop1:
                        while(true)
                        {
                           _loc5_.§+!f§ = null;
                           if(_loc12_ || _loc2_)
                           {
                              §§push(_loc5_.aabb);
                              loop2:
                              while(true)
                              {
                                 §§push(param1.aabb);
                                 addr418:
                                 while(true)
                                 {
                                    §§push(_loc3_.aabb);
                                    loop4:
                                    while(true)
                                    {
                                       §§pop().§[!g§(§§pop(),§§pop());
                                       do
                                       {
                                          §§push(Boolean(_loc4_));
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc12_ || _loc3_)
                                                {
                                                   if(_loc3_.parent.child1 == _loc3_)
                                                   {
                                                      addr516:
                                                      if(_loc12_)
                                                      {
                                                         _loc4_.child1 = _loc5_;
                                                      }
                                                      loop13:
                                                      while(true)
                                                      {
                                                         _loc3_.parent = _loc5_;
                                                         addr512:
                                                         loop14:
                                                         while(true)
                                                         {
                                                            param1.parent = _loc5_;
                                                            do
                                                            {
                                                               if(_loc12_ || this)
                                                               {
                                                                  continue;
                                                               }
                                                               continue loop14;
                                                            }
                                                            while(this.§>!]§ = _loc5_, !_loc12_);
                                                            
                                                            continue loop13;
                                                         }
                                                      }
                                                      addr516:
                                                   }
                                                   else
                                                   {
                                                      _loc4_.child2 = _loc5_;
                                                      if(_loc12_ || _loc3_)
                                                      {
                                                         loop7:
                                                         while(true)
                                                         {
                                                            _loc5_.child1 = _loc3_;
                                                            if(_loc13_)
                                                            {
                                                               break;
                                                            }
                                                            _loc5_.child2 = param1;
                                                            loop8:
                                                            while(true)
                                                            {
                                                               _loc3_.parent = _loc5_;
                                                               if(_loc12_)
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     param1.parent = _loc5_;
                                                                     addr348:
                                                                     while(_loc12_ || _loc2_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_.aabb);
                                                                           if(!(_loc13_ && this))
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           addr318:
                                                                           §§push(_loc4_.child1.aabb);
                                                                           §§push(_loc4_.child2.aabb);
                                                                           if(_loc12_)
                                                                           {
                                                                              §§pop().§[!g§(§§pop(),§§pop());
                                                                              if(_loc13_ && param1)
                                                                              {
                                                                                 break loop9;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           continue loop4;
                                                                           addr272:
                                                                        }
                                                                        §§goto(addr469);
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               §§goto(addr512);
                                                            }
                                                            continue loop1;
                                                         }
                                                         §§goto(addr507);
                                                         addr370:
                                                      }
                                                      §§goto(addr512);
                                                   }
                                                   §§goto(addr512);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr370);
                                                }
                                             }
                                             else
                                             {
                                                _loc5_.child1 = _loc3_;
                                                if(_loc12_ || this)
                                                {
                                                   _loc5_.child2 = param1;
                                                   §§goto(addr516);
                                                }
                                             }
                                             §§goto(addr507);
                                          }
                                       }
                                       while(_loc13_);
                                       
                                       §§goto(addr456);
                                    }
                                 }
                              }
                           }
                           §§goto(addr512);
                        }
                     }
                     §§goto(addr516);
                  }
                  §§goto(addr124);
               }
               addr60:
            }
            §§goto(addr100);
         }
         §§goto(addr60);
      }
      
      private function §<!&§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(!_loc6_)
         {
            if(param1 == this.§>!]§)
            {
               if(_loc7_)
               {
                  this.§>!]§ = null;
                  if(!_loc7_)
                  {
                     addr37:
                     var _loc2_:b2DynamicTreeNode = param1.parent;
                     var _loc3_:b2DynamicTreeNode = _loc2_.parent;
                     if(_loc7_)
                     {
                        §§push(_loc2_.child1);
                        if(_loc7_ || this)
                        {
                           if(§§pop() == param1)
                           {
                              addr58:
                              _loc4_ = _loc2_.child2;
                              if(_loc7_ || this)
                              {
                                 addr74:
                                 if(_loc3_)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(_loc3_.child1 == _loc2_)
                                       {
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             _loc3_.child1 = _loc4_;
                                             if(!(_loc6_ && param1))
                                             {
                                                loop0:
                                                while(true)
                                                {
                                                   _loc4_.parent = _loc3_;
                                                   addr129:
                                                   addr136:
                                                   while(!_loc6_)
                                                   {
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                addr125:
                                                addr110:
                                             }
                                             while(true)
                                             {
                                                this.§-X§(_loc2_);
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   while(false)
                                                   {
                                                      §§goto(addr125);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         addr194:
                                                         §§goto(addr198);
                                                      }
                                                      _loc5_ = _loc3_.aabb;
                                                      if(_loc7_)
                                                      {
                                                         _loc3_.aabb = b2AABB.§[!g§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                                                         if(_loc7_)
                                                         {
                                                            addr158:
                                                            if(!_loc5_.§!!4§(_loc3_.aabb))
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   addr198:
                                                   this.§-X§(_loc2_);
                                                   return;
                                                   addr123:
                                                }
                                                §§goto(addr129);
                                             }
                                          }
                                          §§goto(addr123);
                                       }
                                       else
                                       {
                                          _loc3_.child2 = _loc4_;
                                       }
                                    }
                                    §§goto(addr136);
                                 }
                                 else
                                 {
                                    this.§>!]§ = _loc4_;
                                    if(!_loc6_)
                                    {
                                       _loc4_.parent = null;
                                       if(!_loc6_)
                                       {
                                          §§goto(addr194);
                                       }
                                    }
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr110);
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
                     §§goto(addr58);
                  }
               }
               return;
            }
         }
         §§goto(addr37);
      }
   }
}
