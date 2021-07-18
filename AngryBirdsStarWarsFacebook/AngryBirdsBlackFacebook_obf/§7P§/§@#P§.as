package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §="2§.§?!r§;
   import §^#>§.§0"x§;
   
   public class §@#P§ extends §?"N§
   {
       
      
      protected var §!#b§:Number = 0.07;
      
      protected var §;";§:Number = 0.0;
      
      public function §@#P§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override public function addDamageParticles(param1:§;$§, param2:int) : void
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
      
      protected function updateRotation(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(health == healthMax)
            {
               if(_loc3_ || _loc3_)
               {
                  addr67:
                  if(this.§!#b§ < §0"x§.§?#5§)
                  {
                     do
                     {
                        §§push(this);
                        §§push(this.§!#b§);
                        if(!_loc2_)
                        {
                           §§push(param1);
                           if(!_loc2_)
                           {
                              §§push(§§pop() * §0"x§.§@"#§);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().§!#b§ = §§pop();
                        loop1:
                        while(true)
                        {
                           addr29:
                           while(true)
                           {
                              §3!t§().SetAngularVelocity(param1 * this.§!#b§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                     }
                     while(_loc2_);
                     
                     addr25:
                     return;
                     addr72:
                  }
                  §§goto(addr29);
               }
               §§goto(addr72);
            }
            §§goto(addr25);
         }
         §§goto(addr67);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               this.updateRotation(param1);
               while(true)
               {
                  §§push(Boolean(§+"6§()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     addr210:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr212:
                              while(true)
                              {
                                 §§push(timeSinceCollisionMilliSeconds > §0"x§.§[e§);
                                 continue loop2;
                              }
                           }
                           addr211:
                        }
                        else
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§;";§);
                                    addr181:
                                    while(true)
                                    {
                                       §§push(§0"x§.§[# §);
                                       addr183:
                                       while(§§pop() < §§pop())
                                       {
                                          continue loop0;
                                       }
                                    }
                                    addr80:
                                    if(_loc3_ || param2)
                                    {
                                       §§goto(addr24);
                                    }
                                 }
                              }
                              addr24:
                              return;
                           }
                           addr177:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr204);
      }
      
      protected function §"#R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §?!r§.§"#_§("Mighty_Eagle_Selected_1","ChannelBird");
         }
         do
         {
            §?!r§.§"#_§("Mighty_Eagle_Flying_1","ChannelBird");
         }
         while(_loc2_ && this);
         
      }
      
      protected function addMightyEagle(param1:§;$§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§3!t§().GetPosition().x - §0"x§.§>"h§);
         if(!(_loc5_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§3!t§().GetPosition().y - §0"x§.§>"h§ * §0"x§.§8!6§ * 1.07);
         if(!(_loc5_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         §§push("BIRD_MIGHTY_EAGLE");
         §§push(_loc2_);
         §§push(_loc3_);
         §§push(§0"x§.§1! §);
         if(_loc6_ || this)
         {
            §§push(§§pop() * 1.2);
         }
         var _loc4_:§'"o§;
         (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),§§pop(),§;=§.§""3§) as §'"o§).§4d§.setScale(1.82);
         if(!_loc5_)
         {
            _loc4_.§1"w§ = id;
         }
      }
      
      override public function updateOutOfBounds(param1:§;$§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"#R§();
            do
            {
               this.addMightyEagle(param1);
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
