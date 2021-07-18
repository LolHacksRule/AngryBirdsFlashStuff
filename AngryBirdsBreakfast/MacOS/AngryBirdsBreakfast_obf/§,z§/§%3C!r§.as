package §,z§
{
   import §&v§.§9B§;
   import §&v§.§each §;
   import §3!`§.b2Body;
   import §3!`§.b2Fixture;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §@L§.§=b§;
   import §^9§.b2AABB;
   
   public class §<!r§
   {
       
      
      protected var §-#§:b2World;
      
      private var §#e§:Sprite;
      
      protected var §]!_§:b2Fixture;
      
      protected var §<H§:b2Body;
      
      protected var §%-§:§9B§;
      
      protected var §6!6§:Boolean = false;
      
      protected var §?!D§:int = -1;
      
      protected var §74§:Number;
      
      public function §<!r§(param1:Sprite, param2:b2World, param3:§9B§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§#e§ = param1;
               loop1:
               do
               {
                  this.§-#§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§%-§ = param3;
                     while(!this.§%-§)
                     {
                        param1.z = 0;
                        if(!_loc5_)
                        {
                           if(!(_loc4_ || param2))
                           {
                              break;
                           }
                           if(_loc4_ || param3)
                           {
                              if(!_loc5_)
                              {
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                     param1.z = this.§%-§.§&!9§();
                     continue loop0;
                  }
               }
               while(_loc5_ && param1);
               
            }
         }
         §§goto(addr24);
      }
      
      public function get sprite() : Sprite
      {
         return this.§#e§;
      }
      
      public function get levelItem() : §9B§
      {
         return this.§%-§;
      }
      
      public function get §8X§() : Boolean
      {
         return this.§6!6§;
      }
      
      public function set § q§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§74§ = param1;
         }
      }
      
      public function §5!y§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§?!D§);
            if(!_loc3_)
            {
               if(§§pop() == GravityFilterCategory.LEIA_FORCE_OBJECT)
               {
                  if(!(_loc3_ && param1))
                  {
                     return this.§74§;
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
      
      public function get shape() : §each §
      {
         return this.§%-§.shape;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§6!6§ = true;
            loop0:
            while(true)
            {
               §§push(this.§-#§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr146:
                           do
                           {
                              §§push(Boolean(this.§<H§));
                              if(_loc2_)
                              {
                                 continue loop3;
                              }
                           }
                           while(_loc1_);
                           
                           continue loop2;
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§push(this.§-#§);
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§pop().§-7§(this.§<H§);
                              loop7:
                              while(true)
                              {
                                 addr101:
                                 loop15:
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       if(_loc1_)
                                       {
                                          this.§#e§ = null;
                                          loop13:
                                          while(true)
                                          {
                                             if(!(_loc1_ || _loc1_))
                                             {
                                                continue loop15;
                                             }
                                             addr91:
                                             while(true)
                                             {
                                                this.§-#§ = null;
                                                addr58:
                                                while(true)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(_loc1_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr146);
                                                }
                                                continue loop13;
                                                §§goto(addr91);
                                             }
                                          }
                                          addr110:
                                          continue loop7;
                                       }
                                       continue loop6;
                                    }
                                    continue loop7;
                                 }
                              }
                           }
                           continue loop1;
                        }
                        while(true)
                        {
                           §§push(this.§#e§);
                           if(!_loc2_)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§#e§);
                                    addr100:
                                    addr46:
                                    while(true)
                                    {
                                       §§pop().dispose();
                                       §§goto(addr101);
                                    }
                                    while(!(_loc2_ && _loc1_))
                                    {
                                       this.§]!_§ = null;
                                       if(!(_loc1_ || _loc1_))
                                       {
                                          continue;
                                       }
                                       if(!_loc2_)
                                       {
                                          return;
                                          addr41:
                                       }
                                       §§goto(addr58);
                                    }
                                 }
                              }
                              §§goto(addr54);
                           }
                           §§goto(addr100);
                           §§goto(addr128);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function §^`§() : b2Body
      {
         return this.§<H§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2AABB = this.§]!_§.§#!,§();
         if(_loc5_ || this)
         {
            §§push(param1);
            while(true)
            {
               §§push(_loc3_.§?J§);
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
                                 addr211:
                                 loop18:
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr166:
                                    while(true)
                                    {
                                       §§push(_loc3_.§1^§);
                                       addr168:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr169:
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() <= §§pop());
                                                while(!_loc4_)
                                                {
                                                }
                                                continue loop18;
                                                addr172:
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
                              while(_loc5_ || this)
                              {
                                 if(§§pop())
                                 {
                                    while(!(_loc4_ && _loc3_))
                                    {
                                       §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          §§push(param2);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(_loc3_.§?J§);
                                             if(!(_loc5_ || this))
                                             {
                                                break;
                                             }
                                             §§push(§§pop().y);
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() >= §§pop());
                                                   while(true)
                                                   {
                                                      loop13:
                                                      do
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc5_ || this))
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  addr156:
                                                                  while(_loc5_ || this)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr211);
                                                               }
                                                               continue loop13;
                                                            }
                                                            addr91:
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            §§goto(addr156);
                                                            §§goto(addr41);
                                                         }
                                                      }
                                                      while(!(_loc5_ || this));
                                                      
                                                      return §§pop();
                                                   }
                                                   addr145:
                                                }
                                                §§push(§§pop().y);
                                                addr82:
                                                break;
                                                if(!(_loc5_ || param2))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr91);
                                                §§push(§§pop() <= §§pop());
                                             }
                                             §§goto(addr169);
                                          }
                                          continue loop1;
                                       }
                                       if(_loc4_ && param1)
                                       {
                                          continue;
                                       }
                                       if(!_loc4_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr172);
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr145);
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
               if(_loc4_ && param2)
               {
                  continue;
               }
               §§push(_loc3_.§1^§);
               if(_loc5_ || this)
               {
                  §§goto(addr82);
               }
               §§goto(addr168);
            }
         }
         §§goto(addr211);
      }
      
      public function applyGravity() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§^`§());
            if(_loc2_ || _loc1_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || this)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§pop();
                        addr68:
                        addr66:
                        §§push(this.§^`§().IsAwake());
                        if(!_loc2_)
                        {
                        }
                        §§goto(addr72);
                     }
                     §§push(Boolean(§§pop()));
                  }
               }
               addr72:
               return §§pop();
            }
            §§goto(addr68);
         }
         §§goto(addr66);
      }
      
      public function get §5y§() : int
      {
         return this.§?!D§;
      }
      
      public function set §5y§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§?!D§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§?!D§ = param1;
                  loop1:
                  while(true)
                  {
                     §§push(this.§<H§);
                     loop2:
                     while(§§pop())
                     {
                        if(_loc3_)
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           this.updateGravityFilter();
                        }
                        while(_loc3_)
                        {
                           continue loop2;
                           §§pop().SetAwake(true);
                           §§push(this.§<H§);
                           if(_loc2_ && param1)
                           {
                              continue loop2;
                           }
                           §§goto(addr36);
                           if(!(_loc2_ && this))
                           {
                              if(_loc3_)
                              {
                                 break loop2;
                              }
                              addr90:
                              return;
                           }
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      protected function updateGravityFilter() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§?!D§);
         if(_loc2_ || _loc3_)
         {
            var _loc1_:* = §§pop();
            if(_loc2_ || _loc1_)
            {
               §§push(-1);
               if(_loc2_ || _loc2_)
               {
                  §§push(_loc1_);
                  if(_loc2_ || _loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc2_)
                        {
                           addr138:
                           §§push(0);
                           if(!_loc3_)
                           {
                              addr141:
                           }
                           else
                           {
                              addr166:
                           }
                        }
                        else
                        {
                           addr153:
                           §§push(1);
                           if(_loc2_)
                           {
                              §§goto(addr166);
                           }
                        }
                     }
                     else
                     {
                        §§push(GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT);
                        if(_loc2_ || _loc3_)
                        {
                           addr152:
                           if(§§pop() === _loc1_)
                           {
                              §§goto(addr153);
                           }
                           else
                           {
                              §§push(2);
                           }
                        }
                     }
                     addr172:
                     switch(§§pop())
                     {
                        case 0:
                        case 1:
                           §§push(this.§<H§);
                           while(true)
                           {
                              §§push(§=b§.§!!V§);
                              loop1:
                              while(true)
                              {
                                 §§pop().SetLinearDamping(§§pop());
                                 if(_loc2_)
                                 {
                                    §§push(this.§<H§);
                                    while(true)
                                    {
                                       §§push(§=b§.§3!e§);
                                       if(_loc2_ || this)
                                       {
                                          §§pop().SetAngularDamping(§§pop());
                                          if(_loc3_ && _loc3_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr173);
                              }
                              if(_loc2_ || _loc2_)
                              {
                                 §§pop().SetGravityScale(1);
                                 if(_loc3_ && this)
                                 {
                                 }
                                 addr173:
                                 return;
                              }
                           }
                           break;
                        default:
                           throw new Error("No implementation exists for gravity filter mask \'" + this.§?!D§ + "\'.");
                     }
                  }
                  §§goto(addr152);
               }
               §§goto(addr141);
            }
            §§goto(addr138);
         }
         §§goto(addr172);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            §§push(this.§^`§());
            loop0:
            while(true)
            {
               §§push(§§pop().GetPosition());
               loop1:
               while(true)
               {
                  §§push(§§pop().x);
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
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§^`§());
                                       loop8:
                                       while(_loc6_)
                                       {
                                          §§push(§§pop().GetPosition());
                                          loop9:
                                          while(true)
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
                                                   if(_loc6_)
                                                   {
                                                      if(_loc5_ && param3)
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(_loc5_ && param3)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr158:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§^`§());
                                                                     addr92:
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().GetPosition());
                                                                        addr93:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              break loop18;
                                                                           }
                                                                           §§push(§§pop().y);
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              §§push(param1);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_ && this)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(§§pop() >= §§pop());
                                                                                 while(_loc5_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               addr157:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     §§push(this.§^`§());
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        §§push(§§pop().GetPosition());
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§goto(addr93);
                                                                     }
                                                                     §§goto(addr92);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr158);
                                                            }
                                                            addr75:
                                                            return §§pop();
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr157);
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              §§goto(addr154);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      public function get §'m§() : Number
      {
         return this.§<H§.GetPosition().x;
      }
      
      public function get §^!P§() : Number
      {
         return this.§<H§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§3!#§) : void
      {
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function §#!]§(param1:§%!f§) : void
      {
      }
      
      public function §'![§(param1:§%!f§) : void
      {
      }
      
      public function §7+§(param1:§<!r§ = null) : void
      {
      }
      
      public function §"!$§(param1:§<!r§ = null) : void
      {
      }
      
      public function collidedWith(param1:§<!r§) : void
      {
      }
      
      public function collisionEnded(param1:§<!r§) : void
      {
      }
   }
}
