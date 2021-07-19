package §-r§
{
   import §"0§.*;
   import §6!H§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §"!L§:b2DynamicTreeNode;
      
      private var §,!N§:b2DynamicTreeNode;
      
      private var §!k§:uint;
      
      private var §3t§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            loop0:
            while(true)
            {
               this.§"!L§ = null;
               while(true)
               {
                  this.§,!N§ = null;
                  while(_loc1_ || _loc1_)
                  {
                     continue loop0;
                     while(!(_loc2_ && _loc1_))
                     {
                        this.§3t§ = 0;
                        if(!_loc2_)
                        {
                           return;
                           addr44:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §1<§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§5P§();
         if(_loc6_ || _loc3_)
         {
            §§push(b2Settings.b2_aabbExtension);
            if(!(_loc7_ && param1))
            {
               §§push(Number(§§pop()));
            }
            while(true)
            {
               _loc4_ = §§pop();
               while(true)
               {
                  §§push(b2Settings.b2_aabbExtension);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
                  if(_loc7_)
                  {
                     break;
                  }
                  _loc5_ = §§pop();
                  while(true)
                  {
                     §§push(_loc3_.aabb);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop().§>!7§);
                        loop4:
                        while(true)
                        {
                           §§push(param1.§>!7§);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(_loc6_ || this)
                              {
                                 §§push(_loc4_);
                                 while(true)
                                 {
                                    §§push(§§pop() - §§pop());
                                 }
                                 addr215:
                              }
                              loop7:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 addr217:
                                 while(true)
                                 {
                                    §§push(_loc3_.aabb);
                                    while(true)
                                    {
                                       §§push(§§pop().§>!7§);
                                       if(!(_loc6_ || this))
                                       {
                                          continue loop4;
                                       }
                                       §§push(param1.§>!7§);
                                       if(!(_loc6_ || param1))
                                       {
                                          continue loop5;
                                       }
                                       §§push(§§pop().y);
                                       if(!(_loc7_ && this))
                                       {
                                          §§push(_loc5_);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() - §§pop());
                                          }
                                          else
                                          {
                                             §§goto(addr215);
                                          }
                                       }
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       §§pop().y = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc3_.aabb);
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§pop().§=k§);
                                             addr157:
                                             while(true)
                                             {
                                                §§push(param1.§=k§);
                                                addr159:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr160:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      addr161:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr162:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop11;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       if(_loc6_ || param2)
                                       {
                                          continue loop3;
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
         §§goto(addr227);
      }
      
      public function §%!4§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>!-§(param1);
         }
         do
         {
            this.§1n§(param1);
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function §-H§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_)
         {
            b2Settings.b2Assert(param1.§<!A§());
            while(true)
            {
               §§push(param1.aabb);
               loop1:
               while(true)
               {
                  §§push(§§pop().§>!J§(param2));
                  if(_loc7_ || param1)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           this.§>!-§(param1);
                           addr333:
                           addr366:
                           while(true)
                           {
                              §§push(b2Settings.b2_aabbExtension);
                              if(!_loc6_)
                              {
                                 §§push(b2Settings.b2_aabbMultiplier);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(param3.x);
                                    if(_loc7_ || this)
                                    {
                                       §§push(0);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(§§pop() > §§pop());
                                          loop6:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(param3.x);
                                                if(!(_loc6_ && this))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(-§§pop());
                                                   }
                                                   addr320:
                                                }
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr324:
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop14:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     addr347:
                                                                     §§push(false);
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(b2Settings.b2_aabbExtension);
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        §§push(b2Settings.b2_aabbMultiplier);
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!(_loc7_ || this))
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           §§push(param3.y);
                                                                           if(!(_loc6_ && param2))
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§push(§§pop() > §§pop());
                                                                              if(!_loc7_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr232:
                                                                                    §§push(param3.y);
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    addr254:
                                                                                    §§push(-§§pop());
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr259:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       addr307:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param3.x);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr259);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(param3.y);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§goto(addr254);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr254);
                                                                        }
                                                                        §§goto(addr232);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr276:
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc6_ && this)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        _loc5_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.aabb);
                                                                           continue loop1;
                                                                           addr49:
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 §§push(true);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    return §§pop();
                                                                                 }
                                                                                 break loop15;
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr307);
                                          }
                                       }
                                    }
                                    §§goto(addr320);
                                 }
                              }
                              §§goto(addr324);
                           }
                        }
                     }
                     §§goto(addr347);
                  }
                  addr348:
                  return §§pop();
               }
               if(!(_loc7_ || param3))
               {
                  continue;
               }
               §§goto(addr366);
            }
         }
         §§goto(addr328);
      }
      
      public function §>!R§(param1:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(_loc7_)
         {
            if(this.§"!L§ == null)
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
            _loc3_ = this.§"!L§;
            if(!(_loc8_ && _loc2_))
            {
               §§push(0);
               if(_loc7_)
               {
                  §§push(uint(§§pop()));
                  if(!_loc8_)
                  {
                     _loc4_ = §§pop();
                     if(_loc7_)
                     {
                        addr55:
                        loop6:
                        while(true)
                        {
                           if(_loc3_.§<!A§() != false)
                           {
                              addr112:
                              if(!_loc8_)
                              {
                                 var _loc5_:*;
                                 var _loc6_:* = (_loc5_ = this).§!k§ + 1;
                                 if(_loc7_ || _loc2_)
                                 {
                                    _loc5_.§!k§ = _loc6_;
                                 }
                                 if(!_loc8_)
                                 {
                                    this.§>!-§(_loc3_);
                                    addr171:
                                    loop1:
                                    while(true)
                                    {
                                       addr153:
                                       while(true)
                                       {
                                          this.§5!^§(_loc3_);
                                          continue loop1;
                                       }
                                       continue loop0;
                                    }
                                    addr171:
                                 }
                                 do
                                 {
                                    _loc2_++;
                                 }
                                 while(!(_loc7_ || this));
                                 
                                 if(!(_loc8_ && param1))
                                 {
                                    if(true)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr153);
                                 }
                              }
                           }
                           else
                           {
                              addr56:
                              §§push(this.§!k§);
                              while(true)
                              {
                                 §§push(§§pop() >> _loc4_);
                                 if(!_loc8_)
                                 {
                                    addr65:
                                    §§push(§§pop() & 1);
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc8_ && this))
                                          {
                                             §§push(_loc3_.child2);
                                          }
                                          else
                                          {
                                             §§goto(addr171);
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
                                          if(!(_loc8_ && param1))
                                          {
                                             §§push(uint(§§pop() + 1 & 31));
                                          }
                                          _loc4_ = §§pop();
                                       }
                                       continue loop6;
                                    }
                                    §§goto(addr112);
                                    addr65:
                                 }
                                 §§goto(addr65);
                                 §§goto(addr56);
                              }
                              addr59:
                           }
                        }
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr59);
               }
               §§goto(addr65);
            }
            §§goto(addr55);
         }
      }
      
      public function §4!^§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§["§;
      }
      
      public function §#c§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(!(_loc11_ && param1))
         {
            if(this.§"!L§ == null)
            {
               if(_loc10_ || param1)
               {
                  §§goto(addr39);
               }
            }
            var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
            var _loc4_:int = 0;
            var _loc7_:*;
            _loc3_[_loc7_ = _loc4_++] = this.§"!L§;
            while(true)
            {
               if(_loc4_ <= 0)
               {
                  return;
               }
               §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§"!F§(param2));
               if(!(_loc11_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!(_loc11_ && param1))
                     {
                        §§push(_loc5_.§<!A§());
                        if(!(_loc11_ && this))
                        {
                           addr107:
                           if(§§pop())
                           {
                              if(_loc10_)
                              {
                                 §§push(Boolean(param1(_loc5_)));
                                 if(!_loc11_)
                                 {
                                    addr117:
                                    §§push(_loc6_ = §§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    if(!(_loc11_ && param2))
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
                              if(_loc10_ || param1)
                              {
                                 var _loc9_:*;
                                 _loc3_[_loc9_ = _loc4_++] = _loc5_.child2;
                              }
                           }
                           continue;
                        }
                        §§goto(addr117);
                     }
                     break;
                  }
                  continue;
               }
               §§goto(addr107);
            }
            return;
         }
         addr39:
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
         if(!_loc22_)
         {
            if(this.§"!L§ == null)
            {
               if(!(_loc22_ && _loc3_))
               {
                  §§goto(addr54);
               }
            }
            _loc3_ = param2.p1;
            var _loc4_:b2Vec2 = param2.p2;
            var _loc5_:b2Vec2;
            (_loc5_ = b2Math.§=_§(_loc3_,_loc4_)).Normalize();
            var _loc6_:b2Vec2 = b2Math.§;!G§(1,_loc5_);
            var _loc7_:b2Vec2 = b2Math.§;M§(_loc6_);
            §§push(param2.§0`§);
            if(_loc23_)
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            _loc9_ = new b2AABB();
            if(!_loc22_)
            {
               §§push(_loc3_.x);
               if(_loc23_)
               {
                  §§push(_loc8_);
                  while(true)
                  {
                     §§push(_loc4_.x);
                     addr248:
                     addr221:
                     while(true)
                     {
                        §§push(_loc3_.x);
                        addr250:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           addr251:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              addr252:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                              }
                           }
                        }
                     }
                     addr221:
                     if(_loc22_ && _loc3_)
                     {
                        continue;
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc22_ && _loc3_))
                     {
                        addr236:
                        §§push(Number(§§pop()));
                     }
                     if(!_loc22_)
                     {
                        _loc11_ = §§pop();
                        loop8:
                        while(true)
                        {
                           §§push(_loc9_.§>!7§);
                           while(true)
                           {
                              §§pop().x = Math.min(_loc3_.x,_loc10_);
                              loop10:
                              while(true)
                              {
                                 §§push(_loc9_.§>!7§);
                                 if(!(_loc23_ || _loc3_))
                                 {
                                    break;
                                 }
                                 §§pop().y = Math.min(_loc3_.y,_loc11_);
                                 loop11:
                                 while(true)
                                 {
                                    if(_loc23_ || param2)
                                    {
                                       if(!(_loc23_ || _loc3_))
                                       {
                                          break;
                                       }
                                       loop12:
                                       while(true)
                                       {
                                          §§push(_loc9_.§=k§);
                                          loop13:
                                          while(true)
                                          {
                                             §§pop().x = Math.max(_loc3_.x,_loc10_);
                                             while(_loc23_)
                                             {
                                                §§push(_loc9_.§=k§);
                                                if(_loc23_)
                                                {
                                                   §§pop().y = Math.max(_loc3_.y,_loc11_);
                                                   if(_loc23_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   continue;
                                                }
                                                continue loop13;
                                             }
                                             continue loop11;
                                          }
                                       }
                                       continue loop8;
                                    }
                                    continue loop10;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc3_.y);
                                    if(_loc23_ || param2)
                                    {
                                       if(_loc23_ || param2)
                                       {
                                          §§push(_loc8_);
                                          if(_loc23_ || _loc3_)
                                          {
                                             if(_loc23_ || param2)
                                             {
                                                §§push(_loc4_.y);
                                                if(!(_loc22_ && this))
                                                {
                                                   §§push(_loc3_.y);
                                                   if(!_loc22_)
                                                   {
                                                      addr211:
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc22_)
                                                      {
                                                         if(!(_loc22_ && param2))
                                                         {
                                                            §§goto(addr221);
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr248);
                                                         }
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   §§goto(addr250);
                                                }
                                                §§goto(addr211);
                                             }
                                             §§goto(addr252);
                                          }
                                          §§goto(addr221);
                                       }
                                       break;
                                    }
                                    §§goto(addr236);
                                 }
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr254:
                                    while(true)
                                    {
                                       _loc10_ = §§pop();
                                       §§goto(addr255);
                                    }
                                 }
                                 addr255:
                              }
                           }
                        }
                        addr240:
                     }
                     §§goto(addr254);
                  }
               }
               §§goto(addr253);
            }
            §§goto(addr240);
         }
         addr54:
      }
      
      private function §5P§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2DynamicTreeNode = null;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§,!N§);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  return new b2DynamicTreeNode();
               }
               addr37:
               §§push(this.§,!N§);
            }
            _loc1_ = §§pop();
            if(!_loc2_)
            {
               this.§,!N§ = _loc1_.parent;
               while(true)
               {
                  _loc1_.parent = null;
                  _loc1_.child1 = null;
                  while(_loc3_)
                  {
                     _loc1_.child2 = null;
                     if(_loc3_ || _loc1_)
                     {
                        return _loc1_;
                        addr79:
                     }
                  }
               }
            }
            §§goto(addr79);
         }
         §§goto(addr37);
      }
      
      private function §1n§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            param1.parent = this.§,!N§;
            do
            {
               this.§,!N§ = param1;
            }
            while(_loc2_);
            
         }
      }
      
      private function §5!^§(param1:b2DynamicTreeNode) : void
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
            §§push((_loc10_ = this).§3t§);
            if(!_loc13_)
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(_loc12_ || param1)
            {
               _loc10_.§3t§ = _loc11_;
            }
            if(!_loc13_)
            {
               §§push(this.§"!L§);
               loop0:
               while(true)
               {
                  §§push(null);
                  addr74:
                  while(§§pop() == §§pop())
                  {
                  }
                  var _loc2_:b2Vec2 = param1.aabb.§%!7§();
                  var _loc3_:b2DynamicTreeNode = this.§"!L§;
                  if(!_loc13_)
                  {
                     if(_loc3_.§<!A§() == false)
                     {
                        addr94:
                        do
                        {
                           _loc6_ = _loc3_.child1;
                           _loc7_ = _loc3_.child2;
                           if(_loc12_)
                           {
                              §§push(Number(Math.abs((_loc6_.aabb.§>!7§.x + _loc6_.aabb.§=k§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§>!7§.y + _loc6_.aabb.§=k§.y) / 2 - _loc2_.y)));
                              if(_loc12_ || param1)
                              {
                                 _loc8_ = §§pop();
                                 if(!_loc13_)
                                 {
                                    addr150:
                                    §§push(Number(Math.abs((_loc7_.aabb.§>!7§.x + _loc7_.aabb.§=k§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§>!7§.y + _loc7_.aabb.§=k§.y) / 2 - _loc2_.y)));
                                    if(!(_loc13_ && param1))
                                    {
                                       addr191:
                                       _loc9_ = §§pop();
                                       addr202:
                                       if(!(_loc13_ && param1))
                                       {
                                          §§push(_loc8_);
                                       }
                                       _loc3_ = _loc6_;
                                       if(_loc13_)
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
                                 §§goto(addr202);
                              }
                              §§goto(addr191);
                           }
                           §§goto(addr150);
                        }
                        while(_loc3_.§<!A§() == false);
                        
                     }
                     var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                     var _loc5_:b2DynamicTreeNode;
                     (_loc5_ = this.§5P§()).parent = _loc4_;
                     if(_loc12_)
                     {
                        _loc5_.§["§ = null;
                        if(_loc12_ || this)
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
                                    §§pop().§]y§(§§pop(),§§pop());
                                    if(!_loc13_)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc12_)
                                          {
                                             if(_loc3_.parent.child1 == _loc3_)
                                             {
                                                if(_loc13_)
                                                {
                                                   break;
                                                }
                                                _loc4_.child1 = _loc5_;
                                                do
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      _loc5_.child1 = _loc3_;
                                                      if(!_loc13_)
                                                      {
                                                         _loc5_.child2 = param1;
                                                         loop7:
                                                         while(true)
                                                         {
                                                            _loc3_.parent = _loc5_;
                                                            if(_loc12_ || _loc2_)
                                                            {
                                                               if(_loc13_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               while(true)
                                                               {
                                                                  param1.parent = _loc5_;
                                                                  if(!_loc12_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§"!L§ = _loc5_;
                                                                  if(!(_loc12_ || _loc2_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc12_ || _loc3_)
                                                                  {
                                                                     addr408:
                                                                     return;
                                                                     addr429:
                                                                  }
                                                                  addr449:
                                                                  while(true)
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        break loop7;
                                                                     }
                                                                     break loop6;
                                                                  }
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         param1.parent = _loc5_;
                                                         §§goto(addr434);
                                                      }
                                                      break;
                                                   }
                                                   _loc3_.parent = _loc5_;
                                                   §§goto(addr449);
                                                }
                                                while(!(_loc12_ || _loc2_));
                                                
                                                §§goto(addr395);
                                             }
                                             else
                                             {
                                                _loc4_.child2 = _loc5_;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr334);
                                             }
                                          }
                                          §§goto(addr455);
                                       }
                                       else
                                       {
                                          _loc5_.child1 = _loc3_;
                                          if(_loc12_ || this)
                                          {
                                             break;
                                          }
                                       }
                                       §§goto(addr429);
                                    }
                                    break;
                                 }
                                 _loc5_.child2 = param1;
                                 §§goto(addr455);
                              }
                           }
                        }
                     }
                     §§goto(addr434);
                  }
                  addr78:
                  §§goto(addr94);
                  while(true)
                  {
                     §§push(this.§"!L§);
                     if(!_loc13_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  §§goto(addr74);
               }
            }
            while(true)
            {
               this.§"!L§ = param1;
               §§goto(addr78);
            }
         }
         §§goto(addr70);
      }
      
      private function §>!-§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(!(_loc7_ && param1))
         {
            if(param1 == this.§"!L§)
            {
               if(_loc6_ || this)
               {
                  this.§"!L§ = null;
                  if(!(_loc6_ || _loc3_))
                  {
                     addr51:
                     var _loc2_:b2DynamicTreeNode = param1.parent;
                     var _loc3_:b2DynamicTreeNode = _loc2_.parent;
                     if(!_loc7_)
                     {
                        §§push(_loc2_.child1);
                        if(!_loc7_)
                        {
                           if(§§pop() == param1)
                           {
                              addr67:
                              _loc4_ = _loc2_.child2;
                              if(_loc6_ || _loc3_)
                              {
                                 addr83:
                                 if(_loc3_)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(_loc3_.child1 == _loc2_)
                                       {
                                          if(_loc6_)
                                          {
                                             _loc3_.child1 = _loc4_;
                                             if(_loc6_)
                                             {
                                                loop1:
                                                while(true)
                                                {
                                                   _loc4_.parent = _loc3_;
                                                   addr121:
                                                   while(!_loc6_)
                                                   {
                                                      continue loop1;
                                                   }
                                                }
                                                addr117:
                                                addr108:
                                             }
                                             while(true)
                                             {
                                                this.§1n§(_loc2_);
                                                if(!_loc7_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr117);
                                                }
                                                §§goto(addr121);
                                             }
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc6_ || this)
                                                   {
                                                      break;
                                                   }
                                                   addr192:
                                                   addr189:
                                                   this.§1n§(_loc2_);
                                                   return;
                                                }
                                                _loc5_ = _loc3_.aabb;
                                                if(_loc6_)
                                                {
                                                   _loc3_.aabb = b2AABB.§]y§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc5_.§>!J§(_loc3_.aabb))
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr192);
                                          }
                                       }
                                       else
                                       {
                                          _loc3_.child2 = _loc4_;
                                       }
                                       §§goto(addr128);
                                    }
                                    §§goto(addr108);
                                 }
                                 else
                                 {
                                    this.§"!L§ = _loc4_;
                                    if(_loc6_)
                                    {
                                       _loc4_.parent = null;
                                       if(!_loc7_)
                                       {
                                          §§goto(addr189);
                                       }
                                    }
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr128);
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
                     §§goto(addr67);
                  }
               }
               return;
            }
         }
         §§goto(addr51);
      }
   }
}
