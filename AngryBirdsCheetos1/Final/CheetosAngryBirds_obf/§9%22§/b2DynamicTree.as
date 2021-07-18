package §9"§
{
   import §0!G§.*;
   import §2!F§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §6a§:b2DynamicTreeNode;
      
      private var §`K§:b2DynamicTreeNode;
      
      private var §8!<§:uint;
      
      private var §%y§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
            while(true)
            {
               this.§6a§ = null;
               loop1:
               while(!(_loc2_ && this))
               {
                  while(true)
                  {
                     this.§`K§ = null;
                     do
                     {
                        this.§8!<§ = 0;
                        do
                        {
                           this.§%y§ = 0;
                        }
                        while(!_loc1_);
                        
                     }
                     while(!_loc1_);
                     
                     if(_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr80);
      }
      
      public function §case§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§4x§();
         if(_loc6_ || this)
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
                     if(!_loc7_)
                     {
                        if(_loc7_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     addr243:
                     _loc5_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc3_.aabb);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop().§!!C§);
                           loop5:
                           while(true)
                           {
                              §§push(param1.§!!C§);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 if(_loc6_)
                                 {
                                    §§push(_loc4_);
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr192:
                                       §§push(_loc5_);
                                       if(_loc7_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       addr201:
                                       §§pop().y = §§pop() - §§pop();
                                       loop11:
                                       while(!_loc7_)
                                       {
                                          §§push(_loc3_.aabb);
                                          while(_loc6_ || param2)
                                          {
                                             if(_loc7_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(§§pop().§<0§);
                                             while(true)
                                             {
                                                §§push(param1.§<0§);
                                                addr145:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr146:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      addr147:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr148:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop3;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§push(_loc3_.aabb);
                                             if(_loc7_)
                                             {
                                                continue;
                                             }
                                             §§push(§§pop().§<0§);
                                             if(!_loc7_)
                                             {
                                                §§push(param1.§<0§);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop().y);
                                                   if(_loc6_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         addr97:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc6_ || param2)
                                                         {
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               §§pop().y = §§pop();
                                                               loop19:
                                                               while(_loc6_ || param1)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc3_.§4!E§ = param2;
                                                                     while(_loc6_)
                                                                     {
                                                                        this.§23§(_loc3_);
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           if(!(_loc6_ || _loc3_))
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           if(!(_loc6_ || param2))
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           §§goto(addr65);
                                                                           continue loop19;
                                                                        }
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  return _loc3_;
                                                               }
                                                               continue loop3;
                                                            }
                                                            §§goto(addr146);
                                                         }
                                                         §§goto(addr148);
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                   §§goto(addr97);
                                                }
                                                else
                                                {
                                                   §§goto(addr145);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr143);
                                             }
                                             §§goto(addr145);
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop().§!!C§);
                                             if(!(_loc6_ || _loc3_))
                                             {
                                                continue loop5;
                                             }
                                             §§push(param1.§!!C§);
                                             if(!(_loc6_ || this))
                                             {
                                                continue loop6;
                                             }
                                             §§push(§§pop().y);
                                             if(_loc6_ || this)
                                             {
                                                if(_loc7_ && param2)
                                                {
                                                   break;
                                                }
                                                §§goto(addr192);
                                             }
                                             §§goto(addr201);
                                             §§goto(addr133);
                                          }
                                          addr133:
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             break loop11;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr160);
                                       }
                                    }
                                 }
                                 §§goto(addr216);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr129);
      }
      
      public function §^<§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§%n§(param1);
         }
         do
         {
            this.§>!R§(param1);
         }
         while(!_loc2_);
         
      }
      
      public function §5! §(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         if(_loc6_ || this)
         {
            b2Settings.b2Assert(param1.§,v§());
            loop0:
            while(true)
            {
               §§push(param1.aabb);
               while(true)
               {
                  §§push(§§pop().§&!W§(param2));
                  addr382:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           this.§%n§(param1);
                           addr366:
                           while(true)
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
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(0);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop() > §§pop());
                                          addr330:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(param3.x);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(-§§pop());
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      addr341:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc7_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            loop13:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               addr347:
                                                               while(true)
                                                               {
                                                                  if(!(_loc7_ && param3))
                                                                  {
                                                                     if(!(_loc6_ || param1))
                                                                     {
                                                                        addr384:
                                                                        return false;
                                                                        addr383:
                                                                     }
                                                                     §§push(b2Settings.b2_aabbExtension);
                                                                     if(_loc7_ && param3)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push(b2Settings.b2_aabbMultiplier);
                                                                     if(!(_loc6_ || param1))
                                                                     {
                                                                        addr246:
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           §§push(param3.y);
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              if(_loc7_ && this)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              §§push(§§pop());
                                                                           }
                                                                           else
                                                                           {
                                                                              addr275:
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              addr278:
                                                                              §§push(-§§pop());
                                                                           }
                                                                           addr280:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc7_ && param1)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc6_ || param2)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    continue loop5;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     §§push(param3.y);
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     §§goto(addr278);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     addr385:
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr339:
                                             }
                                             while(true)
                                             {
                                                §§push(param3.x);
                                                if(!_loc7_)
                                                {
                                                   while(true)
                                                   {
                                                      §§goto(addr341);
                                                   }
                                                   addr335:
                                                }
                                                §§goto(addr339);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr335);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr383);
                  }
                  loop16:
                  while(!(_loc7_ && param1))
                  {
                     §§push(§§pop().§!!C§);
                     loop17:
                     while(true)
                     {
                        §§push(param2.§!!C§);
                        addr197:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr198:
                           while(true)
                           {
                              §§push(_loc4_);
                              addr199:
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                                 addr200:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    loop22:
                                    while(_loc6_)
                                    {
                                       §§push(param1.aabb);
                                       while(_loc6_)
                                       {
                                          continue loop17;
                                          loop25:
                                          for(; _loc6_ || param1; §§push(param1.aabb),if(_loc7_)
                                          {
                                             continue;
                                          },§§goto(addr82))
                                          {
                                             §§push(§§pop().§<0§);
                                             while(true)
                                             {
                                                §§push(param2.§<0§);
                                                addr125:
                                                addr82:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr126:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      addr127:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr128:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            addr129:
                                                            while(!_loc7_)
                                                            {
                                                               continue loop25;
                                                            }
                                                            §§goto(addr347);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§push(§§pop().§<0§);
                                                if(!(_loc6_ || param1))
                                                {
                                                   continue;
                                                }
                                                §§push(param2.§<0§);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop().y);
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(_loc6_)
                                                         {
                                                            addr108:
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc7_)
                                                            {
                                                               §§pop().y = §§pop();
                                                               do
                                                               {
                                                                  this.§23§(param1);
                                                               }
                                                               while(_loc7_ && param1);
                                                               
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  addr60:
                                                                  if(_loc7_ && this)
                                                                  {
                                                                     while(_loc6_)
                                                                     {
                                                                        §§push(param1.aabb);
                                                                        continue loop25;
                                                                        §§goto(addr60);
                                                                     }
                                                                     continue loop22;
                                                                     addr171:
                                                                  }
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr366);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr129);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr126);
                                                            }
                                                            §§goto(addr129);
                                                         }
                                                         §§goto(addr127);
                                                      }
                                                      §§goto(addr128);
                                                   }
                                                   §§goto(addr108);
                                                }
                                                else
                                                {
                                                   §§goto(addr125);
                                                }
                                             }
                                          }
                                       }
                                       continue loop16;
                                    }
                                    §§goto(addr313);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr385);
      }
      
      public function §%!>§(param1:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(_loc7_)
         {
            if(this.§6a§ == null)
            {
               if(!(_loc8_ && _loc2_))
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            _loc3_ = this.§6a§;
            if(!_loc8_)
            {
               §§push(0);
               if(!_loc8_)
               {
                  §§push(uint(§§pop()));
                  if(!_loc8_)
                  {
                     _loc4_ = §§pop();
                     if(_loc7_ || _loc3_)
                     {
                        loop1:
                        while(true)
                        {
                           if(_loc3_.§,v§() != false)
                           {
                              if(_loc7_ || _loc2_)
                              {
                                 addr119:
                                 var _loc5_:*;
                                 var _loc6_:* = (_loc5_ = this).§8!<§ + 1;
                                 if(_loc7_ || param1)
                                 {
                                    _loc5_.§8!<§ = _loc6_;
                                 }
                                 if(!_loc8_)
                                 {
                                    this.§%n§(_loc3_);
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    addr146:
                                    while(true)
                                    {
                                       this.§23§(_loc3_);
                                       addr150:
                                       addr157:
                                       while(_loc8_ && this)
                                       {
                                          continue loop8;
                                       }
                                       break loop1;
                                    }
                                 }
                              }
                              break;
                           }
                           addr64:
                           §§push(this.§8!<§);
                           while(true)
                           {
                              §§push(§§pop() >> _loc4_);
                              if(_loc7_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop() & 1);
                                 }
                                 addr68:
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc8_ && _loc3_)
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
                                 if(_loc7_)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc8_)
                                    {
                                       §§push(uint(§§pop() + 1 & 31));
                                    }
                                    _loc4_ = §§pop();
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        _loc2_++;
                        if(!_loc8_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr150);
                        §§goto(addr157);
                     }
                     continue;
                  }
                  §§goto(addr64);
               }
               §§goto(addr68);
            }
            §§goto(addr119);
         }
      }
      
      public function §8!R§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§4!E§;
      }
      
      public function §<§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(_loc11_ || param2)
         {
            if(this.§6a§ == null)
            {
               if(_loc11_ || this)
               {
                  §§goto(addr40);
               }
            }
            var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
            var _loc4_:int = 0;
            var _loc7_:*;
            _loc3_[_loc7_ = _loc4_++] = this.§6a§;
            while(true)
            {
               if(_loc4_ <= 0)
               {
                  return;
               }
               §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§[!K§(param2));
               if(!(_loc10_ && param1))
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(_loc11_)
                  {
                     §§push(_loc5_.§,v§());
                     if(!_loc10_)
                     {
                        addr98:
                        if(!§§pop())
                        {
                           var _loc8_:*;
                           _loc3_[_loc8_ = _loc4_++] = _loc5_.child1;
                           if(!_loc10_)
                           {
                              var _loc9_:*;
                              _loc3_[_loc9_ = _loc4_++] = _loc5_.child2;
                           }
                           continue;
                        }
                        if(!_loc10_)
                        {
                           §§push(Boolean(param1(_loc5_)));
                           if(!(_loc10_ && param2))
                           {
                              addr113:
                              §§push(_loc6_ = §§pop());
                           }
                           if(!§§pop())
                           {
                              if(!(_loc10_ && this))
                              {
                                 break;
                              }
                              addr131:
                              continue;
                           }
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr131);
               }
               §§goto(addr98);
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
         var _loc11_:* = NaN;
         var _loc14_:b2DynamicTreeNode = null;
         var _loc15_:b2Vec2 = null;
         var _loc16_:b2Vec2 = null;
         var _loc17_:* = NaN;
         var _loc18_:b2RayCastInput = null;
         if(_loc23_)
         {
            if(this.§6a§ == null)
            {
               if(_loc23_)
               {
                  return;
               }
            }
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2;
         (_loc5_ = b2Math.§4_§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§28§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§@%§(_loc6_);
         §§push(param2.§7!A§);
         if(_loc23_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         _loc9_ = new b2AABB();
         if(_loc23_ || param1)
         {
            §§push(_loc3_.x);
            loop0:
            while(true)
            {
               §§push(_loc8_);
               if(_loc23_ || this)
               {
                  §§push(_loc4_.x);
                  if(_loc23_ || param1)
                  {
                     §§push(_loc3_.x);
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr204:
                        §§push(_loc3_.y);
                        if(_loc22_ && _loc3_)
                        {
                           continue;
                        }
                        addr214:
                        §§push(§§pop() - §§pop());
                        if(!_loc22_)
                        {
                           addr217:
                           §§push(§§pop() + §§pop() * §§pop());
                           if(!_loc22_)
                           {
                              if(!_loc22_)
                              {
                                 addr223:
                                 §§push(Number(§§pop()));
                                 if(!_loc23_)
                                 {
                                    continue loop0;
                                 }
                                 _loc11_ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc9_.§!!C§);
                                    while(true)
                                    {
                                       §§pop().x = Math.min(_loc3_.x,_loc10_);
                                       addr174:
                                       while(true)
                                       {
                                          §§push(_loc9_.§!!C§);
                                          if(!(_loc23_ || param1))
                                          {
                                             break;
                                          }
                                          §§pop().y = Math.min(_loc3_.y,_loc11_);
                                          while(!(_loc22_ && _loc3_))
                                          {
                                             while(true)
                                             {
                                                addr124:
                                                do
                                                {
                                                   §§push(_loc9_.§<0§);
                                                   while(true)
                                                   {
                                                      §§pop().x = Math.max(_loc3_.x,_loc10_);
                                                      continue loop6;
                                                   }
                                                }
                                                while(false);
                                                
                                                var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
                                                var _loc13_:int = 0;
                                                var _loc19_:*;
                                                _loc12_[_loc19_ = _loc13_++] = this.§6a§;
                                                addr670:
                                                if(_loc13_ > 0)
                                                {
                                                   §§push((_loc14_ = _loc12_[--_loc13_]).aabb);
                                                   if(_loc23_)
                                                   {
                                                      if(§§pop().§[!K§(_loc9_) == false)
                                                      {
                                                         §§goto(addr670);
                                                      }
                                                      §§push(_loc14_.aabb);
                                                   }
                                                   _loc15_ = §§pop().§2!A§();
                                                   _loc16_ = _loc14_.aabb.§?a§();
                                                   if(!(_loc22_ && param2))
                                                   {
                                                      §§push(Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x);
                                                      if(!_loc22_)
                                                      {
                                                         §§push(_loc7_.y);
                                                         if(!(_loc22_ && this))
                                                         {
                                                            §§push(§§pop() * _loc16_.y);
                                                            if(!(_loc22_ && param2))
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc22_ && this))
                                                               {
                                                                  addr380:
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc23_)
                                                                  {
                                                                     addr383:
                                                                     §§push(§§pop());
                                                                     if(_loc23_)
                                                                     {
                                                                        addr386:
                                                                        _loc17_ = §§pop();
                                                                     }
                                                                     addr388:
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        if(_loc23_ || param1)
                                                                        {
                                                                        }
                                                                        §§goto(addr670);
                                                                     }
                                                                     if(_loc14_.§,v§())
                                                                     {
                                                                        if(_loc23_ || this)
                                                                        {
                                                                           (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                                                                           if(_loc23_)
                                                                           {
                                                                              _loc18_.p2 = param2.p2;
                                                                              _loc18_.§7!A§ = param2.§7!A§;
                                                                              addr629:
                                                                              addr624:
                                                                              if((_loc8_ = Number(param1(_loc18_,_loc14_))) != 0)
                                                                              {
                                                                                 addr572:
                                                                                 §§push(_loc3_.x);
                                                                                 §§push(_loc8_);
                                                                                 if(_loc23_ || _loc3_)
                                                                                 {
                                                                                    addr587:
                                                                                    §§push(§§pop() * (_loc4_.x - _loc3_.x));
                                                                                 }
                                                                                 if(!_loc22_)
                                                                                 {
                                                                                    if(_loc23_ || param2)
                                                                                    {
                                                                                       addr600:
                                                                                       §§push(Number(§§pop() + §§pop()));
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          _loc10_ = §§pop();
                                                                                          addr603:
                                                                                          if(_loc23_)
                                                                                          {
                                                                                             §§push(_loc3_.y);
                                                                                             if(!_loc22_)
                                                                                             {
                                                                                                if(!_loc22_)
                                                                                                {
                                                                                                   if(_loc23_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(!(_loc22_ && param2))
                                                                                                      {
                                                                                                         §§push(_loc4_.y);
                                                                                                         if(!(_loc22_ && param1))
                                                                                                         {
                                                                                                            if(!(_loc22_ && param2))
                                                                                                            {
                                                                                                               if(!_loc22_)
                                                                                                               {
                                                                                                                  §§push(_loc3_.y);
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     addr552:
                                                                                                                     §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc23_ || param2)
                                                                                                                        {
                                                                                                                           addr563:
                                                                                                                           if(!_loc22_)
                                                                                                                           {
                                                                                                                              addr566:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!_loc22_)
                                                                                                                              {
                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                 addr569:
                                                                                                                                 if(_loc23_)
                                                                                                                                 {
                                                                                                                                    addr500:
                                                                                                                                    _loc9_.§!!C§.x = Math.min(_loc3_.x,_loc10_);
                                                                                                                                    addr506:
                                                                                                                                    §§push(_loc9_.§!!C§);
                                                                                                                                    if(_loc23_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§pop().y = Math.min(_loc3_.y,_loc11_);
                                                                                                                                       addr480:
                                                                                                                                       if(!(_loc22_ && param2))
                                                                                                                                       {
                                                                                                                                          if(!(_loc22_ && param2))
                                                                                                                                          {
                                                                                                                                             if(!_loc22_)
                                                                                                                                             {
                                                                                                                                                addr453:
                                                                                                                                                _loc9_.§<0§.x = Math.max(_loc3_.x,_loc10_);
                                                                                                                                                addr450:
                                                                                                                                                if(!_loc22_)
                                                                                                                                                {
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_.§<0§);
                                                                                                                                                      if(!(_loc22_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§pop().y = Math.max(_loc3_.y,_loc11_);
                                                                                                                                                         if(!(_loc22_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc22_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr450);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr670);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr480);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr450);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr453);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr617);
                                                                                                                                                }
                                                                                                                                                §§goto(addr569);
                                                                                                                                             }
                                                                                                                                             §§goto(addr572);
                                                                                                                                          }
                                                                                                                                          §§goto(addr603);
                                                                                                                                       }
                                                                                                                                       §§goto(addr506);
                                                                                                                                    }
                                                                                                                                    §§goto(addr500);
                                                                                                                                    addr571:
                                                                                                                                 }
                                                                                                                                 §§goto(addr629);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr600);
                                                                                                                        }
                                                                                                                        §§goto(addr566);
                                                                                                                     }
                                                                                                                     §§goto(addr572);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr587);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr552);
                                                                                                   }
                                                                                                   §§goto(addr629);
                                                                                                }
                                                                                                §§goto(addr572);
                                                                                             }
                                                                                             §§goto(addr563);
                                                                                          }
                                                                                          §§goto(addr624);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr629);
                                                                              }
                                                                              addr617:
                                                                              return;
                                                                           }
                                                                           §§goto(addr571);
                                                                        }
                                                                        §§goto(addr670);
                                                                     }
                                                                     var _loc20_:*;
                                                                     _loc12_[_loc20_ = _loc13_++] = _loc14_.child1;
                                                                     if(_loc23_ || this)
                                                                     {
                                                                        var _loc21_:*;
                                                                        _loc12_[_loc21_ = _loc13_++] = _loc14_.child2;
                                                                     }
                                                                     §§goto(addr670);
                                                                  }
                                                                  §§goto(addr388);
                                                                  §§push(0);
                                                               }
                                                               §§goto(addr383);
                                                            }
                                                            §§goto(addr386);
                                                         }
                                                         §§goto(addr383);
                                                      }
                                                      §§goto(addr380);
                                                   }
                                                   §§goto(addr670);
                                                }
                                                return;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(_loc3_.y);
                                             if(!(_loc22_ && param1))
                                             {
                                                §§push(_loc8_);
                                                if(_loc23_ || _loc3_)
                                                {
                                                   if(_loc23_ || param2)
                                                   {
                                                      §§push(_loc4_.y);
                                                      if(_loc23_)
                                                      {
                                                         §§goto(addr204);
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr217);
                                             }
                                             §§goto(addr223);
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc23_ || _loc3_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             addr259:
                                             while(true)
                                             {
                                                _loc10_ = §§pop();
                                                §§goto(addr260);
                                             }
                                          }
                                          addr260:
                                       }
                                    }
                                 }
                              }
                              §§goto(addr259);
                           }
                           §§goto(addr223);
                        }
                        while(true)
                        {
                           §§goto(addr250);
                        }
                        addr249:
                     }
                  }
                  §§goto(addr249);
               }
               §§goto(addr250);
            }
         }
         §§goto(addr164);
      }
      
      private function §4x§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2DynamicTreeNode = null;
         if(_loc3_ || this)
         {
            §§push(this.§`K§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  addr34:
                  _loc1_ = this.§`K§;
                  if(_loc3_ || _loc2_)
                  {
                     this.§`K§ = _loc1_.parent;
                     loop0:
                     while(true)
                     {
                        _loc1_.parent = null;
                        while(true)
                        {
                           _loc1_.child1 = null;
                           loop2:
                           while(!(_loc2_ && this))
                           {
                              while(true)
                              {
                                 _loc1_.child2 = null;
                                 if(_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              return _loc1_;
                           }
                        }
                     }
                  }
                  else if(true)
                  {
                     §§goto(addr112);
                  }
                  §§goto(addr66);
               }
               addr112:
               return new b2DynamicTreeNode();
            }
         }
         §§goto(addr34);
      }
      
      private function §>!R§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.parent = this.§`K§;
            do
            {
               this.§`K§ = param1;
            }
            while(!_loc3_);
            
         }
      }
      
      private function §23§(param1:b2DynamicTreeNode) : void
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
            §§push((_loc10_ = this).§%y§);
            if(_loc12_ || param1)
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(_loc12_ || param1)
            {
               _loc10_.§%y§ = _loc11_;
            }
            if(_loc12_)
            {
               §§push(this.§6a§);
               loop0:
               while(true)
               {
                  §§push(null);
                  addr82:
                  while(§§pop() == §§pop())
                  {
                     if(!(_loc13_ && _loc2_))
                     {
                        this.§6a§ = param1;
                     }
                     continue loop0;
                  }
                  var _loc2_:b2Vec2 = param1.aabb.§2!A§();
                  var _loc3_:b2DynamicTreeNode = this.§6a§;
                  if(_loc12_)
                  {
                     if(_loc3_.§,v§() == false)
                     {
                        addr109:
                        do
                        {
                           _loc6_ = _loc3_.child1;
                           _loc7_ = _loc3_.child2;
                           if(_loc12_)
                           {
                              §§push(Number(Math.abs((_loc6_.aabb.§!!C§.x + _loc6_.aabb.§<0§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§!!C§.y + _loc6_.aabb.§<0§.y) / 2 - _loc2_.y)));
                              if(!_loc13_)
                              {
                                 _loc8_ = §§pop();
                                 if(!_loc13_)
                                 {
                                    §§push(Number(Math.abs((_loc7_.aabb.§!!C§.x + _loc7_.aabb.§<0§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§!!C§.y + _loc7_.aabb.§<0§.y) / 2 - _loc2_.y)));
                                    if(_loc12_ || param1)
                                    {
                                       _loc9_ = §§pop();
                                       if(!(_loc13_ && _loc2_))
                                       {
                                          addr210:
                                          if(_loc8_ >= _loc9_)
                                          {
                                             _loc3_ = _loc7_;
                                             continue;
                                          }
                                       }
                                    }
                                    §§goto(addr210);
                                 }
                                 _loc3_ = _loc6_;
                                 if(!(_loc12_ || _loc3_))
                                 {
                                    break;
                                 }
                                 continue;
                              }
                           }
                           §§goto(addr210);
                        }
                        while(_loc3_.§,v§() == false);
                        
                     }
                     var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                     var _loc5_:b2DynamicTreeNode;
                     (_loc5_ = this.§4x§()).parent = _loc4_;
                     if(!_loc13_)
                     {
                        _loc5_.§4!E§ = null;
                        loop2:
                        while(true)
                        {
                           §§push(_loc5_.aabb);
                           loop3:
                           while(true)
                           {
                              §§push(param1.aabb);
                              loop4:
                              while(true)
                              {
                                 §§push(_loc3_.aabb);
                                 loop5:
                                 while(true)
                                 {
                                    §§pop().§8h§(§§pop(),§§pop());
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          loop7:
                                          while(_loc12_ || this)
                                          {
                                             if(_loc3_.parent.child1 == _loc3_)
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   _loc4_.child1 = _loc5_;
                                                   loop15:
                                                   while(true)
                                                   {
                                                      addr366:
                                                      while(true)
                                                      {
                                                         _loc5_.child1 = _loc3_;
                                                         if(_loc12_ || param1)
                                                         {
                                                            _loc5_.child2 = param1;
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(_loc13_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc13_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  continue loop2;
                                                                  addr384:
                                                               }
                                                               if(_loc13_)
                                                               {
                                                                  continue loop15;
                                                               }
                                                               _loc3_.parent = _loc5_;
                                                               while(true)
                                                               {
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     param1.parent = _loc5_;
                                                                     if(_loc13_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!(_loc13_ && param1))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_.aabb);
                                                                           if(_loc12_ || _loc2_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           addr308:
                                                                           §§push(_loc4_.child1.aabb);
                                                                           if(!(_loc13_ && param1))
                                                                           {
                                                                              §§push(_loc4_.child2.aabb);
                                                                              if(!(_loc13_ && _loc2_))
                                                                              {
                                                                                 §§pop().§8h§(§§pop(),§§pop());
                                                                                 if(!(_loc12_ || this))
                                                                                 {
                                                                                    this.§6a§ = _loc5_;
                                                                                    if(_loc12_ || _loc2_)
                                                                                    {
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          param1.parent = _loc5_;
                                                                                          addr491:
                                                                                       }
                                                                                       break;
                                                                                       addr464:
                                                                                    }
                                                                                    addr486:
                                                                                 }
                                                                                 if(false)
                                                                                 {
                                                                                    continue loop12;
                                                                                    if(!(_loc13_ && this))
                                                                                    {
                                                                                       §§goto(addr486);
                                                                                    }
                                                                                 }
                                                                                 _loc5_ = _loc4_;
                                                                                 if(!(_loc4_ = _loc4_.parent))
                                                                                 {
                                                                                    addr435:
                                                                                    break;
                                                                                 }
                                                                                 continue;
                                                                                 break loop12;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        return;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  addr495:
                                                                  addr291:
                                                                  _loc3_.parent = _loc5_;
                                                                  if(_loc12_ || _loc2_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                               }
                                                            }
                                                            continue loop15;
                                                         }
                                                         §§goto(addr491);
                                                         continue loop15;
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                _loc4_.child2 = _loc5_;
                                             }
                                             §§goto(addr384);
                                          }
                                          continue;
                                       }
                                       _loc5_.child1 = _loc3_;
                                       if(!(_loc13_ && _loc2_))
                                       {
                                          _loc5_.child2 = param1;
                                       }
                                       §§goto(addr495);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr464);
                  }
                  §§goto(addr109);
               }
               addr81:
            }
            do
            {
               §§push(this.§6a§);
               if(_loc12_)
               {
                  §§push(null);
                  if(!_loc13_)
                  {
                     continue;
                  }
               }
               else
               {
                  §§goto(addr81);
               }
               §§goto(addr82);
            }
            while(§§pop().parent = §§pop(), !_loc12_);
            
         }
      }
      
      private function §%n§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(!(_loc6_ && param1))
         {
            if(param1 == this.§6a§)
            {
               if(!_loc6_)
               {
                  this.§6a§ = null;
                  if(!_loc7_)
                  {
                     addr42:
                     var _loc2_:b2DynamicTreeNode = param1.parent;
                     var _loc3_:b2DynamicTreeNode = _loc2_.parent;
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(_loc2_.child1);
                        if(!_loc6_)
                        {
                           if(§§pop() == param1)
                           {
                              addr63:
                              _loc4_ = _loc2_.child2;
                              if(!_loc6_)
                              {
                                 §§goto(addr74);
                              }
                              §§goto(addr84);
                           }
                           else
                           {
                              addr72:
                              _loc4_ = _loc2_.child1;
                           }
                           addr74:
                           if(_loc3_)
                           {
                              if(!_loc6_)
                              {
                                 if(_loc3_.child1 == _loc2_)
                                 {
                                    if(!_loc6_)
                                    {
                                       _loc3_.child1 = _loc4_;
                                       addr84:
                                       if(!_loc6_)
                                       {
                                          while(true)
                                          {
                                             _loc4_.parent = _loc3_;
                                          }
                                          addr110:
                                          addr99:
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§>!R§(_loc2_);
                                       if(!_loc7_)
                                       {
                                          continue;
                                       }
                                       if(!_loc6_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr119:
                                       }
                                       §§goto(addr110);
                                    }
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          §§goto(addr193);
                                       }
                                       _loc5_ = _loc3_.aabb;
                                       if(!(_loc6_ && param1))
                                       {
                                          _loc3_.aabb = b2AABB.§8h§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                                          if(!_loc6_)
                                          {
                                             if(!_loc5_.§&!W§(_loc3_.aabb))
                                             {
                                                continue;
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr193);
                                 }
                                 else
                                 {
                                    _loc3_.child2 = _loc4_;
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr99);
                           }
                           else
                           {
                              this.§6a§ = _loc4_;
                              if(_loc7_ || _loc2_)
                              {
                                 _loc4_.parent = null;
                                 if(_loc6_ && _loc2_)
                                 {
                                 }
                                 §§goto(addr193);
                              }
                              this.§>!R§(_loc2_);
                           }
                           addr193:
                           return;
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr63);
                  }
               }
               return;
            }
         }
         §§goto(addr42);
      }
   }
}
