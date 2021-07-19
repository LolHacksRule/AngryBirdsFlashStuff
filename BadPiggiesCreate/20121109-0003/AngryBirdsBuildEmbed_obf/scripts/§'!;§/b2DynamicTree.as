package §'!;§
{
   import §<!B§.*;
   import §?s§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §4U§:b2DynamicTreeNode;
      
      private var §`i§:b2DynamicTreeNode;
      
      private var §?!'§:uint;
      
      private var §0!>§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addr32:
               this.§4U§ = null;
               if(!(_loc2_ && this))
               {
                  this.§`i§ = null;
                  if(_loc1_)
                  {
                     addr47:
                     this.§?!'§ = 0;
                     if(_loc1_)
                     {
                        this.§0!>§ = 0;
                     }
                  }
                  return;
               }
            }
            §§goto(addr47);
         }
         §§goto(addr32);
      }
      
      public function §<!U§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         _loc3_ = this.§;N§();
         §§push(b2Settings.b2_aabbExtension);
         if(!(_loc7_ && param1))
         {
            §§push(Number(§§pop()));
            if(!(_loc7_ && _loc3_))
            {
               _loc4_ = §§pop();
               if(!_loc7_)
               {
                  §§push(b2Settings.b2_aabbExtension);
                  if(_loc6_ || param2)
                  {
                     addr57:
                     _loc5_ = §§pop();
                     if(!(_loc7_ && param2))
                     {
                        addr65:
                        §§push(_loc3_.aabb);
                        if(!(_loc7_ && param1))
                        {
                           §§push(§§pop().§ !d§);
                           if(_loc6_)
                           {
                              §§push(param1.§ !d§);
                              if(_loc6_)
                              {
                                 §§push(§§pop().x);
                                 if(!_loc7_)
                                 {
                                    §§push(_loc4_);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc7_)
                                       {
                                          §§pop().x = §§pop();
                                          if(_loc6_ || this)
                                          {
                                             §§push(_loc3_.aabb);
                                             if(_loc6_)
                                             {
                                                addr115:
                                                §§push(§§pop().§ !d§);
                                                §§push(param1.§ !d§.y);
                                                if(_loc6_ || param1)
                                                {
                                                   addr125:
                                                   §§pop().y = §§pop() - _loc5_;
                                                }
                                                §§goto(addr125);
                                             }
                                             §§goto(addr169);
                                          }
                                          §§push(_loc3_.aabb);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop().§=!j§);
                                             if(!_loc7_)
                                             {
                                                §§push(param1.§=!j§);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc6_ || this)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            §§pop().x = §§pop();
                                                            addr169:
                                                            addr177:
                                                            addr172:
                                                            addr170:
                                                            §§push(§§pop().§=!j§);
                                                            §§push(param1.§=!j§.y);
                                                            if(!_loc7_)
                                                            {
                                                               addr176:
                                                               §§push(§§pop() + _loc5_);
                                                            }
                                                            §§pop().y = §§pop();
                                                            addr178:
                                                            _loc3_.§!L§ = param2;
                                                            if(_loc6_)
                                                            {
                                                               this.§7b§(_loc3_);
                                                            }
                                                            return _loc3_;
                                                            §§push(_loc3_.aabb);
                                                         }
                                                         §§goto(addr177);
                                                      }
                                                      §§goto(addr176);
                                                   }
                                                   §§goto(addr169);
                                                }
                                                §§goto(addr172);
                                             }
                                             §§goto(addr170);
                                          }
                                          §§goto(addr169);
                                       }
                                    }
                                 }
                                 §§goto(addr125);
                              }
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr178);
                  }
                  §§goto(addr57);
               }
               §§goto(addr65);
            }
         }
         §§goto(addr57);
      }
      
      public function §`!A§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1!`§(param1);
            if(!(_loc2_ && param1))
            {
               this.§=!h§(param1);
            }
         }
      }
      
      public function §?"§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc7_)
         {
            b2Settings.b2Assert(param1.§8G§());
            if(!_loc7_)
            {
               §§push(param1.aabb);
               if(!(_loc7_ && param2))
               {
                  §§push(§§pop().§'!q§(param2));
                  if(!_loc7_)
                  {
                     if(§§pop())
                     {
                        §§push(false);
                        if(!(_loc7_ && param2))
                        {
                           §§goto(addr50);
                        }
                     }
                     else
                     {
                        this.§1!`§(param1);
                        if(_loc6_ || param3)
                        {
                           §§push(b2Settings.b2_aabbExtension);
                           if(!(_loc7_ && param1))
                           {
                              §§push(b2Settings.b2_aabbMultiplier);
                              if(!_loc7_)
                              {
                                 §§push(param3.x);
                                 if(_loc6_ || this)
                                 {
                                    §§push(0);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() > §§pop());
                                       if(_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                addr109:
                                                §§push(§§pop() * param3.x);
                                                if(!(_loc7_ && param1))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc6_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!_loc7_)
                                                      {
                                                         addr123:
                                                         _loc4_ = §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            §§push(b2Settings.b2_aabbExtension);
                                                            if(!(_loc7_ && this))
                                                            {
                                                               §§push(b2Settings.b2_aabbMultiplier);
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(param3.y);
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     addr160:
                                                                     if(§§pop() > 0)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           addr174:
                                                                           §§push(§§pop() + param3.y * (!!_loc6_ ? §§pop() : §§pop()));
                                                                           if(_loc6_)
                                                                           {
                                                                              addr177:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§goto(addr174);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr172);
                                                                        §§push(-param3.y);
                                                                     }
                                                                  }
                                                                  §§goto(addr172);
                                                               }
                                                               §§goto(addr174);
                                                            }
                                                         }
                                                         return true;
                                                         addr292:
                                                      }
                                                      _loc5_ = §§pop();
                                                      §§push(param1.aabb);
                                                      if(!(_loc7_ && this))
                                                      {
                                                         addr188:
                                                         §§push(§§pop().§ !d§);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(param2.§ !d§);
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc6_)
                                                                     {
                                                                        addr209:
                                                                        §§pop().x = §§pop();
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           §§push(param1.aabb);
                                                                           if(_loc6_)
                                                                           {
                                                                              addr224:
                                                                              addr222:
                                                                              §§push(§§pop().§ !d§);
                                                                              §§push(param2.§ !d§.y);
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr227:
                                                                                 §§push(§§pop() - _loc5_);
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                              §§push(param1.aabb);
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 §§push(§§pop().§=!j§);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(param2.§=!j§);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(!(_loc7_ && param2))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                addr276:
                                                                                                §§push(param1.aabb.§=!j§);
                                                                                                §§push(param2.§=!j§.y);
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   addr280:
                                                                                                   §§push(§§pop() + _loc5_);
                                                                                                }
                                                                                             }
                                                                                             §§pop().y = §§pop();
                                                                                             if(!(_loc7_ && param3))
                                                                                             {
                                                                                                this.§7b§(param1);
                                                                                             }
                                                                                             §§goto(addr292);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr280);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr276);
                                                                     }
                                                                  }
                                                                  §§goto(addr227);
                                                               }
                                                               §§goto(addr209);
                                                            }
                                                            §§goto(addr224);
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                      §§goto(addr276);
                                                   }
                                                   §§goto(addr177);
                                                }
                                             }
                                             §§goto(addr174);
                                          }
                                          else
                                          {
                                             §§push(param3.x);
                                             if(!(_loc7_ && param3))
                                             {
                                                §§goto(addr109);
                                                §§push(-§§pop());
                                             }
                                             §§goto(addr172);
                                          }
                                       }
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr174);
                           }
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr123);
                  }
                  addr50:
                  return §§pop();
               }
               §§goto(addr188);
            }
            §§goto(addr123);
         }
         §§goto(addr224);
      }
      
      public function §set §(param1:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(_loc7_)
         {
            if(this.§4U§ == null)
            {
               if(!(_loc8_ && this))
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         loop0:
         for(; _loc2_ < param1; _loc2_++)
         {
            _loc3_ = this.§4U§;
            if(!(_loc8_ && param1))
            {
               §§push(0);
               if(!(_loc8_ && param1))
               {
                  §§push(uint(§§pop()));
                  if(!_loc8_)
                  {
                     _loc4_ = §§pop();
                     while(true)
                     {
                        if(_loc3_.§8G§() != false)
                        {
                           if(_loc7_ || _loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        §§push(this.§?!'§);
                     }
                     addr137:
                     var _loc5_:*;
                     var _loc6_:* = (_loc5_ = this).§?!'§ + 1;
                     if(!(_loc8_ && this))
                     {
                        _loc5_.§?!'§ = _loc6_;
                     }
                     this.§1!`§(_loc3_);
                     this.§7b§(_loc3_);
                     continue;
                     addr116:
                  }
                  while(true)
                  {
                     §§push(§§pop() >> _loc4_);
                     if(_loc7_)
                     {
                        while(true)
                        {
                           §§push(§§pop() & 1);
                        }
                        addr81:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc8_ && this))
                           {
                              §§push(_loc3_.child2);
                           }
                           §§goto(addr137);
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
                        §§goto(addr116);
                     }
                  }
               }
               §§goto(addr81);
            }
            §§goto(addr137);
         }
      }
      
      public function §+,§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§!L§;
      }
      
      public function §>x§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(_loc10_)
         {
            if(this.§4U§ == null)
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
         _loc3_[_loc7_ = _loc4_++] = this.§4U§;
         while(true)
         {
            if(_loc4_ <= 0)
            {
               return;
            }
            §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§,!r§(param2));
            if(_loc10_ || param2)
            {
               if(!§§pop())
               {
                  continue;
               }
               if(_loc10_)
               {
                  §§push(_loc5_.§8G§());
                  if(!(_loc11_ && param1))
                  {
                     if(§§pop())
                     {
                        if(_loc11_)
                        {
                           break;
                        }
                        addr95:
                        §§push(Boolean(param1(_loc5_)));
                        if(_loc10_ || param2)
                        {
                           addr107:
                           §§push(_loc6_ = §§pop());
                        }
                        if(!§§pop())
                        {
                           if(!_loc11_)
                           {
                              break;
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
                  §§goto(addr107);
               }
               §§goto(addr95);
            }
            §§goto(addr107);
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
         if(!_loc23_)
         {
            if(this.§4U§ == null)
            {
               if(_loc22_)
               {
                  §§goto(addr48);
               }
            }
            _loc3_ = param2.p1;
            var _loc4_:b2Vec2 = param2.p2;
            var _loc5_:b2Vec2;
            (_loc5_ = b2Math.§<b§(_loc3_,_loc4_)).Normalize();
            var _loc6_:b2Vec2 = b2Math.§=!b§(1,_loc5_);
            var _loc7_:b2Vec2 = b2Math.§7!@§(_loc6_);
            §§push(param2.§&+§);
            if(!(_loc23_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            _loc9_ = new b2AABB();
            §§push(_loc3_.x);
            if(!(_loc23_ && param2))
            {
               §§push(_loc8_);
               if(!_loc23_)
               {
                  §§push(_loc4_.x);
                  if(!(_loc23_ && param2))
                  {
                     §§push(_loc3_.x);
                     if(_loc22_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc22_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc22_)
                           {
                              addr122:
                              §§push(§§pop() + §§pop());
                              if(!_loc23_)
                              {
                                 §§goto(addr125);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr143);
                        }
                     }
                  }
                  §§goto(addr155);
               }
               §§goto(addr122);
            }
            addr125:
            §§push(Number(§§pop()));
            if(!_loc23_)
            {
               addr128:
               _loc10_ = §§pop();
               if(_loc22_)
               {
                  §§push(_loc3_.y);
                  if(_loc22_ || param1)
                  {
                     §§goto(addr140);
                  }
                  §§goto(addr159);
               }
               §§goto(addr215);
            }
            addr140:
            §§push(_loc8_);
            if(!_loc23_)
            {
               addr143:
               §§push(_loc4_.y);
               if(!(_loc23_ && param1))
               {
                  addr155:
                  §§push(§§pop() * (§§pop() - _loc3_.y));
               }
               §§goto(addr155);
            }
            §§push(§§pop() + §§pop());
            if(!_loc23_)
            {
               addr159:
               §§push(Number(§§pop()));
            }
            _loc11_ = §§pop();
            §§push(_loc9_.§ !d§);
            if(!(_loc23_ && this))
            {
               §§pop().x = Math.min(_loc3_.x,_loc10_);
               if(!(_loc23_ && _loc3_))
               {
                  §§goto(addr185);
               }
               §§goto(addr193);
            }
            addr185:
            _loc9_.§ !d§.y = Math.min(_loc3_.y,_loc11_);
            if(_loc22_)
            {
               addr193:
               §§push(_loc9_.§=!j§);
               if(!(_loc23_ && _loc3_))
               {
                  §§pop().x = Math.max(_loc3_.x,_loc10_);
                  §§goto(addr223);
               }
               §§pop().y = Math.max(_loc3_.y,_loc11_);
            }
            addr223:
            if(!(_loc23_ && _loc3_))
            {
               addr215:
               §§push(_loc9_.§=!j§);
            }
            var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
            var _loc13_:int = 0;
            var _loc19_:*;
            _loc12_[_loc19_ = _loc13_++] = this.§4U§;
            while(true)
            {
               if(_loc13_ <= 0)
               {
                  return;
               }
               §§push((_loc14_ = _loc12_[--_loc13_]).aabb);
               if(!(_loc23_ && _loc3_))
               {
                  if(§§pop().§,!r§(_loc9_) == false)
                  {
                     continue;
                  }
                  §§push(_loc14_.aabb);
               }
               _loc15_ = §§pop().§9Y§();
               _loc16_ = _loc14_.aabb.§]b§();
               if(!_loc22_)
               {
                  continue;
               }
               §§push(Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x);
               if(_loc22_ || this)
               {
                  §§push(_loc7_.y);
                  if(_loc22_ || param1)
                  {
                     §§push(§§pop() * _loc16_.y);
                     if(!(_loc23_ && param1))
                     {
                        §§push(§§pop() - §§pop());
                        if(!(_loc23_ && this))
                        {
                           addr347:
                           §§push(Number(§§pop()));
                           if(!(_loc23_ && this))
                           {
                              addr355:
                              §§push(§§pop());
                              if(_loc22_)
                              {
                                 addr358:
                                 _loc17_ = §§pop();
                              }
                              addr360:
                              if(§§pop() > §§pop())
                              {
                                 if(_loc22_ || param1)
                                 {
                                 }
                                 continue;
                              }
                              if(!_loc14_.§8G§())
                              {
                                 var _loc20_:*;
                                 _loc12_[_loc20_ = _loc13_++] = _loc14_.child1;
                                 if(!(_loc23_ && param1))
                                 {
                                    var _loc21_:*;
                                    _loc12_[_loc21_ = _loc13_++] = _loc14_.child2;
                                 }
                                 continue;
                              }
                              if(!(_loc22_ || param2))
                              {
                                 continue;
                              }
                              (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                              _loc18_.p2 = param2.p2;
                              if(!(_loc23_ && param1))
                              {
                                 _loc18_.§&+§ = param2.§&+§;
                                 if(_loc22_)
                                 {
                                    addr404:
                                    §§push(Number(param1(_loc18_,_loc14_)));
                                    if(!_loc23_)
                                    {
                                       §§push(§§pop());
                                       if(_loc22_ || param1)
                                       {
                                          _loc8_ = §§pop();
                                          §§push(0);
                                          if(_loc22_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(!_loc23_)
                                                {
                                                   break;
                                                }
                                                addr521:
                                                §§push(_loc9_.§=!j§);
                                             }
                                             else
                                             {
                                                §§push(_loc3_.x);
                                                §§push(_loc8_);
                                                if(_loc22_)
                                                {
                                                   §§push(_loc4_.x);
                                                   if(_loc22_ || param1)
                                                   {
                                                      §§push(_loc3_.x);
                                                      if(!_loc23_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc23_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc23_)
                                                            {
                                                               addr452:
                                                               _loc10_ = Number(§§pop() + §§pop());
                                                               if(!(_loc23_ && _loc3_))
                                                               {
                                                                  §§push(_loc3_.y);
                                                                  §§push(_loc8_);
                                                                  if(_loc22_ || param2)
                                                                  {
                                                                     addr480:
                                                                     §§push(_loc4_.y);
                                                                     if(!_loc23_)
                                                                     {
                                                                        addr476:
                                                                        §§push(§§pop() - _loc3_.y);
                                                                     }
                                                                     _loc11_ = Number(§§pop() + §§pop() * §§pop());
                                                                  }
                                                                  §§goto(addr480);
                                                               }
                                                               §§push(_loc9_.§ !d§);
                                                               if(_loc22_ || param1)
                                                               {
                                                                  §§pop().x = Math.min(_loc3_.x,_loc10_);
                                                                  addr498:
                                                                  §§push(_loc9_.§ !d§);
                                                               }
                                                               §§pop().y = Math.min(_loc3_.y,_loc11_);
                                                               §§push(_loc9_.§=!j§);
                                                               if(!(_loc23_ && param2))
                                                               {
                                                                  §§pop().x = Math.max(_loc3_.x,_loc10_);
                                                                  §§goto(addr521);
                                                               }
                                                               §§pop().y = Math.max(_loc3_.y,_loc11_);
                                                               continue;
                                                            }
                                                            §§goto(addr480);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr476);
                                                }
                                                §§goto(addr452);
                                             }
                                             §§goto(addr452);
                                          }
                                          §§goto(addr480);
                                       }
                                       §§goto(addr452);
                                    }
                                    §§goto(addr480);
                                 }
                                 §§goto(addr498);
                              }
                              §§goto(addr404);
                           }
                           §§goto(addr360);
                           §§push(0);
                        }
                        §§goto(addr355);
                     }
                     §§goto(addr358);
                  }
                  §§goto(addr355);
               }
               §§goto(addr347);
            }
            return;
         }
         addr48:
      }
      
      private function §;N§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2DynamicTreeNode = null;
         if(_loc3_)
         {
            §§push(this.§`i§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  addr39:
                  _loc1_ = this.§`i§;
                  if(!_loc2_)
                  {
                     this.§`i§ = _loc1_.parent;
                     if(_loc3_)
                     {
                        _loc1_.parent = null;
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.child1 = null;
                           if(_loc3_)
                           {
                              _loc1_.child2 = null;
                              if(!(_loc3_ || _loc1_))
                              {
                                 §§goto(addr86);
                              }
                           }
                        }
                        §§goto(addr86);
                     }
                     return _loc1_;
                  }
               }
               addr86:
               return new b2DynamicTreeNode();
            }
         }
         §§goto(addr39);
      }
      
      private function §=!h§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.parent = this.§`i§;
            if(_loc3_)
            {
               this.§`i§ = param1;
            }
         }
      }
      
      private function §7b§(param1:b2DynamicTreeNode) : void
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
            §§push((_loc10_ = this).§0!>§);
            if(_loc12_)
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(!(_loc13_ && param1))
            {
               _loc10_.§0!>§ = _loc11_;
            }
            if(_loc12_)
            {
               §§push(this.§4U§);
               if(_loc12_)
               {
                  §§push(null);
                  if(!_loc13_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc12_)
                        {
                           this.§4U§ = param1;
                           if(!_loc13_)
                           {
                              addr68:
                              this.§4U§.parent = null;
                              if(_loc13_ && param1)
                              {
                                 addr77:
                                 var _loc2_:b2Vec2 = param1.aabb.§9Y§();
                                 var _loc3_:b2DynamicTreeNode = this.§4U§;
                                 if(!(_loc13_ && _loc2_))
                                 {
                                    if(_loc3_.§8G§() == false)
                                    {
                                       addr97:
                                       do
                                       {
                                          _loc6_ = _loc3_.child1;
                                          _loc7_ = _loc3_.child2;
                                          if(_loc12_)
                                          {
                                             §§push(Number(Math.abs((_loc6_.aabb.§ !d§.x + _loc6_.aabb.§=!j§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§ !d§.y + _loc6_.aabb.§=!j§.y) / 2 - _loc2_.y)));
                                             if(!_loc13_)
                                             {
                                                _loc8_ = §§pop();
                                                if(!_loc13_)
                                                {
                                                   §§push(Number(Math.abs((_loc7_.aabb.§ !d§.x + _loc7_.aabb.§=!j§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§ !d§.y + _loc7_.aabb.§=!j§.y) / 2 - _loc2_.y)));
                                                   if(_loc12_ || this)
                                                   {
                                                      _loc9_ = §§pop();
                                                      if(_loc12_ || param1)
                                                      {
                                                         addr207:
                                                         if(_loc8_ >= _loc9_)
                                                         {
                                                            _loc3_ = _loc7_;
                                                            continue;
                                                         }
                                                      }
                                                      _loc3_ = _loc6_;
                                                      if(!_loc12_)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr207);
                                       }
                                       while(_loc3_.§8G§() == false);
                                       
                                    }
                                    var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                                    var _loc5_:b2DynamicTreeNode;
                                    (_loc5_ = this.§;N§()).parent = _loc4_;
                                    if(_loc12_ || this)
                                    {
                                       _loc5_.§!L§ = null;
                                       §§push(_loc5_.aabb);
                                       if(!_loc13_)
                                       {
                                          §§push(param1.aabb);
                                          if(!_loc13_)
                                          {
                                             §§push(_loc3_.aabb);
                                             if(!_loc13_)
                                             {
                                                §§pop().§^!C§(§§pop(),§§pop());
                                                if(_loc4_)
                                                {
                                                   if(_loc3_.parent.child1 == _loc3_)
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         _loc4_.child1 = _loc5_;
                                                         addr275:
                                                         _loc5_.child1 = _loc3_;
                                                         if(_loc12_)
                                                         {
                                                            _loc5_.child2 = param1;
                                                            if(!_loc13_)
                                                            {
                                                               addr285:
                                                               _loc3_.parent = _loc5_;
                                                               if(_loc12_ || _loc2_)
                                                               {
                                                               }
                                                               §§goto(addr357);
                                                            }
                                                         }
                                                         param1.parent = _loc5_;
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.aabb);
                                                            if(_loc12_ || _loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_.aabb);
                                                                  if(_loc12_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop().§'!q§(§§pop()))
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              §§goto(addr357);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr353:
                                                                              addr317:
                                                                           }
                                                                           §§goto(addr357);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc4_.aabb);
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_.child1.aabb);
                                                                           }
                                                                           addr320:
                                                                        }
                                                                        §§goto(addr357);
                                                                     }
                                                                     addr313:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.child2.aabb);
                                                                     §§goto(addr326);
                                                                  }
                                                               }
                                                               addr309:
                                                            }
                                                            §§goto(addr320);
                                                         }
                                                      }
                                                      §§goto(addr317);
                                                   }
                                                   else
                                                   {
                                                      _loc4_.child2 = _loc5_;
                                                      if(!_loc13_)
                                                      {
                                                         §§goto(addr275);
                                                      }
                                                      §§goto(addr285);
                                                   }
                                                }
                                                else
                                                {
                                                   _loc5_.child1 = _loc3_;
                                                }
                                                §§goto(addr285);
                                             }
                                             addr326:
                                             while(true)
                                             {
                                                §§pop().§^!C§(§§pop(),§§pop());
                                                if(_loc13_ && this)
                                                {
                                                   break;
                                                }
                                                _loc5_ = _loc4_;
                                                if(_loc4_ = _loc4_.parent)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr353);
                                             }
                                             addr357:
                                             _loc5_.child2 = param1;
                                             if(_loc12_)
                                             {
                                                _loc3_.parent = _loc5_;
                                                param1.parent = _loc5_;
                                                if(!_loc13_)
                                                {
                                                   this.§4U§ = _loc5_;
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr313);
                                       }
                                       §§goto(addr309);
                                    }
                                    §§goto(addr285);
                                 }
                                 §§goto(addr97);
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr77);
                  }
               }
               §§goto(addr68);
            }
         }
         §§goto(addr77);
      }
      
      private function §1!`§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(_loc7_ || param1)
         {
            if(param1 == this.§4U§)
            {
               if(!(_loc6_ && param1))
               {
                  this.§4U§ = null;
                  if(_loc7_)
                  {
                     return;
                  }
               }
            }
         }
         var _loc2_:b2DynamicTreeNode = param1.parent;
         var _loc3_:b2DynamicTreeNode = _loc2_.parent;
         if(_loc7_ || this)
         {
            §§push(_loc2_.child1);
            if(_loc7_)
            {
               if(§§pop() == param1)
               {
                  addr68:
                  _loc4_ = _loc2_.child2;
               }
               else
               {
                  addr75:
                  _loc4_ = _loc2_.child1;
               }
               if(_loc3_)
               {
                  if(_loc7_)
                  {
                     if(_loc3_.child1 == _loc2_)
                     {
                        if(!_loc6_)
                        {
                           _loc3_.child1 = _loc4_;
                           if(_loc7_)
                           {
                              addr113:
                              _loc4_.parent = _loc3_;
                              if(!_loc6_)
                              {
                                 addr118:
                                 this.§=!h§(_loc2_);
                              }
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    addr189:
                                    addr186:
                                    this.§=!h§(_loc2_);
                                    return;
                                 }
                                 _loc5_ = _loc3_.aabb;
                                 if(!_loc6_)
                                 {
                                    _loc3_.aabb = b2AABB.§^!C§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                                    if(_loc7_)
                                    {
                                       if(!_loc5_.§'!q§(_loc3_.aabb))
                                       {
                                          continue;
                                       }
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr189);
                           }
                        }
                        §§goto(addr113);
                     }
                     else
                     {
                        _loc3_.child2 = _loc4_;
                        if(!(_loc6_ && param1))
                        {
                           §§goto(addr113);
                        }
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr113);
               }
               else
               {
                  this.§4U§ = _loc4_;
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc4_.parent = null;
                     if(_loc7_ || _loc2_)
                     {
                        §§goto(addr186);
                     }
                     §§goto(addr189);
                  }
               }
               §§goto(addr189);
            }
            §§goto(addr75);
         }
         §§goto(addr68);
      }
   }
}
