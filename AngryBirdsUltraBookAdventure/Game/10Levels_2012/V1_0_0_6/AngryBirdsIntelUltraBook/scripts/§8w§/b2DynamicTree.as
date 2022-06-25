package §8w§
{
   import §3!m§.*;
   import §;%§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §]!N§:b2DynamicTreeNode;
      
      private var §"!M§:b2DynamicTreeNode;
      
      private var §;x§:uint;
      
      private var §@!?§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            while(true)
            {
               this.§]!N§ = null;
               loop1:
               while(true)
               {
                  this.§"!M§ = null;
                  while(true)
                  {
                     this.§;x§ = 0;
                     while(_loc1_ || this)
                     {
                        continue loop1;
                        this.§@!?§ = 0;
                        if(_loc1_)
                        {
                           return;
                           addr44:
                        }
                     }
                  }
               }
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr80);
            }
         }
         §§goto(addr44);
      }
      
      public function §1!@§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§8!F§();
         if(!_loc6_)
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
                  loop2:
                  while(true)
                  {
                     §§push(b2Settings.b2_aabbExtension);
                     if(_loc7_)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        §§push(Number(§§pop()));
                     }
                     if(_loc6_ && param1)
                     {
                        continue loop1;
                     }
                     _loc5_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc3_.aabb);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop().§+!`§);
                           loop5:
                           while(true)
                           {
                              §§push(param1.§+!`§);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(_loc4_);
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr159:
                                       §§push(_loc5_);
                                       if(!(_loc6_ && param2))
                                       {
                                          addr168:
                                          §§pop().y = §§pop() - §§pop();
                                          loop11:
                                          while(_loc7_ || _loc3_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc3_.aabb);
                                                loop13:
                                                for(; _loc7_; §§push(_loc3_.aabb),if(_loc6_)
                                                {
                                                   continue;
                                                },§§push(§§pop().§"W§),if(!_loc6_)
                                                {
                                                   §§push(param1.§"W§);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop().y);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(_loc7_ || param1)
                                                         {
                                                            addr79:
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§pop().y = §§pop();
                                                                  while(!(_loc6_ && param1))
                                                                  {
                                                                     _loc3_.§#+§ = param2;
                                                                     while(!_loc6_)
                                                                     {
                                                                        this.§<Q§(_loc3_);
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           return _loc3_;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr126);
                                                               }
                                                               §§goto(addr123);
                                                            }
                                                            §§goto(addr125);
                                                         }
                                                         §§goto(addr124);
                                                      }
                                                      §§goto(addr79);
                                                   }
                                                   §§goto(addr122);
                                                },§§goto(addr120))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§push(§§pop().§"W§);
                                                   while(true)
                                                   {
                                                      §§push(param1.§"W§);
                                                      addr122:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr123:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            addr124:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr125:
                                                               while(true)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  addr126:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr132:
                                                addr193:
                                                while(true)
                                                {
                                                   §§push(§§pop().§+!`§);
                                                   if(_loc6_ && this)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(param1.§+!`§);
                                                   if(!_loc7_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§push(§§pop().y);
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      if(_loc6_ && _loc3_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr168);
                                                }
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   break loop11;
                                                }
                                             }
                                          }
                                          while(_loc7_)
                                          {
                                             if(_loc6_ && _loc3_)
                                             {
                                                continue loop2;
                                             }
                                             §§goto(addr132);
                                             §§push(_loc3_.aabb);
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 §§goto(addr193);
                              }
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr176);
      }
      
      public function §for §(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0R§(param1);
         }
         do
         {
            this.§1=§(param1);
         }
         while(_loc3_ && _loc3_);
         
      }
      
      public function §&!N§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!(_loc7_ && param3))
         {
            b2Settings.b2Assert(param1.§^!F§());
            loop0:
            while(true)
            {
               §§push(param1.aabb);
               loop1:
               while(true)
               {
                  §§push(§§pop().§&y§(param2));
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           this.§0R§(param1);
                           loop4:
                           while(true)
                           {
                              §§push(b2Settings.b2_aabbExtension);
                              loop5:
                              while(true)
                              {
                                 §§push(b2Settings.b2_aabbMultiplier);
                                 if(_loc6_)
                                 {
                                    §§push(param3.x);
                                    if(_loc6_)
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
                                                      addr357:
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
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        if(_loc7_ && param2)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        §§push(b2Settings.b2_aabbMultiplier);
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(param3.y);
                                                                              if(!(_loc7_ && param3))
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(§§pop() > §§pop());
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             §§push(param3.y);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(!(_loc6_ || param3))
                                                                                                {
                                                                                                   addr302:
                                                                                                   break;
                                                                                                }
                                                                                                addr303:
                                                                                                §§push(§§pop() + §§pop() * §§pop());
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr306:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                if(_loc6_ || param1)
                                                                                                {
                                                                                                   _loc5_ = §§pop();
                                                                                                   loop15:
                                                                                                   for(; _loc6_ || param2; while(true)
                                                                                                   {
                                                                                                      if(_loc7_ && param3)
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      if(_loc7_ && param1)
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§goto(addr152);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr373:
                                                                                                         §§goto(addr374);
                                                                                                         §§push(false);
                                                                                                      }
                                                                                                   },§§goto(addr135))
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      §§push(param1.aabb);
                                                                                                      loop16:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().§+!`§);
                                                                                                         loop17:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param2.§+!`§);
                                                                                                            loop18:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     addr166:
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                        addr175:
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!(_loc6_ || this))
                                                                                                                        {
                                                                                                                           loop20:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              addr213:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param1.aabb);
                                                                                                                                 addr156:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§+!`§);
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                    §§push(param2.§+!`§);
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr166);
                                                                                                                                    }
                                                                                                                                    §§goto(addr175);
                                                                                                                                 }
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr212:
                                                                                                                        }
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        loop23:
                                                                                                                        while(_loc6_ || param2)
                                                                                                                        {
                                                                                                                           §§push(param1.aabb);
                                                                                                                           while(!_loc7_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§"W§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param2.§"W§);
                                                                                                                                 addr130:
                                                                                                                                 addr75:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                       }
                                                                                                                                       addr134:
                                                                                                                                    }
                                                                                                                                    addr135:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§push(§§pop().§"W§);
                                                                                                                                 if(_loc7_ && param2)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§push(param2.§"W§);
                                                                                                                                 if(_loc6_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(_loc6_ || param3)
                                                                                                                                    {
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_);
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr134);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr135);
                                                                                                                                    }
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    loop30:
                                                                                                                                    for(; !(_loc7_ && param1); while(true)
                                                                                                                                    {
                                                                                                                                       this.§<Q§(param1);
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          if(_loc6_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(true);
                                                                                                                                             if(!(_loc6_ || this))
                                                                                                                                             {
                                                                                                                                                return §§pop();
                                                                                                                                             }
                                                                                                                                             addr374:
                                                                                                                                             if(!(_loc7_ && param3))
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue loop2;
                                                                                                                                          }
                                                                                                                                          continue loop15;
                                                                                                                                       }
                                                                                                                                       continue loop30;
                                                                                                                                    },return §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc6_ || param1)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr213);
                                                                                                                                    }
                                                                                                                                    continue loop23;
                                                                                                                                 }
                                                                                                                                 §§goto(addr130);
                                                                                                                                 §§goto(addr135);
                                                                                                                              }
                                                                                                                              §§push(param1.aabb);
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 continue loop1;
                                                                                                                              }
                                                                                                                              §§goto(addr156);
                                                                                                                           }
                                                                                                                           continue loop16;
                                                                                                                        }
                                                                                                                        continue loop3;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr212);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop12;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr303);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(param3.y);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                       }
                                                                                       if(_loc6_ || param2)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          continue loop8;
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           addr339:
                                                                           addr339:
                                                                           while(true)
                                                                           {
                                                                              §§push(param3.x);
                                                                              break loop14;
                                                                           }
                                                                        }
                                                                        §§goto(addr303);
                                                                     }
                                                                     §§goto(addr306);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr339);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr357);
                                    }
                                 }
                                 §§goto(addr339);
                              }
                           }
                        }
                     }
                     §§goto(addr373);
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      public function §6e§(param1:int) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(!(_loc7_ && this))
         {
            if(this.§]!N§ == null)
            {
               if(!(_loc7_ && _loc2_))
               {
                  §§goto(addr41);
               }
            }
            var _loc2_:int = 0;
            loop0:
            while(_loc2_ < param1)
            {
               _loc3_ = this.§]!N§;
               if(!(_loc7_ && param1))
               {
                  §§push(0);
                  if(!_loc7_)
                  {
                     §§push(uint(§§pop()));
                     if(_loc8_ || this)
                     {
                        _loc4_ = §§pop();
                        if(!_loc7_)
                        {
                           loop1:
                           while(true)
                           {
                              if(_loc3_.§^!F§() != false)
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    var _loc5_:*;
                                    var _loc6_:* = (_loc5_ = this).§;x§ + 1;
                                    if(_loc8_)
                                    {
                                       _loc5_.§;x§ = _loc6_;
                                    }
                                    if(_loc8_)
                                    {
                                       this.§0R§(_loc3_);
                                       break;
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       _loc2_++;
                                       if(_loc8_ || _loc3_)
                                       {
                                          if(_loc7_)
                                          {
                                             addr182:
                                             break loop1;
                                             addr182:
                                          }
                                          while(false)
                                          {
                                             while(true)
                                             {
                                                this.§<Q§(_loc3_);
                                                continue loop4;
                                             }
                                          }
                                          continue loop0;
                                       }
                                    }
                                    addr188:
                                 }
                                 §§goto(addr182);
                              }
                              else
                              {
                                 §§push(this.§;x§);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr184);
                              §§goto(addr188);
                           }
                           addr134:
                           addr192:
                        }
                        §§goto(addr182);
                     }
                     while(true)
                     {
                        §§push(§§pop() >> _loc4_);
                        if(!(_loc7_ && _loc3_))
                        {
                           while(true)
                           {
                              §§push(§§pop() & 1);
                           }
                           addr94:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc8_ || param1)
                              {
                                 addr111:
                                 _loc3_ = _loc3_.child2;
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(uint(§§pop() + 1 & 31));
                                    }
                                    _loc4_ = §§pop();
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr192);
                           }
                           else
                           {
                              §§push(_loc3_.child1);
                           }
                           §§goto(addr111);
                        }
                     }
                  }
                  §§goto(addr94);
               }
               §§goto(addr182);
            }
            return;
         }
         addr41:
      }
      
      public function §8!W§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§#+§;
      }
      
      public function §4!3§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(_loc10_ || this)
         {
            if(this.§]!N§ == null)
            {
               if(_loc10_ || param1)
               {
                  §§goto(addr39);
               }
            }
            var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
            var _loc4_:int = 0;
            var _loc7_:*;
            _loc3_[_loc7_ = _loc4_++] = this.§]!N§;
            while(true)
            {
               if(_loc4_ <= 0)
               {
                  return;
               }
               §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§3!V§(param2));
               if(_loc10_ || param1)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(_loc10_ || param2)
                  {
                     §§push(_loc5_.§^!F§());
                     if(_loc10_ || param1)
                     {
                        if(§§pop())
                        {
                           if(_loc10_)
                           {
                              addr110:
                              §§push(Boolean(param1(_loc5_)));
                              if(!(_loc11_ && param1))
                              {
                                 addr122:
                                 §§push(_loc6_ = §§pop());
                              }
                              if(!§§pop())
                              {
                                 if(!(_loc11_ && this))
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
                           if(!(_loc11_ && this))
                           {
                              var _loc9_:*;
                              _loc3_[_loc9_ = _loc4_++] = _loc5_.child2;
                           }
                        }
                        continue;
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr110);
               }
               §§goto(addr122);
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
         var _loc11_:Number = NaN;
         var _loc14_:b2DynamicTreeNode = null;
         var _loc15_:b2Vec2 = null;
         var _loc16_:b2Vec2 = null;
         var _loc17_:Number = NaN;
         var _loc18_:b2RayCastInput = null;
         if(!_loc22_)
         {
            if(this.§]!N§ == null)
            {
               if(!_loc22_)
               {
                  return;
               }
            }
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2;
         (_loc5_ = b2Math.§9!<§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§8!Z§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§;!t§(_loc6_);
         §§push(param2.§[n§);
         if(_loc23_ || _loc3_)
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
               addr259:
               while(true)
               {
                  §§push(_loc4_.x);
                  addr261:
                  while(true)
                  {
                     §§push(_loc3_.x);
                     addr263:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr264:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr265:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc23_ || param2)
                              {
                                 §§push(Number(§§pop()));
                              }
                              addr274:
                              while(true)
                              {
                                 _loc10_ = §§pop();
                                 addr240:
                                 if(!(_loc22_ && param1))
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr275);
      }
      
      private function §8!F§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2DynamicTreeNode = null;
         if(!_loc2_)
         {
            §§push(this.§"!M§);
            if(_loc3_ || _loc1_)
            {
               if(§§pop())
               {
                  addr34:
                  _loc1_ = this.§"!M§;
                  if(_loc3_ || _loc2_)
                  {
                     this.§"!M§ = _loc1_.parent;
                     while(true)
                     {
                        _loc1_.parent = null;
                        _loc1_.child1 = null;
                        loop1:
                        while(!(_loc2_ && _loc3_))
                        {
                           while(true)
                           {
                              _loc1_.child2 = null;
                              if(!(_loc2_ && _loc1_))
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           return _loc1_;
                        }
                     }
                  }
                  else if(true)
                  {
                     §§goto(addr117);
                  }
                  §§goto(addr73);
               }
               addr117:
               return new b2DynamicTreeNode();
            }
         }
         §§goto(addr34);
      }
      
      private function §1=§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            param1.parent = this.§"!M§;
            do
            {
               this.§"!M§ = param1;
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      private function §<Q§(param1:b2DynamicTreeNode) : void
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
            §§push((_loc10_ = this).§@!?§);
            if(_loc12_)
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(!(_loc13_ && _loc2_))
            {
               _loc10_.§@!?§ = _loc11_;
            }
            if(_loc12_ || this)
            {
               §§push(this.§]!N§);
               loop0:
               while(true)
               {
                  §§push(null);
                  addr84:
                  while(§§pop() == §§pop())
                  {
                     this.§]!N§ = param1;
                     continue loop0;
                  }
                  var _loc2_:b2Vec2 = param1.aabb.§,!8§();
                  var _loc3_:b2DynamicTreeNode = this.§]!N§;
                  if(_loc12_ || this)
                  {
                     if(_loc3_.§^!F§() == false)
                     {
                        addr109:
                        do
                        {
                           _loc6_ = _loc3_.child1;
                           _loc7_ = _loc3_.child2;
                           if(_loc12_ || param1)
                           {
                              §§push(Number(Math.abs((_loc6_.aabb.§+!`§.x + _loc6_.aabb.§"W§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§+!`§.y + _loc6_.aabb.§"W§.y) / 2 - _loc2_.y)));
                              if(!_loc13_)
                              {
                                 _loc8_ = §§pop();
                                 if(!_loc13_)
                                 {
                                    §§push(Number(Math.abs((_loc7_.aabb.§+!`§.x + _loc7_.aabb.§"W§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§+!`§.y + _loc7_.aabb.§"W§.y) / 2 - _loc2_.y)));
                                    if(!(_loc13_ && _loc2_))
                                    {
                                       addr206:
                                       _loc9_ = §§pop();
                                       addr217:
                                       if(!(_loc13_ && param1))
                                       {
                                          addr214:
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
                                 §§goto(addr217);
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr214);
                        }
                        while(_loc3_.§^!F§() == false);
                        
                     }
                     var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                     var _loc5_:b2DynamicTreeNode;
                     (_loc5_ = this.§8!F§()).parent = _loc4_;
                     if(!_loc13_)
                     {
                        _loc5_.§#+§ = null;
                     }
                     loop2:
                     while(true)
                     {
                        §§push(_loc5_.aabb);
                        loop3:
                        while(true)
                        {
                           §§push(param1.aabb);
                           addr408:
                           while(true)
                           {
                              §§push(_loc3_.aabb);
                              loop5:
                              while(true)
                              {
                                 §§pop().§3!M§(§§pop(),§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       if(_loc12_ || _loc3_)
                                       {
                                          if(_loc3_.parent.child1 == _loc3_)
                                          {
                                             if(!(_loc13_ && _loc2_))
                                             {
                                                _loc4_.child1 = _loc5_;
                                                loop11:
                                                while(true)
                                                {
                                                   addr351:
                                                   addr436:
                                                   while(true)
                                                   {
                                                      _loc5_.child1 = _loc3_;
                                                      if(_loc12_ || _loc2_)
                                                      {
                                                         _loc5_.child2 = param1;
                                                         if(!_loc13_)
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            _loc3_.parent = _loc5_;
                                                            if(_loc13_ && _loc2_)
                                                            {
                                                               break;
                                                            }
                                                            loop8:
                                                            while(true)
                                                            {
                                                               param1.parent = _loc5_;
                                                               loop9:
                                                               while(!_loc13_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.aabb);
                                                                     if(!_loc13_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     addr291:
                                                                     §§push(_loc4_.child1.aabb);
                                                                     §§push(_loc4_.child2.aabb);
                                                                     if(_loc12_ || this)
                                                                     {
                                                                        §§pop().§3!M§(§§pop(),§§pop());
                                                                        if(!(_loc12_ || _loc3_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr464:
                                                                        addr464:
                                                                        addr464:
                                                                        if(!_loc13_)
                                                                        {
                                                                           if(_loc12_ || _loc3_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              _loc5_ = _loc4_;
                                                                              if(!(_loc4_ = _loc4_.parent))
                                                                              {
                                                                                 addr425:
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  return;
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                         param1.parent = _loc5_;
                                                         addr469:
                                                         if(!_loc13_)
                                                         {
                                                            break loop6;
                                                         }
                                                         _loc3_.parent = _loc5_;
                                                         addr476:
                                                         §§goto(addr476);
                                                         addr480:
                                                      }
                                                      break;
                                                   }
                                                   _loc5_.child2 = param1;
                                                   §§goto(addr480);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             _loc4_.child2 = _loc5_;
                                             if(_loc12_ || _loc3_)
                                             {
                                                §§goto(addr351);
                                             }
                                          }
                                          §§goto(addr464);
                                       }
                                       break;
                                    }
                                    _loc5_.child1 = _loc3_;
                                    if(_loc12_ || _loc3_)
                                    {
                                       §§goto(addr436);
                                    }
                                    break;
                                    §§goto(addr436);
                                 }
                                 this.§]!N§ = _loc5_;
                                 if(_loc12_ || this)
                                 {
                                    if(!_loc12_)
                                    {
                                       §§goto(addr476);
                                    }
                                    §§goto(addr464);
                                 }
                                 §§goto(addr469);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr109);
               }
            }
            return;
         }
         §§goto(addr88);
      }
      
      private function §0R§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(!(_loc6_ && this))
         {
            if(param1 == this.§]!N§)
            {
               if(_loc7_)
               {
                  this.§]!N§ = null;
                  if(_loc6_)
                  {
                     addr42:
                     var _loc2_:b2DynamicTreeNode = param1.parent;
                     var _loc3_:b2DynamicTreeNode = _loc2_.parent;
                     if(!(_loc6_ && this))
                     {
                        §§push(_loc2_.child1);
                        if(_loc7_ || param1)
                        {
                           if(§§pop() == param1)
                           {
                              addr68:
                              _loc4_ = _loc2_.child2;
                              if(!_loc6_)
                              {
                                 §§goto(addr79);
                              }
                              §§goto(addr114);
                           }
                           else
                           {
                              addr77:
                              _loc4_ = _loc2_.child1;
                           }
                           addr79:
                           if(_loc3_)
                           {
                              if(!(_loc6_ && this))
                              {
                                 if(_loc3_.child1 == _loc2_)
                                 {
                                    if(_loc7_ || _loc3_)
                                    {
                                       addr109:
                                       _loc3_.child1 = _loc4_;
                                       if(_loc7_)
                                       {
                                          loop1:
                                          while(true)
                                          {
                                             _loc4_.parent = _loc3_;
                                             addr132:
                                             while(!_loc7_)
                                             {
                                                continue loop1;
                                             }
                                          }
                                          addr128:
                                          addr114:
                                       }
                                       §§goto(addr139);
                                    }
                                    while(true)
                                    {
                                       this.§1=§(_loc2_);
                                       if(_loc7_ || _loc2_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr128);
                                       }
                                       §§goto(addr132);
                                    }
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             break;
                                          }
                                          §§goto(addr213);
                                       }
                                       _loc5_ = _loc3_.aabb;
                                       if(!_loc6_)
                                       {
                                          _loc3_.aabb = b2AABB.§3!M§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                                          if(_loc7_ || _loc2_)
                                          {
                                             addr165:
                                             if(!_loc5_.§&y§(_loc3_.aabb))
                                             {
                                                continue;
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr213);
                                 }
                                 else
                                 {
                                    _loc3_.child2 = _loc4_;
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr109);
                           }
                           else
                           {
                              this.§]!N§ = _loc4_;
                              if(!(_loc6_ && _loc3_))
                              {
                                 _loc4_.parent = null;
                                 if(_loc6_)
                                 {
                                 }
                                 §§goto(addr213);
                              }
                              this.§1=§(_loc2_);
                           }
                           addr213:
                           return;
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr68);
                  }
               }
               return;
            }
         }
         §§goto(addr42);
      }
   }
}
