package §&!-§
{
   import §8>§.*;
   import §;u§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §<!O§:b2DynamicTreeNode;
      
      private var §50§:b2DynamicTreeNode;
      
      private var §7!!§:uint;
      
      private var §!G§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               this.§<!O§ = null;
               while(true)
               {
                  this.§50§ = null;
                  loop2:
                  while(!_loc1_)
                  {
                     this.§7!!§ = 0;
                     loop3:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           this.§!G§ = 0;
                           if(!_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function §2!9§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§6d§();
         if(!(_loc6_ && param1))
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
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                     }
                     if(_loc6_ && this)
                     {
                        break;
                     }
                     if(_loc6_)
                     {
                        continue loop0;
                     }
                     _loc5_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc3_.aabb);
                        while(true)
                        {
                           §§push(§§pop().§]S§);
                           addr210:
                           while(true)
                           {
                              §§push(param1.§]S§);
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
                                          addr226:
                                          while(_loc7_)
                                          {
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                           addr93:
                           if(!(_loc7_ || _loc3_))
                           {
                              continue;
                           }
                           §§push(§§pop().§-!o§);
                           if(_loc7_ || this)
                           {
                              §§push(param1.§-!o§);
                              if(_loc7_ || param2)
                              {
                                 §§push(§§pop().y);
                                 if(!(_loc6_ && param2))
                                 {
                                    §§push(_loc5_);
                                    if(!(_loc6_ && param2))
                                    {
                                       addr144:
                                       §§push(§§pop() + §§pop());
                                       if(!_loc6_)
                                       {
                                          if(_loc7_)
                                          {
                                             §§pop().y = §§pop();
                                             loop21:
                                             while(_loc7_ || this)
                                             {
                                                _loc3_.§1o§ = param2;
                                                loop22:
                                                while(true)
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   addr205:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.aabb);
                                                      addr160:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§-!o§);
                                                         addr161:
                                                         while(true)
                                                         {
                                                            §§push(param1.§-!o§);
                                                            addr163:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               addr164:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  addr165:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr166:
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        break loop21;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         break loop21;
                                                      }
                                                      continue loop22;
                                                   }
                                                }
                                                continue loop3;
                                                if(!(_loc7_ || param2))
                                                {
                                                   continue;
                                                }
                                                if(!(_loc6_ && param1))
                                                {
                                                   return _loc3_;
                                                }
                                                §§goto(addr226);
                                             }
                                             while(true)
                                             {
                                                §§push(_loc3_.aabb);
                                                if(_loc7_ || param1)
                                                {
                                                   addr86:
                                                   if(_loc7_ || param1)
                                                   {
                                                      §§goto(addr93);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§]S§);
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(param1.§]S§);
                                                      if(_loc7_ || param1)
                                                      {
                                                         §§push(§§pop().y);
                                                         if(_loc7_ || param1)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc7_ || param1)
                                                            {
                                                               addr200:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc7_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§pop().y = §§pop();
                                                                     §§goto(addr205);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr213);
                                                                  }
                                                               }
                                                               §§goto(addr215);
                                                            }
                                                            §§goto(addr214);
                                                         }
                                                         §§goto(addr200);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr212);
                                                      }
                                                      §§goto(addr86);
                                                   }
                                                   §§goto(addr210);
                                                   addr171:
                                                }
                                                §§goto(addr160);
                                             }
                                             continue;
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr165);
                                 }
                                 §§goto(addr144);
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr161);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr171);
         }
      }
      
      public function §"!=§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§>;§(param1);
         }
         do
         {
            this.§2#§(param1);
         }
         while(_loc3_);
         
      }
      
      public function §5!O§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc6_)
         {
            b2Settings.b2Assert(param1.§ !s§());
            loop0:
            while(true)
            {
               §§push(param1.aabb);
               loop1:
               while(true)
               {
                  §§push(§§pop().§#X§(param2));
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           this.§>;§(param1);
                           loop4:
                           while(true)
                           {
                              if(!(_loc6_ && param2))
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
                                       loop7:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             loop9:
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
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(b2Settings.b2_aabbExtension);
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           §§push(b2Settings.b2_aabbMultiplier);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(param3.y);
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 if(!(_loc7_ || param3))
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 §§push(0);
                                                                                 if(_loc6_ && this)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 §§push(§§pop() > §§pop());
                                                                                 if(!(_loc7_ || param2))
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc7_ || param3)
                                                                                    {
                                                                                       addr256:
                                                                                       if(_loc7_ || param2)
                                                                                       {
                                                                                          §§push(param3.y);
                                                                                          if(_loc7_ || this)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr283:
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             addr286:
                                                                                             §§push(-§§pop());
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                continue loop10;
                                                                                             }
                                                                                             §§push(§§pop());
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param3.x);
                                                                                             if(_loc7_ || this)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                continue loop12;
                                                                                             }
                                                                                             continue loop10;
                                                                                          }
                                                                                          addr324:
                                                                                       }
                                                                                    }
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc7_ || this)
                                                                                          {
                                                                                             addr302:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          _loc5_ = §§pop();
                                                                                          while(!(_loc6_ && param1))
                                                                                          {
                                                                                             §§push(param1.aabb);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().§]S§);
                                                                                                addr174:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param2.§]S§);
                                                                                                   addr176:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      if(!(_loc6_ && param1))
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                         }
                                                                                                         addr195:
                                                                                                      }
                                                                                                      addr196:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         addr197:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.aabb);
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             loop25:
                                                                                             while(_loc7_ || param3)
                                                                                             {
                                                                                                §§push(param1.aabb);
                                                                                                loop26:
                                                                                                for(; !_loc6_; loop31:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.aabb);
                                                                                                   if(_loc6_ && param2)
                                                                                                   {
                                                                                                      continue loop26;
                                                                                                   }
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   §§push(§§pop().§-!o§);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§push(param2.§-!o§);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(_loc7_ || this)
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr122);
                                                                                                            }
                                                                                                         }
                                                                                                         if(_loc6_ && param3)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§pop().y = §§pop();
                                                                                                         while(!(_loc6_ && this))
                                                                                                         {
                                                                                                            this.§&I§(param1);
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                               continue loop31;
                                                                                                            }
                                                                                                         }
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      §§goto(addr118);
                                                                                                      §§goto(addr122);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr116);
                                                                                                   }
                                                                                                },§§goto(addr123))
                                                                                                {
                                                                                                   §§push(§§pop().§-!o§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param2.§-!o§);
                                                                                                      addr118:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            addr122:
                                                                                                            §§push(_loc4_);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            addr122:
                                                                                                         }
                                                                                                         addr123:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr173);
                                                                                                if(!(_loc7_ || param3))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!(_loc6_ && this))
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         break loop4;
                                                                                                      }
                                                                                                      if(!(_loc6_ && param2))
                                                                                                      {
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§goto(addr197);
                                                                                             }
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                                 §§push(param3.y);
                                                                                 if(_loc7_ || param2)
                                                                                 {
                                                                                    §§goto(addr283);
                                                                                 }
                                                                              }
                                                                              §§goto(addr286);
                                                                           }
                                                                           §§goto(addr256);
                                                                        }
                                                                        §§goto(addr302);
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr324);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr373);
                        }
                     }
                  }
               }
            }
         }
         addr373:
         false;
         return §§pop();
      }
      
      public function §]!§(param1:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(_loc7_ || param1)
         {
            if(this.§<!O§ == null)
            {
               if(!(_loc8_ && _loc3_))
               {
                  §§goto(addr40);
               }
            }
            var _loc2_:int = 0;
            while(_loc2_ < param1)
            {
               _loc3_ = this.§<!O§;
               if(!_loc8_)
               {
                  §§push(0);
                  if(_loc7_ || param1)
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
                              if(_loc3_.§ !s§() != false)
                              {
                                 if(_loc7_ || this)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§push(this.§7!!§);
                                 while(true)
                                 {
                                    §§push(§§pop() >> _loc4_);
                                    if(_loc7_ || param1)
                                    {
                                       addr90:
                                       §§push(§§pop() & 1);
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc8_)
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
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push(uint(§§pop() + 1 & 31));
                                             }
                                             _loc4_ = §§pop();
                                          }
                                          continue loop1;
                                       }
                                       addr90:
                                    }
                                    §§goto(addr90);
                                 }
                                 addr69:
                              }
                           }
                           var _loc5_:*;
                           var _loc6_:* = (_loc5_ = this).§7!!§ + 1;
                           if(_loc7_ || _loc3_)
                           {
                              _loc5_.§7!!§ = _loc6_;
                           }
                           if(_loc7_ || _loc3_)
                           {
                              this.§>;§(_loc3_);
                              loop7:
                              while(true)
                              {
                                 addr173:
                                 while(true)
                                 {
                                    this.§&I§(_loc3_);
                                    addr177:
                                    while(true)
                                    {
                                       _loc2_++;
                                       if(!_loc7_)
                                       {
                                          continue;
                                       }
                                       if(_loc8_)
                                       {
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                              addr181:
                           }
                           while(false)
                           {
                              §§goto(addr173);
                              §§goto(addr177);
                           }
                           continue;
                        }
                        §§goto(addr177);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr90);
               }
               §§goto(addr181);
            }
            return;
         }
         addr40:
      }
      
      public function §<!q§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§1o§;
      }
      
      public function §&!]§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(!(_loc11_ && param1))
         {
            if(this.§<!O§ == null)
            {
               if(!_loc11_)
               {
                  §§goto(addr34);
               }
            }
            var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
            var _loc4_:int = 0;
            var _loc7_:*;
            _loc3_[_loc7_ = _loc4_++] = this.§<!O§;
            while(true)
            {
               if(_loc4_ <= 0)
               {
                  return;
               }
               §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§'V§(param2));
               if(!_loc11_)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(!_loc10_)
                  {
                     continue;
                  }
                  §§push(_loc5_.§ !s§());
                  if(_loc10_)
                  {
                     if(§§pop())
                     {
                        if(_loc10_)
                        {
                           §§push(Boolean(param1(_loc5_)));
                           if(!_loc11_)
                           {
                              addr99:
                              if(!(_loc6_ = §§pop()))
                              {
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                              }
                           }
                           §§goto(addr99);
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
               §§goto(addr99);
            }
            return;
         }
         addr34:
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
         if(!(_loc22_ && param2))
         {
            if(this.§<!O§ == null)
            {
               if(!(_loc22_ && this))
               {
                  §§goto(addr59);
               }
            }
            _loc3_ = param2.p1;
            var _loc4_:b2Vec2 = param2.p2;
            var _loc5_:b2Vec2;
            (_loc5_ = b2Math.§>G§(_loc3_,_loc4_)).Normalize();
            var _loc6_:b2Vec2 = b2Math.§#J§(1,_loc5_);
            var _loc7_:b2Vec2 = b2Math.§&!l§(_loc6_);
            §§push(param2.§%!I§);
            if(_loc23_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            _loc9_ = new b2AABB();
            if(!(_loc22_ && param1))
            {
               §§push(_loc3_.x);
               loop0:
               while(true)
               {
                  §§push(_loc8_);
                  if(_loc23_ || param2)
                  {
                     §§push(_loc4_.x);
                     if(!_loc22_)
                     {
                        §§push(_loc3_.x);
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           addr211:
                           §§push(_loc3_.y);
                           if(!(_loc23_ || this))
                           {
                              continue;
                           }
                           addr221:
                           §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                           if(!(_loc22_ && param1))
                           {
                              if(_loc23_ || _loc3_)
                              {
                                 continue loop0;
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr274:
                                 while(true)
                                 {
                                    _loc10_ = §§pop();
                                    addr275:
                                    addr272:
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc3_.y);
                                       if(_loc23_)
                                       {
                                          §§push(_loc8_);
                                          if(!_loc22_)
                                          {
                                             if(!(_loc22_ && this))
                                             {
                                                §§push(_loc4_.y);
                                                if(!_loc22_)
                                                {
                                                   if(_loc23_)
                                                   {
                                                      §§goto(addr211);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         break loop6;
                                                      }
                                                      addr271:
                                                   }
                                                }
                                                §§goto(addr221);
                                             }
                                             break;
                                          }
                                          §§goto(addr221);
                                       }
                                    }
                                    while(true)
                                    {
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                           if(!(_loc22_ && this))
                           {
                              _loc11_ = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(_loc9_.§]S§);
                                 while(true)
                                 {
                                    §§pop().x = Math.min(_loc3_.x,_loc10_);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(_loc9_.§]S§);
                                       if(_loc22_ && param1)
                                       {
                                          break;
                                       }
                                       §§pop().y = Math.min(_loc3_.y,_loc11_);
                                       loop10:
                                       while(true)
                                       {
                                          addr151:
                                          while(true)
                                          {
                                             §§push(_loc9_.§-!o§);
                                             loop12:
                                             while(true)
                                             {
                                                §§pop().x = Math.max(_loc3_.x,_loc10_);
                                                loop13:
                                                while(_loc23_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc9_.§-!o§);
                                                      if(_loc23_ || param1)
                                                      {
                                                         §§pop().y = Math.max(_loc3_.y,_loc11_);
                                                         if(!(_loc22_ && _loc3_))
                                                         {
                                                            if(!_loc22_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            continue loop10;
                                                         }
                                                         continue loop13;
                                                      }
                                                      continue loop12;
                                                   }
                                                   var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
                                                   var _loc13_:int = 0;
                                                   var _loc19_:*;
                                                   _loc12_[_loc19_ = _loc13_++] = this.§<!O§;
                                                   while(_loc13_ > 0)
                                                   {
                                                      §§push((_loc14_ = _loc12_[--_loc13_]).aabb);
                                                      if(_loc23_ || _loc3_)
                                                      {
                                                         if(§§pop().§'V§(_loc9_) == false)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc14_.aabb);
                                                      }
                                                      _loc15_ = §§pop().§,§();
                                                      _loc16_ = _loc14_.aabb.§ ,§();
                                                      if(!(_loc22_ && _loc3_))
                                                      {
                                                         §§push(Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x);
                                                         if(_loc23_ || param2)
                                                         {
                                                            §§push(_loc7_.y);
                                                            if(_loc23_)
                                                            {
                                                               §§push(§§pop() * _loc16_.y);
                                                               if(_loc23_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!(_loc22_ && this))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc23_ || param2)
                                                                     {
                                                                     }
                                                                     addr407:
                                                                     addr408:
                                                                     if(§§pop() > 0)
                                                                     {
                                                                        if(!_loc22_)
                                                                        {
                                                                           addr411:
                                                                           continue;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        if(!_loc14_.§ !s§())
                                                                        {
                                                                           var _loc20_:*;
                                                                           _loc12_[_loc20_ = _loc13_++] = _loc14_.child1;
                                                                           if(_loc23_)
                                                                           {
                                                                              var _loc21_:*;
                                                                              _loc12_[_loc21_ = _loc13_++] = _loc14_.child2;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        if(_loc22_ && param2)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                                                                     if(_loc23_)
                                                                     {
                                                                        _loc18_.p2 = param2.p2;
                                                                        while(true)
                                                                        {
                                                                           _loc18_.§%!I§ = param2.§%!I§;
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(param1(_loc18_,_loc14_)));
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                          loop22:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_.x);
                                                                                             if(!(_loc22_ && _loc3_))
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             loop27:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc10_ = §§pop();
                                                                                                loop28:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_.y);
                                                                                                   if(!(_loc22_ && this))
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(!(_loc22_ && param1))
                                                                                                      {
                                                                                                         if(!(_loc22_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc22_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            §§push(_loc4_.y);
                                                                                                            if(!(_loc22_ && param2))
                                                                                                            {
                                                                                                               addr563:
                                                                                                               §§push(_loc3_.y);
                                                                                                               if(!(_loc22_ && param1))
                                                                                                               {
                                                                                                                  addr573:
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     addr576:
                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                     if(_loc23_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           continue loop27;
                                                                                                                        }
                                                                                                                        addr586:
                                                                                                                        if(_loc23_ || param2)
                                                                                                                        {
                                                                                                                           addr594:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc22_)
                                                                                                                           {
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           _loc11_ = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc9_.§]S§);
                                                                                                                              loop30:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().x = Math.min(_loc3_.x,_loc10_);
                                                                                                                                 addr507:
                                                                                                                                 while(!(_loc22_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(!(_loc22_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       continue loop30;
                                                                                                                                    }
                                                                                                                                    continue loop22;
                                                                                                                                 }
                                                                                                                                 continue loop28;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop27;
                                                                                                                              §§goto(addr586);
                                                                                                                           }
                                                                                                                           addr634:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr594);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     §§goto(addr563);
                                                                                                                  }
                                                                                                                  addr629:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  break loop28;
                                                                                                               }
                                                                                                               addr630:
                                                                                                            }
                                                                                                            §§goto(addr573);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr576);
                                                                                                   }
                                                                                                   §§goto(addr594);
                                                                                                }
                                                                                                addr631:
                                                                                                while(!_loc22_)
                                                                                                {
                                                                                                   §§goto(addr634);
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(_loc23_ || param2)
                                                                           {
                                                                              return;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr460);
                                                                  }
                                                                  §§push(§§pop());
                                                                  if(_loc23_)
                                                                  {
                                                                     addr406:
                                                                     _loc17_ = §§pop();
                                                                     §§goto(addr407);
                                                                  }
                                                               }
                                                               §§goto(addr408);
                                                            }
                                                            §§goto(addr406);
                                                         }
                                                         §§goto(addr407);
                                                      }
                                                      §§goto(addr411);
                                                   }
                                                   return;
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr274);
                        }
                     }
                     §§goto(addr271);
                  }
                  §§goto(addr272);
               }
            }
            §§goto(addr162);
         }
         addr59:
      }
      
      private function §6d§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2DynamicTreeNode = null;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§50§);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  return new b2DynamicTreeNode();
               }
               addr32:
               §§push(this.§50§);
            }
            _loc1_ = §§pop();
            if(_loc3_)
            {
               this.§50§ = _loc1_.parent;
            }
            do
            {
               _loc1_.parent = null;
               do
               {
                  _loc1_.child1 = null;
               }
               while(!(_loc3_ || this));
               
            }
            while(!_loc3_);
            
            _loc1_.child2 = null;
            return _loc1_;
         }
         §§goto(addr32);
      }
      
      private function §2#§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            param1.parent = this.§50§;
            do
            {
               this.§50§ = param1;
            }
            while(!_loc2_);
            
         }
      }
      
      private function §&I§(param1:b2DynamicTreeNode) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(!_loc12_)
         {
            var _loc10_:*;
            §§push((_loc10_ = this).§!G§);
            if(_loc13_)
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(_loc13_)
            {
               _loc10_.§!G§ = _loc11_;
            }
            if(_loc13_)
            {
               §§push(this.§<!O§);
               loop1:
               while(true)
               {
                  §§push(null);
                  loop2:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc12_)
                        {
                           while(true)
                           {
                              this.§<!O§ = param1;
                           }
                           addr91:
                        }
                        while(true)
                        {
                           addr65:
                           addr95:
                           while(true)
                           {
                              §§push(this.§<!O§);
                              if(!(_loc12_ && _loc3_))
                              {
                                 §§push(null);
                                 if(_loc13_ || _loc2_)
                                 {
                                    §§pop().parent = §§pop();
                                    return;
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           addr95:
                           var _loc2_:b2Vec2 = param1.aabb.§,§();
                           var _loc3_:b2DynamicTreeNode = this.§<!O§;
                           §§push(_loc12_);
                           if(_loc12_)
                           {
                              addr107:
                              §§pop();
                              §§push(Boolean(param1));
                              break loop2;
                           }
                           break loop2;
                        }
                     }
                     else
                     {
                        §§goto(addr95);
                     }
                     §§goto(addr107);
                  }
                  if(!§§pop())
                  {
                     if(_loc3_.§ !s§() == false)
                     {
                        addr115:
                        do
                        {
                           _loc6_ = _loc3_.child1;
                           _loc7_ = _loc3_.child2;
                           if(_loc13_ || param1)
                           {
                              §§push(Number(Math.abs((_loc6_.aabb.§]S§.x + _loc6_.aabb.§-!o§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§]S§.y + _loc6_.aabb.§-!o§.y) / 2 - _loc2_.y)));
                              if(_loc13_ || _loc2_)
                              {
                                 _loc8_ = §§pop();
                                 if(!_loc12_)
                                 {
                                    §§push(Number(Math.abs((_loc7_.aabb.§]S§.x + _loc7_.aabb.§-!o§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§]S§.y + _loc7_.aabb.§-!o§.y) / 2 - _loc2_.y)));
                                    if(!_loc12_)
                                    {
                                       addr212:
                                       _loc9_ = §§pop();
                                       addr233:
                                       if(!(_loc12_ && _loc2_))
                                       {
                                          addr220:
                                          §§push(_loc8_);
                                       }
                                       _loc3_ = _loc6_;
                                       if(_loc12_ && _loc2_)
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
                                 §§goto(addr233);
                              }
                              §§goto(addr212);
                           }
                           §§goto(addr220);
                        }
                        while(_loc3_.§ !s§() == false);
                        
                     }
                     var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                     var _loc5_:b2DynamicTreeNode;
                     (_loc5_ = this.§6d§()).parent = _loc4_;
                     if(!(_loc12_ && param1))
                     {
                        _loc5_.§1o§ = null;
                        if(!(_loc12_ && param1))
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
                                    §§pop().§"!#§(§§pop(),§§pop());
                                    addr410:
                                    loop6:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          if(!_loc12_)
                                          {
                                             if(_loc3_.parent.child1 == _loc3_)
                                             {
                                                if(!(_loc12_ && _loc3_))
                                                {
                                                   addr398:
                                                   _loc4_.child1 = _loc5_;
                                                   loop12:
                                                   while(true)
                                                   {
                                                      addr358:
                                                      addr465:
                                                      loop7:
                                                      while(true)
                                                      {
                                                         _loc5_.child1 = _loc3_;
                                                         if(_loc12_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc13_ || param1)
                                                         {
                                                            _loc5_.child2 = param1;
                                                            while(!(_loc12_ && _loc2_))
                                                            {
                                                               _loc3_.parent = _loc5_;
                                                               loop9:
                                                               for(; _loc13_ || _loc3_; if(_loc12_ && param1)
                                                               {
                                                                  continue;
                                                               },§§goto(addr431))
                                                               {
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     param1.parent = _loc5_;
                                                                     if(!_loc13_)
                                                                     {
                                                                        break loop7;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.aabb);
                                                                        if(!(_loc12_ && _loc2_))
                                                                        {
                                                                           §§push(_loc5_.aabb);
                                                                           if(_loc13_)
                                                                           {
                                                                              if(_loc12_ && this)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              if(§§pop().§#X§(§§pop()))
                                                                              {
                                                                                 if(!(_loc12_ && _loc2_))
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 addr477:
                                                                                 this.§<!O§ = _loc5_;
                                                                                 if(_loc13_ || this)
                                                                                 {
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       param1.parent = _loc5_;
                                                                                       addr482:
                                                                                    }
                                                                                    break loop7;
                                                                                 }
                                                                                 addr477:
                                                                                 if(_loc13_ || this)
                                                                                 {
                                                                                    §§goto(addr477);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr312:
                                                                                 §§push(_loc4_.aabb);
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 addr317:
                                                                                 §§push(_loc4_.child1.aabb);
                                                                                 §§push(_loc4_.child2.aabb);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§pop().§"!#§(§§pop(),§§pop());
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    _loc5_ = _loc4_;
                                                                                    if(!(_loc4_ = _loc4_.parent))
                                                                                    {
                                                                                       addr439:
                                                                                       return;
                                                                                       addr431:
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              _loc3_.parent = _loc5_;
                                                                              §§goto(addr482);
                                                                           }
                                                                           §§goto(addr317);
                                                                        }
                                                                        §§goto(addr312);
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop12;
                                                      }
                                                      addr465:
                                                      §§goto(addr439);
                                                   }
                                                }
                                                §§goto(addr465);
                                             }
                                             else
                                             {
                                                _loc4_.child2 = _loc5_;
                                                if(_loc13_)
                                                {
                                                   §§goto(addr358);
                                                }
                                             }
                                             §§goto(addr486);
                                          }
                                          §§goto(addr398);
                                       }
                                       else
                                       {
                                          _loc5_.child1 = _loc3_;
                                          if(_loc13_)
                                          {
                                             _loc5_.child2 = param1;
                                             §§goto(addr486);
                                          }
                                       }
                                       §§goto(addr477);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr465);
                     }
                     §§goto(addr410);
                  }
                  §§goto(addr115);
               }
            }
            §§goto(addr91);
         }
         else if(false)
         {
            §§goto(addr65);
         }
         §§goto(addr95);
      }
      
      private function §>;§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(!(_loc7_ && param1))
         {
            if(param1 == this.§<!O§)
            {
               if(!(_loc7_ && _loc3_))
               {
                  this.§<!O§ = null;
                  if(_loc6_)
                  {
                     return;
                  }
               }
            }
         }
         var _loc2_:b2DynamicTreeNode = param1.parent;
         var _loc3_:b2DynamicTreeNode = _loc2_.parent;
         if(!_loc7_)
         {
            §§push(_loc2_.child1);
            if(_loc6_)
            {
               if(§§pop() == param1)
               {
                  addr62:
                  _loc4_ = _loc2_.child2;
                  if(_loc6_ || param1)
                  {
                     §§goto(addr78);
                  }
                  §§goto(addr108);
               }
               else
               {
                  addr76:
                  _loc4_ = _loc2_.child1;
               }
               addr78:
               if(_loc3_)
               {
                  if(!(_loc7_ && param1))
                  {
                     if(_loc3_.child1 == _loc2_)
                     {
                        if(!_loc7_)
                        {
                           addr103:
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
                           §§goto(addr128);
                        }
                        while(true)
                        {
                           this.§2#§(_loc2_);
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
                              if(_loc6_)
                              {
                                 break;
                              }
                              addr194:
                              _loc4_.parent = null;
                              if(!(_loc7_ && this))
                              {
                                 this.§2#§(_loc2_);
                              }
                              §§goto(addr207);
                           }
                           else
                           {
                              _loc5_ = _loc3_.aabb;
                              if(_loc6_ || _loc2_)
                              {
                                 _loc3_.aabb = b2AABB.§"!#§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                                 if(_loc6_ || _loc2_)
                                 {
                                    addr159:
                                    if(!_loc5_.§#X§(_loc3_.aabb))
                                    {
                                       continue;
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr159);
                           }
                        }
                        §§goto(addr207);
                     }
                     else
                     {
                        _loc3_.child2 = _loc4_;
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr103);
               }
               else
               {
                  this.§<!O§ = _loc4_;
                  if(!(_loc7_ && this))
                  {
                     §§goto(addr194);
                  }
               }
               addr207:
               return;
            }
            §§goto(addr76);
         }
         §§goto(addr62);
      }
   }
}
