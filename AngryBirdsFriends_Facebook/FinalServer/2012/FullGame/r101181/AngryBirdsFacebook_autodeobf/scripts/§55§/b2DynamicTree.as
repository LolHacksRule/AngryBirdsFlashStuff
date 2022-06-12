package §55§
{
   import §#]§.*;
   import §4!!§.*;
   
   public class b2DynamicTree
   {
       
      
      private var §+!6§:b2DynamicTreeNode;
      
      private var §<9§:b2DynamicTreeNode;
      
      private var §7!b§:uint;
      
      private var §7!t§:int;
      
      public function b2DynamicTree()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               this.§+!6§ = null;
               loop1:
               for(; !(_loc2_ && _loc1_); if(!(_loc1_ || this))
               {
                  continue;
               },§§goto(addr68))
               {
                  this.§<9§ = null;
                  while(true)
                  {
                     this.§7!b§ = 0;
                     while(!(_loc2_ && _loc2_))
                     {
                        continue loop1;
                        this.§7!t§ = 0;
                        if(_loc1_)
                        {
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §'X§(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc3_ = this.§2!M§();
         if(!_loc7_)
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
                  addr209:
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
                     if(!_loc6_)
                     {
                        continue loop1;
                     }
                     _loc5_ = §§pop();
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§push(_loc3_.aabb);
            loop4:
            while(true)
            {
               §§push(§§pop().§!8§);
               loop5:
               while(true)
               {
                  §§push(param1.§!8§);
                  loop6:
                  while(true)
                  {
                     §§push(§§pop().x);
                     loop7:
                     while(true)
                     {
                        §§push(_loc4_);
                        loop8:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           loop9:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              loop10:
                              while(true)
                              {
                                 §§push(_loc3_.aabb);
                                 while(_loc6_)
                                 {
                                    §§push(§§pop().§!8§);
                                    if(!(_loc6_ || this))
                                    {
                                       continue loop5;
                                    }
                                    §§push(param1.§!8§);
                                    if(!(_loc6_ || param2))
                                    {
                                       continue loop6;
                                    }
                                    §§push(§§pop().y);
                                    if(!_loc7_)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop7;
                                       }
                                       §§push(_loc5_);
                                       if(_loc7_)
                                       {
                                          continue loop8;
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    if(!_loc6_)
                                    {
                                       continue loop9;
                                    }
                                    §§pop().y = §§pop();
                                    loop12:
                                    while(true)
                                    {
                                       §§push(_loc3_.aabb);
                                       loop13:
                                       while(true)
                                       {
                                          §§push(§§pop().§,f§);
                                          addr121:
                                          while(true)
                                          {
                                             §§push(param1.§,f§);
                                             addr123:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr124:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   addr125:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr126:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         addr127:
                                                         while(true)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc7_ && param2)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop13;
                                                            }
                                                            continue loop12;
                                                         }
                                                         continue loop10;
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
                                    §§push(§§pop().§,f§);
                                    if(_loc6_)
                                    {
                                       §§push(param1.§,f§);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop().y);
                                          if(!(_loc7_ && this))
                                          {
                                             if(_loc6_)
                                             {
                                                if(_loc6_ || param2)
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc6_)
                                                   {
                                                      addr115:
                                                      §§pop().y = §§pop() + §§pop();
                                                      loop20:
                                                      while(true)
                                                      {
                                                         _loc3_.§6"&§ = param2;
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop20;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc6_ || param1)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr209);
                                                         }
                                                         §§goto(addr127);
                                                      }
                                                   }
                                                   §§goto(addr125);
                                                }
                                                §§goto(addr124);
                                             }
                                             §§goto(addr126);
                                          }
                                          §§goto(addr115);
                                       }
                                       §§goto(addr123);
                                    }
                                    §§goto(addr121);
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
            if(!(_loc7_ && param1))
            {
               return _loc3_;
            }
         }
      }
      
      public function §,K§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§91§(param1);
            do
            {
               this.§`!o§(param1);
            }
            while(_loc3_);
            
         }
      }
      
      public function §"!,§(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc6_)
         {
            b2Settings.b2Assert(param1.§+F§());
         }
         loop0:
         while(true)
         {
            §§push(param1.aabb);
            loop1:
            while(true)
            {
               §§push(§§pop().§ Z§(param2));
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        §§push(false);
                        break;
                     }
                     continue loop0;
                  }
                  addr341:
                  while(true)
                  {
                     this.§91§(param1);
                     loop4:
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
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(b2Settings.b2_aabbExtension);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(b2Settings.b2_aabbMultiplier);
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        §§push(param3.y);
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           §§push(0);
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           §§push(§§pop() > §§pop());
                                                                           if(_loc7_ && param2)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr248:
                                                                                 if(_loc7_ && param1)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 §§push(param3.y);
                                                                                 if(!(_loc7_ && param3))
                                                                                 {
                                                                                    addr264:
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr270:
                                                                                    if(_loc7_ && this)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    addr280:
                                                                                    §§push(-§§pop());
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc7_ && param3))
                                                                              {
                                                                                 addr290:
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                              addr300:
                                                                              if(_loc7_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              _loc5_ = §§pop();
                                                                              while(_loc6_)
                                                                              {
                                                                                 §§push(param1.aabb);
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§!8§);
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param2.§!8§);
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!(_loc7_ && param2))
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                addr166:
                                                                                                §§push(_loc5_);
                                                                                                if(_loc7_ && param2)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                addr185:
                                                                                                §§pop().y = §§pop() - §§pop();
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.aabb);
                                                                                                   addr115:
                                                                                                   loop26:
                                                                                                   for(; _loc6_ || param3; §§push(param1.aabb),if(_loc7_ && param1)
                                                                                                   {
                                                                                                      continue;
                                                                                                   },§§goto(addr61))
                                                                                                   {
                                                                                                      §§push(§§pop().§,f§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param2.§,f§);
                                                                                                         addr125:
                                                                                                         addr61:
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
                                                                                                                     while(_loc6_ || param2)
                                                                                                                     {
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(§§pop().§,f§);
                                                                                                         if(_loc7_ && param1)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(param2.§,f§);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§push(_loc5_);
                                                                                                               if(!(_loc7_ && param3))
                                                                                                               {
                                                                                                                  addr85:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc7_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc6_ || param3)
                                                                                                                     {
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 addr104:
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(!(_loc7_ && param3))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                     §§goto(addr126);
                                                                                                                     §§goto(addr129);
                                                                                                                  }
                                                                                                                  §§goto(addr128);
                                                                                                               }
                                                                                                               §§goto(addr127);
                                                                                                            }
                                                                                                            §§goto(addr85);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr125);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      §§push(§§pop().§!8§);
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      §§push(param2.§!8§);
                                                                                                      if(_loc7_ && param1)
                                                                                                      {
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!(_loc7_ && param2))
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr166);
                                                                                                      }
                                                                                                      §§goto(addr185);
                                                                                                      §§goto(addr115);
                                                                                                   }
                                                                                                   addr203:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      §§goto(addr204);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr203);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    §§push(true);
                                                                                    if(_loc6_ || param1)
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    break loop1;
                                                                                 }
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           §§push(param3.y);
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§goto(addr270);
                                                                           }
                                                                           §§goto(addr280);
                                                                        }
                                                                        §§goto(addr264);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(param3.x);
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              continue loop12;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        addr316:
                                                                     }
                                                                  }
                                                                  §§goto(addr248);
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                            continue loop14;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr316);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               break;
            }
            return §§pop();
         }
      }
      
      public function §]!N§(param1:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:* = uint(0);
         if(_loc7_)
         {
            if(this.§+!6§ == null)
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
            _loc3_ = this.§+!6§;
            if(!(_loc8_ && _loc2_))
            {
               §§push(0);
               if(!_loc8_)
               {
                  §§push(uint(§§pop()));
                  if(_loc7_)
                  {
                     _loc4_ = §§pop();
                     if(!(_loc8_ && _loc2_))
                     {
                        addr60:
                        loop8:
                        while(true)
                        {
                           if(_loc3_.§+F§() != false)
                           {
                              addr112:
                              if(_loc7_ || param1)
                              {
                                 addr119:
                                 var _loc5_:*;
                                 var _loc6_:* = (_loc5_ = this).§7!b§ + 1;
                                 if(_loc7_ || _loc2_)
                                 {
                                    _loc5_.§7!b§ = _loc6_;
                                 }
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    this.§91§(_loc3_);
                                 }
                              }
                              loop5:
                              while(true)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    this.§2!,§(_loc3_);
                                    addr170:
                                    addr177:
                                    while(!(_loc7_ || this))
                                    {
                                       continue loop5;
                                    }
                                    while(true)
                                    {
                                       _loc2_++;
                                       if(_loc7_ || this)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr170);
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           else
                           {
                              §§push(this.§7!b§);
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
                                       if(!_loc8_)
                                       {
                                          §§push(_loc3_.child2);
                                       }
                                       else
                                       {
                                          §§goto(addr119);
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc3_.child1);
                                    }
                                    _loc3_ = §§pop();
                                    if(_loc7_)
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          §§push(uint(§§pop() + 1 & 31));
                                       }
                                       _loc4_ = §§pop();
                                    }
                                    continue loop8;
                                 }
                                 continue loop8;
                              }
                              §§goto(addr112);
                              addr64:
                           }
                           §§goto(addr119);
                        }
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr64);
               }
               §§goto(addr68);
            }
            §§goto(addr60);
         }
      }
      
      public function §-Z§(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.§6"&§;
      }
      
      public function §const§(param1:Function, param2:b2AABB) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:* = false;
         if(_loc10_ || param1)
         {
            if(this.§+!6§ == null)
            {
               if(!(_loc11_ && _loc3_))
               {
                  §§goto(addr39);
               }
            }
            var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
            var _loc4_:int = 0;
            var _loc7_:*;
            _loc3_[_loc7_ = _loc4_++] = this.§+!6§;
            while(true)
            {
               if(_loc4_ <= 0)
               {
                  return;
               }
               §§push((_loc5_ = _loc3_[--_loc4_]).aabb.§3§(param2));
               if(!(_loc11_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!_loc11_)
                     {
                        §§push(_loc5_.§+F§());
                        if(!(_loc11_ && this))
                        {
                           if(!§§pop())
                           {
                              var _loc8_:*;
                              _loc3_[_loc8_ = _loc4_++] = _loc5_.child1;
                              if(_loc10_ || param2)
                              {
                                 var _loc9_:*;
                                 _loc3_[_loc9_ = _loc4_++] = _loc5_.child2;
                              }
                              continue;
                           }
                           if(_loc11_)
                           {
                              continue;
                           }
                           §§push(Boolean(param1(_loc5_)));
                           if(!(_loc11_ && this))
                           {
                              addr117:
                              §§push(_loc6_ = §§pop());
                           }
                        }
                        if(!§§pop())
                        {
                           if(_loc10_)
                           {
                              break;
                           }
                        }
                     }
                  }
                  continue;
               }
               §§goto(addr117);
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
         var _loc17_:* = NaN;
         var _loc18_:b2RayCastInput = null;
         if(!(_loc22_ && param2))
         {
            if(this.§+!6§ == null)
            {
               if(!(_loc22_ && this))
               {
                  return;
               }
            }
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2;
         (_loc5_ = b2Math.§0!1§(_loc3_,_loc4_)).Normalize();
         var _loc6_:b2Vec2 = b2Math.§#!'§(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math.§?!d§(_loc6_);
         §§push(param2.§,!§);
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
               addr261:
               while(true)
               {
                  §§push(_loc4_.x);
                  addr263:
                  while(true)
                  {
                     §§push(_loc3_.x);
                     addr265:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr266:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr267:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    _loc10_ = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       §§push(_loc3_.y);
                                       if(_loc23_ || this)
                                       {
                                          if(_loc23_ || param2)
                                          {
                                             continue loop0;
                                          }
                                          continue loop7;
                                       }
                                       addr253:
                                       §§push(Number(§§pop()));
                                       if(_loc22_)
                                       {
                                          break;
                                       }
                                       _loc11_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc9_.§!8§);
                                          while(true)
                                          {
                                             §§pop().x = Math.min(_loc3_.x,_loc10_);
                                             addr174:
                                             loop11:
                                             while(true)
                                             {
                                                §§push(_loc9_.§!8§);
                                                if(_loc22_)
                                                {
                                                   break;
                                                }
                                                §§pop().y = Math.min(_loc3_.y,_loc11_);
                                                loop12:
                                                while(true)
                                                {
                                                   addr129:
                                                   while(true)
                                                   {
                                                      §§push(_loc9_.§,f§);
                                                      addr132:
                                                      while(true)
                                                      {
                                                         §§pop().x = Math.max(_loc3_.x,_loc10_);
                                                         continue loop12;
                                                      }
                                                   }
                                                   continue loop11;
                                                }
                                             }
                                          }
                                          if(!(_loc23_ || param2))
                                          {
                                             continue;
                                          }
                                          §§push(_loc9_.§,f§);
                                          if(_loc23_ || param1)
                                          {
                                             §§pop().y = Math.max(_loc3_.y,_loc11_);
                                             if(_loc23_ || this)
                                             {
                                                if(_loc23_)
                                                {
                                                   if(_loc23_)
                                                   {
                                                      while(false)
                                                      {
                                                         §§goto(addr129);
                                                      }
                                                      var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
                                                      var _loc13_:int = 0;
                                                      var _loc19_:*;
                                                      _loc12_[_loc19_ = _loc13_++] = this.§+!6§;
                                                      loop17:
                                                      while(_loc13_ > 0)
                                                      {
                                                         §§push((_loc14_ = _loc12_[--_loc13_]).aabb);
                                                         if(!_loc22_)
                                                         {
                                                            if(§§pop().§3§(_loc9_) == false)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(_loc14_.aabb);
                                                         }
                                                         _loc15_ = §§pop().§2"F§();
                                                         _loc16_ = _loc14_.aabb.§#w§();
                                                         if(!_loc22_)
                                                         {
                                                            §§push(Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x);
                                                            if(!(_loc22_ && param1))
                                                            {
                                                               §§push(_loc7_.y);
                                                               if(_loc23_ || param2)
                                                               {
                                                                  §§push(§§pop() * _loc16_.y);
                                                                  if(!_loc22_)
                                                                  {
                                                                     addr377:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc22_ && param2))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc23_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc22_)
                                                                           {
                                                                              addr396:
                                                                              _loc17_ = §§pop();
                                                                              addr397:
                                                                              §§push(0);
                                                                           }
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              if(_loc23_ || _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr412:
                                                                              (_loc18_ = new b2RayCastInput()).p1 = param2.p1;
                                                                              if(_loc23_ || param1)
                                                                              {
                                                                                 _loc18_.p2 = param2.p2;
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc18_.§,!§ = param2.§,!§;
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(param1(_loc18_,_loc14_)));
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                loop23:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() == §§pop())
                                                                                                   {
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr623:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_.x);
                                                                                                      loop26:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         loop27:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_.x);
                                                                                                            if(_loc23_ || param1)
                                                                                                            {
                                                                                                               §§push(_loc3_.x);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  addr531:
                                                                                                                  §§push(_loc3_.y);
                                                                                                                  if(_loc22_ && _loc3_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  addr541:
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     addr544:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc22_)
                                                                                                                     {
                                                                                                                        if(_loc22_)
                                                                                                                        {
                                                                                                                           continue loop27;
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc22_ && this))
                                                                                                                        {
                                                                                                                           addr556:
                                                                                                                           if(_loc23_ || param1)
                                                                                                                           {
                                                                                                                              if(!_loc22_)
                                                                                                                              {
                                                                                                                                 addr566:
                                                                                                                                 _loc11_ = Number(§§pop());
                                                                                                                                 loop34:
                                                                                                                                 for(; !(_loc22_ && this); loop37:
                                                                                                                                 for(; _loc23_ || param1; if(_loc22_ && param2)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 },if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    continue loop18;
                                                                                                                                 },if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr457);
                                                                                                                                 },§§goto(addr635))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_.§,f§);
                                                                                                                                       loop39:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().x = Math.max(_loc3_.x,_loc10_);
                                                                                                                                          loop40:
                                                                                                                                          while(_loc23_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_.§,f§);
                                                                                                                                                if(!(_loc22_ && this))
                                                                                                                                                {
                                                                                                                                                   §§pop().y = Math.max(_loc3_.y,_loc11_);
                                                                                                                                                   if(!_loc22_)
                                                                                                                                                   {
                                                                                                                                                      continue loop37;
                                                                                                                                                   }
                                                                                                                                                   continue loop40;
                                                                                                                                                }
                                                                                                                                                continue loop39;
                                                                                                                                             }
                                                                                                                                             continue loop17;
                                                                                                                                          }
                                                                                                                                          §§goto(addr497);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 })
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_.§!8§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().x = Math.min(_loc3_.x,_loc10_);
                                                                                                                                       addr497:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc9_.§!8§);
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§pop().y = Math.min(_loc3_.y,_loc11_);
                                                                                                                                          continue loop34;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_.y);
                                                                                                                                       if(!_loc22_)
                                                                                                                                       {
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          if(!(_loc22_ && param1))
                                                                                                                                          {
                                                                                                                                             if(!(_loc23_ || _loc3_))
                                                                                                                                             {
                                                                                                                                                continue loop23;
                                                                                                                                             }
                                                                                                                                             if(!_loc23_)
                                                                                                                                             {
                                                                                                                                                continue loop21;
                                                                                                                                             }
                                                                                                                                             §§push(_loc4_.y);
                                                                                                                                             if(!(_loc22_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§goto(addr531);
                                                                                                                                             }
                                                                                                                                             §§goto(addr541);
                                                                                                                                          }
                                                                                                                                          §§goto(addr544);
                                                                                                                                       }
                                                                                                                                       §§goto(addr566);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr623);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr567:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    addr592:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr604:
                                                                                                                                 addr591:
                                                                                                                              }
                                                                                                                              while(_loc23_ || this)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                           while(!_loc22_)
                                                                                                                           {
                                                                                                                              _loc10_ = §§pop();
                                                                                                                              §§goto(addr604);
                                                                                                                              §§goto(addr556);
                                                                                                                           }
                                                                                                                           continue loop20;
                                                                                                                        }
                                                                                                                        §§goto(addr566);
                                                                                                                     }
                                                                                                                     §§goto(addr592);
                                                                                                                  }
                                                                                                                  §§goto(addr591);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr566);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   return;
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr468);
                                                                           }
                                                                           else
                                                                           {
                                                                              if(!_loc14_.§+F§())
                                                                              {
                                                                                 var _loc20_:*;
                                                                                 _loc12_[_loc20_ = _loc13_++] = _loc14_.child1;
                                                                                 if(_loc23_ || param2)
                                                                                 {
                                                                                    var _loc21_:*;
                                                                                    _loc12_[_loc21_ = _loc13_++] = _loc14_.child2;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              if(!_loc23_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr412);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr397);
                                                                  }
                                                                  §§goto(addr396);
                                                               }
                                                               §§goto(addr377);
                                                            }
                                                            §§goto(addr396);
                                                         }
                                                         §§goto(addr412);
                                                      }
                                                      return;
                                                      addr127:
                                                   }
                                                   continue loop8;
                                                }
                                                §§goto(addr174);
                                             }
                                             §§goto(addr138);
                                          }
                                          §§goto(addr132);
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
         §§goto(addr127);
      }
      
      private function §2!M§() : b2DynamicTreeNode
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2DynamicTreeNode = null;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§<9§);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  return new b2DynamicTreeNode();
               }
               addr32:
               §§push(this.§<9§);
            }
            _loc1_ = §§pop();
            if(!(_loc2_ && this))
            {
               this.§<9§ = _loc1_.parent;
               while(true)
               {
                  _loc1_.parent = null;
                  _loc1_.child1 = null;
                  §§goto(addr96);
               }
            }
            addr96:
            while(true)
            {
               _loc1_.child2 = null;
               if(!(_loc2_ && _loc3_))
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return _loc1_;
         }
         §§goto(addr32);
      }
      
      private function §`!o§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.parent = this.§<9§;
         }
         do
         {
            this.§<9§ = param1;
         }
         while(_loc3_ && param1);
         
      }
      
      private function §2!,§(param1:b2DynamicTreeNode) : void
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
            §§push((_loc10_ = this).§7!t§);
            if(_loc13_)
            {
               §§push(§§pop() + 1);
            }
            var _loc11_:* = §§pop();
            if(_loc13_ || _loc2_)
            {
               _loc10_.§7!t§ = _loc11_;
            }
            if(_loc13_)
            {
               §§push(this.§+!6§);
               loop9:
               while(true)
               {
                  §§push(null);
                  loop10:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        this.§+!6§ = param1;
                        while(true)
                        {
                           §§push(this.§+!6§);
                           if(_loc13_ || param1)
                           {
                              §§push(null);
                              if(!_loc12_)
                              {
                                 §§pop().parent = §§pop();
                                 if(!_loc12_)
                                 {
                                    return;
                                 }
                                 continue;
                              }
                              continue loop10;
                           }
                           continue loop9;
                        }
                        addr90:
                        var _loc2_:b2Vec2 = param1.aabb.§2"F§();
                        var _loc3_:b2DynamicTreeNode = this.§+!6§;
                        if(_loc13_)
                        {
                           addr101:
                           if(_loc3_.§+F§() == false)
                           {
                              break;
                           }
                           var _loc4_:b2DynamicTreeNode = _loc3_.parent;
                           var _loc5_:b2DynamicTreeNode;
                           (_loc5_ = this.§2!M§()).parent = _loc4_;
                           if(!_loc12_)
                           {
                              _loc5_.§6"&§ = null;
                              loop1:
                              while(true)
                              {
                                 §§push(_loc5_.aabb);
                                 while(true)
                                 {
                                    §§push(param1.aabb);
                                    addr419:
                                    addr287:
                                    while(true)
                                    {
                                       §§push(_loc3_.aabb);
                                       addr421:
                                       while(true)
                                       {
                                          §§pop().§[!-§(§§pop(),§§pop());
                                          loop5:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!_loc12_)
                                                {
                                                   if(_loc3_.parent.child1 != _loc3_)
                                                   {
                                                      _loc4_.child2 = _loc5_;
                                                      if(_loc13_ || _loc3_)
                                                      {
                                                         loop6:
                                                         while(true)
                                                         {
                                                            _loc5_.child1 = _loc3_;
                                                            if(!(_loc12_ && _loc2_))
                                                            {
                                                               _loc5_.child2 = param1;
                                                               if(_loc13_ || _loc3_)
                                                               {
                                                                  if(_loc12_ && param1)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  _loc3_.parent = _loc5_;
                                                                  if(_loc13_ || this)
                                                                  {
                                                                     if(!(_loc12_ && _loc2_))
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     addr403:
                                                                     while(true)
                                                                     {
                                                                        _loc4_.child1 = _loc5_;
                                                                        if(_loc12_ && _loc2_)
                                                                        {
                                                                           break loop6;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                                  _loc3_.parent = _loc5_;
                                                                  if(_loc13_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr491:
                                                                  §§goto(addr491);
                                                               }
                                                               break loop5;
                                                            }
                                                            break;
                                                         }
                                                         param1.parent = _loc5_;
                                                         addr473:
                                                         if(_loc13_ || _loc2_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr485);
                                                         addr487:
                                                      }
                                                      addr449:
                                                      return;
                                                      addr468:
                                                   }
                                                   §§goto(addr403);
                                                }
                                                break;
                                             }
                                             _loc5_.child1 = _loc3_;
                                             if(_loc13_ || param1)
                                             {
                                                _loc5_.child2 = param1;
                                                §§goto(addr485);
                                             }
                                             break;
                                             §§goto(addr485);
                                          }
                                          this.§+!6§ = _loc5_;
                                          if(_loc12_)
                                          {
                                             §§goto(addr473);
                                          }
                                       }
                                    }
                                    addr287:
                                    if(!(_loc13_ || param1))
                                    {
                                       continue;
                                    }
                                    addr297:
                                    §§push(_loc4_.child1.aabb);
                                    §§push(_loc4_.child2.aabb);
                                    if(!(_loc12_ && _loc2_))
                                    {
                                       §§pop().§[!-§(§§pop(),§§pop());
                                       if(_loc13_ || _loc3_)
                                       {
                                          addr315:
                                          if(false)
                                          {
                                             addr317:
                                             param1.parent = _loc5_;
                                             addr321:
                                             §§push(_loc4_.aabb);
                                             if(!(_loc12_ && _loc2_))
                                             {
                                                §§push(_loc5_.aabb);
                                                if(_loc13_ || param1)
                                                {
                                                   if(_loc13_)
                                                   {
                                                      if(§§pop().§ Z§(§§pop()))
                                                      {
                                                         if(!(_loc12_ && _loc2_))
                                                         {
                                                            if(_loc12_ && _loc3_)
                                                            {
                                                               §§goto(addr321);
                                                            }
                                                            addr436:
                                                            §§goto(addr449);
                                                         }
                                                         §§goto(addr315);
                                                      }
                                                      §§goto(addr287);
                                                      §§push(_loc4_.aabb);
                                                   }
                                                   §§goto(addr419);
                                                }
                                                §§goto(addr297);
                                             }
                                             §§goto(addr287);
                                          }
                                          _loc5_ = _loc4_;
                                          if(_loc4_ = _loc4_.parent)
                                          {
                                             §§goto(addr321);
                                          }
                                          §§goto(addr436);
                                       }
                                       §§goto(addr487);
                                    }
                                    §§goto(addr421);
                                 }
                              }
                           }
                           §§goto(addr468);
                        }
                        break;
                        addr89:
                     }
                     §§goto(addr90);
                     §§goto(addr101);
                  }
                  do
                  {
                     _loc6_ = _loc3_.child1;
                     _loc7_ = _loc3_.child2;
                     if(_loc13_ || param1)
                     {
                        §§push(Number(Math.abs((_loc6_.aabb.§!8§.x + _loc6_.aabb.§,f§.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.§!8§.y + _loc6_.aabb.§,f§.y) / 2 - _loc2_.y)));
                        if(!_loc12_)
                        {
                           _loc8_ = §§pop();
                           if(_loc13_)
                           {
                              §§push(Number(Math.abs((_loc7_.aabb.§!8§.x + _loc7_.aabb.§,f§.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.§!8§.y + _loc7_.aabb.§,f§.y) / 2 - _loc2_.y)));
                              if(_loc13_)
                              {
                                 _loc9_ = §§pop();
                                 if(!(_loc12_ && this))
                                 {
                                    addr206:
                                    if(_loc8_ >= _loc9_)
                                    {
                                       _loc3_ = _loc7_;
                                       continue;
                                    }
                                 }
                              }
                              §§goto(addr206);
                           }
                           _loc3_ = _loc6_;
                           if(_loc12_)
                           {
                              break;
                           }
                           continue;
                        }
                     }
                     §§goto(addr206);
                  }
                  while(_loc3_.§+F§() == false);
                  
                  §§goto(addr101);
               }
               addr51:
            }
            §§goto(addr89);
         }
         §§goto(addr51);
      }
      
      private function §91§(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(_loc6_)
         {
            if(param1 == this.§+!6§)
            {
               if(!(_loc7_ && _loc3_))
               {
                  this.§+!6§ = null;
                  if(_loc6_)
                  {
                     return;
                  }
               }
            }
         }
         var _loc2_:b2DynamicTreeNode = param1.parent;
         var _loc3_:b2DynamicTreeNode = _loc2_.parent;
         if(_loc6_ || this)
         {
            §§push(_loc2_.child1);
            if(_loc6_)
            {
               if(§§pop() == param1)
               {
                  addr62:
                  _loc4_ = _loc2_.child2;
                  if(!(_loc7_ && _loc3_))
                  {
                     §§goto(addr78);
                  }
                  §§goto(addr133);
               }
               else
               {
                  addr76:
                  _loc4_ = _loc2_.child1;
               }
               addr78:
               if(_loc3_)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     if(_loc3_.child1 == _loc2_)
                     {
                        if(_loc6_)
                        {
                           _loc3_.child1 = _loc4_;
                           if(_loc6_)
                           {
                              while(true)
                              {
                                 _loc4_.parent = _loc3_;
                              }
                              addr124:
                           }
                        }
                        while(true)
                        {
                           this.§`!o§(_loc2_);
                           if(_loc7_ && _loc2_)
                           {
                              continue;
                           }
                           if(!_loc7_)
                           {
                              if(true)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              addr133:
                              while(true)
                              {
                              }
                              addr133:
                           }
                           §§goto(addr124);
                        }
                        while(true)
                        {
                           if(_loc3_)
                           {
                              _loc5_ = _loc3_.aabb;
                              if(!_loc7_)
                              {
                                 _loc3_.aabb = b2AABB.§[!-§(_loc3_.child1.aabb,_loc3_.child2.aabb);
                                 if(!_loc7_)
                                 {
                                    if(!_loc5_.§ Z§(_loc3_.aabb))
                                    {
                                       continue;
                                    }
                                 }
                              }
                              break;
                           }
                           if(_loc6_ || _loc3_)
                           {
                              break;
                           }
                           addr189:
                           _loc4_.parent = null;
                           if(_loc6_ || _loc2_)
                           {
                              this.§`!o§(_loc2_);
                           }
                        }
                     }
                     else
                     {
                        _loc3_.child2 = _loc4_;
                        §§goto(addr133);
                     }
                  }
                  §§goto(addr133);
               }
               else
               {
                  this.§+!6§ = _loc4_;
                  if(_loc6_)
                  {
                     §§goto(addr189);
                  }
               }
               return;
            }
            §§goto(addr76);
         }
         §§goto(addr62);
      }
   }
}
