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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            while(true)
            {
               this.§-Y§ = null;
               loop1:
               while(!(_loc2_ && this))
               {
                  this.§9!&§ = null;
                  loop2:
                  do
                  {
                     this.§!4§ = 0;
                     while(_loc1_)
                     {
                        this.§!!w§ = 0;
                        if(_loc1_ || this)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(_loc2_ && _loc2_);
                  
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §[E§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§9L§();
         if(!_loc6_)
         {
            §§push(b2Settings.b2_aabbExtension);
            if(!_loc6_)
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
                  if(!(_loc6_ && param2))
                  {
                     §§push(Number(§§pop()));
                  }
                  if(_loc6_)
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
                        §§push(§§pop().§>h§);
                        loop4:
                        while(true)
                        {
                           §§push(param1.§>h§);
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
                                       loop9:
                                       while(true)
                                       {
                                          §§push(_loc3_.aabb);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop().§>h§);
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                             §§push(param1.§>h§);
                                             if(_loc7_ || param2)
                                             {
                                                §§push(§§pop().y);
                                                if(!(_loc6_ && param1))
                                                {
                                                   if(!(_loc7_ || this))
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(!(_loc7_ || param2))
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§push(_loc5_);
                                                   if(!_loc7_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                §§pop().y = §§pop();
                                                while(_loc7_)
                                                {
                                                   continue loop2;
                                                   loop20:
                                                   while(!(_loc6_ && _loc3_))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         _loc3_.§]!=§ = param2;
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               if(!(_loc7_ || param2))
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            continue loop20;
                                                         }
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_.aabb);
                                                            if(!_loc6_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            addr126:
                                                            while(_loc7_)
                                                            {
                                                               §§push(§§pop().§^!z§);
                                                               while(true)
                                                               {
                                                                  §§push(param1.§^!z§);
                                                                  addr131:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     addr132:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        addr133:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           addr134:
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              continue loop19;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop19;
                                                            }
                                                            continue loop10;
                                                         }
                                                         continue loop3;
                                                         continue;
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                continue loop9;
                                             }
                                             continue loop5;
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
         §§goto(addr187);
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
         while(!(_loc3_ || param1));
         
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
                  if(_loc6_ || param3)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           this.§7!S§(param1);
                           loop3:
                           while(true)
                           {
                              §§push(b2Settings.b2_aabbExtension);
                              loop4:
                              while(true)
                              {
                                 §§push(b2Settings.b2_aabbMultiplier);
                                 if(_loc6_ || param2)
                                 {
                                    §§push(param3.x);
                                    while(true)
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
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(b2Settings.b2_aabbExtension);
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc7_ && param3)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        §§push(b2Settings.b2_aabbMultiplier);
                                                                        if(_loc6_ || param3)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(param3.y);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    §§push(§§pop() > §§pop());
                                                                                    if(!(_loc7_ && param2))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc7_ && param3))
                                                                                          {
                                                                                             if(_loc7_ && param3)
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             §§push(param3.y);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                addr322:
                                                                                                §§push(§§pop() + §§pop() * §§pop());
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                addr333:
                                                                                                addr333:
                                                                                                _loc5_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.aabb);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§>h§);
                                                                                                      addr200:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param2.§>h§);
                                                                                                         addr202:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr203:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                               addr204:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  addr205:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     §§goto(addr206);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   loop34:
                                                                                                   while(!(_loc7_ && param3))
                                                                                                   {
                                                                                                      this.§-!6§(param1);
                                                                                                      if(_loc7_ && param2)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         addr48:
                                                                                                         if(!(_loc6_ || param3))
                                                                                                         {
                                                                                                            while(_loc6_ || param2)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               §§push(param1.aabb);
                                                                                                               loop28:
                                                                                                               for(; !_loc7_; §§push(param1.aabb),if(_loc7_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               },§§push(§§pop().§^!z§),if(!_loc7_)
                                                                                                               {
                                                                                                                  §§push(param2.§^!z§);
                                                                                                                  if(_loc6_ || param1)
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        if(!(_loc7_ && this))
                                                                                                                        {
                                                                                                                           §§goto(addr90);
                                                                                                                        }
                                                                                                                        §§goto(addr126);
                                                                                                                     }
                                                                                                                     §§goto(addr99);
                                                                                                                  }
                                                                                                                  §§goto(addr116);
                                                                                                               },§§goto(addr114))
                                                                                                               {
                                                                                                                  §§push(§§pop().§^!z§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param2.§^!z§);
                                                                                                                     addr116:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        if(_loc6_ || param2)
                                                                                                                        {
                                                                                                                           §§push(_loc4_);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              addr90:
                                                                                                                              §§push(_loc5_);
                                                                                                                              if(!(_loc7_ && this))
                                                                                                                              {
                                                                                                                                 addr99:
                                                                                                                                 §§pop().y = §§pop() + §§pop();
                                                                                                                                 continue loop34;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr126:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           addr127:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 continue loop28;
                                                                                                                              }
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr48);
                                                                                                            }
                                                                                                            continue loop14;
                                                                                                            addr176:
                                                                                                         }
                                                                                                         if(_loc6_ || param1)
                                                                                                         {
                                                                                                            §§push(true);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               return §§pop();
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr206:
                                                                                                            §§goto(addr394);
                                                                                                         }
                                                                                                         addr394:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc6_ || param1))
                                                                                                            {
                                                                                                               addr393:
                                                                                                               §§push(false);
                                                                                                               break;
                                                                                                            }
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1.aabb);
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                         }
                                                                                                         return §§pop();
                                                                                                         §§goto(addr133);
                                                                                                      }
                                                                                                      §§goto(addr127);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr291:
                                                                                                §§push(-§§pop());
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(param3.y);
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             §§goto(addr291);
                                                                                          }
                                                                                       }
                                                                                       if(!(_loc7_ && param2))
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              §§goto(addr291);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(param3.x);
                                                                                 break loop14;
                                                                              }
                                                                              addr352:
                                                                           }
                                                                        }
                                                                        §§goto(addr322);
                                                                     }
                                                                     §§goto(addr333);
                                                                  }
                                                                  addr354:
                                                                  while(true)
                                                                  {
                                                                     continue loop10;
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
                                       if(_loc7_ && this)
                                       {
                                          continue;
                                       }
                                       §§goto(addr322);
                                       §§push(§§pop());
                                    }
                                 }
                                 §§goto(addr352);
                              }
                           }
                        }
                     }
                     §§goto(addr393);
                  }
                  §§goto(addr394);
                  if(_loc7_ && param1)
                  {
                     continue;
                  }
                  §§push(§§pop().§>h§);
                  if(!_loc7_)
                  {
                     §§push(param2.§>h§);
                     if(!_loc7_)
                     {
                        §§push(§§pop().y);
                        if(_loc6_)
                        {
                           if(!(_loc7_ && param1))
                           {
                              §§push(_loc5_);
                              if(_loc6_ || this)
                              {
                                 addr173:
                                 §§push(§§pop() - §§pop());
                                 if(_loc6_)
                                 {
                                    §§pop().y = §§pop();
                                    §§goto(addr176);
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr203);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr200);
               }
            }
         }
         §§goto(addr215);
      }
      
      public function §8"$§(param1:int) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(_loc8_)
         {
            if(this.§-Y§ == null)
            {
               if(_loc8_)
               {
                  §§goto(addr31);
               }
            }
            var _loc2_:int = 0;
            while(_loc2_ < param1)
            {
               _loc3_ = this.§-Y§;
               if(!_loc7_)
               {
                  §§push(0);
                  if(_loc8_)
                  {
                     §§push(uint(§§pop()));
                     if(!(_loc7_ && param1))
                     {
                        _loc4_ = §§pop();
                        if(_loc8_)
                        {
                           loop1:
                           while(true)
                           {
                              if(_loc3_.§8i§() != false)
                              {
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    break;
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    addr162:
                                    while(true)
                                    {
                                       this.§-!6§(_loc3_);
                                       continue loop2;
                                    }
                                 }
                                 addr177:
                              }
                              else
                              {
                                 §§push(this.§!4§);
                                 while(true)
                                 {
                                    §§push(§§pop() >> _loc4_);
                                    if(_loc8_)
                                    {
                                       addr66:
                                       §§push(§§pop() & 1);
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc7_ && this)
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
                                             if(!_loc7_)
                                             {
                                                §§push(uint(§§pop() + 1 & 31));
                                             }
                                             _loc4_ = §§pop();
                                          }
                                          continue loop1;
                                       }
                                       addr66:
                                    }
                                    §§goto(addr66);
                                 }
                                 addr60:
                              }
                           }
                           var _loc5_:*;
                           var _loc6_:* = (_loc5_ = this).§!4§ + 1;
                           if(_loc8_ || _loc2_)
                           {
                              _loc5_.§!4§ = _loc6_;
                           }
                           if(!(_loc7_ && _loc2_))
                           {
                              this.§7!S§(_loc3_);
                              §§goto(addr177);
                           }
                        }
                        while(false)
                        {
                           §§goto(addr162);
                        }
                        continue;
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr66);
               }
               §§goto(addr173);
            }
            return;
         }
         addr31:
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
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(!_loc10_)
         {
            if(this.§-Y§ == null)
            {
               if(!(_loc10_ && param1))
               {
                  §§goto(addr35);
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
               if(!(_loc10_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(!_loc11_)
                  {
                     continue;
                  }
                  §§push(_loc5_.§8i§());
                  if(_loc11_ || param1)
                  {
                     if(§§pop())
                     {
                        if(_loc11_)
                        {
                           §§push(Boolean(param1(_loc5_)));
                           if(_loc11_ || param1)
                           {
                              addr113:
                              §§push(_loc6_ = §§pop());
                           }
                           if(!§§pop())
                           {
                              if(_loc11_ || this)
                              {
                                 break;
                              }
                              continue;
                           }
                        }
                     }
                     else
                     {
                        var _loc8_:*;
                        _loc3_[_loc8_ = _loc4_++] = _loc5_.child1;
                        if(_loc11_)
                        {
                           var _loc9_:*;
                           _loc3_[_loc9_ = _loc4_++] = _loc5_.child2;
                        }
                     }
                     continue;
                  }
               }
               §§goto(addr113);
            }
            return;
         }
         addr35:
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
         if(!(_loc22_ && _loc3_))
         {
            if(this.§-Y§ == null)
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
         (_loc5_ = b2Math.§%M§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§<G§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§-$§(_loc6_);
         §§push(param2.§%[§);
         if(!_loc22_)
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
                              if(_loc23_ || param2)
                              {
                                 §§push(Number(§§pop()));
                              }
                              loop6:
                              while(true)
                              {
                                 _loc10_ = §§pop();
                                 addr255:
                                 while(true)
                                 {
                                    §§push(_loc3_.y);
                                    if(!_loc22_)
                                    {
                                       if(!_loc23_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(_loc8_);
                                       if(_loc23_ || this)
                                       {
                                          if(!(_loc23_ || _loc3_))
                                          {
                                             continue loop5;
                                          }
                                          if(_loc22_ && param1)
                                          {
                                             continue loop1;
                                          }
                                          §§push(_loc4_.y);
                                          if(!_loc22_)
                                          {
                                             if(!(_loc23_ || param1))
                                             {
                                                continue loop4;
                                             }
                                             §§push(_loc3_.y);
                                             if(!(_loc23_ || param2))
                                             {
                                                continue loop3;
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          if(!_loc23_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(§§pop() * §§pop());
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc23_)
                                       {
                                          continue loop6;
                                       }
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
         §§goto(addr157);
      }
      
      private function §9L§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2DynamicTreeNode = null;
         if(!_loc2_)
         {
            §§push(this.§9!&§);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  return new b2DynamicTreeNode();
               }
               addr27:
               §§push(this.§9!&§);
            }
            _loc1_ = §§pop();
            if(_loc3_ || this)
            {
               this.§9!&§ = _loc1_.parent;
            }
            while(true)
            {
               _loc1_.parent = null;
               _loc1_.child1 = null;
               while(!(_loc2_ && _loc1_))
               {
                  _loc1_.child2 = null;
                  if(!_loc2_)
                  {
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr27);
      }
      
      private function §<!#§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.parent = this.§9!&§;
            do
            {
               this.§9!&§ = param1;
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      private function §-!6§(param1:b2DynamicTreeNode) : void
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
            §§push((_loc10_ = this).§!!w§);
            if(_loc12_)
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(_loc12_ || param1)
            {
               _loc10_.§!!w§ = _loc11_;
            }
            if(_loc12_ || param1)
            {
               §§push(this.§-Y§);
               loop1:
               while(true)
               {
                  §§push(null);
                  loop2:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc13_ && this))
                        {
                           this.§-Y§ = param1;
                        }
                        loop3:
                        while(true)
                        {
                           addr67:
                           addr104:
                           while(true)
                           {
                              §§push(this.§-Y§);
                              if(!(_loc13_ && param1))
                              {
                                 §§push(null);
                                 if(_loc12_ || this)
                                 {
                                    §§pop().parent = §§pop();
                                    if(_loc12_)
                                    {
                                       return;
                                       addr88:
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           addr104:
                           var _loc2_:b2Vec2 = param1.aabb.§?!b§();
                           var _loc3_:b2DynamicTreeNode = this.§-Y§;
                           §§push(_loc13_);
                           if(_loc13_)
                           {
                              addr116:
                              §§pop();
                              §§push(Boolean(_loc2_));
                              break loop2;
                           }
                           break loop2;
                        }
                     }
                     else
                     {
                        §§goto(addr104);
                     }
                     §§goto(addr116);
                  }
                  if(!§§pop())
                  {
                     if(_loc3_.§8i§() == false)
                     {
                        addr124:
                        do
                        {
                           _loc6_ = _loc3_.child1;
                           _loc7_ = _loc3_.child2;
                           if(_loc12_)
                           {
                              §§push(Number(Math.abs((_loc6_.aabb.§>h§.x + _loc6_.aabb.§^!z§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§>h§.y + _loc6_.aabb.§^!z§.y) / 2 - _loc2_.y)));
                              if(_loc12_)
                              {
                                 _loc8_ = §§pop();
                                 if(_loc12_ || param1)
                                 {
                                    §§push(Number(Math.abs((_loc7_.aabb.§>h§.x + _loc7_.aabb.§^!z§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§>h§.y + _loc7_.aabb.§^!z§.y) / 2 - _loc2_.y)));
                                    if(_loc12_ || _loc3_)
                                    {
                                       addr231:
                                       _loc9_ = §§pop();
                                       addr237:
                                       if(_loc12_)
                                       {
                                          §§push(_loc8_);
                                       }
                                       _loc3_ = _loc6_;
                                       if(!_loc12_)
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
                                 §§goto(addr237);
                              }
                           }
                           §§goto(addr231);
                        }
                        while(_loc3_.§8i§() == false);
                        
                     }
                     var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                     var _loc5_:b2DynamicTreeNode;
                     (_loc5_ = this.§9L§()).parent = _loc4_;
                     if(_loc12_)
                     {
                        _loc5_.§]!=§ = null;
                        loop4:
                        while(true)
                        {
                           §§push(_loc5_.aabb);
                           loop5:
                           while(true)
                           {
                              §§push(param1.aabb);
                              loop6:
                              while(true)
                              {
                                 §§push(_loc3_.aabb);
                                 loop7:
                                 while(true)
                                 {
                                    §§pop().§5"$§(§§pop(),§§pop());
                                    if(_loc12_ || param1)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc12_ || param1)
                                          {
                                             if(_loc3_.parent.child1 != _loc3_)
                                             {
                                                _loc4_.child2 = _loc5_;
                                                if(!_loc13_)
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      _loc5_.child1 = _loc3_;
                                                      if(!_loc13_)
                                                      {
                                                         _loc5_.child2 = param1;
                                                         addr471:
                                                         loop9:
                                                         while(true)
                                                         {
                                                            if(_loc12_ || _loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc3_.parent = _loc5_;
                                                                  if(_loc12_)
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        param1.parent = _loc5_;
                                                                        if(!(_loc12_ || this))
                                                                        {
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_.aabb);
                                                                           if(!(_loc13_ && _loc2_))
                                                                           {
                                                                              if(!_loc13_)
                                                                              {
                                                                                 §§push(_loc5_.aabb);
                                                                                 if(_loc12_ || this)
                                                                                 {
                                                                                    if(§§pop().§4#§(§§pop()))
                                                                                    {
                                                                                       if(!(_loc13_ && param1))
                                                                                       {
                                                                                          addr433:
                                                                                          return;
                                                                                          addr420:
                                                                                       }
                                                                                       break loop12;
                                                                                    }
                                                                                    addr299:
                                                                                    §§push(_loc4_.aabb);
                                                                                    §§push(_loc4_.child1.aabb);
                                                                                 }
                                                                                 if(!(_loc13_ && _loc3_))
                                                                                 {
                                                                                    §§push(_loc4_.child2.aabb);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr299);
                                                                           addr266:
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc5_.child2 = param1;
                                                                     addr431:
                                                                  }
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     _loc3_.parent = _loc5_;
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        param1.parent = _loc5_;
                                                                        addr462:
                                                                        while(true)
                                                                        {
                                                                           if(_loc12_ || this)
                                                                           {
                                                                              if(_loc12_)
                                                                              {
                                                                                 break loop9;
                                                                              }
                                                                              continue loop16;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr353:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc4_.child1 = _loc5_;
                                                                  if(!_loc12_)
                                                                  {
                                                                     break loop9;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               addr385:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            this.§-Y§ = _loc5_;
                                                            if(!(_loc13_ && _loc3_))
                                                            {
                                                               §§goto(addr433);
                                                               addr457:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr462);
                                                            }
                                                         }
                                                         addr471:
                                                      }
                                                      §§goto(addr471);
                                                   }
                                                }
                                                §§goto(addr431);
                                             }
                                          }
                                          §§goto(addr385);
                                       }
                                       else
                                       {
                                          _loc5_.child1 = _loc3_;
                                          if(!(_loc13_ && this))
                                          {
                                             §§goto(addr431);
                                          }
                                       }
                                       §§goto(addr457);
                                    }
                                    §§goto(addr471);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr353);
                  }
                  §§goto(addr124);
               }
            }
            §§goto(addr88);
         }
         else if(false)
         {
            §§goto(addr67);
         }
         §§goto(addr104);
      }
      
      private function §7!S§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(!_loc6_)
         {
            if(param1 == this.§-Y§)
            {
               if(_loc7_)
               {
                  addr31:
                  this.§-Y§ = null;
                  if(_loc6_)
                  {
                     addr37:
                     var _loc2_:b2DynamicTreeNode = param1.parent;
                     var _loc3_:b2DynamicTreeNode = _loc2_.parent;
                     if(!_loc6_)
                     {
                        §§push(_loc2_.child1);
                        if(_loc7_)
                        {
                           if(§§pop() == param1)
                           {
                              addr53:
                              _loc4_ = _loc2_.child2;
                              if(_loc7_)
                              {
                                 addr64:
                                 if(_loc3_)
                                 {
                                    if(_loc7_ || _loc2_)
                                    {
                                       if(_loc3_.child1 == _loc2_)
                                       {
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             _loc3_.child1 = _loc4_;
                                             if(!_loc6_)
                                             {
                                                loop0:
                                                while(true)
                                                {
                                                   _loc4_.parent = _loc3_;
                                                   addr117:
                                                   addr129:
                                                   while(_loc7_ || _loc3_)
                                                   {
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                addr113:
                                                addr99:
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§<!#§(_loc2_);
                                             if(_loc7_ || _loc2_)
                                             {
                                                while(false)
                                                {
                                                   §§goto(addr113);
                                                }
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc7_ || _loc2_)
                                                      {
                                                         break;
                                                      }
                                                      addr205:
                                                      §§goto(addr208);
                                                   }
                                                   _loc5_ = _loc3_.aabb;
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      _loc3_.aabb = b2AABB.§5"$§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                                                      if(_loc7_ || _loc2_)
                                                      {
                                                         if(!_loc5_.§4#§(_loc3_.aabb))
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                   break;
                                                }
                                                addr208:
                                                this.§<!#§(_loc2_);
                                                return;
                                                addr111:
                                             }
                                             §§goto(addr117);
                                          }
                                       }
                                       else
                                       {
                                          _loc3_.child2 = _loc4_;
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr111);
                                 }
                                 else
                                 {
                                    this.§-Y§ = _loc4_;
                                    if(!_loc6_)
                                    {
                                       _loc4_.parent = null;
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§goto(addr205);
                                       }
                                    }
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr99);
                           }
                           else
                           {
                              addr62:
                              _loc4_ = _loc2_.child1;
                           }
                           §§goto(addr64);
                        }
                        §§goto(addr62);
                     }
                     §§goto(addr53);
                  }
               }
               return;
            }
            §§goto(addr37);
         }
         §§goto(addr31);
      }
   }
}
