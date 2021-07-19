package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §'4§.§4#§;
   import §3"#§.§<!O§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §<Y§ extends § 6§
   {
       
      
      protected var §8!&§:Number = 0.07;
      
      protected var §56§:Number = 0.0;
      
      public function §<Y§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!(_loc11_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
      }
      
      override public function addDamageParticles(param1:§;U§, param2:int) : void
      {
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function blink() : void
      {
      }
      
      override public function scream() : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      protected function §#"4§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(health == healthMax)
            {
               if(!_loc3_)
               {
                  if(this.§8!&§ < §4#§.§6!l§)
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§8!&§);
                        if(_loc2_ || param1)
                        {
                           §§push(param1);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§§pop() * §4#§.§-a§);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().§8!&§ = §§pop();
                        addr99:
                        while(true)
                        {
                        }
                        addr38:
                        if(_loc3_ && _loc3_)
                        {
                           continue;
                        }
                        addr19:
                        return;
                        addr55:
                     }
                  }
                  while(true)
                  {
                     §^!z§().SetAngularVelocity(param1 * this.§8!&§);
                     if(!(_loc2_ || param1))
                     {
                        continue;
                     }
                     §§goto(addr38);
                  }
                  §§goto(addr55);
               }
               §§goto(addr99);
            }
         }
         §§goto(addr19);
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.update(param1,param2);
            while(true)
            {
               this.§#"4§(param1);
               loop1:
               while(true)
               {
                  §§push(Boolean(§%!8§()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr213:
                              while(true)
                              {
                                 §§push(timeSinceCollisionMilliSeconds > §4#§.§"w§);
                                 addr178:
                                 while(_loc4_ || _loc3_)
                                 {
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§56§);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(§4#§.§;!6§);
                                    loop10:
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§56§);
                                             if(_loc4_ || this)
                                             {
                                                §§push(§§pop() + param1);
                                             }
                                             §§pop().§56§ = §§pop();
                                             loop12:
                                             while(true)
                                             {
                                                §§push(this.§56§);
                                                loop13:
                                                while(!(_loc3_ && this))
                                                {
                                                   §§push(param1);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(§4#§.§6@§);
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() < §§pop());
                                                            loop17:
                                                            while(_loc4_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr172:
                                                                     addr105:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§56§);
                                                                        addr85:
                                                                        while(_loc4_ || param1)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           §§push(§4#§.§6@§);
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     §§push(§§pop() >= §§pop());
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!(_loc4_ || param1))
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§56§);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    break;
                                                                                    addr96:
                                                                                 }
                                                                                 addr29:
                                                                                 §§push(§4#§.§;!6§);
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    if(_loc3_ && param2)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr74:
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             §§goto(addr20);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr129:
                                                                                          }
                                                                                          addr129:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§ ,§();
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             §§goto(addr213);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr172);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr20);
                                                                                 }
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    continue loop14;
                                                                                    §§goto(addr29);
                                                                                 }
                                                                                 continue loop16;
                                                                                 addr149:
                                                                              }
                                                                              §§goto(addr85);
                                                                           }
                                                                           §§goto(addr129);
                                                                        }
                                                                        addr127:
                                                                     }
                                                                     §§goto(addr178);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr127);
                                                               }
                                                               §§goto(addr96);
                                                            }
                                                            continue loop2;
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 if(_loc3_ && param2)
                                 {
                                    continue;
                                 }
                                 this.§9!B§(param2);
                                 §§goto(addr74);
                              }
                           }
                           addr20:
                           return;
                        }
                     }
                  }
               }
               if(_loc3_ && param1)
               {
                  continue;
               }
               §§goto(addr149);
            }
         }
         §§goto(addr129);
      }
      
      protected function § ,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<!O§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
            do
            {
               §<!O§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      protected function §9!B§(param1:§;U§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§^!z§().GetPosition().x - §4#§.§@>§);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§^!z§().GetPosition().y - §4#§.§@>§ * §4#§.§0W§ * 1.07);
         if(_loc5_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         §§push("BIRD_MIGHTY_EAGLE");
         §§push(_loc2_);
         §§push(_loc3_);
         §§push(§4#§.§9-§);
         if(_loc5_ || param1)
         {
            §§push(§§pop() * 1.2);
         }
         var _loc4_:§5"$§;
         (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),§§pop(),§-%§.§;!J§) as §5"$§).renderer.setScale(1.82);
         if(!(_loc6_ && this))
         {
            _loc4_.§<!<§ = id;
         }
      }
      
      override public function updateOutOfBounds(param1:§;U§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§ ,§();
            do
            {
               this.§9!B§(param1);
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
