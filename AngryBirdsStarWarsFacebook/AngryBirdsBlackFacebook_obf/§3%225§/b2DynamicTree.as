package §3"5§
{
   import §5"i§.*;
   import §[R§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §4!G§:b2DynamicTreeNode;
      
      private var §'#D§:b2DynamicTreeNode;
      
      private var §6!U§:uint;
      
      private var § #[§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            while(true)
            {
               this.§4!G§ = null;
            }
            addr84:
         }
         do
         {
            this.§'#D§ = null;
            loop2:
            do
            {
               this.§6!U§ = 0;
               while(!_loc1_)
               {
                  this.§ #[§ = 0;
                  if(_loc2_ || this)
                  {
                     continue loop2;
                  }
               }
               §§goto(addr84);
            }
            while(_loc1_);
            
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function § #Q§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§<I§();
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
                  loop2:
                  while(true)
                  {
                     §§push(b2Settings.b2_aabbExtension);
                     if(_loc6_)
                     {
                        if(_loc7_ && param1)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     addr233:
                     _loc5_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc3_.aabb);
                        addr188:
                        while(true)
                        {
                           §§push(§§pop().§1!,§);
                           loop5:
                           while(true)
                           {
                              §§push(param1.§1!,§);
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
                                          addr195:
                                          while(!(_loc7_ && param2))
                                          {
                                             §§push(_loc3_.aabb);
                                             while(true)
                                             {
                                                §§push(§§pop().§1!,§);
                                                if(_loc7_ && _loc3_)
                                                {
                                                   break;
                                                }
                                                §§push(param1.§1!,§);
                                                if(_loc6_ || param2)
                                                {
                                                   §§push(§§pop().y);
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      if(_loc7_ && param1)
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§push(_loc5_);
                                                      if(!_loc6_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                   }
                                                   if(_loc6_ || param2)
                                                   {
                                                      §§pop().y = §§pop();
                                                      continue loop3;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop6;
                                             }
                                             continue loop5;
                                          }
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
         }
         while(true)
         {
            §§goto(addr108);
         }
      }
      
      public function §,X§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§@#&§(param1);
            do
            {
               this.§0![§(param1);
            }
            while(!_loc2_);
            
         }
      }
      
      public function §=!`§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc6_)
         {
            b2Settings.b2Assert(param1.§'"A§());
            loop0:
            while(true)
            {
               §§push(param1.aabb);
               loop1:
               while(true)
               {
                  §§push(§§pop().§+g§(param2));
                  if(!(_loc6_ && this))
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           this.§@#&§(param1);
                           loop3:
                           while(true)
                           {
                              §§push(b2Settings.b2_aabbExtension);
                              loop4:
                              while(true)
                              {
                                 §§push(b2Settings.b2_aabbMultiplier);
                                 if(_loc7_ || param2)
                                 {
                                    §§push(param3.x);
                                    if(_loc7_ || param1)
                                    {
                                       §§push(0);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(§§pop() > §§pop());
                                          loop6:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc6_ && this))
                                                {
                                                   §§push(param3.x);
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr338:
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_ && param3)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        addr380:
                                                                        return false;
                                                                        addr379:
                                                                     }
                                                                     §§push(b2Settings.b2_aabbExtension);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(b2Settings.b2_aabbMultiplier);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(param3.y);
                                                                           if(_loc7_)
                                                                           {
                                                                              if(_loc7_ || param3)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§push(§§pop() > §§pop());
                                                                                 if(_loc6_ && param3)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       addr232:
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       §§push(param3.y);
                                                                                       if(!(_loc6_ && param3))
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       addr262:
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          addr270:
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             addr336:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                          }
                                                                                          addr335:
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       addr279:
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    if(!(_loc7_ || param2))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(_loc6_ && param3)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    _loc5_ = §§pop();
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.aabb);
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().§1!,§);
                                                                                          loop17:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param2.§1!,§);
                                                                                             loop18:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                   }
                                                                                                   addr180:
                                                                                                }
                                                                                                loop20:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   loop21:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1.aabb);
                                                                                                      loop22:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().§1!,§);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            §§push(param2.§1!,§);
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr180);
                                                                                                                  }
                                                                                                               }
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§pop().y = §§pop();
                                                                                                               loop23:
                                                                                                               while(_loc7_ || param1)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     §§push(param1.aabb);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           continue loop16;
                                                                                                                        }
                                                                                                                        §§push(param1.aabb);
                                                                                                                        addr139:
                                                                                                                        continue loop22;
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§push(§§pop().§ D§);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§push(param2.§ D§);
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 if(_loc7_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_);
                                                                                                                                    if(!(_loc6_ && param3))
                                                                                                                                    {
                                                                                                                                       addr100:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                          while(_loc7_)
                                                                                                                                          {
                                                                                                                                             this.§9"E§(param1);
                                                                                                                                             if(_loc7_ || param1)
                                                                                                                                             {
                                                                                                                                                if(!(_loc6_ && param2))
                                                                                                                                                {
                                                                                                                                                   if(_loc7_ || param2)
                                                                                                                                                   {
                                                                                                                                                      continue loop0;
                                                                                                                                                   }
                                                                                                                                                   continue loop23;
                                                                                                                                                   continue loop23;
                                                                                                                                                }
                                                                                                                                                continue loop15;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop21;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_);
                                                                                                                                       }
                                                                                                                                       addr129:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    continue loop15;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr100);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr128:
                                                                                                                           }
                                                                                                                           §§goto(addr129);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr126:
                                                                                                                        }
                                                                                                                        §§goto(addr128);
                                                                                                                     }
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(param3.y);
                                                                                    if(!(_loc6_ && param3))
                                                                                    {
                                                                                       §§goto(addr262);
                                                                                       §§push(-§§pop());
                                                                                    }
                                                                                    §§goto(addr262);
                                                                                 }
                                                                                 §§goto(addr262);
                                                                              }
                                                                              §§goto(addr336);
                                                                           }
                                                                           §§goto(addr262);
                                                                        }
                                                                        §§goto(addr232);
                                                                     }
                                                                     §§goto(addr279);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr338);
                                             }
                                             else
                                             {
                                                §§push(param3.x);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr335);
                                 }
                                 §§goto(addr338);
                              }
                           }
                        }
                     }
                     §§goto(addr379);
                  }
                  §§goto(addr380);
               }
            }
         }
         §§push(true);
         if(!(_loc6_ && this))
         {
            return §§pop();
         }
         §§goto(addr380);
      }
      
      public function §"4§(param1:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(!_loc8_)
         {
            if(this.§4!G§ == null)
            {
               if(!(_loc8_ && this))
               {
                  §§goto(addr35);
               }
            }
            var _loc2_:int = 0;
            while(_loc2_ < param1)
            {
               _loc3_ = this.§4!G§;
               if(!(_loc8_ && _loc2_))
               {
                  §§push(0);
                  if(_loc7_)
                  {
                     §§push(uint(§§pop()));
                     if(!_loc8_)
                     {
                        _loc4_ = §§pop();
                        if(_loc7_ || param1)
                        {
                           loop1:
                           while(true)
                           {
                              if(_loc3_.§'"A§() != false)
                              {
                                 if(_loc7_)
                                 {
                                    var _loc5_:*;
                                    var _loc6_:* = (_loc5_ = this).§6!U§ + 1;
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       _loc5_.§6!U§ = _loc6_;
                                    }
                                    if(!(_loc8_ && this))
                                    {
                                       this.§@#&§(_loc3_);
                                    }
                                    break;
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    addr166:
                                    while(true)
                                    {
                                       this.§9"E§(_loc3_);
                                       continue loop2;
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(this.§6!U§);
                                 while(true)
                                 {
                                    §§push(§§pop() >> _loc4_);
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       addr80:
                                       §§push(§§pop() & 1);
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc7_ || this))
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
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                §§push(_loc4_);
                                                if(_loc7_ || _loc3_)
                                                {
                                                   §§push(uint(§§pop() + 1 & 31));
                                                }
                                                _loc4_ = §§pop();
                                             }
                                             continue loop1;
                                          }
                                       }
                                       addr80:
                                    }
                                    §§goto(addr80);
                                 }
                                 addr69:
                              }
                           }
                           while(true)
                           {
                              _loc2_++;
                              if(_loc7_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr170);
                           }
                           continue;
                           addr187:
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr80);
               }
               §§goto(addr187);
            }
            return;
         }
         addr35:
      }
      
      public function §1"§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§@"g§;
      }
      
      public function §in§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(_loc10_)
         {
            if(this.§4!G§ == null)
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
         _loc3_[_loc7_ = _loc4_++] = this.§4!G§;
         while(true)
         {
            if(_loc4_ <= 0)
            {
               return;
            }
            §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§?#S§(param2));
            if(!(_loc11_ && param1))
            {
               if(!§§pop())
               {
                  continue;
               }
               if(!_loc10_)
               {
                  continue;
               }
               §§push(_loc5_.§'"A§());
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     if(_loc10_ || param1)
                     {
                        §§push(Boolean(param1(_loc5_)));
                        if(_loc10_)
                        {
                           addr102:
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
                     if(!_loc11_)
                     {
                        var _loc9_:*;
                        _loc3_[_loc9_ = _loc4_++] = _loc5_.child2;
                     }
                  }
                  continue;
               }
            }
            §§goto(addr102);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc22_:Boolean = true;
         var _loc23_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc9_:b2AABB = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc14_:b2DynamicTreeNode = null;
         var _loc15_:b2Vec2 = null;
         var _loc16_:b2Vec2 = null;
         var _loc17_:* = NaN;
         var _loc18_:b2RayCastInput = null;
         if(!(_loc23_ && param2))
         {
            if(this.§4!G§ == null)
            {
               if(_loc22_ || _loc3_)
               {
                  §§goto(addr58);
               }
            }
            _loc3_ = param2.p1;
            var _loc4_:b2Vec2 = param2.p2;
            var _loc5_:b2Vec2;
            (_loc5_ = b2Math.§8!3§(_loc3_,_loc4_)).Normalize();
            var _loc6_:b2Vec2 = b2Math.§7!m§(1,_loc5_);
            var _loc7_:b2Vec2 = b2Math.§&#R§(_loc6_);
            §§push(param2.§%#8§);
            if(!(_loc23_ && this))
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            _loc9_ = new b2AABB();
            if(!(_loc23_ && this))
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
                                 if(!_loc23_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 while(true)
                                 {
                                    _loc10_ = §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc3_.y);
                                       if(_loc23_ && this)
                                       {
                                          continue loop0;
                                       }
                                       §§push(_loc8_);
                                       if(!(_loc23_ && param2))
                                       {
                                          if(!(_loc22_ || _loc3_))
                                          {
                                             continue loop5;
                                          }
                                          §§push(_loc4_.y);
                                          if(_loc22_)
                                          {
                                             if(_loc23_ && this)
                                             {
                                                continue loop2;
                                             }
                                             §§push(_loc3_.y);
                                             if(!_loc22_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          if(!(_loc22_ || param2))
                                          {
                                             continue loop4;
                                          }
                                          §§push(§§pop() * §§pop());
                                       }
                                       if(_loc23_ && this)
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc22_)
                                       {
                                          continue loop0;
                                       }
                                       addr256:
                                       if(_loc23_)
                                       {
                                          break;
                                       }
                                       _loc11_ = §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          §§push(_loc9_.§1!,§);
                                          while(true)
                                          {
                                             §§pop().x = Math.min(_loc3_.x,_loc10_);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(_loc9_.§1!,§);
                                                if(!_loc22_)
                                                {
                                                   break;
                                                }
                                                §§pop().y = Math.min(_loc3_.y,_loc11_);
                                                loop11:
                                                for(; _loc22_ || _loc3_; if(!(_loc22_ || this))
                                                {
                                                   continue;
                                                },if(_loc23_)
                                                {
                                                   continue loop8;
                                                },if(false)
                                                {
                                                   §§goto(addr143);
                                                },§§goto(addr275))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc9_.§ D§);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§pop().x = Math.max(_loc3_.x,_loc10_);
                                                         loop14:
                                                         while(!(_loc23_ && param2))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc9_.§ D§);
                                                               if(_loc22_ || this)
                                                               {
                                                                  §§pop().y = Math.max(_loc3_.y,_loc11_);
                                                                  if(_loc22_ || param1)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  continue loop14;
                                                               }
                                                               continue loop13;
                                                            }
                                                            var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
                                                            var _loc13_:int = 0;
                                                            var _loc19_:*;
                                                            _loc12_[_loc19_ = _loc13_++] = this.§4!G§;
                                                            while(_loc13_ > 0)
                                                            {
                                                               §§push((_loc14_ = _loc12_[--_loc13_]).aabb);
                                                               if(!_loc23_)
                                                               {
                                                                  if(§§pop().§?#S§(_loc9_) == false)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(_loc14_.aabb);
                                                               }
                                                               _loc15_ = §§pop().§&!m§();
                                                               _loc16_ = _loc14_.aabb.§5"y§();
                                                               if(!(_loc23_ && param1))
                                                               {
                                                                  §§push(Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x);
                                                                  if(!(_loc23_ && param2))
                                                                  {
                                                                     §§push(_loc7_.y);
                                                                     if(_loc22_ || this)
                                                                     {
                                                                        §§push(§§pop() * _loc16_.y);
                                                                        if(!(_loc23_ && param1))
                                                                        {
                                                                           addr391:
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc22_)
                                                                           {
                                                                              addr394:
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc22_ || this)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc23_ && param1))
                                                                                 {
                                                                                    addr410:
                                                                                    _loc17_ = §§pop();
                                                                                    addr411:
                                                                                    §§push(0);
                                                                                 }
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr421:
                                                                                    (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                                                                                    if(_loc22_ || _loc3_)
                                                                                    {
                                                                                       _loc18_.p2 = param2.p2;
                                                                                       while(true)
                                                                                       {
                                                                                          _loc18_.§%#8§ = param2.§%#8§;
                                                                                       }
                                                                                       addr628:
                                                                                    }
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(param1(_loc18_,_loc14_)));
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc22_)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                loop23:
                                                                                                while(!(_loc23_ && param1))
                                                                                                {
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   §§push(_loc8_);
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      if(_loc22_ || this)
                                                                                                      {
                                                                                                         §§push(_loc4_.x);
                                                                                                         loop24:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_.x);
                                                                                                            loop25:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               loop26:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr599:
                                                                                                                  loop27:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     loop28:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        loop29:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc10_ = §§pop();
                                                                                                                           loop30:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_.y);
                                                                                                                              if(_loc22_)
                                                                                                                              {
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_.y);
                                                                                                                                    if(_loc22_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_.y);
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          continue loop25;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                    }
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       continue loop24;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                 }
                                                                                                                                 if(!(_loc22_ || this))
                                                                                                                                 {
                                                                                                                                    continue loop27;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc22_ || param2)
                                                                                                                                 {
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       continue loop29;
                                                                                                                                    }
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       continue loop23;
                                                                                                                                    }
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              if(!_loc22_)
                                                                                                                              {
                                                                                                                                 continue loop28;
                                                                                                                              }
                                                                                                                              _loc11_ = §§pop();
                                                                                                                              loop31:
                                                                                                                              while(!_loc23_)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_.§1!,§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().x = Math.min(_loc3_.x,_loc10_);
                                                                                                                                    addr508:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc22_ || _loc3_))
                                                                                                                                       {
                                                                                                                                          return;
                                                                                                                                       }
                                                                                                                                       addr616:
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                    addr522:
                                                                                                                                    §§push(_loc9_.§1!,§);
                                                                                                                                    continue loop18;
                                                                                                                                    if(!(_loc22_ || param1))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§pop().y = Math.min(_loc3_.y,_loc11_);
                                                                                                                                    while(!(_loc23_ && param1))
                                                                                                                                    {
                                                                                                                                       loop35:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc9_.§ D§);
                                                                                                                                          loop36:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().x = Math.max(_loc3_.x,_loc10_);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc22_)
                                                                                                                                                {
                                                                                                                                                   continue loop31;
                                                                                                                                                }
                                                                                                                                                if(!_loc22_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(!_loc23_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_.§ D§);
                                                                                                                                                   if(!(_loc23_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§pop().y = Math.max(_loc3_.y,_loc11_);
                                                                                                                                                      if(_loc22_)
                                                                                                                                                      {
                                                                                                                                                         continue loop35;
                                                                                                                                                      }
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   continue loop36;
                                                                                                                                                }
                                                                                                                                                §§goto(addr628);
                                                                                                                                             }
                                                                                                                                             continue loop30;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr508);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop26;
                                                                                                                        }
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
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               §§goto(addr616);
                                                                                                            }
                                                                                                         }
                                                                                                         addr615:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr599);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr615);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    if(!_loc14_.§'"A§())
                                                                                    {
                                                                                       var _loc20_:*;
                                                                                       _loc12_[_loc20_ = _loc13_++] = _loc14_.child1;
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          var _loc21_:*;
                                                                                          _loc12_[_loc21_ = _loc13_++] = _loc14_.child2;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr421);
                                                                                 }
                                                                                 §§goto(addr421);
                                                                              }
                                                                           }
                                                                           §§goto(addr411);
                                                                        }
                                                                        §§goto(addr410);
                                                                     }
                                                                     §§goto(addr391);
                                                                  }
                                                                  §§goto(addr394);
                                                               }
                                                               §§goto(addr421);
                                                            }
                                                            return;
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                                continue loop7;
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
            §§goto(addr159);
         }
         addr58:
      }
      
      private function §<I§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2DynamicTreeNode = null;
         if(!_loc3_)
         {
            §§push(this.§'#D§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  return new b2DynamicTreeNode();
               }
               addr26:
               §§push(this.§'#D§);
            }
            _loc1_ = §§pop();
            if(_loc2_ || _loc1_)
            {
               this.§'#D§ = _loc1_.parent;
               do
               {
                  _loc1_.parent = null;
               }
               while(!_loc2_);
               
            }
            _loc1_.child1 = null;
            do
            {
               _loc1_.child2 = null;
            }
            while(_loc3_ && _loc2_);
            
            return _loc1_;
         }
         §§goto(addr26);
      }
      
      private function §0![§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            param1.parent = this.§'#D§;
            do
            {
               this.§'#D§ = param1;
            }
            while(_loc3_);
            
         }
      }
      
      private function §9"E§(param1:b2DynamicTreeNode) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(_loc13_)
         {
            var _loc10_:*;
            §§push((_loc10_ = this).§ #[§);
            if(!(_loc12_ && param1))
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(_loc13_)
            {
               _loc10_.§ #[§ = _loc11_;
            }
            if(!(_loc12_ && this))
            {
               §§push(this.§4!G§);
               loop16:
               while(true)
               {
                  §§push(null);
                  loop17:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        addr89:
                        if(_loc13_ || this)
                        {
                           this.§4!G§ = param1;
                        }
                        while(true)
                        {
                           §§push(this.§4!G§);
                           if(_loc13_ || this)
                           {
                              §§push(null);
                              if(_loc13_)
                              {
                                 §§pop().parent = §§pop();
                                 return;
                              }
                              continue loop17;
                           }
                           continue loop16;
                           §§goto(addr89);
                        }
                        addr100:
                        var _loc2_:b2Vec2 = param1.aabb.§&!m§();
                        var _loc3_:b2DynamicTreeNode = this.§4!G§;
                        if(_loc13_)
                        {
                           addr111:
                           if(_loc3_.§'"A§() == false)
                           {
                              break;
                           }
                           var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                           var _loc5_:b2DynamicTreeNode;
                           (_loc5_ = this.§<I§()).parent = _loc4_;
                           if(!_loc12_)
                           {
                              _loc5_.§@"g§ = null;
                              while(true)
                              {
                                 §§push(_loc5_.aabb);
                                 addr397:
                                 while(true)
                                 {
                                    §§push(param1.aabb);
                                    addr399:
                                    while(true)
                                    {
                                       §§push(_loc3_.aabb);
                                       addr401:
                                       while(true)
                                       {
                                          §§pop().§"";§(§§pop(),§§pop());
                                       }
                                    }
                                 }
                              }
                              addr406:
                           }
                           loop5:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc3_.parent.child1 != _loc3_)
                                    {
                                       _loc4_.child2 = _loc5_;
                                       if(!(_loc12_ && this))
                                       {
                                          if(!(_loc13_ || param1))
                                          {
                                             addr388:
                                             _loc4_.child1 = _loc5_;
                                             if(_loc12_)
                                             {
                                                break;
                                                addr356:
                                             }
                                             addr352:
                                             _loc5_.child1 = _loc3_;
                                             while(!_loc12_)
                                             {
                                                _loc5_.child2 = param1;
                                                loop8:
                                                while(true)
                                                {
                                                   _loc3_.parent = _loc5_;
                                                   if(_loc13_)
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         continue;
                                                      }
                                                      while(true)
                                                      {
                                                         param1.parent = _loc5_;
                                                         if(_loc12_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop6;
                                                      }
                                                      loop12:
                                                      while(true)
                                                      {
                                                         param1.parent = _loc5_;
                                                         addr440:
                                                         addr447:
                                                         while(_loc12_ && param1)
                                                         {
                                                            continue loop12;
                                                         }
                                                         break loop8;
                                                      }
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   this.§4!G§ = _loc5_;
                                                   if(!_loc12_)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr462);
                                                   }
                                                   §§goto(addr440);
                                                   §§goto(addr447);
                                                }
                                                return;
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr352);
                                       }
                                       §§goto(addr435);
                                    }
                                    §§goto(addr388);
                                 }
                                 while(true)
                                 {
                                    _loc3_.parent = _loc5_;
                                    §§goto(addr462);
                                 }
                              }
                              else
                              {
                                 _loc5_.child1 = _loc3_;
                                 if(_loc13_)
                                 {
                                    §§goto(addr422);
                                 }
                              }
                              §§goto(addr457);
                           }
                        }
                        break;
                        addr70:
                     }
                     §§goto(addr100);
                     §§goto(addr111);
                  }
                  do
                  {
                     _loc6_ = _loc3_.child1;
                     _loc7_ = _loc3_.child2;
                     if(_loc13_ || _loc2_)
                     {
                        §§push(Number(Math.abs((_loc6_.aabb.§1!,§.x + _loc6_.aabb.§ D§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§1!,§.y + _loc6_.aabb.§ D§.y) / 2 - _loc2_.y)));
                        if(!(_loc12_ && _loc3_))
                        {
                           _loc8_ = §§pop();
                           if(_loc13_ || this)
                           {
                              §§push(Number(Math.abs((_loc7_.aabb.§1!,§.x + _loc7_.aabb.§ D§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§1!,§.y + _loc7_.aabb.§ D§.y) / 2 - _loc2_.y)));
                              if(!(_loc12_ && param1))
                              {
                                 _loc9_ = §§pop();
                                 addr238:
                                 if(_loc13_)
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
                           }
                           §§goto(addr238);
                        }
                        if(§§pop() >= _loc9_)
                        {
                           _loc3_ = _loc7_;
                           continue;
                        }
                     }
                     §§goto(addr238);
                  }
                  while(_loc3_.§'"A§() == false);
                  
                  §§goto(addr111);
               }
               addr56:
            }
            else if(false)
            {
               §§goto(addr70);
            }
            §§goto(addr100);
         }
         §§goto(addr56);
      }
      
      private function §@#&§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(!(_loc7_ && _loc2_))
         {
            if(param1 == this.§4!G§)
            {
               if(_loc6_)
               {
                  this.§4!G§ = null;
                  if(_loc7_ && param1)
                  {
                     addr46:
                     var _loc2_:b2DynamicTreeNode = param1.parent;
                     var _loc3_:b2DynamicTreeNode = _loc2_.parent;
                     if(!(_loc7_ && param1))
                     {
                        §§push(_loc2_.child1);
                        if(!(_loc7_ && param1))
                        {
                           if(§§pop() == param1)
                           {
                              addr72:
                              _loc4_ = _loc2_.child2;
                              if(_loc6_)
                              {
                                 addr83:
                                 if(_loc3_)
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc3_.child1 == _loc2_)
                                       {
                                          if(!_loc7_)
                                          {
                                             addr103:
                                             _loc3_.child1 = _loc4_;
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                loop1:
                                                while(true)
                                                {
                                                   _loc4_.parent = _loc3_;
                                                   while(_loc6_)
                                                   {
                                                      this.§0![§(_loc2_);
                                                      if(_loc6_)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop1;
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr197);
                                                   }
                                                   _loc5_ = _loc3_.aabb;
                                                   if(_loc6_)
                                                   {
                                                      _loc3_.aabb = b2AABB.§"";§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                                                      if(_loc6_)
                                                      {
                                                         addr154:
                                                         if(!_loc5_.§+g§(_loc3_.aabb))
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr154);
                                                }
                                                addr197:
                                                return;
                                                addr122:
                                             }
                                          }
                                       }
                                       else
                                       {
                                          _loc3_.child2 = _loc4_;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr122);
                                       }
                                    }
                                    §§goto(addr103);
                                 }
                                 else
                                 {
                                    this.§4!G§ = _loc4_;
                                    if(_loc6_)
                                    {
                                       _loc4_.parent = null;
                                       if(_loc6_ || _loc2_)
                                       {
                                          this.§0![§(_loc2_);
                                       }
                                    }
                                 }
                                 §§goto(addr197);
                              }
                              §§goto(addr103);
                           }
                           else
                           {
                              addr81:
                              _loc4_ = _loc2_.child1;
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr72);
                  }
               }
               return;
            }
         }
         §§goto(addr46);
      }
   }
}
