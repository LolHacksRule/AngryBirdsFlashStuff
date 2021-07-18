package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2Body;
   import §+#$§.b2Fixture;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§?#^§;
   import §3"5§.b2AABB;
   import §[R§.b2Vec2;
   import §^#>§.§0"x§;
   
   public class §7B§
   {
       
      
      protected var mWorld:b2World;
      
      private var §%G§:Sprite;
      
      private var §'!#§:Number = 0.0;
      
      protected var §^!L§:b2Fixture;
      
      protected var §04§:b2Body;
      
      protected var §;B§:§"t§;
      
      protected var §!"?§:Boolean = false;
      
      protected var § 3§:int = -1;
      
      protected var §`!u§:Number;
      
      public function §7B§(param1:Sprite, param2:b2World, param3:§"t§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§%G§ = param1;
               loop1:
               while(true)
               {
                  this.mWorld = param2;
                  loop2:
                  while(true)
                  {
                     this.§;B§ = param3;
                     do
                     {
                        if(this.§;B§)
                        {
                           continue;
                        }
                        param1.z = 0;
                        if(_loc4_)
                        {
                           if(!(_loc5_ && param1))
                           {
                              continue loop0;
                           }
                           continue;
                        }
                        continue loop2;
                     }
                     while(!(_loc4_ || param2));
                     
                     continue loop1;
                  }
                  addr19:
                  return;
               }
            }
         }
         while(true)
         {
            param1.z = this.§;B§.getItemZOrder();
            §§goto(addr79);
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§%G§;
      }
      
      public function get levelItem() : §"t§
      {
         return this.§;B§;
      }
      
      public function get §9#;§() : Boolean
      {
         return this.§!"?§;
      }
      
      public function get §3! §() : Number
      {
         return this.§'!#§;
      }
      
      public function set §=5§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§`!u§ = param1;
         }
      }
      
      public function getGravityMultiplier(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§ 3§);
            if(!_loc3_)
            {
               if(§§pop() == GravityFilterCategory.LEIA_FORCE_OBJECT)
               {
                  if(!(_loc3_ && this))
                  {
                     return this.§`!u§;
                  }
                  addr55:
                  §§push(1);
               }
               §§goto(addr55);
            }
            return §§pop();
         }
         §§goto(addr55);
      }
      
      public function get shape() : §?#^§
      {
         return this.§;B§.shape;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§!"?§ = true;
            loop0:
            while(true)
            {
               §§push(this.mWorld);
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr166:
                           while(true)
                           {
                              §§push(Boolean(this.§04§));
                              if(!(_loc1_ || this))
                              {
                                 break;
                              }
                              if(!(_loc1_ || _loc2_))
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              §§push(this.§%G§);
                              if(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(_loc1_ || _loc2_)
                                    {
                                       §§push(this.§%G§);
                                       while(true)
                                       {
                                          §§pop().dispose();
                                          addr108:
                                          while(true)
                                          {
                                             this.§%G§ = null;
                                             addr89:
                                             addr91:
                                             while(!_loc1_)
                                             {
                                                continue loop9;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr166);
                                 }
                                 while(true)
                                 {
                                    this.mWorld = null;
                                    loop11:
                                    while(!(_loc2_ && this))
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop8;
                                       }
                                       this.§04§ = null;
                                       while(!_loc2_)
                                       {
                                          this.§^!L§ = null;
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr46:
                                                if(_loc1_ || _loc2_)
                                                {
                                                   break loop8;
                                                }
                                                continue loop0;
                                             }
                                             continue loop11;
                                          }
                                       }
                                       §§goto(addr108);
                                    }
                                    §§goto(addr89);
                                    §§goto(addr91);
                                 }
                              }
                              §§goto(addr107);
                           }
                        }
                        continue loop0;
                        return;
                     }
                  }
                  addr136:
                  §§push(this.mWorld);
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  §§pop().DestroyBody(this.§04§);
                  §§goto(addr148);
               }
            }
         }
         §§goto(addr108);
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function §3!t§() : b2Body
      {
         return this.§04§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2AABB = this.§^!L§.§8# §();
         if(_loc5_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(_loc3_.§1!,§);
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
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 addr201:
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr163:
                                    while(true)
                                    {
                                       §§push(_loc3_.§ D§);
                                       addr165:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr166:
                                          while(!_loc4_)
                                          {
                                             §§push(§§pop() <= §§pop());
                                             while(_loc5_)
                                             {
                                             }
                                             continue loop5;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              loop12:
                              for(; !(_loc4_ && _loc3_); while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc4_ && this)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    loop19:
                                    while(true)
                                    {
                                       §§pop();
                                       addr160:
                                       while(true)
                                       {
                                          §§push(param2);
                                          if(!_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(_loc3_.§ D§);
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§push(§§pop().y);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                   if(!_loc4_)
                                                   {
                                                      continue loop19;
                                                   }
                                                   §§goto(addr109);
                                                }
                                                else
                                                {
                                                   §§goto(addr139);
                                                }
                                             }
                                             §§goto(addr165);
                                          }
                                          else
                                          {
                                             §§goto(addr127);
                                          }
                                          continue loop19;
                                       }
                                    }
                                 }
                                 §§goto(addr74);
                              })
                              {
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 loop13:
                                 while(true)
                                 {
                                    §§pop();
                                    loop14:
                                    while(true)
                                    {
                                       §§push(param2);
                                       addr127:
                                       loop15:
                                       while(_loc5_)
                                       {
                                          §§push(_loc3_.§1!,§);
                                          if(!(_loc5_ || param2))
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop().y);
                                          while(!(_loc4_ && param2))
                                          {
                                             §§push(§§pop() >= §§pop());
                                             while(!_loc4_)
                                             {
                                                continue loop12;
                                                if(_loc4_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc5_)
                                                {
                                                   continue loop13;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(_loc4_ && param2)
                                                         {
                                                            continue loop15;
                                                         }
                                                         if(_loc4_ && param2)
                                                         {
                                                            continue loop14;
                                                         }
                                                         §§push(this.§^!L§.TestPoint(new b2Vec2(param1,param2)));
                                                      }
                                                      else
                                                      {
                                                         if(_loc4_ && _loc3_)
                                                         {
                                                            break;
                                                         }
                                                         addr30:
                                                         §§push(false);
                                                         if(_loc5_)
                                                         {
                                                            return §§pop();
                                                         }
                                                      }
                                                      while(!(_loc5_ || param2))
                                                      {
                                                         continue loop3;
                                                      }
                                                      return §§pop();
                                                      addr109:
                                                   }
                                                   §§goto(addr30);
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr169);
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr163);
                                    }
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
         §§goto(addr160);
      }
      
      public function applyGravity() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§3!t§());
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc1_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        addr58:
                        §§push(this.§3!t§().IsAwake());
                        if(!_loc1_)
                        {
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function get §=G§() : int
      {
         return this.§ 3§;
      }
      
      public function set §=G§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§ 3§ == param1)
            {
               if(!_loc3_)
               {
                  return;
               }
               while(true)
               {
               }
               addr95:
            }
            loop1:
            while(true)
            {
               this.§ 3§ = param1;
               loop2:
               while(true)
               {
                  §§push(this.§04§);
                  loop3:
                  while(§§pop())
                  {
                     if(_loc2_ || param1)
                     {
                        this.updateGravityFilter();
                     }
                     while(true)
                     {
                        §§push(this.§04§);
                        if(_loc3_ && _loc3_)
                        {
                           break;
                        }
                        §§pop().SetAwake(true);
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 break loop3;
                                 addr58:
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr58);
      }
      
      protected function updateGravityFilter() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§ 3§);
         if(!(_loc2_ && _loc3_))
         {
            var _loc1_:* = §§pop();
            if(_loc3_ || _loc1_)
            {
               §§push(-1);
               if(_loc3_ || _loc2_)
               {
                  §§push(_loc1_);
                  if(_loc3_ || _loc1_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc3_ || _loc1_)
                        {
                           §§push(0);
                           if(_loc3_ || _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr144:
                           §§push(1);
                           if(!(_loc2_ && _loc2_))
                           {
                              addr162:
                           }
                        }
                     }
                     else
                     {
                        §§push(GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT);
                        if(_loc3_ || _loc3_)
                        {
                           addr143:
                           if(§§pop() === _loc1_)
                           {
                              §§goto(addr144);
                           }
                           else
                           {
                              §§push(2);
                           }
                        }
                     }
                     addr168:
                     switch(§§pop())
                     {
                        case 0:
                        case 1:
                           §§push(this.§04§);
                           loop0:
                           while(true)
                           {
                              §§push(§0"x§.§-M§);
                              loop1:
                              while(true)
                              {
                                 §§pop().SetLinearDamping(§§pop());
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.§04§);
                                    while(true)
                                    {
                                       §§push(§0"x§.§,"H§);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       §§pop().SetAngularDamping(§§pop());
                                       §§push(this.§04§);
                                       if(_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             break loop2;
                                          }
                                          §§pop().SetGravityScale(1);
                                          if(!_loc2_)
                                          {
                                             return;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                           }
                           break;
                        default:
                           throw new Error("No implementation exists for gravity filter mask \'" + this.§ 3§ + "\'.");
                     }
                  }
                  §§goto(addr143);
               }
               §§goto(addr162);
            }
            §§goto(addr144);
         }
         §§goto(addr168);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§3!t§());
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
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    while(true)
                                    {
                                       §§push(this.§3!t§());
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop().GetPosition());
                                          loop9:
                                          while(_loc5_)
                                          {
                                             §§push(§§pop().x);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(param4);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop22:
                                                         while(true)
                                                         {
                                                            if(_loc5_ || param2)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop12:
                                                                  while(!_loc6_)
                                                                  {
                                                                     §§pop();
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§3!t§());
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().GetPosition());
                                                                           addr84:
                                                                           while(_loc5_)
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              while(!_loc6_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    while(_loc5_)
                                                                                    {
                                                                                       §§push(§§pop() >= §§pop());
                                                                                       §§push(param2);
                                                                                       if(!(_loc5_ || param2))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       addr54:
                                                                                       §§push(§§pop() <= §§pop());
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             addr96:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc5_ || param1))
                                                                                             {
                                                                                                continue loop22;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(!_loc6_)
                                                                                                {
                                                                                                   continue loop13;
                                                                                                   §§goto(addr54);
                                                                                                }
                                                                                                continue loop12;
                                                                                                addr105:
                                                                                             }
                                                                                          }
                                                                                          continue loop22;
                                                                                          return §§pop();
                                                                                       }
                                                                                       §§goto(addr105);
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(§§pop().y);
                                                                                 continue loop2;
                                                                                 if(_loc6_ && this)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr44);
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           addr117:
                                                                           continue loop9;
                                                                           addr117:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§3!t§());
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                                  addr144:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr96);
                                                                  continue loop22;
                                                               }
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                      addr134:
                                                   }
                                                   §§goto(addr144);
                                                }
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr134);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      public function get §&!d§() : Number
      {
         return this.§04§.GetPosition().x;
      }
      
      public function get §var§() : Number
      {
         return this.§04§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this);
            §§push(this.§'!#§);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§'!#§ = §§pop();
         }
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function enteredSensor(param1:§1#E§) : void
      {
      }
      
      public function leftSensor(param1:§1#E§) : void
      {
      }
      
      public function attachedJointRemoved(param1:§7B§ = null) : void
      {
      }
      
      public function attachedJointCreated(param1:§7B§ = null) : void
      {
      }
      
      public function collidedWith(param1:§7B§) : void
      {
      }
      
      public function collisionEnded(param1:§7B§) : void
      {
      }
   }
}
