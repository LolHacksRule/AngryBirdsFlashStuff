package §^9§
{
   import §'F§.*;
   import §6Z§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §""$§:b2DynamicTreeNode;
      
      private var §-l§:b2DynamicTreeNode;
      
      private var §6"&§:uint;
      
      private var §6M§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
            while(true)
            {
               this.§""$§ = null;
               while(_loc1_)
               {
                  this.§-l§ = null;
                  do
                  {
                     this.§6"&§ = 0;
                     do
                     {
                        this.§6M§ = 0;
                     }
                     while(_loc2_);
                     
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                     addr58:
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §]!J§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         _loc3_ = this.§#!D§();
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
                  addr240:
                  while(true)
                  {
                     §§push(b2Settings.b2_aabbExtension);
                     if(_loc7_ || param2)
                     {
                        §§push(Number(§§pop()));
                     }
                     if(_loc6_ && this)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr173);
      }
      
      public function §5!k§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§!!c§(param1);
         }
         do
         {
            this.§=j§(param1);
         }
         while(!_loc2_);
         
      }
      
      public function §2n§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!(_loc6_ && param2))
         {
            b2Settings.b2Assert(param1.§-!a§());
            loop0:
            while(true)
            {
               §§push(param1.aabb);
               loop1:
               while(true)
               {
                  §§push(§§pop().§[W§(param2));
                  if(_loc7_)
                  {
                     if(§§pop())
                     {
                        addr399:
                        §§push(false);
                        break;
                     }
                     loop2:
                     while(true)
                     {
                        this.§!!c§(param1);
                        loop3:
                        while(!_loc6_)
                        {
                           §§push(b2Settings.b2_aabbExtension);
                           while(true)
                           {
                              §§push(b2Settings.b2_aabbMultiplier);
                              loop5:
                              while(true)
                              {
                                 §§push(param3.x);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(0);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       addr346:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(param3.x);
                                             if(_loc7_ || this)
                                             {
                                                addr361:
                                                §§push(-§§pop());
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
                                                         if(_loc7_ || param3)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         loop12:
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            addr373:
                                                            while(true)
                                                            {
                                                               §§push(b2Settings.b2_aabbExtension);
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               §§push(b2Settings.b2_aabbMultiplier);
                                                               if(!(_loc6_ && param3))
                                                               {
                                                                  §§push(param3.y);
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr273:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc7_ || param1))
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!(_loc7_ || param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc7_ || param1)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     addr347:
                                                                     while(true)
                                                                     {
                                                                        §§push(param3.x);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               §§goto(addr273);
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                   }
                                                }
                                                addr361:
                                             }
                                             §§goto(addr361);
                                          }
                                          §§goto(addr347);
                                       }
                                    }
                                 }
                                 §§goto(addr361);
                              }
                              if(!(_loc6_ && this))
                              {
                                 _loc5_ = §§pop();
                                 loop14:
                                 while(true)
                                 {
                                    if(!(_loc6_ && param3))
                                    {
                                       if(!(_loc7_ || param1))
                                       {
                                          break;
                                       }
                                       if(!_loc7_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(param1.aabb);
                                       while(true)
                                       {
                                          §§push(§§pop().§?J§);
                                          addr192:
                                          while(true)
                                          {
                                             §§push(param2.§?J§);
                                             addr194:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr205:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   addr206:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      addr207:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         addr208:
                                                         while(true)
                                                         {
                                                            §§push(param1.aabb);
                                                            continue loop1;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr67:
                                          if(_loc6_ && this)
                                          {
                                             continue;
                                          }
                                          §§push(§§pop().§1^§);
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(param2.§1^§);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop().y);
                                                if(_loc7_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      addr91:
                                                      §§push(_loc5_);
                                                      if(_loc7_ || param2)
                                                      {
                                                         addr100:
                                                         §§pop().y = §§pop() + §§pop();
                                                         while(_loc7_ || param1)
                                                         {
                                                            this.§4!7§(param1);
                                                            if(!(_loc7_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc7_ || this)
                                                            {
                                                               §§push(true);
                                                               if(!_loc6_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               break loop1;
                                                            }
                                                            §§goto(addr399);
                                                         }
                                                         loop29:
                                                         while(true)
                                                         {
                                                            if(_loc7_ || param2)
                                                            {
                                                               continue loop14;
                                                            }
                                                            addr180:
                                                            while(!(_loc6_ && param1))
                                                            {
                                                               §§push(param1.aabb);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().§1^§);
                                                                  addr113:
                                                                  addr140:
                                                                  while(true)
                                                                  {
                                                                     §§push(param2.§1^§);
                                                                     addr115:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           §§push(_loc4_);
                                                                        }
                                                                        break loop29;
                                                                     }
                                                                  }
                                                                  §§push(param1.aabb);
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc6_ && this)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§goto(addr67);
                                                               }
                                                               continue loop29;
                                                            }
                                                            §§goto(addr208);
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            §§goto(addr126);
                                                         }
                                                         addr126:
                                                         addr125:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr91);
                                                      }
                                                   }
                                                   §§goto(addr125);
                                                }
                                                §§goto(addr100);
                                             }
                                             §§goto(addr115);
                                          }
                                          §§goto(addr113);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr373);
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
                  break;
               }
               return §§pop();
            }
         }
         §§goto(addr399);
      }
      
      public function §;3§(param1:int) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(_loc8_)
         {
            if(this.§""$§ == null)
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
               _loc3_ = this.§""$§;
               if(!(_loc7_ && _loc3_))
               {
                  §§push(0);
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push(uint(§§pop()));
                     if(!(_loc7_ && _loc3_))
                     {
                        _loc4_ = §§pop();
                        if(_loc8_ || _loc2_)
                        {
                           addr182:
                           loop1:
                           while(true)
                           {
                              if(_loc3_.§-!a§() != false)
                              {
                                 if(_loc8_ || param1)
                                 {
                                    var _loc5_:*;
                                    var _loc6_:* = (_loc5_ = this).§6"&§ + 1;
                                    if(!(_loc7_ && param1))
                                    {
                                       _loc5_.§6"&§ = _loc6_;
                                    }
                                    if(!_loc7_)
                                    {
                                       this.§!!c§(_loc3_);
                                       break;
                                       addr150:
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       _loc2_++;
                                       if(_loc7_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc8_ || param1))
                                       {
                                          break loop1;
                                       }
                                       if(true)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          this.§4!7§(_loc3_);
                                          continue loop2;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr150);
                              }
                              else
                              {
                                 §§push(this.§6"&§);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr164);
                           }
                           addr182:
                           addr119:
                        }
                        §§goto(addr182);
                     }
                     while(true)
                     {
                        §§push(§§pop() >> _loc4_);
                        if(!_loc7_)
                        {
                           §§push(§§pop() & 1);
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || this)
                        {
                           §§push(_loc3_.child2);
                        }
                        §§goto(addr182);
                     }
                     else
                     {
                        §§push(_loc3_.child1);
                     }
                     _loc3_ = §§pop();
                     if(_loc8_)
                     {
                        §§push(_loc4_);
                        if(!_loc7_)
                        {
                           §§push(uint(§§pop() + 1 & 31));
                        }
                        _loc4_ = §§pop();
                     }
                     §§goto(addr119);
                  }
               }
               §§goto(addr182);
            }
            return;
         }
         addr31:
      }
      
      public function §25§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.userData;
      }
      
      public function § var§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(!(_loc10_ && _loc3_))
         {
            if(this.§""$§ == null)
            {
               if(!(_loc10_ && this))
               {
                  §§goto(addr40);
               }
            }
            var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
            var _loc4_:int = 0;
            var _loc7_:*;
            _loc3_[_loc7_ = _loc4_++] = this.§""$§;
            while(true)
            {
               if(_loc4_ <= 0)
               {
                  return;
               }
               §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§]",§(param2));
               if(!(_loc10_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc11_)
                     {
                        §§push(_loc5_.§-!a§());
                        if(!(_loc10_ && param2))
                        {
                           if(§§pop())
                           {
                              if(_loc11_ || _loc3_)
                              {
                                 §§push(Boolean(param1(_loc5_)));
                                 if(!(_loc10_ && param2))
                                 {
                                    addr125:
                                    if(!(_loc6_ = §§pop()))
                                    {
                                       if(_loc11_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                 }
                                 §§goto(addr125);
                              }
                           }
                           else
                           {
                              var _loc8_:*;
                              _loc3_[_loc8_ = _loc4_++] = _loc5_.child1;
                              if(!(_loc10_ && param2))
                              {
                                 var _loc9_:*;
                                 _loc3_[_loc9_ = _loc4_++] = _loc5_.child2;
                              }
                           }
                           continue;
                        }
                        §§goto(addr125);
                     }
                     break;
                  }
                  continue;
               }
               §§goto(addr125);
            }
            return;
         }
         addr40:
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
         if(_loc23_ || _loc3_)
         {
            if(this.§""$§ == null)
            {
               if(!(_loc22_ && _loc3_))
               {
                  §§goto(addr59);
               }
            }
            _loc3_ = param2.p1;
            var _loc4_:b2Vec2 = param2.p2;
            var _loc5_:b2Vec2;
            (_loc5_ = b2Math.§";§(_loc3_,_loc4_)).Normalize();
            var _loc6_:b2Vec2 = b2Math.§6"%§(1,_loc5_);
            var _loc7_:b2Vec2 = b2Math.§8!&§(_loc6_);
            §§push(param2.§]!4§);
            if(!_loc22_)
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
                  if(!(_loc22_ && _loc3_))
                  {
                     §§push(_loc4_.x);
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
                           }
                        }
                        addr208:
                        if(_loc22_ && this)
                        {
                           continue;
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc23_ || this)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc22_ && param2))
                           {
                              if(!_loc22_)
                              {
                                 addr234:
                                 _loc11_ = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(_loc9_.§?J§);
                                    loop9:
                                    while(true)
                                    {
                                       §§pop().x = Math.min(_loc3_.x,_loc10_);
                                       addr160:
                                       while(_loc23_)
                                       {
                                          if(_loc23_ || this)
                                          {
                                             continue loop9;
                                          }
                                          addr255:
                                          while(true)
                                          {
                                             §§push(_loc3_.y);
                                             if(_loc23_)
                                             {
                                                if(_loc23_ || param1)
                                                {
                                                   continue loop0;
                                                }
                                                addr253:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr234);
                                             }
                                          }
                                          §§goto(addr251);
                                       }
                                       continue loop8;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 _loc10_ = §§pop();
                                 §§goto(addr255);
                              }
                           }
                           §§goto(addr234);
                        }
                        else
                        {
                           while(true)
                           {
                           }
                           addr252:
                        }
                        §§goto(addr253);
                     }
                  }
                  §§goto(addr252);
               }
            }
            §§goto(addr133);
         }
         addr59:
      }
      
      private function §#!D§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2DynamicTreeNode = null;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§-l§);
            if(_loc3_ || this)
            {
               if(!§§pop())
               {
                  return new b2DynamicTreeNode();
               }
               addr37:
               §§push(this.§-l§);
            }
            _loc1_ = §§pop();
            if(!_loc2_)
            {
               this.§-l§ = _loc1_.parent;
               _loc1_.parent = null;
            }
            _loc1_.child1 = null;
            _loc1_.child2 = null;
            return _loc1_;
         }
         §§goto(addr37);
      }
      
      private function §=j§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            param1.parent = this.§-l§;
         }
         do
         {
            this.§-l§ = param1;
         }
         while(!_loc3_);
         
      }
      
      private function §4!7§(param1:b2DynamicTreeNode) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(_loc12_)
         {
            var _loc10_:*;
            §§push((_loc10_ = this).§6M§);
            if(_loc12_ || param1)
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(!_loc13_)
            {
               _loc10_.§6M§ = _loc11_;
            }
            if(!(_loc13_ && _loc2_))
            {
               §§push(this.§""$§);
               loop0:
               while(true)
               {
                  §§push(null);
                  addr89:
                  while(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        this.§""$§ = param1;
                        continue loop0;
                     }
                  }
                  var _loc2_:b2Vec2 = param1.aabb.§`!8§();
                  var _loc3_:b2DynamicTreeNode = this.§""$§;
                  if(_loc12_ || _loc3_)
                  {
                     if(_loc3_.§-!a§() == false)
                     {
                        addr114:
                        do
                        {
                           _loc6_ = _loc3_.child1;
                           _loc7_ = _loc3_.child2;
                           if(!(_loc13_ && _loc2_))
                           {
                              §§push(Number(Math.abs((_loc6_.aabb.§?J§.x + _loc6_.aabb.§1^§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§?J§.y + _loc6_.aabb.§1^§.y) / 2 - _loc2_.y)));
                              if(!(_loc13_ && _loc3_))
                              {
                                 _loc8_ = §§pop();
                                 if(_loc12_)
                                 {
                                    addr175:
                                    §§push(Number(Math.abs((_loc7_.aabb.§?J§.x + _loc7_.aabb.§1^§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§?J§.y + _loc7_.aabb.§1^§.y) / 2 - _loc2_.y)));
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       addr216:
                                       _loc9_ = §§pop();
                                       if(_loc12_ || _loc2_)
                                       {
                                          addr235:
                                          if(_loc8_ >= _loc9_)
                                          {
                                             _loc3_ = _loc7_;
                                             continue;
                                          }
                                       }
                                       _loc3_ = _loc6_;
                                       if(_loc13_ && this)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                 }
                                 §§goto(addr235);
                              }
                              §§goto(addr216);
                           }
                           §§goto(addr175);
                        }
                        while(_loc3_.§-!a§() == false);
                        
                     }
                     var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                     var _loc5_:b2DynamicTreeNode;
                     (_loc5_ = this.§#!D§()).parent = _loc4_;
                     if(_loc12_ || this)
                     {
                        _loc5_.userData = null;
                     }
                     while(true)
                     {
                        §§push(_loc5_.aabb);
                        while(true)
                        {
                           §§push(param1.aabb);
                           addr406:
                           while(true)
                           {
                              §§push(_loc3_.aabb);
                              while(true)
                              {
                                 §§pop().§[!g§(§§pop(),§§pop());
                                 if(_loc12_ || this)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!(_loc13_ && param1))
                                       {
                                          if(_loc3_.parent.child1 == _loc3_)
                                          {
                                             if(!_loc13_)
                                             {
                                                _loc4_.child1 = _loc5_;
                                                if(_loc12_ || param1)
                                                {
                                                   addr352:
                                                   _loc5_.child1 = _loc3_;
                                                   if(_loc12_)
                                                   {
                                                      _loc5_.child2 = param1;
                                                      loop6:
                                                      while(true)
                                                      {
                                                         _loc3_.parent = _loc5_;
                                                         addr346:
                                                         while(true)
                                                         {
                                                            addr328:
                                                            while(true)
                                                            {
                                                               param1.parent = _loc5_;
                                                               if(_loc13_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop6;
                                                            }
                                                            addr459:
                                                            this.§""$§ = _loc5_;
                                                            if(_loc13_ && this)
                                                            {
                                                               addr457:
                                                               if(_loc12_)
                                                               {
                                                                  §§goto(addr459);
                                                               }
                                                               if(!_loc13_)
                                                               {
                                                                  param1.parent = _loc5_;
                                                                  §§goto(addr457);
                                                                  addr476:
                                                               }
                                                               _loc3_.parent = _loc5_;
                                                               addr480:
                                                               §§goto(addr457);
                                                               addr480:
                                                            }
                                                         }
                                                      }
                                                      addr305:
                                                      §§goto(addr430);
                                                   }
                                                   §§goto(addr438);
                                                   addr452:
                                                }
                                             }
                                          }
                                          else
                                          {
                                             _loc4_.child2 = _loc5_;
                                             if(_loc12_ || this)
                                             {
                                                §§goto(addr352);
                                             }
                                             else
                                             {
                                                _loc5_.child2 = param1;
                                                §§goto(addr480);
                                                addr436:
                                             }
                                          }
                                       }
                                       §§goto(addr480);
                                    }
                                    else
                                    {
                                       _loc5_.child1 = _loc3_;
                                       if(_loc12_)
                                       {
                                          §§goto(addr436);
                                       }
                                    }
                                    §§goto(addr476);
                                 }
                                 §§goto(addr480);
                              }
                           }
                           if(_loc13_ && _loc3_)
                           {
                              continue;
                           }
                           §§push(_loc5_.aabb);
                           if(!_loc13_)
                           {
                              if(!_loc13_)
                              {
                                 if(§§pop().§[W§(§§pop()))
                                 {
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       if(_loc13_)
                                       {
                                          §§goto(addr346);
                                       }
                                       §§goto(addr305);
                                    }
                                    §§goto(addr452);
                                 }
                                 §§goto(addr308);
                                 §§push(_loc4_.aabb);
                              }
                              §§goto(addr406);
                           }
                           §§goto(addr308);
                        }
                     }
                  }
                  §§goto(addr114);
               }
            }
            return;
         }
         §§goto(addr90);
      }
      
      private function §!!c§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(!(_loc6_ && _loc2_))
         {
            if(param1 == this.§""$§)
            {
               if(!(_loc6_ && _loc3_))
               {
                  this.§""$§ = null;
                  if(!(_loc6_ && param1))
                  {
                     §§goto(addr51);
                  }
               }
               §§goto(addr51);
            }
            var _loc2_:b2DynamicTreeNode = param1.parent;
            var _loc3_:b2DynamicTreeNode = _loc2_.parent;
            if(!_loc6_)
            {
               §§push(_loc2_.child1);
               if(!(_loc6_ && param1))
               {
                  if(§§pop() == param1)
                  {
                     addr73:
                     _loc4_ = _loc2_.child2;
                     if(!_loc6_)
                     {
                        §§goto(addr84);
                     }
                     §§goto(addr121);
                  }
                  else
                  {
                     addr82:
                     _loc4_ = _loc2_.child1;
                  }
                  addr84:
                  if(_loc3_)
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        if(_loc3_.child1 == _loc2_)
                        {
                           if(!_loc6_)
                           {
                              _loc3_.child1 = _loc4_;
                              if(!_loc6_)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    _loc4_.parent = _loc3_;
                                    addr127:
                                    while(_loc6_ && this)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 addr123:
                                 addr114:
                              }
                           }
                           loop0:
                           while(true)
                           {
                              this.§=j§(_loc2_);
                              if(_loc6_)
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 if(true)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr123);
                              }
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    §§goto(addr203);
                                 }
                                 _loc5_ = _loc3_.aabb;
                                 if(_loc7_)
                                 {
                                    _loc3_.aabb = b2AABB.§[!g§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                                    if(!_loc6_)
                                    {
                                       addr160:
                                       if(!_loc5_.§[W§(_loc3_.aabb))
                                       {
                                          continue;
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr203);
                           }
                           §§goto(addr170);
                        }
                        else
                        {
                           _loc3_.child2 = _loc4_;
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr114);
                  }
                  else
                  {
                     this.§""$§ = _loc4_;
                     if(_loc7_ || this)
                     {
                        _loc4_.parent = null;
                        if(_loc7_)
                        {
                           this.§=j§(_loc2_);
                        }
                     }
                  }
                  addr203:
                  return;
               }
               §§goto(addr82);
            }
            §§goto(addr73);
         }
         addr51:
      }
   }
}
