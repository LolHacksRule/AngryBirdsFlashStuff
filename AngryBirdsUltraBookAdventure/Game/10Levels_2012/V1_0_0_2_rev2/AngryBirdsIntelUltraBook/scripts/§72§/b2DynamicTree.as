package §72§
{
   import §7!u§.*;
   import §>H§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §8!5§:b2DynamicTreeNode;
      
      private var §?!>§:b2DynamicTreeNode;
      
      private var § !^§:uint;
      
      private var §'!F§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            loop0:
            while(true)
            {
               this.§8!5§ = null;
               while(true)
               {
                  this.§?!>§ = null;
                  addr45:
                  if(!(_loc1_ && _loc2_))
                  {
                     if(_loc2_)
                     {
                        return;
                        addr64:
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§ !^§ = 0;
            while(!(_loc1_ && this))
            {
               this.§'!F§ = 0;
               if(_loc1_)
               {
                  continue;
               }
               §§goto(addr45);
            }
         }
         §§goto(addr64);
      }
      
      public function §0!S§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§8!i§();
         if(!_loc6_)
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
                        if(_loc6_ && param1)
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
                        loop4:
                        while(true)
                        {
                           §§push(§§pop().§>!6§);
                           loop5:
                           while(true)
                           {
                              §§push(param1.§>!6§);
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
                                          loop10:
                                          while(true)
                                          {
                                             §§push(_loc3_.aabb);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop().§>!6§);
                                                if(!(_loc7_ || this))
                                                {
                                                   break;
                                                }
                                                §§push(param1.§>!6§);
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop().y);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§push(_loc5_);
                                                      if(_loc6_ && this)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      §§pop().y = §§pop();
                                                      loop12:
                                                      for(; _loc7_ || this; if(!(_loc6_ && param1))
                                                      {
                                                         addr56:
                                                         return _loc3_;
                                                      })
                                                      {
                                                         §§push(_loc3_.aabb);
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§8!X§);
                                                            addr134:
                                                            addr147:
                                                            while(true)
                                                            {
                                                               §§push(param1.§8!X§);
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
                                                                           continue loop3;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc3_.aabb);
                                                               if(!(_loc7_ || _loc3_))
                                                               {
                                                                  continue loop13;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§push(§§pop().§8!X§);
                                                               if(_loc7_ || this)
                                                               {
                                                                  §§push(param1.§8!X§);
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr114:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc6_ && param2))
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 while(!(_loc6_ && this))
                                                                                 {
                                                                                    _loc3_.§+!+§ = param2;
                                                                                    while(!_loc6_)
                                                                                    {
                                                                                       this.§!!%§(_loc3_);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(!(_loc6_ && param2))
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr138);
                                                                           }
                                                                           §§goto(addr139);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr137);
                                                                        }
                                                                     }
                                                                     §§goto(addr114);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr136);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr134);
                                                               }
                                                               §§goto(addr136);
                                                            }
                                                            §§goto(addr56);
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop6;
                                             }
                                             continue loop5;
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
         §§goto(addr147);
      }
      
      public function §!O§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§0!O§(param1);
            do
            {
               this.§^l§(param1);
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function §`=§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         if(_loc7_ || param3)
         {
            b2Settings.b2Assert(param1.§&!v§());
            while(true)
            {
               §§push(param1.aabb);
               while(true)
               {
                  §§push(§§pop().§@!d§(param2));
                  loop2:
                  while(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        this.§0!O§(param1);
                        loop4:
                        while(true)
                        {
                           §§push(b2Settings.b2_aabbExtension);
                           if(_loc7_)
                           {
                              §§push(b2Settings.b2_aabbMultiplier);
                              while(true)
                              {
                                 §§push(param3.x);
                                 while(true)
                                 {
                                    §§push(0);
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(param3.x);
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   addr341:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   addr287:
                                                   if(_loc7_ || param3)
                                                   {
                                                      addr296:
                                                      §§push(§§pop() + §§pop() * §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         addr299:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc5_ = §§pop();
                                                      loop14:
                                                      while(!_loc6_)
                                                      {
                                                         §§push(param1.aabb);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§>!6§);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(param2.§>!6§);
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                     }
                                                                     addr202:
                                                                  }
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     addr204:
                                                                     while(!_loc6_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.aabb);
                                                                           addr140:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().§>!6§);
                                                                              if(!(_loc7_ || this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(param2.§>!6§);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    if(_loc6_ && param1)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    §§push(_loc5_);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr202);
                                                                                    }
                                                                                 }
                                                                                 §§pop().y = §§pop();
                                                                                 while(_loc7_)
                                                                                 {
                                                                                    if(_loc6_ && this)
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    §§push(param1.aabb);
                                                                                    continue loop15;
                                                                                 }
                                                                                 continue loop14;
                                                                                 addr182:
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                             §§goto(addr342);
                                          }
                                          else
                                          {
                                             §§push(param3.x);
                                          }
                                          §§goto(addr329);
                                       }
                                    }
                                 }
                                 if(_loc6_ && this)
                                 {
                                    continue;
                                 }
                                 §§push(param3.y);
                                 if(_loc6_)
                                 {
                                    §§goto(addr284);
                                 }
                                 §§goto(addr296);
                                 §§push(§§pop());
                              }
                           }
                           §§goto(addr350);
                        }
                     }
                  }
                  §§goto(addr365);
                  §§push(false);
                  if(!(_loc7_ || param1))
                  {
                     continue;
                  }
                  §§goto(addr71);
               }
               if(_loc6_ && param3)
               {
                  continue;
               }
               §§goto(addr116);
            }
         }
         §§goto(addr206);
      }
      
      public function §]!t§(param1:int) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(!(_loc7_ && param1))
         {
            if(this.§8!5§ == null)
            {
               if(_loc8_)
               {
                  §§goto(addr36);
               }
            }
            var _loc2_:int = 0;
            loop0:
            while(_loc2_ < param1)
            {
               _loc3_ = this.§8!5§;
               if(_loc8_ || _loc2_)
               {
                  §§push(0);
                  if(_loc8_)
                  {
                     §§push(uint(§§pop()));
                     if(_loc8_ || _loc3_)
                     {
                        _loc4_ = §§pop();
                        if(!_loc7_)
                        {
                           loop1:
                           while(true)
                           {
                              if(_loc3_.§&!v§() != false)
                              {
                                 if(_loc8_ || _loc2_)
                                 {
                                    var _loc5_:*;
                                    var _loc6_:* = (_loc5_ = this).§ !^§ + 1;
                                    if(_loc8_ || param1)
                                    {
                                       _loc5_.§ !^§ = _loc6_;
                                    }
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       _loc2_++;
                                       if(_loc7_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       if(_loc8_ || _loc2_)
                                       {
                                          while(false)
                                          {
                                          }
                                          continue loop0;
                                          addr177:
                                       }
                                       else
                                       {
                                          addr187:
                                       }
                                       while(true)
                                       {
                                       }
                                       while(true)
                                       {
                                          this.§!!%§(_loc3_);
                                          continue loop2;
                                       }
                                    }
                                 }
                                 §§goto(addr177);
                              }
                              else
                              {
                                 §§push(this.§ !^§);
                                 while(true)
                                 {
                                    §§push(§§pop() >> _loc4_);
                                    if(!_loc7_)
                                    {
                                       addr76:
                                       §§push(§§pop() & 1);
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc8_ || this))
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
                                             if(!_loc7_)
                                             {
                                                §§push(_loc4_);
                                                if(_loc8_ || param1)
                                                {
                                                   §§push(uint(§§pop() + 1 & 31));
                                                }
                                                _loc4_ = §§pop();
                                             }
                                             continue loop1;
                                          }
                                       }
                                       addr76:
                                    }
                                    §§goto(addr76);
                                 }
                                 addr70:
                              }
                           }
                           this.§0!O§(_loc3_);
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr76);
               }
               §§goto(addr94);
            }
            return;
         }
         addr36:
      }
      
      public function §^!Q§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§+!+§;
      }
      
      public function §@!1§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(!(_loc11_ && param2))
         {
            if(this.§8!5§ == null)
            {
               if(_loc10_)
               {
                  §§goto(addr34);
               }
            }
            var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
            var _loc4_:int = 0;
            var _loc7_:*;
            _loc3_[_loc7_ = _loc4_++] = this.§8!5§;
            while(true)
            {
               if(_loc4_ <= 0)
               {
                  return;
               }
               §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§7l§(param2));
               if(!_loc11_)
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        §§push(_loc5_.§&!v§());
                        if(!_loc11_)
                        {
                           if(§§pop())
                           {
                              if(_loc10_ || param1)
                              {
                                 §§push(Boolean(param1(_loc5_)));
                                 if(!_loc11_)
                                 {
                                    addr104:
                                    if(!(_loc6_ = §§pop()))
                                    {
                                       if(!_loc11_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 §§goto(addr104);
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
                        §§goto(addr104);
                     }
                     break;
                  }
                  continue;
               }
               §§goto(addr104);
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
         var _loc11_:Number = NaN;
         var _loc14_:b2DynamicTreeNode = null;
         var _loc15_:b2Vec2 = null;
         var _loc16_:b2Vec2 = null;
         var _loc17_:Number = NaN;
         var _loc18_:b2RayCastInput = null;
         if(_loc23_ || param2)
         {
            if(this.§8!5§ == null)
            {
               if(!_loc22_)
               {
                  §§goto(addr54);
               }
            }
            _loc3_ = param2.p1;
            var _loc4_:b2Vec2 = param2.p2;
            var _loc5_:b2Vec2;
            (_loc5_ = b2Math.§54§(_loc3_,_loc4_)).Normalize();
            var _loc6_:b2Vec2 = b2Math.§;C§(1,_loc5_);
            var _loc7_:b2Vec2 = b2Math.§-!<§(_loc6_);
            §§push(param2.§&y§);
            if(!(_loc22_ && _loc3_))
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
                                    loop7:
                                    while(true)
                                    {
                                       _loc10_ = §§pop();
                                       addr230:
                                       while(true)
                                       {
                                          §§push(_loc3_.y);
                                          if(_loc23_)
                                          {
                                             if(_loc22_)
                                             {
                                                break;
                                             }
                                             §§push(_loc8_);
                                             if(!_loc22_)
                                             {
                                                if(!_loc23_)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(_loc4_.y);
                                                if(_loc23_ || param2)
                                                {
                                                   if(!_loc23_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(_loc22_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(_loc3_.y);
                                                   if(_loc22_ && param1)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                             if(!_loc22_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc23_)
                                                {
                                                   if(_loc23_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      continue loop0;
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop0;
                                             }
                                             continue loop1;
                                          }
                                          continue loop0;
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr164);
         }
         addr54:
      }
      
      private function §8!i§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2DynamicTreeNode = null;
         if(_loc3_ || this)
         {
            §§push(this.§?!>§);
            if(!(_loc2_ && _loc3_))
            {
               if(!§§pop())
               {
                  return new b2DynamicTreeNode();
               }
               addr37:
               §§push(this.§?!>§);
            }
            _loc1_ = §§pop();
            if(_loc3_)
            {
               this.§?!>§ = _loc1_.parent;
               _loc1_.parent = null;
               do
               {
                  _loc1_.child1 = null;
                  _loc1_.child2 = null;
               }
               while(!(_loc3_ || _loc2_));
               
            }
            return _loc1_;
         }
         §§goto(addr37);
      }
      
      private function §^l§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.parent = this.§?!>§;
         }
         do
         {
            this.§?!>§ = param1;
         }
         while(_loc2_ && _loc3_);
         
      }
      
      private function §!!%§(param1:b2DynamicTreeNode) : void
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
            §§push((_loc10_ = this).§'!F§);
            if(_loc12_)
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(_loc12_ || this)
            {
               _loc10_.§'!F§ = _loc11_;
            }
            if(_loc12_ || this)
            {
               §§push(this.§8!5§);
               loop0:
               while(true)
               {
                  §§push(null);
                  addr87:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        continue loop0;
                     }
                     var _loc2_:b2Vec2 = param1.aabb.§;!A§();
                     var _loc3_:b2DynamicTreeNode = this.§8!5§;
                     if(_loc12_)
                     {
                        if(_loc3_.§&!v§() == false)
                        {
                           addr114:
                           do
                           {
                              _loc6_ = _loc3_.child1;
                              _loc7_ = _loc3_.child2;
                              if(_loc12_ || this)
                              {
                                 §§push(Number(Math.abs((_loc6_.aabb.§>!6§.x + _loc6_.aabb.§8!X§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§>!6§.y + _loc6_.aabb.§8!X§.y) / 2 - _loc2_.y)));
                                 if(_loc12_ || param1)
                                 {
                                    _loc8_ = §§pop();
                                    if(_loc12_ || param1)
                                    {
                                       §§push(Number(Math.abs((_loc7_.aabb.§>!6§.x + _loc7_.aabb.§8!X§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§>!6§.y + _loc7_.aabb.§8!X§.y) / 2 - _loc2_.y)));
                                       if(!(_loc13_ && param1))
                                       {
                                          addr221:
                                          _loc9_ = §§pop();
                                          addr242:
                                          if(_loc12_ || param1)
                                          {
                                             addr229:
                                             §§push(_loc8_);
                                          }
                                          _loc3_ = _loc6_;
                                          if(!(_loc12_ || _loc2_))
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
                                    §§goto(addr242);
                                 }
                                 §§goto(addr221);
                              }
                              §§goto(addr229);
                           }
                           while(_loc3_.§&!v§() == false);
                           
                        }
                        var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                        var _loc5_:b2DynamicTreeNode;
                        (_loc5_ = this.§8!i§()).parent = _loc4_;
                        if(!_loc13_)
                        {
                           _loc5_.§+!+§ = null;
                           loop2:
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
                                       §§pop().§%q§(§§pop(),§§pop());
                                       if(!_loc13_)
                                       {
                                          if(!_loc12_)
                                          {
                                             break;
                                          }
                                          if(_loc4_)
                                          {
                                             if(!(_loc13_ && _loc2_))
                                             {
                                                if(_loc3_.parent.child1 == _loc3_)
                                                {
                                                   if(_loc12_)
                                                   {
                                                      _loc4_.child1 = _loc5_;
                                                      loop6:
                                                      while(true)
                                                      {
                                                         loop7:
                                                         while(true)
                                                         {
                                                            _loc5_.child1 = _loc3_;
                                                            if(_loc13_)
                                                            {
                                                               break loop6;
                                                            }
                                                            continue loop6;
                                                            addr392:
                                                            while(true)
                                                            {
                                                               continue loop7;
                                                            }
                                                         }
                                                      }
                                                      _loc5_.child2 = param1;
                                                      §§goto(addr500);
                                                      addr451:
                                                   }
                                                   §§goto(addr491);
                                                }
                                                else
                                                {
                                                   _loc4_.child2 = _loc5_;
                                                }
                                                §§goto(addr392);
                                             }
                                             §§goto(addr500);
                                          }
                                          else
                                          {
                                             _loc5_.child1 = _loc3_;
                                             if(_loc12_ || _loc2_)
                                             {
                                                §§goto(addr451);
                                             }
                                             §§goto(addr491);
                                          }
                                       }
                                       §§goto(addr500);
                                    }
                                    continue loop2;
                                 }
                                 if(_loc13_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr312);
                                 §§push(_loc4_.child1.aabb);
                              }
                           }
                        }
                        §§goto(addr491);
                     }
                     §§goto(addr114);
                  }
               }
               addr55:
            }
            return;
         }
         §§goto(addr55);
      }
      
      private function §0!O§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(_loc6_)
         {
            if(param1 == this.§8!5§)
            {
               if(_loc6_ || _loc2_)
               {
                  this.§8!5§ = null;
                  if(_loc6_ || _loc2_)
                  {
                     return;
                  }
               }
            }
         }
         var _loc2_:b2DynamicTreeNode = param1.parent;
         var _loc3_:b2DynamicTreeNode = _loc2_.parent;
         if(_loc6_ || _loc2_)
         {
            §§push(_loc2_.child1);
            if(!(_loc7_ && param1))
            {
               if(§§pop() == param1)
               {
                  addr72:
                  _loc4_ = _loc2_.child2;
                  if(!_loc7_)
                  {
                     §§goto(addr83);
                  }
                  §§goto(addr130);
               }
               else
               {
                  addr81:
                  _loc4_ = _loc2_.child1;
               }
               addr83:
               if(_loc3_)
               {
                  if(_loc6_)
                  {
                     if(_loc3_.child1 == _loc2_)
                     {
                        if(!(_loc7_ && _loc3_))
                        {
                           _loc3_.child1 = _loc4_;
                           if(_loc6_ || param1)
                           {
                              while(true)
                              {
                                 _loc4_.parent = _loc3_;
                                 while(true)
                                 {
                                    if(!_loc7_)
                                    {
                                       this.§^l§(_loc2_);
                                       if(_loc6_ || _loc2_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                 }
                                 §§goto(addr130);
                              }
                              addr132:
                           }
                           §§goto(addr130);
                        }
                     }
                     else
                     {
                        _loc3_.child2 = _loc4_;
                     }
                     while(true)
                     {
                        §§goto(addr132);
                     }
                  }
                  addr130:
                  while(false)
                  {
                     continue loop0;
                  }
                  while(true)
                  {
                     if(_loc3_)
                     {
                        _loc5_ = _loc3_.aabb;
                        if(!_loc7_)
                        {
                           _loc3_.aabb = b2AABB.§%q§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                           if(!_loc7_)
                           {
                              if(!_loc5_.§@!d§(_loc3_.aabb))
                              {
                                 continue;
                              }
                           }
                        }
                        break;
                     }
                     if(_loc6_)
                     {
                        break;
                     }
                     addr199:
                     _loc4_.parent = null;
                     if(_loc6_ || param1)
                     {
                        this.§^l§(_loc2_);
                     }
                     §§goto(addr212);
                  }
                  §§goto(addr212);
               }
               else
               {
                  this.§8!5§ = _loc4_;
                  if(!(_loc7_ && this))
                  {
                     §§goto(addr199);
                  }
               }
               addr212:
               return;
            }
            §§goto(addr81);
         }
         §§goto(addr72);
      }
   }
}
