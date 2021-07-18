package §@!"§
{
   import §!§.b2AABB;
   import §%8§.§@-§;
   import §%8§.§[_§;
   import §0"!§.b2Body;
   import §0"!§.b2Fixture;
   import §0"!§.b2World;
   import §3!J§.Sprite;
   import §@!E§.b2Vec2;
   import §@V§.§&z§;
   
   public class §#!v§
   {
       
      
      protected var §^d§:b2World;
      
      private var §&%§:Sprite;
      
      private var §]3§:Sprite;
      
      private var §<L§:Number = 0.0;
      
      protected var §," §:b2Fixture;
      
      protected var §<!@§:b2Body;
      
      protected var §93§:§@-§;
      
      protected var §,! §:Boolean = false;
      
      protected var §>N§:int = -1;
      
      protected var § do§:Number;
      
      public function §#!v§(param1:Sprite, param2:b2World, param3:§@-§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§&%§ = param1;
               addr85:
               while(!_loc4_)
               {
                  this.§^d§ = param2;
               }
            }
         }
         loop2:
         while(true)
         {
            this.§93§ = param3;
            while(true)
            {
               if(this.§93§)
               {
                  continue;
               }
               param1.z = 0;
               if(!_loc5_)
               {
                  break;
               }
               if(!_loc4_)
               {
                  §§goto(addr20);
               }
               continue loop2;
            }
            if(!_loc4_)
            {
               break;
            }
            §§goto(addr85);
         }
         addr20:
      }
      
      public function get sprite() : Sprite
      {
         return this.§&%§;
      }
      
      public function get §]![§() : Sprite
      {
         return this.§]3§;
      }
      
      public function get levelItem() : §@-§
      {
         return this.§93§;
      }
      
      public function get §#!4§() : Boolean
      {
         return this.§,! §;
      }
      
      public function get §#e§() : Number
      {
         return this.§<L§;
      }
      
      public function set §-" §(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ do§ = param1;
         }
      }
      
      public function §3h§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§>N§);
            if(_loc3_)
            {
               if(§§pop() == GravityFilterCategory.LEIA_FORCE_OBJECT)
               {
                  if(!(_loc2_ && this))
                  {
                     return this.§ do§;
                  }
                  addr61:
                  §§push(1);
               }
               §§goto(addr61);
            }
            return §§pop();
         }
         §§goto(addr61);
      }
      
      public function get shape() : §[_§
      {
         return this.§93§.shape;
      }
      
      public function §^"6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§]3§)
            {
               if(_loc2_)
               {
                  this.§]3§ = new Sprite();
               }
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§,! § = true;
            loop0:
            while(true)
            {
               §§push(this.§^d§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc1_ && this))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr183:
                           loop19:
                           while(true)
                           {
                              §§push(Boolean(this.§<!@§));
                              if(_loc1_)
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       if(_loc1_ && _loc1_)
                                       {
                                          continue loop19;
                                       }
                                       §§push(this.§^d§);
                                       if(_loc1_)
                                       {
                                          continue loop1;
                                       }
                                       §§pop().§@W§(this.§<!@§);
                                       while(true)
                                       {
                                          addr125:
                                          loop6:
                                          while(_loc2_ || _loc1_)
                                          {
                                             §§push(this.§&%§);
                                             while(true)
                                             {
                                                §§pop().dispose();
                                                loop16:
                                                while(true)
                                                {
                                                   this.§&%§ = null;
                                                   loop17:
                                                   while(true)
                                                   {
                                                      addr80:
                                                      while(true)
                                                      {
                                                         §§push(this.§]3§);
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  this.§^d§ = null;
                                                                  while(true)
                                                                  {
                                                                     if(_loc1_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     this.§<!@§ = null;
                                                                     do
                                                                     {
                                                                        this.§," § = null;
                                                                     }
                                                                     while(!_loc2_);
                                                                     
                                                                     if(!(_loc2_ || _loc1_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc1_ && this)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     if(_loc2_)
                                                                     {
                                                                        addr46:
                                                                        if(!(_loc1_ && _loc2_))
                                                                        {
                                                                           if(_loc2_ || _loc2_)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              continue loop16;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        addr101:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§]3§);
                                                                           addr103:
                                                                           while(true)
                                                                           {
                                                                              §§pop().dispose();
                                                                           }
                                                                           §§goto(addr46);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop16;
                                                            }
                                                            §§goto(addr101);
                                                         }
                                                         §§goto(addr103);
                                                         continue loop17;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop19;
                                 }
                                 while(true)
                                 {
                                    §§push(this.§&%§);
                                    if(_loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr125);
                                       }
                                       §§goto(addr80);
                                    }
                                    §§goto(addr134);
                                    §§goto(addr158);
                                 }
                                 continue loop19;
                              }
                           }
                        }
                        addr182:
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr182);
               }
            }
         }
         §§goto(addr183);
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function §!!I§() : b2Body
      {
         return this.§<!@§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2AABB = this.§," §.§5=§();
         if(_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(_loc3_.§&1§);
               addr195:
               while(true)
               {
                  §§push(§§pop().x);
                  addr196:
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
                                 addr200:
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr159:
                                    while(true)
                                    {
                                       §§push(_loc3_.§3!E§);
                                       addr161:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr162:
                                          while(_loc4_ || _loc3_)
                                          {
                                             §§push(§§pop() <= §§pop());
                                             while(!(_loc5_ && _loc3_))
                                             {
                                             }
                                             continue loop3;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                              addr199:
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              loop12:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop17:
                                    while(true)
                                    {
                                       loop18:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          if(_loc4_)
                                          {
                                             if(§§pop())
                                             {
                                                loop19:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr154:
                                                   addr181:
                                                   while(!_loc5_)
                                                   {
                                                      §§push(param2);
                                                      if(_loc5_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         §§push(_loc3_.§3!E§);
                                                         if(_loc4_ || this)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§pop() <= §§pop());
                                                               continue loop19;
                                                            }
                                                            addr138:
                                                            while(_loc4_ || param1)
                                                            {
                                                               §§push(§§pop() >= §§pop());
                                                               continue loop17;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr161);
                                                         }
                                                         §§goto(addr162);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr159);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             §§goto(addr63);
                                          }
                                          continue loop4;
                                          while(true)
                                          {
                                             if(!(_loc4_ || this))
                                             {
                                                continue loop18;
                                             }
                                             if(_loc4_ || param2)
                                             {
                                                break;
                                             }
                                             §§goto(addr199);
                                          }
                                          return §§pop();
                                       }
                                       continue loop12;
                                    }
                                 }
                                 §§goto(addr180);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function applyGravity() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§!!I§());
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§pop();
                        addr58:
                        §§push(this.§!!I§().IsAwake());
                        if(_loc2_)
                        {
                           addr61:
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
               §§goto(addr61);
            }
         }
         §§goto(addr58);
      }
      
      public function get §<v§() : int
      {
         return this.§>N§;
      }
      
      public function set §<v§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§>N§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§>N§ = param1;
                  loop1:
                  while(true)
                  {
                     §§push(this.§<!@§);
                     loop2:
                     for(; §§pop(); §§push(this.§<!@§),if(!(_loc2_ || param1))
                     {
                        continue;
                     },§§pop().SetAwake(true),if(!_loc3_)
                     {
                        if(_loc3_ && _loc3_)
                        {
                           §§goto(addr73);
                        }
                        §§goto(addr61);
                     },§§goto(addr75))
                     {
                        while(true)
                        {
                           this.updateGravityFilter();
                           addr75:
                           while(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                        if(_loc2_ || this)
                        {
                           break;
                        }
                     }
                     return;
                  }
               }
            }
         }
      }
      
      protected function updateGravityFilter() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§>N§);
         if(_loc3_ || this)
         {
            var _loc1_:* = §§pop();
            if(!(_loc2_ && _loc3_))
            {
               §§push(-1);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(_loc1_);
                  if(!_loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc3_)
                        {
                           addr119:
                           §§push(0);
                           if(!_loc2_)
                           {
                              addr157:
                              switch(§§pop())
                              {
                                 case 0:
                                 case 1:
                                    §§push(this.§<!@§);
                                    while(true)
                                    {
                                       §§push(§&z§.§22§);
                                       loop1:
                                       while(true)
                                       {
                                          §§pop().SetLinearDamping(§§pop());
                                          loop2:
                                          while(true)
                                          {
                                             §§push(this.§<!@§);
                                             while(true)
                                             {
                                                §§push(§&z§.§#!R§);
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                §§pop().SetAngularDamping(§§pop());
                                                if(!_loc2_)
                                                {
                                                   continue;
                                                }
                                                continue loop2;
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                    break;
                                 default:
                                    throw new Error("No implementation exists for gravity filter mask \'" + this.§>N§ + "\'.");
                              }
                              addr157:
                           }
                        }
                        else
                        {
                           addr134:
                           §§push(1);
                           if(_loc2_ && _loc2_)
                           {
                           }
                        }
                        §§goto(addr157);
                     }
                     else
                     {
                        §§push(GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT);
                        if(_loc3_ || this)
                        {
                           addr133:
                           if(§§pop() === _loc1_)
                           {
                              §§goto(addr134);
                           }
                           else
                           {
                              §§goto(addr157);
                              §§push(2);
                           }
                           §§goto(addr157);
                        }
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr133);
               }
               §§goto(addr157);
            }
            §§goto(addr119);
         }
         §§goto(addr157);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(this.§!!I§());
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
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§!!I§());
                                       loop8:
                                       while(true)
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
                                                   if(_loc6_ || param2)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop22:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop12:
                                                               while(_loc6_ || param2)
                                                               {
                                                                  §§pop();
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§!!I§());
                                                                     loop14:
                                                                     for(; _loc6_; while(true)
                                                                     {
                                                                        §§push(this.§!!I§());
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        §§goto(addr27);
                                                                     })
                                                                     {
                                                                        §§push(§§pop().GetPosition());
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           addr102:
                                                                           addr27:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1);
                                                                              addr103:
                                                                              while(!(_loc5_ && param1))
                                                                              {
                                                                                 §§push(§§pop() >= §§pop());
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           §§push(§§pop().GetPosition());
                                                                           if(_loc5_ && param1)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           if(_loc5_ && param2)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           §§push(§§pop().y);
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(_loc5_ && this)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              if(!(_loc6_ || param2))
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              §§push(param2);
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 if(_loc5_ && param2)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(§§pop() <= §§pop());
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr112:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             continue loop22;
                                                                                          }
                                                                                          if(_loc5_ && this)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(_loc6_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(!(_loc5_ && param1))
                                                                                                   {
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                }
                                                                                                continue loop13;
                                                                                             }
                                                                                             continue loop12;
                                                                                             addr123:
                                                                                          }
                                                                                       }
                                                                                       continue loop22;
                                                                                       addr112:
                                                                                    }
                                                                                    return §§pop();
                                                                                 }
                                                                                 §§goto(addr123);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr103);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr102);
                                                                           }
                                                                           §§goto(addr103);
                                                                        }
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               continue loop4;
                                                               addr155:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr112);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr155);
                                                }
                                                continue loop6;
                                             }
                                          }
                                       }
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
         §§goto(addr135);
      }
      
      public function get §-"-§() : Number
      {
         return this.§<!@§.GetPosition().x;
      }
      
      public function get §;!1§() : Number
      {
         return this.§<!@§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§`!m§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§<L§);
            if(!(_loc3_ && param2))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§<L§ = §§pop();
         }
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function §9!2§(param1:§+!z§) : void
      {
      }
      
      public function §6n§(param1:§+!z§) : void
      {
      }
      
      public function §8"0§(param1:§#!v§ = null) : void
      {
      }
      
      public function §#$§(param1:§#!v§ = null) : void
      {
      }
      
      public function collidedWith(param1:§#!v§) : void
      {
      }
      
      public function collisionEnded(param1:§#!v§) : void
      {
      }
   }
}
