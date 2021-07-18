package §]">§
{
   import §"!&§.§8X§;
   import §"!&§.§]!C§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §-"A§ extends §@"D§
   {
      
      public static const §[E§:Number = 0.15;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §[E§ = 0.15;
         }
      }
      
      protected var §2"!§:§]!C§;
      
      protected var §7!w§:§"!B§;
      
      public function §-"A§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!(_loc10_ && param1))
         {
            this.§2"!§ = param4 as §]!C§;
            loop0:
            do
            {
               §§push(this.§2"!§);
               if(!_loc10_)
               {
                  if(§§pop())
                  {
                     if(_loc9_ || param1)
                     {
                        §§push(this.§2"!§);
                        if(_loc9_)
                        {
                           if(§§pop().scale)
                           {
                              if(_loc9_)
                              {
                                 param8 = this.§2"!§.scale;
                                 addr93:
                              }
                              loop1:
                              while(true)
                              {
                                 addr64:
                                 while(true)
                                 {
                                    this.initializeObjectBehaviorLogic();
                                    while(_loc9_)
                                    {
                                       super(param1,param2,param3,param4,param5,param6,param7,param8);
                                       if(_loc9_ || param2)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           §§goto(addr64);
                        }
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr64);
               }
               §§goto(addr93);
            }
            while(!(_loc9_ || this));
            
         }
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§7!w§ = new §"!B§(this.§2"!§);
         }
      }
      
      override protected function initObjectRenderer() : §&5§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = false;
         if(_loc2_ || this)
         {
            §§push(this.§2"!§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     addr49:
                     §§push(this.§2"!§.§68§);
                     if(_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc1_ = §§pop();
                  }
               }
               return new §&5§(animation,sprite,_loc1_);
            }
         }
         §§goto(addr49);
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.update(param1,param2);
            do
            {
               this.§7!w§.update(param1,param2,x,y);
            }
            while(!_loc4_);
            
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super.render(param1,param2,param3);
            do
            {
               sprite.rotation = §1"3§ + this.§7!w§.§3"7§;
            }
            while(!(_loc4_ || this));
            
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§7!w§);
            if(_loc2_)
            {
               §§push(§§pop().removeOnNextUpdate);
               if(!(_loc1_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     return super.removeOnNextUpdate;
                  }
                  loop0:
                  while(true)
                  {
                     §§push(this.§7!w§);
                     addr108:
                     loop5:
                     while(true)
                     {
                        §§push(§§pop().§!"=§);
                        if(_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr115:
                                 while(true)
                                 {
                                    §§push(this.§7!w§);
                                    if(_loc1_)
                                    {
                                       continue loop5;
                                    }
                                    §§push(§§pop().§4",§ <= 0);
                                 }
                              }
                              addr114:
                           }
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    if(_loc2_)
                                    {
                                       health = 0;
                                       continue loop0;
                                    }
                                    §§goto(addr115);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(true);
                                       if(_loc2_ || _loc1_)
                                       {
                                          break loop4;
                                       }
                                       continue loop4;
                                    }
                                    addr31:
                                 }
                              }
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(_loc2_)
                              {
                                 return §§pop();
                              }
                              continue loop6;
                           }
                        }
                     }
                  }
               }
               §§goto(addr114);
            }
            §§goto(addr108);
         }
         §§goto(addr82);
      }
      
      override public function updateBeforeRemoving(param1:§;U§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!_loc5_)
         {
            if(health <= 0)
            {
               loop0:
               while(true)
               {
                  this.explodeBeforeRemoving(param1);
                  addr139:
                  loop1:
                  while(true)
                  {
                     if(health <= 0)
                     {
                        loop2:
                        while(true)
                        {
                           if(this.§2"!§.spriteScore)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(Number(§^!z§().GetPosition().x));
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(Number(§^!z§().GetPosition().y));
                                       if(_loc5_ && _loc3_)
                                       {
                                          break;
                                       }
                                       _loc3_ = §§pop();
                                       loop6:
                                       while(!_loc5_)
                                       {
                                          param1.addObject(this.§2"!§.spriteScore,_loc2_,_loc3_,0,§-%§.§;!J§,false,false,false,3,true);
                                          loop7:
                                          while(true)
                                          {
                                             addr27:
                                             while(true)
                                             {
                                                super.updateBeforeRemoving(param1);
                                                if(_loc4_ || this)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop7;
                                             }
                                             addr49:
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                continue loop0;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr27);
                  }
                  addr73:
               }
            }
            return;
         }
         §§goto(addr139);
      }
      
      protected function §3#§(param1:§;U§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Number = §^!z§().GetPosition().x;
         var _loc3_:Number = §^!z§().GetPosition().y;
         var _loc4_:Number = §+!c§();
         if(_loc6_ || _loc2_)
         {
            §§push(this.§7!w§);
            while(true)
            {
               §§pop().§@<§(param1,_loc2_,_loc3_,_loc4_);
               while(true)
               {
                  §§push(this.§7!w§);
                  if(_loc5_ && param1)
                  {
                     break;
                  }
                  §§pop().§9f§(param1,_loc2_,_loc3_,_loc4_);
                  if(_loc6_ || param1)
                  {
                     return;
                     addr87:
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      protected function explodeBeforeRemoving(param1:§;U§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = §^!z§().GetPosition().x;
         var _loc3_:Number = §^!z§().GetPosition().y;
         if(!(_loc5_ && _loc3_))
         {
            this.§7!w§.makeExplosion(param1,_loc2_,_loc3_);
         }
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.createPhysicsBody(param1,param2);
         }
         do
         {
            §^!z§().SetLinearDamping(§[E§);
         }
         while(!(_loc3_ || this));
         
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§7!w§.applyDamage(param1,param2,param3);
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§7!w§.playCollisionSound();
         }
      }
      
      override protected function playDamagedSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§7!w§.playDamagedSound();
         }
      }
      
      override protected function playDestroyedSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§7!w§.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§;U§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3#§(param1);
         }
      }
      
      override public function addDamageParticles(param1:§;U§, param2:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Number = §^!z§().GetPosition().x;
         var _loc4_:Number = §^!z§().GetPosition().y;
         var _loc5_:Number = §+!c§();
         if(!_loc7_)
         {
            this.§7!w§.§@<§(param1,_loc3_,_loc4_,_loc5_,0.5);
         }
      }
   }
}
