package §5!o§
{
   import §2"=§.*;
   import §=o§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §8!8§:b2DynamicTreeNode;
      
      private var §2M§:b2DynamicTreeNode;
      
      private var §'n§:uint;
      
      private var §?"%§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            while(true)
            {
               this.§8!8§ = null;
               while(!(_loc1_ && _loc2_))
               {
                  this.§'n§ = 0;
                  loop3:
                  while(!(_loc1_ && _loc2_))
                  {
                     this.§?"%§ = 0;
                     if(_loc2_)
                     {
                        addr35:
                        if(_loc1_ && _loc1_)
                        {
                           while(true)
                           {
                              this.§2M§ = null;
                              break loop3;
                              §§goto(addr35);
                           }
                           addr91:
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function §>!#§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§ !M§();
         if(_loc7_)
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
                  while(true)
                  {
                     §§push(b2Settings.b2_aabbExtension);
                     if(!(_loc6_ && _loc3_))
                     {
                        if(!_loc7_)
                        {
                           break;
                        }
                        §§push(Number(§§pop()));
                     }
                     if(_loc6_ && param2)
                     {
                        continue loop1;
                     }
                     _loc5_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc3_.aabb);
                        while(true)
                        {
                           §§push(§§pop().§8! §);
                           addr193:
                           loop13:
                           for(; _loc7_ || this; while(true)
                           {
                              §§push(_loc3_.aabb);
                              if(!(_loc7_ || this))
                              {
                                 continue loop13;
                              }
                              addr74:
                              if(!(_loc6_ && this))
                              {
                                 §§push(§§pop().§;R§);
                                 if(_loc7_)
                                 {
                                    §§push(param1.§;R§);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop().y);
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(_loc5_);
                                          if(!(_loc6_ && param2))
                                          {
                                             addr105:
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                if(_loc7_)
                                                {
                                                   §§pop().y = §§pop();
                                                   loop21:
                                                   while(true)
                                                   {
                                                      _loc3_.§1P§ = param2;
                                                      addr56:
                                                      addr188:
                                                      while(_loc7_ || _loc3_)
                                                      {
                                                         this.§4"#§(_loc3_);
                                                         if(_loc7_)
                                                         {
                                                            continue loop21;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop13;
                                                         §§goto(addr56);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr140);
                                                }
                                                §§goto(addr143);
                                             }
                                             §§goto(addr142);
                                          }
                                          §§goto(addr141);
                                       }
                                       §§goto(addr105);
                                    }
                                    else
                                    {
                                       §§goto(addr139);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr137);
                                 }
                                 §§goto(addr139);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(§§pop().§8! §);
                                    if(!(_loc7_ || param1))
                                    {
                                       break;
                                    }
                                    §§push(param1.§8! §);
                                    if(_loc7_ || param1)
                                    {
                                       §§push(§§pop().y);
                                       if(!(_loc6_ && param1))
                                       {
                                          if(!(_loc6_ && param2))
                                          {
                                             §§push(_loc5_);
                                             if(!_loc6_)
                                             {
                                                addr185:
                                                §§push(§§pop() - §§pop());
                                                if(_loc7_)
                                                {
                                                   §§pop().y = §§pop();
                                                   §§goto(addr188);
                                                }
                                                else
                                                {
                                                   §§goto(addr196);
                                                }
                                             }
                                             §§goto(addr197);
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr185);
                                    }
                                    else
                                    {
                                       §§goto(addr195);
                                    }
                                    §§goto(addr74);
                                 }
                                 §§goto(addr193);
                                 addr149:
                              }
                              §§goto(addr188);
                           },return _loc3_)
                           {
                              §§push(§§pop().§;R§);
                              while(true)
                              {
                                 §§push(param1.§;R§);
                                 addr139:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr140:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       addr141:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          addr142:
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             addr143:
                                             while(_loc7_)
                                             {
                                                continue loop13;
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(param1.§8! §);
                              addr195:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr196:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    addr197:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr198:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr145);
      }
      
      public function §`4§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§!!F§(param1);
         }
         do
         {
            this.§^o§(param1);
         }
         while(_loc3_ && param1);
         
      }
      
      public function §-!?§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!(_loc7_ && this))
         {
            b2Settings.b2Assert(param1.§5"6§());
            loop0:
            while(true)
            {
               §§push(param1.aabb);
               loop1:
               while(true)
               {
                  §§push(§§pop().§6",§(param2));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§goto(addr359);
                     }
                     loop3:
                     while(true)
                     {
                        this.§!!F§(param1);
                        while(true)
                        {
                           §§push(b2Settings.b2_aabbExtension);
                           if(!_loc7_)
                           {
                              §§push(b2Settings.b2_aabbMultiplier);
                              loop5:
                              while(true)
                              {
                                 §§push(param3.x);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       loop8:
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
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr335:
                                                            loop15:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(b2Settings.b2_aabbExtension);
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     if(!(_loc6_ || param3))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(b2Settings.b2_aabbMultiplier);
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc6_ || param3)
                                                                        {
                                                                           §§push(param3.y);
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              §§push(0);
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              §§push(§§pop() > §§pop());
                                                                              if(!(_loc6_ || this))
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§push(param3.y);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr289:
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr300:
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    addr302:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr307:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    _loc5_ = §§pop();
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.aabb);
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().§8! §);
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param2.§8! §);
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         loop24:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.aabb);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().§8! §);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(param2.§8! §);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(!(_loc7_ && param3))
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                  }
                                                                                                                  if(_loc6_ || this)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                               continue loop20;
                                                                                                               addr141:
                                                                                                               loop27:
                                                                                                               for(; _loc6_ || param3; §§push(param1.aabb),if(!(_loc7_ && param3))
                                                                                                               {
                                                                                                                  continue loop18;
                                                                                                               })
                                                                                                               {
                                                                                                                  §§push(§§pop().§;R§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param2.§;R§);
                                                                                                                     addr151:
                                                                                                                     addr72:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        if(_loc6_ || param3)
                                                                                                                        {
                                                                                                                           §§push(_loc4_);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              §§goto(addr99);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr161);
                                                                                                                     }
                                                                                                                     §§push(§§pop().§;R§);
                                                                                                                     if(_loc7_ && this)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(param2.§;R§);
                                                                                                                     if(!(_loc7_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(!(_loc7_ && param2))
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              addr99:
                                                                                                                              §§push(_loc5_);
                                                                                                                              if(!(_loc7_ && param3))
                                                                                                                              {
                                                                                                                                 §§pop().y = §§pop() + §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc6_ || param3)
                                                                                                                                    {
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                    addr161:
                                                                                                                                    addr161:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                       if(!(_loc7_ && param2))
                                                                                                                                       {
                                                                                                                                          continue loop27;
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr360:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop3;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr137:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                       §§goto(addr162);
                                                                                                                                    }
                                                                                                                                    addr162:
                                                                                                                                    this.§4"#§(param1);
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(true);
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             if(_loc6_ || this)
                                                                                                                                             {
                                                                                                                                                return §§pop();
                                                                                                                                             }
                                                                                                                                             continue loop2;
                                                                                                                                          }
                                                                                                                                          continue loop24;
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop30;
                                                                                                                              addr359:
                                                                                                                              return false;
                                                                                                                           }
                                                                                                                           §§goto(addr161);
                                                                                                                        }
                                                                                                                        §§goto(addr108);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr151);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          if(!(_loc6_ || param2))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          §§goto(addr72);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr302);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(param3.y);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                 }
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                           §§goto(addr289);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(param3.x);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 continue loop11;
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           addr322:
                                                                        }
                                                                     }
                                                                     §§goto(addr302);
                                                                  }
                                                                  §§goto(addr307);
                                                               }
                                                               continue loop13;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr322);
                                       }
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
         }
         §§goto(addr360);
      }
      
      public function §+Y§(param1:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(!(_loc8_ && this))
         {
            if(this.§8!8§ == null)
            {
               if(!(_loc8_ && param1))
               {
                  §§goto(addr40);
               }
            }
            var _loc2_:int = 0;
            loop0:
            while(_loc2_ < param1)
            {
               _loc3_ = this.§8!8§;
               if(_loc7_ || this)
               {
                  §§push(0);
                  if(!_loc8_)
                  {
                     §§push(uint(§§pop()));
                     if(!_loc8_)
                     {
                        _loc4_ = §§pop();
                        if(_loc7_)
                        {
                           loop1:
                           while(true)
                           {
                              if(_loc3_.§5"6§() != false)
                              {
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    var _loc5_:*;
                                    var _loc6_:* = (_loc5_ = this).§'n§ + 1;
                                    if(!_loc8_)
                                    {
                                       _loc5_.§'n§ = _loc6_;
                                    }
                                    if(_loc7_ || this)
                                    {
                                       break;
                                    }
                                    loop2:
                                    while(false)
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          this.§4"#§(_loc3_);
                                          addr160:
                                          addr181:
                                          while(_loc7_ || this)
                                          {
                                             continue loop2;
                                          }
                                          while(true)
                                          {
                                             continue loop3;
                                          }
                                       }
                                    }
                                    continue loop0;
                                    addr154:
                                 }
                                 while(true)
                                 {
                                    _loc2_++;
                                    if(!_loc8_)
                                    {
                                       §§goto(addr154);
                                    }
                                    §§goto(addr160);
                                 }
                              }
                              else
                              {
                                 §§push(this.§'n§);
                                 while(true)
                                 {
                                    §§push(§§pop() >> _loc4_);
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop() & 1);
                                       }
                                       addr78:
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc7_ || _loc3_))
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
                                       if(!_loc8_)
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
                                 addr69:
                              }
                           }
                           this.§!!F§(_loc3_);
                           addr149:
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr78);
               }
               §§goto(addr149);
            }
            return;
         }
         addr40:
      }
      
      public function §1c§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§1P§;
      }
      
      public function §'!!§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(_loc11_)
         {
            if(this.§8!8§ == null)
            {
               if(!(_loc10_ && param2))
               {
                  §§goto(addr35);
               }
            }
            var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
            var _loc4_:int = 0;
            var _loc7_:*;
            _loc3_[_loc7_ = _loc4_++] = this.§8!8§;
            while(true)
            {
               if(_loc4_ <= 0)
               {
                  return;
               }
               §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§;c§(param2));
               if(!(_loc10_ && param2))
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(!_loc11_)
                  {
                     continue;
                  }
                  §§push(_loc5_.§5"6§());
                  if(_loc11_)
                  {
                     addr93:
                     if(§§pop())
                     {
                        if(!(_loc10_ && this))
                        {
                           §§push(Boolean(param1(_loc5_)));
                           if(!(_loc10_ && this))
                           {
                              addr113:
                              §§push(_loc6_ = §§pop());
                           }
                           if(!§§pop())
                           {
                              if(!_loc10_)
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
                        if(!(_loc10_ && this))
                        {
                           var _loc9_:*;
                           _loc3_[_loc9_ = _loc4_++] = _loc5_.child2;
                        }
                     }
                     continue;
                  }
                  §§goto(addr113);
               }
               §§goto(addr93);
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
         var _loc17_:* = NaN;
         var _loc18_:b2RayCastInput = null;
         if(_loc22_ || param2)
         {
            if(this.§8!8§ == null)
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
         (_loc5_ = b2Math.§'!%§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§4n§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§-!%§(_loc6_);
         §§push(param2.§8"!§);
         if(_loc22_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         _loc9_ = new b2AABB();
         if(!(_loc23_ && _loc3_))
         {
            §§push(_loc3_.x);
            loop0:
            while(true)
            {
               §§push(_loc8_);
               if(!(_loc23_ && _loc3_))
               {
                  §§push(_loc4_.x);
                  while(true)
                  {
                     §§push(_loc3_.x);
                     addr244:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr245:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                        }
                     }
                  }
                  addr242:
               }
               loop4:
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  loop5:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop6:
                     while(true)
                     {
                        _loc10_ = §§pop();
                        while(true)
                        {
                           §§push(_loc3_.y);
                           if(_loc22_)
                           {
                              §§push(_loc8_);
                              if(_loc22_)
                              {
                                 §§push(_loc4_.y);
                                 if(!_loc23_)
                                 {
                                    if(!_loc23_)
                                    {
                                       §§push(_loc3_.y);
                                       if(!(_loc23_ && this))
                                       {
                                          addr201:
                                          §§push(§§pop() - §§pop());
                                          if(_loc22_)
                                          {
                                             addr204:
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc22_ || param2))
                                             {
                                                break;
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc23_)
                                             {
                                                addr214:
                                                if(!_loc22_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc23_ && param2)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(Number(§§pop()));
                                             }
                                             if(!_loc23_)
                                             {
                                                _loc11_ = §§pop();
                                                loop8:
                                                for(; _loc22_; while(_loc22_ || param1)
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(_loc9_.§;R§);
                                                      while(true)
                                                      {
                                                         §§pop().x = Math.max(_loc3_.x,_loc10_);
                                                         while(true)
                                                         {
                                                            §§push(_loc9_.§;R§);
                                                            if(!_loc22_)
                                                            {
                                                               break;
                                                            }
                                                            §§pop().y = Math.max(_loc3_.y,_loc11_);
                                                            if(_loc23_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc22_)
                                                            {
                                                               break loop12;
                                                            }
                                                            if(_loc22_ || _loc3_)
                                                            {
                                                               while(false)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
                                                               var _loc13_:int = 0;
                                                               var _loc19_:*;
                                                               _loc12_[_loc19_ = _loc13_++] = this.§8!8§;
                                                               loop16:
                                                               while(_loc13_ > 0)
                                                               {
                                                                  §§push((_loc14_ = _loc12_[--_loc13_]).aabb);
                                                                  if(_loc22_)
                                                                  {
                                                                     if(§§pop().§;c§(_loc9_) == false)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(_loc14_.aabb);
                                                                  }
                                                                  _loc15_ = §§pop().§]t§();
                                                                  _loc16_ = _loc14_.aabb.§8"?§();
                                                                  if(!_loc23_)
                                                                  {
                                                                     §§push(Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x);
                                                                     if(_loc22_)
                                                                     {
                                                                        §§push(_loc7_.y);
                                                                        if(!(_loc23_ && param2))
                                                                        {
                                                                           §§push(§§pop() * _loc16_.y);
                                                                           if(!_loc23_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc23_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    addr357:
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc23_ && param1))
                                                                                    {
                                                                                       _loc17_ = §§pop();
                                                                                    }
                                                                                    addr367:
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       if(_loc22_ || param2)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr381:
                                                                                       (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          _loc18_.p2 = param2.p2;
                                                                                          while(true)
                                                                                          {
                                                                                             _loc18_.§8"!§ = param2.§8"!§;
                                                                                             addr603:
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
                                                                                                         loop29:
                                                                                                         for(; _loc22_ || param1; if(!(_loc22_ || param1))
                                                                                                         {
                                                                                                            continue;
                                                                                                         },if(!_loc23_)
                                                                                                         {
                                                                                                            continue loop19;
                                                                                                         },§§goto(addr561))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            loop30:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc10_ = §§pop();
                                                                                                               addr580:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  addr596:
                                                                                                                  §§push(_loc3_.y);
                                                                                                                  if(!(_loc23_ && this))
                                                                                                                  {
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                                  continue loop29;
                                                                                                               }
                                                                                                               addr562:
                                                                                                               loop24:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc4_.x);
                                                                                                                  addr564:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc3_.x);
                                                                                                                     addr566:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        addr567:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           addr568:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 continue loop29;
                                                                                                                              }
                                                                                                                              addr595:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr596);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_.x);
                                                                                                                                       addr561:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop24;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr558:
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
                                                                                                   §§goto(addr595);
                                                                                                   if(_loc23_ && param1)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr556);
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             loop35:
                                                                                             while(_loc22_ || param1)
                                                                                             {
                                                                                                loop36:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc9_.§;R§);
                                                                                                   loop37:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = Math.max(_loc3_.x,_loc10_);
                                                                                                      loop38:
                                                                                                      while(!_loc23_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc9_.§;R§);
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               continue loop37;
                                                                                                            }
                                                                                                            §§pop().y = Math.max(_loc3_.y,_loc11_);
                                                                                                            if(_loc23_ && param1)
                                                                                                            {
                                                                                                               continue loop38;
                                                                                                            }
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               continue loop35;
                                                                                                            }
                                                                                                            if(_loc22_)
                                                                                                            {
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop36;
                                                                                                                  }
                                                                                                                  §§goto(addr603);
                                                                                                               }
                                                                                                               §§goto(addr580);
                                                                                                            }
                                                                                                            §§goto(addr465);
                                                                                                         }
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      §§goto(addr558);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr431);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       if(!_loc14_.§5"6§())
                                                                                       {
                                                                                          var _loc20_:*;
                                                                                          _loc12_[_loc20_ = _loc13_++] = _loc14_.child1;
                                                                                          if(!_loc23_)
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
                                                                                       §§goto(addr381);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§push(0);
                                                                           }
                                                                        }
                                                                        §§goto(addr367);
                                                                     }
                                                                     §§goto(addr357);
                                                                  }
                                                                  §§goto(addr381);
                                                               }
                                                               return;
                                                               addr131:
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                      }
                                                   }
                                                })
                                                {
                                                   §§push(_loc9_.§8! §);
                                                   while(true)
                                                   {
                                                      §§pop().x = Math.min(_loc3_.x,_loc10_);
                                                      addr176:
                                                      while(true)
                                                      {
                                                         §§push(_loc9_.§8! §);
                                                         if(!(_loc22_ || param2))
                                                         {
                                                            break;
                                                         }
                                                         §§pop().y = Math.min(_loc3_.y,_loc11_);
                                                         continue loop8;
                                                      }
                                                   }
                                                }
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr242);
                                       }
                                       §§goto(addr244);
                                    }
                                    §§goto(addr245);
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr214);
                        }
                        continue loop4;
                     }
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      private function § !M§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2DynamicTreeNode = null;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§2M§);
            if(_loc3_ || _loc1_)
            {
               if(!§§pop())
               {
                  return new b2DynamicTreeNode();
               }
               addr37:
               §§push(this.§2M§);
            }
            _loc1_ = §§pop();
            if(!(_loc2_ && this))
            {
               this.§2M§ = _loc1_.parent;
            }
            do
            {
               _loc1_.parent = null;
               _loc1_.child1 = null;
               _loc1_.child2 = null;
            }
            while(!_loc3_);
            
            return _loc1_;
         }
         §§goto(addr37);
      }
      
      private function §^o§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            param1.parent = this.§2M§;
         }
         do
         {
            this.§2M§ = param1;
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      private function §4"#§(param1:b2DynamicTreeNode) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(!(_loc12_ && param1))
         {
            var _loc10_:*;
            §§push((_loc10_ = this).§?"%§);
            if(_loc13_ || param1)
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(_loc13_ || param1)
            {
               _loc10_.§?"%§ = _loc11_;
            }
            if(!_loc12_)
            {
               §§push(this.§8!8§);
               loop0:
               while(true)
               {
                  §§push(null);
                  addr100:
                  while(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        this.§8!8§ = param1;
                        continue loop0;
                     }
                  }
                  var _loc2_:b2Vec2 = param1.aabb.§]t§();
                  var _loc3_:b2DynamicTreeNode = this.§8!8§;
                  if(!_loc12_)
                  {
                     if(_loc3_.§5"6§() == false)
                     {
                        addr122:
                        _loc6_ = _loc3_.child1;
                        _loc7_ = _loc3_.child2;
                        if(_loc13_)
                        {
                           §§push(Number(Math.abs((_loc6_.aabb.§8! §.x + _loc6_.aabb.§;R§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§8! §.y + _loc6_.aabb.§;R§.y) / 2 - _loc2_.y)));
                           if(!_loc12_)
                           {
                              _loc8_ = §§pop();
                              if(!(_loc12_ && _loc2_))
                              {
                                 §§push(Number(Math.abs((_loc7_.aabb.§8! §.x + _loc7_.aabb.§;R§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§8! §.y + _loc7_.aabb.§;R§.y) / 2 - _loc2_.y)));
                                 if(!(_loc12_ && _loc2_))
                                 {
                                    addr217:
                                    _loc9_ = §§pop();
                                    addr238:
                                    if(_loc13_ || _loc3_)
                                    {
                                       addr225:
                                       §§push(_loc8_);
                                    }
                                    _loc3_ = _loc6_;
                                    if(!_loc12_)
                                    {
                                       addr247:
                                       if(_loc3_.§5"6§() == false)
                                       {
                                          §§goto(addr122);
                                       }
                                       addr251:
                                       var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                                       var _loc5_:b2DynamicTreeNode;
                                       (_loc5_ = this.§ !M§()).parent = _loc4_;
                                       if(_loc13_)
                                       {
                                          _loc5_.§1P§ = null;
                                          addr399:
                                          _loc5_.aabb.§%!]§(param1.aabb,_loc3_.aabb);
                                          addr411:
                                          if(!(_loc12_ && param1))
                                          {
                                             if(_loc4_)
                                             {
                                                addr383:
                                                if(_loc3_.parent.child1 == _loc3_)
                                                {
                                                   addr388:
                                                   _loc4_.child1 = _loc5_;
                                                   addr366:
                                                   _loc5_.child1 = _loc3_;
                                                   _loc5_.child2 = param1;
                                                   addr391:
                                                   addr370:
                                                   if(!(_loc12_ && param1))
                                                   {
                                                      _loc3_.parent = _loc5_;
                                                      if(!_loc12_)
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               addr327:
                                                               param1.parent = _loc5_;
                                                               if(_loc13_ || _loc2_)
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     if(!_loc12_)
                                                                     {
                                                                        addr268:
                                                                        §§push(_loc4_.aabb);
                                                                        if(!_loc12_)
                                                                        {
                                                                           if(!(_loc12_ && _loc2_))
                                                                           {
                                                                              §§push(_loc5_.aabb);
                                                                              if(!_loc12_)
                                                                              {
                                                                                 if(_loc13_ || _loc3_)
                                                                                 {
                                                                                    if(§§pop().§6",§(§§pop()))
                                                                                    {
                                                                                       if(!(_loc12_ && _loc2_))
                                                                                       {
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             §§goto(addr388);
                                                                                          }
                                                                                          addr434:
                                                                                          return;
                                                                                          addr421:
                                                                                       }
                                                                                       addr457:
                                                                                       §§goto(addr434);
                                                                                       addr457:
                                                                                    }
                                                                                    addr307:
                                                                                    §§push(_loc4_.aabb);
                                                                                    §§push(_loc4_.child1.aabb);
                                                                                    §§push(_loc4_.child2.aabb);
                                                                                    if(_loc13_ || param1)
                                                                                    {
                                                                                       §§pop().§%!]§(§§pop(),§§pop());
                                                                                       if(_loc13_ || _loc3_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr327);
                                                                                          }
                                                                                          _loc5_ = _loc4_;
                                                                                          if(_loc4_ = _loc4_.parent)
                                                                                          {
                                                                                             §§goto(addr268);
                                                                                          }
                                                                                          §§goto(addr421);
                                                                                       }
                                                                                       §§goto(addr457);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr399);
                                                                              }
                                                                              §§goto(addr307);
                                                                           }
                                                                           §§goto(addr399);
                                                                        }
                                                                        §§goto(addr307);
                                                                     }
                                                                     addr377:
                                                                     if(!_loc12_)
                                                                     {
                                                                        §§goto(addr366);
                                                                     }
                                                                     §§goto(addr391);
                                                                  }
                                                                  §§goto(addr370);
                                                               }
                                                               this.§8!8§ = _loc5_;
                                                               addr472:
                                                               if(!(_loc12_ && _loc3_))
                                                               {
                                                                  if(!(_loc12_ && this))
                                                                  {
                                                                     if(!_loc13_)
                                                                     {
                                                                        _loc3_.parent = _loc5_;
                                                                        param1.parent = _loc5_;
                                                                        addr481:
                                                                        §§goto(addr472);
                                                                        addr477:
                                                                        addr481:
                                                                     }
                                                                     §§goto(addr457);
                                                                  }
                                                                  §§goto(addr477);
                                                               }
                                                               §§goto(addr472);
                                                            }
                                                            §§goto(addr411);
                                                         }
                                                         §§goto(addr383);
                                                      }
                                                      §§goto(addr472);
                                                   }
                                                   §§goto(addr481);
                                                }
                                                _loc4_.child2 = _loc5_;
                                                §§goto(addr377);
                                             }
                                             _loc5_.child1 = _loc3_;
                                             if(_loc13_ || this)
                                             {
                                                _loc5_.child2 = param1;
                                                §§goto(addr481);
                                             }
                                             §§goto(addr457);
                                          }
                                          §§goto(addr481);
                                       }
                                       §§goto(addr388);
                                    }
                                    §§goto(addr251);
                                 }
                                 if(§§pop() < _loc9_)
                                 {
                                    §§goto(addr238);
                                 }
                                 _loc3_ = _loc7_;
                                 §§goto(addr247);
                              }
                              §§goto(addr225);
                           }
                        }
                        §§goto(addr217);
                        addr120:
                     }
                     §§goto(addr247);
                  }
                  §§goto(addr120);
               }
               addr99:
            }
            while(true)
            {
               §§push(this.§8!8§);
               if(_loc13_)
               {
                  §§push(null);
                  if(_loc13_ || _loc3_)
                  {
                     §§pop().parent = §§pop();
                     if(_loc13_ || param1)
                     {
                        break;
                     }
                     continue;
                  }
               }
               else
               {
                  §§goto(addr99);
               }
               §§goto(addr100);
            }
         }
      }
      
      private function §!!F§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(_loc6_)
         {
            if(param1 == this.§8!8§)
            {
               if(!_loc7_)
               {
                  this.§8!8§ = null;
                  if(_loc6_)
                  {
                     return;
                  }
               }
            }
         }
         var _loc2_:b2DynamicTreeNode = param1.parent;
         var _loc3_:b2DynamicTreeNode = _loc2_.parent;
         if(!(_loc7_ && param1))
         {
            §§push(_loc2_.child1);
            if(_loc6_)
            {
               if(§§pop() == param1)
               {
                  addr57:
                  _loc4_ = _loc2_.child2;
                  if(!(_loc7_ && param1))
                  {
                     addr73:
                     if(_loc3_)
                     {
                        if(!_loc7_)
                        {
                           if(_loc3_.child1 == _loc2_)
                           {
                              if(!(_loc7_ && param1))
                              {
                                 _loc3_.child1 = _loc4_;
                                 if(!_loc7_)
                                 {
                                    addr103:
                                    loop1:
                                    while(true)
                                    {
                                       _loc4_.parent = _loc3_;
                                       loop2:
                                       while(true)
                                       {
                                          if(_loc6_ || _loc3_)
                                          {
                                             addr128:
                                             while(true)
                                             {
                                                this.§^o§(_loc2_);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   break loop2;
                                                }
                                                continue loop2;
                                             }
                                             addr128:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                continue loop1;
                                             }
                                             addr133:
                                          }
                                       }
                                    }
                                    addr117:
                                    addr103:
                                 }
                                 while(false)
                                 {
                                    §§goto(addr117);
                                    §§goto(addr128);
                                 }
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       addr202:
                                       addr199:
                                       this.§^o§(_loc2_);
                                       return;
                                    }
                                    _loc5_ = _loc3_.aabb;
                                    if(!(_loc7_ && this))
                                    {
                                       _loc3_.aabb = b2AABB.§%!]§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                                       if(_loc6_)
                                       {
                                          if(!_loc5_.§6",§(_loc3_.aabb))
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr103);
                           }
                           else
                           {
                              _loc3_.child2 = _loc4_;
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr103);
                     }
                     else
                     {
                        this.§8!8§ = _loc4_;
                        if(!(_loc7_ && _loc3_))
                        {
                           _loc4_.parent = null;
                           if(_loc6_)
                           {
                              §§goto(addr199);
                           }
                        }
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr128);
               }
               else
               {
                  addr71:
                  _loc4_ = _loc2_.child1;
               }
               §§goto(addr73);
            }
            §§goto(addr71);
         }
         §§goto(addr57);
      }
   }
}
