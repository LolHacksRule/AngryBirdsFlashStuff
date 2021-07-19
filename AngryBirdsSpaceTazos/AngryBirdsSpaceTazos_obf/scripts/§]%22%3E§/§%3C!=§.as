package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2Body;
   import §'!&§.b2Fixture;
   import §'!&§.b2World;
   import §3c§.b2AABB;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   
   public class §<!=§
   {
       
      
      protected var mWorld:b2World;
      
      private var §]!$§:Sprite;
      
      protected var § ]§:b2Fixture;
      
      protected var §'"F§:b2Body;
      
      protected var §7!h§:§8X§;
      
      public function §<!=§(param1:Sprite, param2:b2World, param3:§8X§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super();
         }
         while(true)
         {
            this.§]!$§ = param1;
            loop1:
            do
            {
               this.mWorld = param2;
               loop2:
               while(true)
               {
                  this.§7!h§ = param3;
                  do
                  {
                     if(this.§7!h§)
                     {
                        continue loop2;
                     }
                     param1.z = 0;
                     if(!(_loc4_ && param3))
                     {
                        if(_loc5_)
                        {
                           §§goto(addr25);
                        }
                        continue loop2;
                     }
                  }
                  while(_loc4_);
                  
                  continue loop1;
               }
            }
            while(!_loc5_);
            
            addr25:
            return;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!$§;
      }
      
      public function get levelItem() : §8X§
      {
         return this.§7!h§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     addr153:
                     while(true)
                     {
                        §§pop();
                        loop11:
                        while(true)
                        {
                           addr110:
                           §§push(Boolean(this.§'"F§));
                           if(!_loc2_)
                           {
                              break;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.§]!$§);
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(this.§]!$§);
                                             addr101:
                                             while(true)
                                             {
                                                §§pop().dispose();
                                                addr102:
                                                while(true)
                                                {
                                                   if(_loc1_ && _loc1_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   this.§]!$§ = null;
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                §§goto(addr110);
                                             }
                                          }
                                          addr99:
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          this.mWorld = null;
                                          loop5:
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                if(_loc2_ || _loc1_)
                                                {
                                                   this.§'"F§ = null;
                                                   while(true)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr99);
                                             §§goto(addr102);
                                          }
                                          addr130:
                                          while(true)
                                          {
                                             continue loop2;
                                          }
                                       }
                                       continue loop11;
                                    }
                                    §§goto(addr101);
                                 }
                              }
                              continue loop0;
                              return;
                              continue loop11;
                           }
                        }
                     }
                     addr153:
                  }
                  §§goto(addr116);
               }
               §§goto(addr153);
            }
            addr133:
         }
         while(true)
         {
            §§push(this.mWorld);
            if(!(_loc1_ && _loc1_))
            {
               §§pop().§3a§(this.§'"F§);
               §§goto(addr130);
            }
            else
            {
               §§goto(addr133);
            }
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function §^!z§() : b2Body
      {
         return this.§'"F§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2AABB = this.§ ]§.§2!!§();
         if(!(_loc4_ && this))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(_loc3_.§<!@§);
               loop1:
               while(true)
               {
                  §§push(§§pop().x);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() >= §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr201:
                                 loop17:
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr170:
                                    while(true)
                                    {
                                       §§push(_loc3_.§2!1§);
                                       addr172:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr173:
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() <= §§pop());
                                                while(_loc5_)
                                                {
                                                }
                                                continue loop17;
                                                addr176:
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              loop7:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          §§push(param2);
                                          loop10:
                                          for(; !(_loc4_ && param1); while(true)
                                          {
                                             §§push(param2);
                                             if(_loc5_ || this)
                                             {
                                                §§push(_loc3_.§2!1§);
                                                if(_loc5_ || param2)
                                                {
                                                   §§goto(addr69);
                                                }
                                                break;
                                             }
                                             continue loop10;
                                          },§§goto(addr172))
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(_loc3_.§<!@§);
                                             if(_loc4_ && param1)
                                             {
                                                continue loop1;
                                             }
                                             §§push(§§pop().y);
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() >= §§pop());
                                                   if(_loc5_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc5_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(_loc4_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!(_loc5_ || param1))
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        return this.§ ]§.TestPoint(new b2Vec2(param1,param2));
                                                                     }
                                                                     else
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           addr30:
                                                                           §§push(false);
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              addr39:
                                                                              if(!(_loc4_ && param2))
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    return §§pop();
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              addr78:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc4_ && param2))
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 addr164:
                                                                                 addr164:
                                                                                 while(!_loc4_)
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop8;
                                                                                 §§goto(addr39);
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr201);
                                                                        }
                                                                     }
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr30);
                                                               }
                                                            }
                                                            §§goto(addr164);
                                                         }
                                                         continue loop4;
                                                         addr152:
                                                      }
                                                      §§goto(addr176);
                                                   }
                                                   §§goto(addr164);
                                                }
                                                §§push(§§pop().y);
                                                addr69:
                                                break;
                                                if(!(_loc5_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr78);
                                                §§push(§§pop() <= §§pop());
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr170);
                                       }
                                    }
                                 }
                                 §§goto(addr152);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr201);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            §§push(this.§^!z§());
            loop0:
            while(true)
            {
               §§push(§§pop().GetPosition());
               loop1:
               while(true)
               {
                  §§push(§§pop().x);
                  loop2:
                  while(true)
                  {
                     §§push(param3);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() >= §§pop());
                        loop4:
                        while(true)
                        {
                           §§push(§§pop());
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop12:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       while(_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                if(_loc6_ || param3)
                                                {
                                                   §§pop();
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(this.§^!z§());
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().GetPosition());
                                                         addr85:
                                                         addr146:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().y);
                                                            addr86:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               addr87:
                                                               addr162:
                                                               while(_loc6_ || param3)
                                                               {
                                                                  §§push(§§pop() >= §§pop());
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  continue loop16;
                                                               }
                                                               while(_loc6_ || this)
                                                               {
                                                                  §§push(§§pop() <= §§pop());
                                                                  continue loop12;
                                                                  §§goto(addr87);
                                                               }
                                                               continue loop3;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§^!z§());
                                                            if(!(_loc6_ || param1))
                                                            {
                                                               continue loop17;
                                                            }
                                                            if(_loc5_ && param1)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§push(§§pop().GetPosition());
                                                            if(!_loc5_)
                                                            {
                                                               addr45:
                                                               if(_loc6_ || param3)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§push(§§pop().y);
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        §§push(param2);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(§§pop() <= §§pop());
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 §§goto(addr77);
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        §§goto(addr87);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(!_loc5_)
                                                                        {
                                                                           §§push(param4);
                                                                        }
                                                                        continue loop2;
                                                                        addr159:
                                                                     }
                                                                     §§goto(addr162);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr86);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr45);
                                                                  }
                                                                  addr158:
                                                               }
                                                               §§goto(addr159);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr85);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                   }
                                                   addr202:
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§^!z§());
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc6_ || param3))
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                §§goto(addr131);
                                             }
                                             addr77:
                                             return §§pop();
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              §§goto(addr202);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      public function get §=!J§() : Number
      {
         return this.§'"F§.GetPosition().x;
      }
      
      public function get §;!U§() : Number
      {
         return this.§'"F§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§;U§) : void
      {
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function enteredSensor(param1:§3=§) : void
      {
      }
      
      public function leftSensor(param1:§3=§) : void
      {
      }
      
      public function attachedJointRemoved(param1:§<!=§ = null) : void
      {
      }
      
      public function attachedJointCreated(param1:§<!=§ = null) : void
      {
      }
      
      public function §4!`§(param1:§<!=§) : void
      {
      }
   }
}
