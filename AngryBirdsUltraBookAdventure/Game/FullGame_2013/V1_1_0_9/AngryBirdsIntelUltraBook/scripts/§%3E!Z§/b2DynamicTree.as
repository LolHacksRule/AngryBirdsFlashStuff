package §>!Z§
{
   import §&H§.*;
   import §@!3§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §-Y§:b2DynamicTreeNode;
      
      private var §9!&§:b2DynamicTreeNode;
      
      private var §!4§:uint;
      
      private var §!!w§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            loop0:
            while(true)
            {
               this.§-Y§ = null;
               while(true)
               {
                  this.§9!&§ = null;
                  loop2:
                  while(!(_loc1_ && this))
                  {
                     this.§!4§ = 0;
                     while(true)
                     {
                        this.§!!w§ = 0;
                        if(_loc2_ || this)
                        {
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §[E§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§9L§();
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
                  addr244:
                  while(true)
                  {
                     §§push(b2Settings.b2_aabbExtension);
                     if(_loc6_ || this)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§push(Number(§§pop()));
                     }
                     if(_loc7_ && param2)
                     {
                        continue loop1;
                     }
                     _loc5_ = §§pop();
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§push(_loc3_.aabb);
            loop4:
            while(true)
            {
               §§push(§§pop().§>h§);
               loop5:
               while(true)
               {
                  §§push(param1.§>h§);
                  loop6:
                  while(true)
                  {
                     §§push(§§pop().x);
                     if(!_loc7_)
                     {
                        §§push(_loc4_);
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           addr175:
                           §§push(_loc5_);
                           if(!(_loc6_ || _loc3_))
                           {
                              continue;
                           }
                           addr184:
                           §§push(§§pop() - §§pop());
                           if(_loc6_ || this)
                           {
                              §§pop().y = §§pop();
                              while(true)
                              {
                                 §§push(_loc3_.aabb);
                                 loop12:
                                 while(true)
                                 {
                                    if(!(_loc7_ && param2))
                                    {
                                       continue loop4;
                                    }
                                    addr155:
                                    while(true)
                                    {
                                       §§push(§§pop().§>h§);
                                       if(_loc7_ && _loc3_)
                                       {
                                          continue loop5;
                                       }
                                       §§push(param1.§>h§);
                                       if(_loc7_)
                                       {
                                          continue loop6;
                                       }
                                       §§push(§§pop().y);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§goto(addr175);
                                       }
                                       §§goto(addr184);
                                       continue loop12;
                                    }
                                 }
                                 continue loop4;
                                 if(_loc7_ && param2)
                                 {
                                    continue;
                                 }
                                 if(_loc6_)
                                 {
                                    if(!(_loc7_ && param2))
                                    {
                                       §§goto(addr76);
                                    }
                                    §§goto(addr244);
                                 }
                                 §§goto(addr215);
                              }
                           }
                           while(true)
                           {
                              §§pop().x = §§pop();
                              §§goto(addr215);
                           }
                           addr204:
                        }
                     }
                     §§goto(addr204);
                  }
               }
            }
         }
      }
      
      public function §#i§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7!S§(param1);
         }
         do
         {
            this.§<!#§(param1);
         }
         while(_loc2_);
         
      }
      
      public function §"d§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc6_ || param2)
         {
            b2Settings.b2Assert(param1.§8i§());
            loop0:
            while(true)
            {
               §§push(param1.aabb);
               while(true)
               {
                  §§push(§§pop().§4#§(param2));
                  addr392:
                  addr394:
                  while(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        this.§7!S§(param1);
                        addr386:
                        while(true)
                        {
                           §§push(b2Settings.b2_aabbExtension);
                           if(_loc6_)
                           {
                              §§push(b2Settings.b2_aabbMultiplier);
                              loop5:
                              while(true)
                              {
                                 §§push(param3.x);
                                 addr354:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr355:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       addr356:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(param3.x);
                                             while(true)
                                             {
                                                §§push(-§§pop());
                                                addr376:
                                                addr303:
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr379:
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop15:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(b2Settings.b2_aabbExtension);
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     if(!(_loc6_ || param2))
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     §§push(b2Settings.b2_aabbMultiplier);
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     addr313:
                                                                     addr313:
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(param3.x);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              continue loop11;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        addr357:
                                                                     }
                                                                  }
                                                                  if(_loc7_ && param3)
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc5_ = §§pop();
                                                                  while(_loc6_ || this)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.aabb);
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§>h§);
                                                                           addr212:
                                                                           while(true)
                                                                           {
                                                                              §§push(param2.§>h§);
                                                                              addr214:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr215:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    addr216:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       addr217:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          addr218:
                                                                                          while(!_loc7_)
                                                                                          {
                                                                                             §§push(param1.aabb);
                                                                                             continue loop19;
                                                                                          }
                                                                                          continue loop16;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(!(_loc7_ && param1))
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               continue loop14;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                if(!(_loc6_ || param1))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr313);
                                                §§push(§§pop() * -§§pop());
                                             }
                                          }
                                          §§goto(addr357);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr379);
                        }
                     }
                  }
                  return false;
                  if(_loc7_ && param1)
                  {
                     continue;
                  }
                  §§push(§§pop().§^!z§);
                  if(!(_loc7_ && param2))
                  {
                     §§push(param2.§^!z§);
                     if(_loc6_ || param2)
                     {
                        §§push(§§pop().y);
                        if(!_loc7_)
                        {
                           if(!(_loc7_ && param3))
                           {
                              §§push(_loc5_);
                              if(!(_loc7_ && this))
                              {
                                 addr117:
                                 §§push(§§pop() + §§pop());
                                 if(!_loc7_)
                                 {
                                    §§pop().y = §§pop();
                                    while(_loc6_)
                                    {
                                       this.§-!6§(param1);
                                       if(!(_loc6_ || param2))
                                       {
                                          continue;
                                       }
                                       if(!_loc7_)
                                       {
                                          if(!(_loc7_ && param2))
                                          {
                                             if(!(_loc7_ && param1))
                                             {
                                                if(_loc6_)
                                                {
                                                   §§push(true);
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      §§goto(addr392);
                                                   }
                                                }
                                                §§goto(addr394);
                                             }
                                             §§goto(addr386);
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr207);
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr127);
               }
            }
         }
         §§goto(addr344);
      }
      
      public function §8"$§(param1:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(!(_loc8_ && this))
         {
            if(this.§-Y§ == null)
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
            _loc3_ = this.§-Y§;
            if(!_loc8_)
            {
               §§push(0);
               if(!(_loc8_ && _loc2_))
               {
                  §§push(uint(§§pop()));
                  if(!_loc8_)
                  {
                     _loc4_ = §§pop();
                     if(!(_loc8_ && this))
                     {
                        addr65:
                        loop7:
                        while(true)
                        {
                           if(_loc3_.§8i§() != false)
                           {
                              addr117:
                              if(!(_loc8_ && param1))
                              {
                                 var _loc5_:*;
                                 var _loc6_:* = (_loc5_ = this).§!4§ + 1;
                                 if(_loc7_)
                                 {
                                    _loc5_.§!4§ = _loc6_;
                                 }
                                 if(!_loc8_)
                                 {
                                    this.§7!S§(_loc3_);
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    _loc2_++;
                                    if(!(_loc7_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    if(!(_loc8_ && this))
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       addr176:
                                       while(true)
                                       {
                                       }
                                       addr176:
                                    }
                                    while(true)
                                    {
                                       this.§-!6§(_loc3_);
                                       continue loop1;
                                    }
                                 }
                                 continue loop0;
                                 addr172:
                              }
                           }
                           else
                           {
                              §§push(this.§!4§);
                              while(true)
                              {
                                 §§push(§§pop() >> _loc4_);
                                 if(!_loc8_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop() & 1);
                                    }
                                    addr73:
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc7_ || _loc3_)
                                       {
                                          §§push(_loc3_.child2);
                                       }
                                       else
                                       {
                                          §§goto(addr176);
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc3_.child1);
                                    }
                                    _loc3_ = §§pop();
                                    if(!_loc8_)
                                    {
                                       §§push(_loc4_);
                                       if(_loc7_)
                                       {
                                          §§push(uint(§§pop() + 1 & 31));
                                       }
                                       _loc4_ = §§pop();
                                    }
                                    continue loop7;
                                 }
                                 continue loop7;
                              }
                              §§goto(addr117);
                              addr69:
                           }
                           §§goto(addr176);
                        }
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr69);
               }
               §§goto(addr73);
            }
            §§goto(addr65);
         }
      }
      
      public function §8"§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§]!=§;
      }
      
      public function § [§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(!_loc11_)
         {
            if(this.§-Y§ == null)
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
         _loc3_[_loc7_ = _loc4_++] = this.§-Y§;
         while(true)
         {
            if(_loc4_ <= 0)
            {
               return;
            }
            §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§]I§(param2));
            if(_loc10_ || param2)
            {
               if(!§§pop())
               {
                  continue;
               }
               if(_loc11_)
               {
                  continue;
               }
               §§push(_loc5_.§8i§());
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        §§push(Boolean(param1(_loc5_)));
                        if(_loc10_ || param2)
                        {
                           addr104:
                           if(!(_loc6_ = §§pop()))
                           {
                              if(!(_loc11_ && param1))
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
                     if(_loc10_ || param1)
                     {
                        var _loc9_:*;
                        _loc3_[_loc9_ = _loc4_++] = _loc5_.child2;
                     }
                  }
                  continue;
               }
            }
            §§goto(addr104);
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
         var _loc17_:Number = NaN;
         var _loc18_:b2RayCastInput = null;
         if(_loc22_)
         {
            if(this.§-Y§ == null)
            {
               if(_loc22_)
               {
                  return;
               }
            }
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2;
         (_loc5_ = b2Math.§%M§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§<G§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§-$§(_loc6_);
         §§push(param2.§%[§);
         if(!(_loc23_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         _loc9_ = new b2AABB();
         if(_loc22_)
         {
            §§push(_loc3_.x);
            if(!(_loc23_ && _loc3_))
            {
               §§push(_loc8_);
               while(true)
               {
                  §§push(_loc4_.x);
                  addr232:
                  addr203:
                  while(true)
                  {
                     §§push(_loc3_.x);
                     addr234:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr235:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr236:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr237:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                        }
                     }
                  }
                  addr203:
                  if(!(_loc22_ || _loc3_))
                  {
                     continue;
                  }
                  addr214:
                  §§push(§§pop() + §§pop());
                  if(_loc22_)
                  {
                     §§push(Number(§§pop()));
                  }
                  if(!_loc23_)
                  {
                     if(!_loc23_)
                     {
                        _loc11_ = §§pop();
                        while(true)
                        {
                           §§push(_loc9_.§>h§);
                           loop9:
                           while(true)
                           {
                              §§pop().x = Math.min(_loc3_.x,_loc10_);
                              addr156:
                              while(true)
                              {
                                 if(_loc22_)
                                 {
                                    continue loop9;
                                 }
                                 addr239:
                                 while(true)
                                 {
                                    §§push(_loc3_.y);
                                    if(!(_loc23_ && _loc3_))
                                    {
                                       §§push(_loc8_);
                                       if(!_loc23_)
                                       {
                                          if(!_loc23_)
                                          {
                                             §§push(_loc4_.y);
                                             if(!(_loc23_ && param2))
                                             {
                                                if(!(_loc23_ && _loc3_))
                                                {
                                                   if(!_loc23_)
                                                   {
                                                      §§push(_loc3_.y);
                                                      if(_loc22_ || _loc3_)
                                                      {
                                                         addr202:
                                                         §§goto(addr203);
                                                         §§push(§§pop() * (§§pop() - §§pop()));
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr232);
                                                   }
                                                   §§goto(addr234);
                                                }
                                                §§goto(addr235);
                                             }
                                             §§goto(addr202);
                                          }
                                          §§goto(addr236);
                                       }
                                       §§goto(addr203);
                                    }
                                    §§goto(addr214);
                                 }
                              }
                           }
                           if(_loc23_ && param1)
                           {
                              continue;
                           }
                           §§push(_loc9_.§^!z§);
                           if(!_loc23_)
                           {
                              §§pop().y = Math.max(_loc3_.y,_loc11_);
                              if(!_loc23_)
                              {
                                 if(false)
                                 {
                                    §§goto(addr109);
                                 }
                                 §§goto(addr240);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr112);
                        }
                        addr219:
                     }
                     §§goto(addr237);
                  }
                  while(true)
                  {
                     _loc10_ = §§pop();
                     §§goto(addr239);
                  }
                  addr238:
               }
            }
            §§goto(addr238);
         }
         §§goto(addr219);
      }
      
      private function §9L§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2DynamicTreeNode = null;
         if(_loc2_ || this)
         {
            §§push(this.§9!&§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  return new b2DynamicTreeNode();
               }
               addr31:
               §§push(this.§9!&§);
            }
            _loc1_ = §§pop();
            if(!_loc3_)
            {
               this.§9!&§ = _loc1_.parent;
               while(true)
               {
                  _loc1_.parent = null;
                  _loc1_.child1 = null;
                  §§goto(addr85);
               }
            }
            addr85:
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
         §§goto(addr31);
      }
      
      private function §<!#§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            param1.parent = this.§9!&§;
         }
         do
         {
            this.§9!&§ = param1;
         }
         while(_loc2_ && param1);
         
      }
      
      private function §-!6§(param1:b2DynamicTreeNode) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(_loc13_ || this)
         {
            var _loc10_:*;
            §§push((_loc10_ = this).§!!w§);
            if(_loc13_ || this)
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(!(_loc12_ && param1))
            {
               _loc10_.§!!w§ = _loc11_;
            }
            if(!(_loc12_ && _loc3_))
            {
               §§push(this.§-Y§);
               loop0:
               while(true)
               {
                  §§push(null);
                  addr93:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc13_ || this))
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           this.§-Y§ = param1;
                           continue loop0;
                        }
                     }
                     else
                     {
                        var _loc2_:b2Vec2 = param1.aabb.§?!b§();
                        var _loc3_:b2DynamicTreeNode = this.§-Y§;
                        if(!(_loc12_ && param1))
                        {
                           if(_loc3_.§8i§() == false)
                           {
                              addr125:
                              do
                              {
                                 _loc6_ = _loc3_.child1;
                                 _loc7_ = _loc3_.child2;
                                 if(!(_loc12_ && this))
                                 {
                                    §§push(Number(Math.abs((_loc6_.aabb.§>h§.x + _loc6_.aabb.§^!z§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§>h§.y + _loc6_.aabb.§^!z§.y) / 2 - _loc2_.y)));
                                    if(_loc13_ || _loc3_)
                                    {
                                       _loc8_ = §§pop();
                                       if(_loc13_ || _loc3_)
                                       {
                                          addr191:
                                          §§push(Number(Math.abs((_loc7_.aabb.§>h§.x + _loc7_.aabb.§^!z§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§>h§.y + _loc7_.aabb.§^!z§.y) / 2 - _loc2_.y)));
                                          if(_loc13_)
                                          {
                                             _loc9_ = §§pop();
                                             if(_loc13_)
                                             {
                                                addr231:
                                                if(_loc8_ >= _loc9_)
                                                {
                                                   _loc3_ = _loc7_;
                                                   continue;
                                                }
                                             }
                                          }
                                          §§goto(addr231);
                                       }
                                       _loc3_ = _loc6_;
                                       if(_loc12_ && this)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    §§goto(addr231);
                                 }
                                 §§goto(addr191);
                              }
                              while(_loc3_.§8i§() == false);
                              
                           }
                           var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                           var _loc5_:b2DynamicTreeNode;
                           (_loc5_ = this.§9L§()).parent = _loc4_;
                           if(!(_loc12_ && param1))
                           {
                              _loc5_.§]!=§ = null;
                              loop2:
                              while(true)
                              {
                                 §§push(_loc5_.aabb);
                                 while(true)
                                 {
                                    §§push(param1.aabb);
                                    addr432:
                                    while(true)
                                    {
                                       §§push(_loc3_.aabb);
                                       addr434:
                                       while(true)
                                       {
                                          §§pop().§5"$§(§§pop(),§§pop());
                                          continue loop2;
                                       }
                                    }
                                    addr287:
                                    if(_loc12_ && this)
                                    {
                                       continue;
                                    }
                                    §§push(_loc5_.aabb);
                                    if(!(_loc12_ && param1))
                                    {
                                       if(_loc13_ || param1)
                                       {
                                          if(!§§pop().§4#§(§§pop()))
                                          {
                                             addr322:
                                             §§push(_loc4_.aabb);
                                             §§push(_loc4_.child1.aabb);
                                             §§push(_loc4_.child2.aabb);
                                             if(_loc13_)
                                             {
                                                §§pop().§5"$§(§§pop(),§§pop());
                                                if(!(_loc12_ && param1))
                                                {
                                                   if(_loc13_)
                                                   {
                                                      if(false)
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            param1.parent = _loc5_;
                                                            addr346:
                                                            loop11:
                                                            while(!(_loc12_ && param1))
                                                            {
                                                               if(_loc13_ || _loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.aabb);
                                                                     if(_loc13_)
                                                                     {
                                                                        §§goto(addr287);
                                                                     }
                                                                     §§goto(addr322);
                                                                     addr282:
                                                                  }
                                                                  §§goto(addr479);
                                                               }
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  addr375:
                                                                  while(true)
                                                                  {
                                                                     _loc5_.child1 = _loc3_;
                                                                     if(!(_loc13_ || this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc13_ || _loc3_)
                                                                     {
                                                                        _loc5_.child2 = param1;
                                                                        break loop11;
                                                                     }
                                                                     addr423:
                                                                     while(true)
                                                                     {
                                                                        _loc4_.child1 = _loc5_;
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                               }
                                                               _loc5_.child2 = param1;
                                                               _loc3_.parent = _loc5_;
                                                               param1.parent = _loc5_;
                                                               addr502:
                                                               if(!_loc12_)
                                                               {
                                                                  this.§-Y§ = _loc5_;
                                                                  if(_loc13_)
                                                                  {
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§goto(addr502);
                                                                     }
                                                                     addr490:
                                                                     addr479:
                                                                     return;
                                                                     addr490:
                                                                  }
                                                                  §§goto(addr502);
                                                                  addr497:
                                                               }
                                                               addr506:
                                                               §§goto(addr506);
                                                            }
                                                            while(true)
                                                            {
                                                               _loc3_.parent = _loc5_;
                                                               if(!_loc12_)
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               §§goto(addr490);
                                                               §§goto(addr346);
                                                            }
                                                            addr400:
                                                            while(true)
                                                            {
                                                               §§goto(addr375);
                                                            }
                                                         }
                                                      }
                                                      _loc5_ = _loc4_;
                                                      if(_loc4_ = _loc4_.parent)
                                                      {
                                                         §§goto(addr282);
                                                      }
                                                      addr456:
                                                      §§goto(addr479);
                                                   }
                                                   §§goto(addr346);
                                                }
                                                §§goto(addr490);
                                             }
                                             §§goto(addr434);
                                          }
                                          if(!(_loc12_ && param1))
                                          {
                                             §§goto(addr456);
                                          }
                                          else
                                          {
                                             §§goto(addr477);
                                          }
                                       }
                                       §§goto(addr432);
                                    }
                                    §§goto(addr322);
                                 }
                              }
                           }
                           §§goto(addr490);
                        }
                        §§goto(addr125);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr101);
      }
      
      private function §7!S§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(!_loc7_)
         {
            if(param1 == this.§-Y§)
            {
               if(!(_loc7_ && _loc2_))
               {
                  this.§-Y§ = null;
                  if(_loc7_ && param1)
                  {
                     §§goto(addr46);
                  }
               }
               return;
            }
         }
         addr46:
         var _loc2_:b2DynamicTreeNode = param1.parent;
         var _loc3_:b2DynamicTreeNode = _loc2_.parent;
         if(!(_loc7_ && param1))
         {
            §§push(_loc2_.child1);
            if(_loc6_ || param1)
            {
               if(§§pop() == param1)
               {
                  §§goto(addr72);
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
         addr72:
         _loc4_ = _loc2_.child2;
         if(_loc6_)
         {
            addr83:
            if(_loc3_)
            {
               if(!(_loc7_ && _loc2_))
               {
                  if(_loc3_.child1 == _loc2_)
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        addr113:
                        _loc3_.child1 = _loc4_;
                        if(!_loc7_)
                        {
                           while(true)
                           {
                              _loc4_.parent = _loc3_;
                              addr131:
                              §§goto(addr125);
                           }
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr125);
                  }
                  else
                  {
                     _loc3_.child2 = _loc4_;
                  }
                  §§goto(addr143);
               }
               §§goto(addr113);
            }
            else
            {
               this.§-Y§ = _loc4_;
               if(_loc6_ || this)
               {
                  _loc4_.parent = null;
                  if(_loc7_)
                  {
                  }
                  §§goto(addr209);
               }
            }
            §§goto(addr209);
         }
         addr125:
         while(true)
         {
            if(_loc7_ && _loc3_)
            {
               while(true)
               {
                  continue loop1;
               }
               addr143:
            }
         }
         loop0:
         while(false)
         {
            continue loop1;
            while(true)
            {
               this.§<!#§(_loc2_);
               if(!_loc7_)
               {
                  continue loop0;
               }
               §§goto(addr131);
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
               addr209:
               §§goto(addr212);
            }
            _loc5_ = _loc3_.aabb;
            if(!(_loc7_ && param1))
            {
               _loc3_.aabb = b2AABB.§5"$§(_loc3_.child1.aabb,_loc3_.child2.aabb);
               if(_loc6_)
               {
                  if(!_loc5_.§4#§(_loc3_.aabb))
                  {
                     continue;
                  }
               }
            }
            break;
         }
         addr212:
         this.§<!#§(_loc2_);
      }
   }
}
