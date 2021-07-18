package §]">§
{
   import §"!&§.§+W§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §6!y§ extends §"!s§
   {
      
      private static const §'m§:Number = 10000;
      
      private static const §]4§:Number = 2000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'m§ = 10000;
            do
            {
               §]4§ = 2000;
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      protected var §<!B§:Number = 10000;
      
      public function §6!y§(param1:Sprite, param2:§#r§, param3:b2World, param4:§+W§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
      }
      
      override protected function playDestroyedSound() : void
      {
      }
      
      override protected function playDamagedSound() : void
      {
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(super.applyDamage(param1,param2,param3,param4));
         if(!(_loc7_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc6_ || param1)
         {
            §§push(param1);
            if(!_loc7_)
            {
               if(§§pop() >= 5)
               {
                  if(_loc6_)
                  {
                     playCollisionSound();
                     addr67:
                     §§push(_loc5_);
                  }
               }
               §§goto(addr67);
            }
            return §§pop();
         }
         §§goto(addr67);
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(!specialPowerUsed);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop();
                     addr57:
                     return Boolean(§?!d§);
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      public function updateOutOfCamera() : void
      {
      }
      
      override public function updateBeforeRemoving(param1:§;U§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §2"!§.playSoundLua("bird_destroyed");
         }
         do
         {
            super.updateBeforeRemoving(param1);
         }
         while(!_loc2_);
         
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.update(param1,param2);
            while(this.§<!B§ > 0)
            {
               if(_loc3_ || this)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §§push(this);
                  §§push(this.§<!B§);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§<!B§ = §§pop();
               }
               break;
            }
            return;
         }
         §§goto(addr47);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§<!B§);
            loop0:
            while(true)
            {
               §§push(§§pop() < 0);
               addr143:
               loop1:
               while(true)
               {
                  §§push(§§pop());
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
                           while(true)
                           {
                              §§push(Boolean(§%!8§()));
                              if(_loc2_)
                              {
                                 §§push(§§pop());
                                 if(_loc2_)
                                 {
                                    if(§§pop())
                                    {
                                    }
                                    loop7:
                                    while(§§pop())
                                    {
                                       while(!(_loc3_ && _loc3_))
                                       {
                                          §§push(this);
                                          §§push(this.§<!B§);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() - param1);
                                          }
                                          §§pop().§<!B§ = §§pop();
                                          continue loop0;
                                          do
                                          {
                                             health = 0;
                                          }
                                          while(_loc3_ && param1);
                                          
                                          if(!_loc3_)
                                          {
                                             break loop7;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(!§>""§);
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          if(!_loc3_)
                                          {
                                             continue loop7;
                                          }
                                          continue loop3;
                                          §§goto(addr94);
                                       }
                                       addr94:
                                    }
                                    addr19:
                                    return super.isReadyToBeRemoved(param1);
                                    addr92:
                                 }
                                 break;
                              }
                              while(!(_loc3_ && this))
                              {
                                 §§pop();
                                 §§goto(addr138);
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr92);
                  }
               }
            }
            addr141:
         }
         while(true)
         {
            §§push(this.§<!B§);
            if(!(_loc3_ && this))
            {
               §§push(§]4§);
               if(_loc2_)
               {
                  §§push(-§§pop());
               }
               if(§§pop() < §§pop())
               {
                  if(_loc2_ || this)
                  {
                     continue;
                  }
                  §§goto(addr84);
               }
               §§goto(addr19);
            }
            else
            {
               §§goto(addr141);
            }
         }
      }
   }
}
