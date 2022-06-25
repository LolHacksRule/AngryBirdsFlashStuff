package §`!H§
{
   import §8!H§.*;
   import §?!&§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §-!4§:b2DynamicTreeNode;
      
      private var §=x§:b2DynamicTreeNode;
      
      private var §`K§:uint;
      
      private var §"!P§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               this.§-!4§ = null;
               loop1:
               while(true)
               {
                  this.§=x§ = null;
                  addr68:
                  while(_loc1_)
                  {
                     this.§`K§ = 0;
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §'R§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§9!D§();
         if(_loc6_)
         {
            §§push(b2Settings.b2_aabbExtension);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
            while(true)
            {
               _loc4_ = §§pop();
               addr237:
               while(true)
               {
                  §§push(b2Settings.b2_aabbExtension);
                  if(!_loc7_)
                  {
                     if(_loc7_)
                     {
                        break;
                     }
                     §§push(Number(§§pop()));
                  }
                  _loc5_ = §§pop();
               }
            }
         }
         while(true)
         {
            §§push(_loc3_.aabb);
            loop3:
            while(true)
            {
               §§push(§§pop().§]G§);
               addr210:
               while(true)
               {
                  §§push(param1.§]G§);
                  addr212:
                  while(true)
                  {
                     §§push(§§pop().x);
                     addr213:
                     while(true)
                     {
                        §§push(_loc4_);
                        addr214:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           addr215:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              addr216:
                              while(!_loc7_)
                              {
                                 §§push(_loc3_.aabb);
                                 continue loop3;
                              }
                              §§goto(addr237);
                           }
                        }
                     }
                  }
               }
            }
            if(_loc7_ && _loc3_)
            {
               continue;
            }
            §§goto(addr68);
         }
      }
      
      public function §^!B§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6!=§(param1);
            do
            {
               this.§^r§(param1);
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function §5N§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc7_)
         {
            b2Settings.b2Assert(param1.§?!7§());
            loop0:
            while(true)
            {
               §§push(param1.aabb);
               while(true)
               {
                  §§push(§§pop().§set §(param2));
                  if(!_loc7_)
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || this)
                        {
                           §§push(false);
                           break;
                        }
                        continue loop0;
                     }
                     addr346:
                     while(true)
                     {
                        this.§6!=§(param1);
                        loop4:
                        while(true)
                        {
                           §§push(b2Settings.b2_aabbExtension);
                           if(!(_loc7_ && param3))
                           {
                              §§push(b2Settings.b2_aabbMultiplier);
                              if(!_loc7_)
                              {
                                 §§push(param3.x);
                                 if(!(_loc7_ && param1))
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
                                             loop10:
                                             while(true)
                                             {
                                                §§push(-§§pop());
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr340:
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc7_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            addr343:
                                                         }
                                                         loop13:
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            addr345:
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(b2Settings.b2_aabbExtension);
                                                               if(_loc7_ && param1)
                                                               {
                                                                  addr287:
                                                                  _loc5_ = §§pop();
                                                                  continue loop4;
                                                               }
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               §§push(b2Settings.b2_aabbMultiplier);
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(param3.y);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push(§§pop() > §§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc7_ && param2)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        addr225:
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           §§push(param3.y);
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              addr241:
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              if(!(_loc6_ || this))
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              §§push(§§pop());
                                                                           }
                                                                           else
                                                                           {
                                                                              addr262:
                                                                              if(!(_loc6_ || param3))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop());
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                           continue loop12;
                                                                        }
                                                                        addr331:
                                                                        while(true)
                                                                        {
                                                                           §§push(param3.x);
                                                                           break loop14;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(param3.y);
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           §§push(-§§pop());
                                                                        }
                                                                     }
                                                                     §§goto(addr262);
                                                                  }
                                                                  §§goto(addr241);
                                                               }
                                                               §§goto(addr225);
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr337:
                                          }
                                          §§goto(addr331);
                                       }
                                    }
                                 }
                                 §§goto(addr337);
                              }
                              §§goto(addr340);
                           }
                           §§goto(addr343);
                        }
                     }
                  }
                  break;
                  if(_loc7_ && param2)
                  {
                     continue;
                  }
                  §§goto(addr116);
                  return §§pop().§[h§;
               }
               return §§pop();
            }
         }
         §§goto(addr122);
      }
      
      public function §[X§(param1:int) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(!(_loc7_ && _loc2_))
         {
            if(this.§-!4§ == null)
            {
               if(_loc8_ || param1)
               {
                  return;
               }
            }
         }
         §§push(0);
         if(!(_loc7_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(_loc2_ < param1)
         {
            _loc3_ = this.§-!4§;
            if(!(_loc7_ && this))
            {
               §§push(0);
               if(!_loc7_)
               {
                  §§push(uint(§§pop()));
                  if(_loc8_)
                  {
                     _loc4_ = §§pop();
                     if(!(_loc7_ && param1))
                     {
                        loop1:
                        while(true)
                        {
                           §§push(_loc3_.§?!7§());
                           loop2:
                           while(true)
                           {
                              if(§§pop() != false)
                              {
                                 if(_loc8_)
                                 {
                                    var _loc5_:*;
                                    var _loc6_:* = (_loc5_ = this).§`K§ + 1;
                                    if(_loc8_)
                                    {
                                       _loc5_.§`K§ = _loc6_;
                                    }
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       this.§6!=§(_loc3_);
                                       loop5:
                                       while(true)
                                       {
                                          addr199:
                                          while(true)
                                          {
                                             this.§!a§(_loc3_);
                                             addr204:
                                             loop7:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(!_loc7_)
                                                {
                                                   break loop2;
                                                }
                                                addr192:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc7_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(_loc7_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop0;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(true)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr199);
                                 }
                                 addr197:
                              }
                              else
                              {
                                 §§push(this.§`K§);
                                 while(true)
                                 {
                                    §§push(§§pop() >> _loc4_);
                                    if(!(_loc7_ && this))
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop() & 1);
                                          if(_loc8_ || param1)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!_loc8_)
                                             {
                                                continue loop2;
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc8_ || this)
                                                {
                                                   addr122:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.child2);
                                                   }
                                                   addr122:
                                                }
                                                else
                                                {
                                                   §§goto(addr197);
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc3_.child1);
                                             }
                                             while(true)
                                             {
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
                                                continue loop1;
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr192);
                                       addr102:
                                    }
                                    break loop2;
                                 }
                                 addr83:
                              }
                              §§goto(addr192);
                           }
                           while(true)
                           {
                              §§push(§§pop() + 1);
                              if(_loc8_ || _loc2_)
                              {
                                 §§push(int(§§pop()));
                              }
                              §§goto(addr192);
                              §§goto(addr204);
                           }
                        }
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr83);
               }
               §§goto(addr102);
            }
            §§goto(addr122);
         }
      }
      
      public function §6A§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§#!`§;
      }
      
      public function §9!e§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(_loc11_)
         {
            if(this.§-!4§ == null)
            {
               if(_loc11_ || param2)
               {
                  §§goto(addr35);
               }
            }
            var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
            §§push(0);
            if(!(_loc10_ && param1))
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc7_:* = _loc4_++;
            _loc3_[_loc7_] = this.§-!4§;
            while(true)
            {
               if(_loc4_ <= 0)
               {
                  return;
               }
               _loc5_ = _loc3_[--_loc4_];
               if(!(_loc10_ && this))
               {
                  §§push(_loc5_.aabb.§>!N§(param2));
                  if(_loc11_ || param2)
                  {
                     if(§§pop())
                     {
                        if(_loc10_)
                        {
                           break;
                        }
                        §§push(_loc5_.§?!7§());
                        if(_loc11_)
                        {
                           if(!§§pop())
                           {
                              var _loc8_:* = _loc4_++;
                              _loc3_[_loc8_] = _loc5_.child1;
                              if(!(_loc10_ && _loc3_))
                              {
                                 var _loc9_:* = _loc4_++;
                                 _loc3_[_loc9_] = _loc5_.child2;
                              }
                              continue;
                           }
                           if(!(_loc11_ || param2))
                           {
                              continue;
                           }
                           §§push(Boolean(param1(_loc5_)));
                           if(!_loc10_)
                           {
                              addr126:
                              _loc6_ = §§pop();
                              if(_loc11_)
                              {
                                 §§push(_loc6_);
                                 if(!_loc10_)
                                 {
                                    §§push(!§§pop());
                                 }
                              }
                              break;
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc10_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr139:
                        }
                     }
                     continue;
                  }
                  §§goto(addr126);
               }
               §§goto(addr139);
            }
            return;
         }
         addr35:
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
            if(this.§-!4§ == null)
            {
               if(!(_loc23_ && this))
               {
                  return;
               }
            }
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2 = b2Math.§0l§(_loc3_,_loc4_);
         if(!_loc23_)
         {
            _loc5_.Normalize();
         }
         var _loc6_:b2Vec2 = b2Math.§6!§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§4r§(_loc6_);
         §§push(param2.§&!k§);
         if(_loc22_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         _loc9_ = new b2AABB();
         if(_loc22_ || param1)
         {
            §§push(_loc3_.x);
            loop0:
            while(true)
            {
               §§push(_loc8_);
               if(_loc22_ || _loc3_)
               {
                  §§push(_loc4_.x);
                  while(true)
                  {
                     §§push(_loc3_.x);
                     addr252:
                     addr218:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr253:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                        }
                     }
                     if(!(_loc22_ || _loc3_))
                     {
                        continue;
                     }
                     addr226:
                     §§push(§§pop() * §§pop());
                     if(!_loc23_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc22_)
                        {
                           if(_loc23_)
                           {
                              continue loop0;
                           }
                           §§push(Number(§§pop()));
                        }
                        addr234:
                        if(_loc22_)
                        {
                           _loc11_ = §§pop();
                           while(true)
                           {
                              §§push(_loc9_.§]G§);
                              loop8:
                              while(true)
                              {
                                 §§pop().x = Math.min(_loc3_.x,_loc10_);
                                 addr181:
                                 while(true)
                                 {
                                    addr187:
                                    if(!(_loc23_ && this))
                                    {
                                       continue loop8;
                                    }
                                    addr264:
                                    while(true)
                                    {
                                       §§push(_loc3_.y);
                                       if(_loc22_)
                                       {
                                          §§push(_loc8_);
                                          if(_loc22_ || param1)
                                          {
                                             §§push(_loc4_.y);
                                             if(!_loc23_)
                                             {
                                                §§push(_loc3_.y);
                                                if(_loc22_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                }
                                                else
                                                {
                                                   §§goto(addr252);
                                                }
                                             }
                                             if(_loc23_ && _loc3_)
                                             {
                                                break;
                                             }
                                             §§goto(addr218);
                                          }
                                          §§goto(addr226);
                                       }
                                       §§goto(addr234);
                                    }
                                    §§goto(addr253);
                                 }
                              }
                              while(_loc22_ || _loc3_)
                              {
                                 §§push(_loc9_.§[h§);
                                 if(_loc22_)
                                 {
                                    §§pop().y = Math.max(_loc3_.y,_loc11_);
                                    if(!_loc22_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr143);
                              }
                           }
                           addr237:
                        }
                        while(true)
                        {
                           _loc10_ = §§pop();
                           §§goto(addr264);
                        }
                        addr263:
                     }
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc23_ && param1))
                        {
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr263);
                     }
                     addr254:
                  }
               }
               §§goto(addr254);
            }
         }
         §§goto(addr237);
      }
      
      private function §9!D§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2DynamicTreeNode = null;
         if(_loc2_ || this)
         {
            §§push(this.§=x§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  return new b2DynamicTreeNode();
               }
               addr32:
               §§push(this.§=x§);
            }
            _loc1_ = §§pop();
            if(!_loc3_)
            {
               this.§=x§ = _loc1_.parent;
               do
               {
                  _loc1_.parent = null;
                  _loc1_.child1 = null;
                  do
                  {
                     _loc1_.child2 = null;
                  }
                  while(!_loc2_);
                  
               }
               while(!_loc2_);
               
            }
            return _loc1_;
         }
         §§goto(addr32);
      }
      
      private function §^r§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            param1.parent = this.§=x§;
            do
            {
               this.§=x§ = param1;
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      private function §!a§(param1:b2DynamicTreeNode) : void
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
            §§push((_loc10_ = this).§"!P§);
            if(!(_loc12_ && _loc2_))
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(_loc13_ || _loc2_)
            {
               _loc10_.§"!P§ = _loc11_;
            }
            if(!(_loc12_ && param1))
            {
               §§push(this.§-!4§);
               loop0:
               while(true)
               {
                  §§push(null);
                  addr90:
                  while(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        this.§-!4§ = param1;
                        continue loop0;
                     }
                  }
                  var _loc2_:b2Vec2 = param1.aabb.§>!]§();
                  var _loc3_:b2DynamicTreeNode = this.§-!4§;
                  if(_loc13_ || this)
                  {
                     if(_loc3_.§?!7§() == false)
                     {
                        addr117:
                        _loc6_ = _loc3_.child1;
                        _loc7_ = _loc3_.child2;
                        if(_loc13_)
                        {
                           §§push(Number(Math.abs((_loc6_.aabb.§]G§.x + _loc6_.aabb.§[h§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§]G§.y + _loc6_.aabb.§[h§.y) / 2 - _loc2_.y)));
                           if(!_loc12_)
                           {
                              _loc8_ = §§pop();
                              if(!(_loc12_ && _loc2_))
                              {
                                 addr173:
                                 §§push(Number(Math.abs((_loc7_.aabb.§]G§.x + _loc7_.aabb.§[h§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§]G§.y + _loc7_.aabb.§[h§.y) / 2 - _loc2_.y)));
                                 if(_loc13_)
                                 {
                                    addr211:
                                    _loc9_ = §§pop();
                                    addr222:
                                    if(!(_loc12_ && this))
                                    {
                                       §§push(_loc8_);
                                    }
                                    _loc3_ = _loc6_;
                                    if(!(_loc12_ && this))
                                    {
                                       addr246:
                                       if(_loc3_.§?!7§() == false)
                                       {
                                          §§goto(addr117);
                                       }
                                       addr250:
                                       var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                                       var _loc5_:b2DynamicTreeNode = this.§9!D§();
                                       if(!_loc12_)
                                       {
                                          _loc5_.parent = _loc4_;
                                          _loc5_.§#!`§ = null;
                                          addr418:
                                          _loc5_.aabb.§[u§(param1.aabb,_loc3_.aabb);
                                          addr414:
                                          addr416:
                                          addr429:
                                          addr420:
                                          addr425:
                                          if(_loc4_)
                                          {
                                             addr398:
                                             if(_loc13_)
                                             {
                                                if(_loc3_.parent.child1 == _loc3_)
                                                {
                                                   addr405:
                                                   _loc4_.child1 = _loc5_;
                                                   if(_loc13_)
                                                   {
                                                      addr373:
                                                      _loc5_.child1 = _loc3_;
                                                      if(_loc13_)
                                                      {
                                                         _loc5_.child2 = param1;
                                                         addr365:
                                                         if(!(_loc12_ && _loc3_))
                                                         {
                                                            _loc3_.parent = _loc5_;
                                                            addr321:
                                                            param1.parent = _loc5_;
                                                            addr325:
                                                            if(_loc13_)
                                                            {
                                                               if(!(_loc12_ && this))
                                                               {
                                                                  if(_loc13_ || _loc3_)
                                                                  {
                                                                     if(_loc13_ || param1)
                                                                     {
                                                                        if(!(_loc12_ && this))
                                                                        {
                                                                           addr264:
                                                                           §§push(_loc4_.aabb);
                                                                           if(!_loc12_)
                                                                           {
                                                                              §§push(_loc5_.aabb);
                                                                              if(!(_loc12_ && _loc3_))
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    §§push(§§pop().§set §(§§pop()));
                                                                                    if(!(_loc12_ && this))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc12_ && param1))
                                                                                          {
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                §§goto(addr325);
                                                                                             }
                                                                                             addr455:
                                                                                             return;
                                                                                             addr447:
                                                                                          }
                                                                                          _loc5_.child2 = param1;
                                                                                          _loc3_.parent = _loc5_;
                                                                                          param1.parent = _loc5_;
                                                                                          addr479:
                                                                                          addr502:
                                                                                          if(!(_loc12_ && _loc2_))
                                                                                          {
                                                                                             if(!(_loc12_ && this))
                                                                                             {
                                                                                                this.§-!4§ = _loc5_;
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   §§goto(addr479);
                                                                                                }
                                                                                                addr474:
                                                                                                §§goto(addr455);
                                                                                                addr474:
                                                                                                addr493:
                                                                                             }
                                                                                             §§goto(addr502);
                                                                                          }
                                                                                          addr498:
                                                                                          §§goto(addr498);
                                                                                          addr453:
                                                                                       }
                                                                                       addr300:
                                                                                       §§push(_loc4_.aabb);
                                                                                       if(!(_loc12_ && _loc3_))
                                                                                       {
                                                                                          addr310:
                                                                                          §§push(_loc4_.child1.aabb);
                                                                                          §§push(_loc4_.child2.aabb);
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             §§pop().§[u§(§§pop(),§§pop());
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr321);
                                                                                                }
                                                                                                _loc5_ = _loc4_;
                                                                                                _loc4_ = _loc4_.parent;
                                                                                                if(!(_loc12_ && this))
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§goto(addr264);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr447);
                                                                                             }
                                                                                             §§goto(addr453);
                                                                                          }
                                                                                          §§goto(addr418);
                                                                                       }
                                                                                       §§goto(addr414);
                                                                                    }
                                                                                    §§goto(addr418);
                                                                                 }
                                                                                 §§goto(addr416);
                                                                              }
                                                                              §§goto(addr310);
                                                                           }
                                                                           §§goto(addr300);
                                                                        }
                                                                        §§goto(addr429);
                                                                     }
                                                                     §§goto(addr420);
                                                                  }
                                                                  §§goto(addr405);
                                                               }
                                                               §§goto(addr365);
                                                            }
                                                            addr360:
                                                            §§goto(addr360);
                                                         }
                                                         §§goto(addr398);
                                                      }
                                                      §§goto(addr474);
                                                   }
                                                   §§goto(addr493);
                                                }
                                                _loc4_.child2 = _loc5_;
                                                if(_loc13_ || param1)
                                                {
                                                   §§goto(addr373);
                                                }
                                                §§goto(addr474);
                                             }
                                             §§goto(addr425);
                                          }
                                          _loc5_.child1 = _loc3_;
                                          if(!_loc12_)
                                          {
                                             §§goto(addr479);
                                          }
                                          §§goto(addr474);
                                       }
                                       §§goto(addr479);
                                    }
                                    §§goto(addr250);
                                 }
                                 if(§§pop() < _loc9_)
                                 {
                                    §§goto(addr222);
                                 }
                                 _loc3_ = _loc7_;
                                 §§goto(addr246);
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr211);
                        }
                        §§goto(addr173);
                        addr115:
                     }
                     §§goto(addr246);
                  }
                  §§goto(addr115);
               }
               addr89:
            }
            while(true)
            {
               §§push(this.§-!4§);
               if(_loc13_)
               {
                  §§push(null);
                  if(!_loc12_)
                  {
                     §§pop().parent = §§pop();
                     if(!_loc13_)
                     {
                        continue;
                     }
                     if(!(_loc12_ && _loc2_))
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr90);
                  }
                  §§goto(addr91);
               }
               else
               {
                  §§goto(addr89);
               }
            }
         }
      }
      
      private function §6!=§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(_loc6_ || _loc3_)
         {
            if(param1 == this.§-!4§)
            {
               if(_loc6_ || _loc2_)
               {
                  this.§-!4§ = null;
                  if(!(_loc6_ || this))
                  {
                     addr51:
                     var _loc2_:b2DynamicTreeNode = param1.parent;
                     var _loc3_:b2DynamicTreeNode = _loc2_.parent;
                     if(!(_loc7_ && param1))
                     {
                        §§push(_loc2_.child1);
                        if(_loc6_)
                        {
                           if(§§pop() == param1)
                           {
                              addr72:
                              _loc4_ = _loc2_.child2;
                              if(_loc6_ || _loc3_)
                              {
                                 addr88:
                                 if(_loc3_)
                                 {
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       if(_loc3_.child1 == _loc2_)
                                       {
                                          if(!(_loc7_ && this))
                                          {
                                             addr119:
                                             _loc3_.child1 = _loc4_;
                                             if(_loc6_ || _loc3_)
                                             {
                                                loop1:
                                                while(true)
                                                {
                                                   _loc4_.parent = _loc3_;
                                                   addr143:
                                                   while(_loc7_ && this)
                                                   {
                                                      continue loop1;
                                                   }
                                                }
                                                addr139:
                                                addr129:
                                             }
                                             §§goto(addr155);
                                          }
                                          while(true)
                                          {
                                             this.§^r§(_loc2_);
                                             if(!_loc6_)
                                             {
                                                continue;
                                             }
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr139);
                                          }
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   break;
                                                }
                                                addr227:
                                                addr223:
                                                this.§^r§(_loc2_);
                                                return;
                                             }
                                             _loc5_ = _loc3_.aabb;
                                             if(_loc6_)
                                             {
                                                _loc3_.aabb = b2AABB.§[u§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                                                if(!_loc7_)
                                                {
                                                   if(!_loc5_.§set §(_loc3_.aabb))
                                                   {
                                                      continue;
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr227);
                                       }
                                       else
                                       {
                                          _loc3_.child2 = _loc4_;
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr119);
                                 }
                                 else
                                 {
                                    this.§-!4§ = _loc4_;
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       _loc4_.parent = null;
                                       if(!_loc7_)
                                       {
                                          §§goto(addr223);
                                       }
                                       §§goto(addr227);
                                    }
                                 }
                                 §§goto(addr227);
                              }
                              §§goto(addr129);
                           }
                           else
                           {
                              addr86:
                              _loc4_ = _loc2_.child1;
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr72);
                  }
               }
               return;
            }
         }
         §§goto(addr51);
      }
   }
}
