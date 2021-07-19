package §!§
{
   import §'!_§.*;
   import §@!E§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §-!O§:b2DynamicTreeNode;
      
      private var §#!W§:b2DynamicTreeNode;
      
      private var §["&§:uint;
      
      private var §+!Y§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         while(true)
         {
            this.§-!O§ = null;
            loop1:
            while(_loc2_ || _loc1_)
            {
               this.§#!W§ = null;
               loop2:
               do
               {
                  this.§["&§ = 0;
                  while(_loc2_)
                  {
                     this.§+!Y§ = 0;
                     if(!(_loc1_ && _loc2_))
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(!(_loc2_ || _loc1_));
               
               return;
            }
         }
      }
      
      public function §=!b§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§-y§();
         if(!(_loc7_ && this))
         {
            §§push(b2Settings.b2_aabbExtension);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
            while(true)
            {
               _loc4_ = §§pop();
               loop1:
               while(true)
               {
                  §§push(b2Settings.b2_aabbExtension);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
                  if(!_loc6_)
                  {
                     break;
                  }
                  _loc5_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(_loc3_.aabb);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop().§&1§);
                        loop4:
                        while(true)
                        {
                           §§push(param1.§&1§);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop().x);
                              loop6:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() - §§pop());
                                    loop8:
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       addr207:
                                       loop9:
                                       while(true)
                                       {
                                          §§push(_loc3_.aabb);
                                          addr160:
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop().§&1§);
                                             if(_loc7_ && param1)
                                             {
                                                break;
                                             }
                                             §§push(param1.§&1§);
                                             if(!_loc6_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(§§pop().y);
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop8;
                                                }
                                                §§push(_loc5_);
                                                if(!(_loc6_ || param1))
                                                {
                                                   continue loop7;
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             if(!_loc6_)
                                             {
                                                continue loop6;
                                             }
                                             §§pop().y = §§pop();
                                             loop11:
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§push(_loc3_.aabb);
                                                   while(!_loc7_)
                                                   {
                                                      §§push(§§pop().§3!E§);
                                                      while(true)
                                                      {
                                                         §§push(param1.§3!E§);
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
                                                                     continue loop2;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§push(_loc3_.aabb);
                                                      if(!(_loc6_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      §§push(§§pop().§3!E§);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(param1.§3!E§);
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            §§push(§§pop().y);
                                                            if(_loc6_ || param2)
                                                            {
                                                               §§push(_loc5_);
                                                               if(_loc6_)
                                                               {
                                                                  addr126:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        do
                                                                        {
                                                                           _loc3_.userData = param2;
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        while(_loc7_ && _loc3_);
                                                                        
                                                                        if(!(_loc7_ && param1))
                                                                        {
                                                                           return _loc3_;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     §§goto(addr146);
                                                                  }
                                                                  §§goto(addr148);
                                                               }
                                                               §§goto(addr147);
                                                            }
                                                            §§goto(addr126);
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
                                                   continue loop3;
                                                }
                                                continue loop1;
                                             }
                                          }
                                          continue loop4;
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
         §§goto(addr207);
      }
      
      public function §4d§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§5!b§(param1);
         }
         do
         {
            this.§+y§(param1);
         }
         while(_loc2_ && this);
         
      }
      
      public function §;!n§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc6_)
         {
            b2Settings.b2Assert(param1.§5!@§());
            loop0:
            while(true)
            {
               §§push(param1.aabb);
               loop1:
               while(true)
               {
                  §§push(§§pop().get(param2));
                  if(_loc6_ || param1)
                  {
                     if(§§pop())
                     {
                        addr363:
                        §§push(false);
                     }
                     else
                     {
                        while(true)
                        {
                           this.§5!b§(param1);
                           addr339:
                           while(true)
                           {
                              §§push(b2Settings.b2_aabbExtension);
                              if(_loc6_)
                              {
                                 §§push(b2Settings.b2_aabbMultiplier);
                                 if(_loc6_ || param3)
                                 {
                                    §§push(param3.x);
                                    if(_loc6_)
                                    {
                                       §§push(0);
                                       loop4:
                                       while(true)
                                       {
                                          §§push(§§pop() > §§pop());
                                          loop5:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(param3.x);
                                                if(!(_loc7_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(-§§pop());
                                                   }
                                                   addr328:
                                                }
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr331:
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr332:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr333:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               addr334:
                                                               while(true)
                                                               {
                                                                  §§push(b2Settings.b2_aabbExtension);
                                                                  if(_loc7_ && param2)
                                                                  {
                                                                     addr285:
                                                                     _loc5_ = §§pop();
                                                                     continue loop0;
                                                                  }
                                                                  §§push(b2Settings.b2_aabbMultiplier);
                                                                  if(_loc7_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(!(_loc6_ || this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(param3.y);
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     §§push(0);
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§push(§§pop() > §§pop());
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc7_ && param3))
                                                                        {
                                                                           §§push(param3.y);
                                                                           if(!(_loc7_ && param2))
                                                                           {
                                                                              §§push(§§pop());
                                                                           }
                                                                           else
                                                                           {
                                                                              addr255:
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr258:
                                                                                 §§push(-§§pop());
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 addr317:
                                                                              }
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     §§push(param3.y);
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        §§goto(addr255);
                                                                     }
                                                                     §§goto(addr258);
                                                                  }
                                                                  §§goto(addr255);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr317);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr328);
                                 }
                                 §§goto(addr331);
                              }
                              §§goto(addr332);
                           }
                           addr365:
                        }
                     }
                  }
                  addr364:
                  addr120:
                  return §§pop();
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
                  §§push(§§pop().§&1§);
                  if(_loc6_)
                  {
                     §§push(param2.§&1§);
                     if(_loc6_ || this)
                     {
                        §§push(§§pop().y);
                        if(!_loc7_)
                        {
                           §§push(_loc5_);
                           if(!_loc7_)
                           {
                              addr146:
                              §§push(§§pop() - §§pop());
                              if(_loc6_ || param1)
                              {
                                 if(!_loc7_)
                                 {
                                    §§pop().y = §§pop();
                                    loop24:
                                    while(!(_loc7_ && param1))
                                    {
                                       §§push(param1.aabb);
                                       loop25:
                                       for(; !(_loc7_ && param3); §§push(param1.aabb),if(_loc7_ && param3)
                                       {
                                          continue;
                                       },§§push(§§pop().§3!E§),if(!_loc7_)
                                       {
                                          §§push(param2.§3!E§);
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(§§pop().y);
                                             if(_loc6_)
                                             {
                                                if(!_loc7_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc6_ || this)
                                                      {
                                                         addr84:
                                                         §§pop().y = §§pop() + §§pop();
                                                         while(!_loc7_)
                                                         {
                                                            this.§<!^§(param1);
                                                            if(_loc7_ && param3)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc7_)
                                                            {
                                                               continue loop24;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               §§push(true);
                                                               if(!_loc7_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr364);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr365);
                                                            }
                                                         }
                                                         §§goto(addr105);
                                                      }
                                                      §§goto(addr103);
                                                   }
                                                   §§goto(addr102);
                                                }
                                                §§goto(addr104);
                                             }
                                             §§goto(addr84);
                                          }
                                          §§goto(addr101);
                                       },§§goto(addr99))
                                       {
                                          §§push(§§pop().§3!E§);
                                          while(true)
                                          {
                                             §§push(param2.§3!E§);
                                             addr101:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr102:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   addr103:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr104:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         addr105:
                                                         while(true)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               continue loop25;
                                                            }
                                                            §§goto(addr363);
                                                         }
                                                         §§goto(addr364);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       loop23:
                                       while(true)
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             §§goto(addr120);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop().§&1§);
                                                addr168:
                                                while(true)
                                                {
                                                   §§push(param2.§&1§);
                                                   addr170:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr171:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         addr172:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            addr173:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               break loop24;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop23;
                                             }
                                             addr167:
                                          }
                                          §§goto(addr168);
                                       }
                                       addr91:
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(!(_loc7_ && param3))
                                          {
                                             §§goto(addr113);
                                             §§push(param1.aabb);
                                          }
                                          break;
                                       }
                                       §§goto(addr334);
                                    }
                                    §§goto(addr339);
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr168);
               }
            }
         }
         §§goto(addr363);
      }
      
      public function §%"%§(param1:int) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(_loc8_ || param1)
         {
            if(this.§-!O§ == null)
            {
               if(!_loc7_)
               {
                  §§goto(addr36);
               }
            }
            var _loc2_:int = 0;
            while(_loc2_ < param1)
            {
               _loc3_ = this.§-!O§;
               if(!(_loc7_ && _loc2_))
               {
                  §§push(0);
                  if(!_loc7_)
                  {
                     §§push(uint(§§pop()));
                     if(!_loc7_)
                     {
                        _loc4_ = §§pop();
                        if(_loc8_ || _loc2_)
                        {
                           loop1:
                           while(true)
                           {
                              if(_loc3_.§5!@§() != false)
                              {
                                 if(_loc8_ || _loc3_)
                                 {
                                    var _loc5_:*;
                                    var _loc6_:* = (_loc5_ = this).§["&§ + 1;
                                    if(_loc8_)
                                    {
                                       _loc5_.§["&§ = _loc6_;
                                    }
                                    if(_loc8_ || this)
                                    {
                                       this.§5!b§(_loc3_);
                                       addr182:
                                       while(true)
                                       {
                                          addr164:
                                          while(true)
                                          {
                                             this.§<!^§(_loc3_);
                                          }
                                       }
                                       addr182:
                                    }
                                 }
                                 §§goto(addr182);
                              }
                              else
                              {
                                 §§push(this.§["&§);
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
                                          if(_loc8_ || this)
                                          {
                                             §§push(_loc4_);
                                             if(_loc8_)
                                             {
                                                §§push(uint(§§pop() + 1 & 31));
                                             }
                                             _loc4_ = §§pop();
                                          }
                                          continue loop1;
                                       }
                                       addr76:
                                    }
                                    §§goto(addr76);
                                 }
                                 addr70:
                              }
                           }
                           loop2:
                           while(false)
                           {
                              §§goto(addr164);
                              while(true)
                              {
                                 _loc2_++;
                                 if(_loc7_ && param1)
                                 {
                                    continue;
                                 }
                                 if(!(_loc7_ && this))
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr182);
                              }
                           }
                           continue;
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr76);
               }
               §§goto(addr182);
            }
            return;
         }
         addr36:
      }
      
      public function dynamic(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.userData;
      }
      
      public function §^C§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(!(_loc11_ && param1))
         {
            if(this.§-!O§ == null)
            {
               if(_loc10_ || _loc3_)
               {
                  return;
               }
            }
         }
         var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc4_:int = 0;
         var _loc7_:*;
         _loc3_[_loc7_ = _loc4_++] = this.§-!O§;
         while(true)
         {
            if(_loc4_ <= 0)
            {
               return;
            }
            §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§4I§(param2));
            if(!(_loc11_ && _loc3_))
            {
               if(!§§pop())
               {
                  continue;
               }
               if(_loc10_)
               {
                  §§push(_loc5_.§5!@§());
                  if(_loc10_ || this)
                  {
                     addr102:
                     if(§§pop())
                     {
                        if(!_loc11_)
                        {
                           §§push(Boolean(param1(_loc5_)));
                           if(_loc10_ || param2)
                           {
                              addr119:
                              if(!(_loc6_ = §§pop()))
                              {
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 addr125:
                              }
                              continue;
                           }
                           §§goto(addr119);
                        }
                        break;
                     }
                     var _loc8_:*;
                     _loc3_[_loc8_ = _loc4_++] = _loc5_.child1;
                     if(!_loc11_)
                     {
                        var _loc9_:*;
                        _loc3_[_loc9_ = _loc4_++] = _loc5_.child2;
                     }
                     continue;
                  }
                  §§goto(addr119);
               }
               §§goto(addr125);
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
         var _loc17_:Number = NaN;
         var _loc18_:b2RayCastInput = null;
         if(!(_loc23_ && param1))
         {
            if(this.§-!O§ == null)
            {
               if(_loc22_ || this)
               {
                  return;
               }
            }
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2;
         (_loc5_ = b2Math.§1"5§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§0!p§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§[q§(_loc6_);
         §§push(param2.§9!Y§);
         if(_loc22_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         _loc9_ = new b2AABB();
         if(!(_loc23_ && param1))
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
                  if(!(_loc23_ && _loc3_))
                  {
                     §§push(_loc3_.x);
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr214:
                        §§push(_loc3_.y);
                        if(!(_loc22_ || param2))
                        {
                           continue;
                        }
                        addr224:
                        §§push(§§pop() - §§pop());
                        if(_loc22_)
                        {
                           addr227:
                           §§push(§§pop() * §§pop());
                           if(_loc22_ || param2)
                           {
                              addr243:
                              §§push(§§pop() + §§pop());
                              if(_loc22_ || _loc3_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc11_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc9_.§&1§);
                                 loop9:
                                 while(true)
                                 {
                                    §§pop().x = Math.min(_loc3_.x,_loc10_);
                                    addr176:
                                    while(!(_loc23_ && param1))
                                    {
                                       continue loop9;
                                    }
                                    addr260:
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc3_.y);
                                       if(!(_loc23_ && param1))
                                       {
                                          if(!_loc23_)
                                          {
                                             if(!_loc23_)
                                             {
                                                if(_loc23_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(_loc8_);
                                                if(!_loc23_)
                                                {
                                                   if(!(_loc22_ || param2))
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(_loc4_.y);
                                                   if(_loc22_)
                                                   {
                                                      §§goto(addr214);
                                                   }
                                                   §§goto(addr224);
                                                }
                                                §§goto(addr227);
                                             }
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             addr262:
                                          }
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             continue loop7;
                                          }
                                       }
                                       §§goto(addr243);
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr262);
                           }
                        }
                        §§goto(addr260);
                     }
                  }
                  §§goto(addr260);
               }
            }
         }
         §§goto(addr166);
      }
      
      private function §-y§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2DynamicTreeNode = null;
         if(!_loc3_)
         {
            §§push(this.§#!W§);
            if(!(_loc3_ && _loc2_))
            {
               if(!§§pop())
               {
                  return new b2DynamicTreeNode();
               }
               addr31:
               §§push(this.§#!W§);
            }
            _loc1_ = §§pop();
            if(!_loc3_)
            {
               this.§#!W§ = _loc1_.parent;
               while(true)
               {
                  _loc1_.parent = null;
                  §§goto(addr100);
               }
            }
            addr100:
            while(true)
            {
               _loc1_.child1 = null;
               _loc1_.child2 = null;
               if(_loc2_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
            return _loc1_;
         }
         §§goto(addr31);
      }
      
      private function §+y§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            param1.parent = this.§#!W§;
            do
            {
               this.§#!W§ = param1;
            }
            while(_loc2_);
            
         }
      }
      
      private function §<!^§(param1:b2DynamicTreeNode) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(_loc12_ || this)
         {
            var _loc10_:*;
            §§push((_loc10_ = this).§+!Y§);
            if(_loc12_ || _loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(!(_loc13_ && param1))
            {
               _loc10_.§+!Y§ = _loc11_;
            }
            if(!(_loc13_ && this))
            {
               §§push(this.§-!O§);
               loop0:
               while(true)
               {
                  §§push(null);
                  addr92:
                  while(§§pop() == §§pop())
                  {
                     if(_loc12_ || this)
                     {
                        this.§-!O§ = param1;
                     }
                     continue loop0;
                  }
                  var _loc2_:b2Vec2 = param1.aabb.§!!<§();
                  var _loc3_:b2DynamicTreeNode = this.§-!O§;
                  if(!_loc13_)
                  {
                     if(_loc3_.§5!@§() == false)
                     {
                        addr119:
                        do
                        {
                           _loc6_ = _loc3_.child1;
                           _loc7_ = _loc3_.child2;
                           if(_loc12_)
                           {
                              §§push(Number(Math.abs((_loc6_.aabb.§&1§.x + _loc6_.aabb.§3!E§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§&1§.y + _loc6_.aabb.§3!E§.y) / 2 - _loc2_.y)));
                              if(_loc12_ || _loc3_)
                              {
                                 _loc8_ = §§pop();
                                 if(_loc12_ || _loc2_)
                                 {
                                    addr180:
                                    §§push(Number(Math.abs((_loc7_.aabb.§&1§.x + _loc7_.aabb.§3!E§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§&1§.y + _loc7_.aabb.§3!E§.y) / 2 - _loc2_.y)));
                                    if(_loc12_)
                                    {
                                       _loc9_ = §§pop();
                                       if(!(_loc13_ && param1))
                                       {
                                          addr225:
                                          if(_loc8_ >= _loc9_)
                                          {
                                             _loc3_ = _loc7_;
                                             continue;
                                          }
                                       }
                                       _loc3_ = _loc6_;
                                       if(_loc13_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                 }
                              }
                              §§goto(addr225);
                           }
                           §§goto(addr180);
                        }
                        while(_loc3_.§5!@§() == false);
                        
                     }
                     var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                     var _loc5_:b2DynamicTreeNode;
                     (_loc5_ = this.§-y§()).parent = _loc4_;
                     if(_loc12_ || this)
                     {
                        _loc5_.userData = null;
                        loop2:
                        while(true)
                        {
                           §§push(_loc5_.aabb);
                           addr416:
                           while(true)
                           {
                              §§push(param1.aabb);
                              addr418:
                              while(true)
                              {
                                 §§push(_loc3_.aabb);
                                 addr420:
                                 while(true)
                                 {
                                    §§pop().§?z§(§§pop(),§§pop());
                                    addr421:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          _loc5_.child1 = _loc3_;
                                          if(!(_loc13_ && this))
                                          {
                                             _loc5_.child2 = param1;
                                             break;
                                             addr446:
                                          }
                                       }
                                       continue loop2;
                                    }
                                    addr495:
                                    _loc3_.parent = _loc5_;
                                    addr491:
                                    addr474:
                                    param1.parent = _loc5_;
                                    if(!_loc13_)
                                    {
                                       this.§-!O§ = _loc5_;
                                       addr486:
                                       if(_loc12_ || param1)
                                       {
                                          if(_loc13_ && this)
                                          {
                                             §§goto(addr491);
                                          }
                                          addr448:
                                          return;
                                          addr469:
                                       }
                                       §§goto(addr474);
                                       addr486:
                                    }
                                    §§goto(addr495);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr391);
                  }
                  §§goto(addr119);
               }
               addr91:
            }
            do
            {
               §§push(this.§-!O§);
               if(_loc12_)
               {
                  §§push(null);
                  if(_loc12_)
                  {
                     continue;
                  }
               }
               else
               {
                  §§goto(addr91);
               }
               §§goto(addr92);
            }
            while(§§pop().parent = §§pop(), _loc13_);
            
         }
      }
      
      private function §5!b§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(_loc6_ || param1)
         {
            if(param1 == this.§-!O§)
            {
               if(_loc6_ || param1)
               {
                  addr40:
                  this.§-!O§ = null;
                  if(!_loc7_)
                  {
                     return;
                  }
               }
            }
            var _loc2_:b2DynamicTreeNode = param1.parent;
            var _loc3_:b2DynamicTreeNode = _loc2_.parent;
            if(_loc6_ || _loc3_)
            {
               §§push(_loc2_.child1);
               if(!(_loc7_ && param1))
               {
                  if(§§pop() == param1)
                  {
                     §§goto(addr72);
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
            addr72:
            _loc4_ = _loc2_.child2;
            if(_loc6_ || _loc2_)
            {
               addr88:
               if(_loc3_)
               {
                  if(_loc6_)
                  {
                     if(_loc3_.child1 == _loc2_)
                     {
                        if(!_loc7_)
                        {
                           _loc3_.child1 = _loc4_;
                           if(!(_loc7_ && _loc3_))
                           {
                              while(true)
                              {
                                 _loc4_.parent = _loc3_;
                                 §§goto(addr143);
                              }
                              addr139:
                              addr118:
                           }
                           §§goto(addr143);
                        }
                     }
                     else
                     {
                        _loc3_.child2 = _loc4_;
                     }
                     while(true)
                     {
                        §§goto(addr139);
                     }
                  }
                  §§goto(addr118);
               }
               else
               {
                  this.§-!O§ = _loc4_;
                  if(!_loc7_)
                  {
                     §§goto(addr189);
                  }
               }
               §§goto(addr209);
            }
            addr143:
            while(true)
            {
               this.§+y§(_loc2_);
               if(!(_loc6_ || _loc2_))
               {
                  continue;
               }
               if(_loc6_ || _loc3_)
               {
                  if(true)
                  {
                     break;
                  }
                  continue loop3;
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
                  addr189:
                  §§goto(addr212);
               }
               _loc5_ = _loc3_.aabb;
               if(_loc6_)
               {
                  _loc3_.aabb = b2AABB.§?z§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                  if(!_loc7_)
                  {
                     if(!_loc5_.get(_loc3_.aabb))
                     {
                        continue;
                     }
                  }
               }
               break;
            }
            addr212:
            _loc4_.parent = null;
            if(_loc6_ || _loc2_)
            {
               addr209:
               this.§+y§(_loc2_);
            }
            return;
         }
         §§goto(addr40);
      }
   }
}
