package §]">§
{
   import §"!&§.§+W§;
   import §"!&§.§="D§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §`!R§ extends §6!y§
   {
      
      public static const §!!p§:String = "BlackBird";
      
      private static const §0V§:Number = 2000;
      
      private static const §4s§:Number = 200;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §!!p§ = "BlackBird";
            do
            {
               §0V§ = 2000;
               do
               {
                  §4s§ = 200;
               }
               while(_loc1_);
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      private var §&!B§:Number;
      
      private var §"!v§:Boolean = false;
      
      public function §`!R§(param1:Sprite, param2:§#r§, param3:b2World, param4:§+W§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
      }
      
      override public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            if(§?!d§)
            {
               while(true)
               {
                  if(!super.activateSpecialPower(param1,param2,param3))
                  {
                     if(!(_loc4_ && param3))
                     {
                        §§push(false);
                        break;
                     }
                     addr95:
                     while(true)
                     {
                     }
                  }
                  addr55:
                  if(!(_loc4_ && param1))
                  {
                     §§push(true);
                     if(_loc5_)
                     {
                        return §§pop();
                     }
                     break;
                  }
               }
               return §§pop();
            }
            while(true)
            {
               this.§&!B§ = -1;
               do
               {
                  this.§"!v§ = true;
               }
               while(_loc4_);
               
               if(!(_loc4_ && this))
               {
                  §§goto(addr55);
               }
            }
         }
         §§goto(addr95);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§"!v§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              addr70:
                              §§push(true);
                              break;
                           }
                        }
                        else
                        {
                           addr19:
                           §§push(super.isReadyToBeRemoved(param1));
                           if(_loc3_)
                           {
                              break;
                           }
                           if(!(_loc2_ || _loc2_))
                           {
                              continue loop0;
                           }
                           if(_loc2_ || this)
                           {
                              return §§pop();
                           }
                           addr95:
                           while(true)
                           {
                              §§pop();
                           }
                        }
                        while(true)
                        {
                           §§push(this.§&!B§ < 0);
                           continue loop0;
                        }
                     }
                     §§goto(addr19);
                  }
                  return §§pop();
                  addr64:
               }
               §§goto(addr95);
            }
         }
         §§goto(addr70);
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(super.applyDamage(param1,param2,param3,param4));
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!_loc6_)
         {
            §§push(!specialPowerUsed);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     loop4:
                     do
                     {
                        this.§"!v§ = true;
                        while(!_loc6_)
                        {
                           this.§&!B§ = §0V§;
                           if(_loc7_)
                           {
                              continue loop4;
                           }
                        }
                        loop2:
                        while(true)
                        {
                           §§push(this.§"!v§);
                           if(!_loc6_)
                           {
                              §§push(!§§pop());
                           }
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           addr91:
                           while(true)
                           {
                              §§pop();
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                     while(_loc6_);
                     
                     break;
                  }
                  return _loc5_;
                  addr69:
               }
               §§goto(addr91);
            }
         }
         §§goto(addr53);
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.update(param1,param2);
            while(this.§"!v§)
            {
               if(_loc4_)
               {
                  if(this.§&!B§ <= §4s§)
                  {
                     while(!_loc3_)
                     {
                        §'%§.setAnimation(§7"3§,false);
                        while(true)
                        {
                        }
                     }
                     continue;
                     addr58:
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§&!B§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§&!B§ = §§pop();
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        break;
                     }
                     §§goto(addr58);
                  }
                  break;
               }
               §§goto(addr74);
            }
            return;
         }
         §§goto(addr74);
      }
      
      override public function get isNormal() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§"!v§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(Boolean(§?!d§));
                           if(_loc1_ && _loc2_)
                           {
                              break;
                           }
                           if(!(_loc1_ && _loc2_))
                           {
                              if(_loc2_)
                              {
                                 while(§§pop())
                                 {
                                    if(!_loc1_)
                                    {
                                       break loop0;
                                    }
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 return super.isNormal;
                                 addr60:
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                        §§goto(addr65);
                     }
                     addr91:
                  }
                  §§goto(addr60);
               }
               §§goto(addr91);
            }
         }
         addr65:
         false;
         return §§pop();
      }
      
      override public function updateBeforeRemoving(param1:§;U§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.makeExplosion(param1);
         }
         var _loc2_:String = §2"!§.getSound(§="D§.§@"-§);
         if(_loc4_ || param1)
         {
            §2"!§.playSoundLua(_loc2_);
         }
         do
         {
            native(param1);
            do
            {
               super.updateBeforeRemoving(param1);
            }
            while(!(_loc4_ || this));
            
         }
         while(!_loc4_);
         
      }
      
      private function makeExplosion(param1:§;U§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = §^!z§().GetPosition().x;
         var _loc3_:Number = §^!z§().GetPosition().y;
         if(!_loc5_)
         {
            if(param1)
            {
               if(!(_loc5_ && _loc2_))
               {
                  param1.§6!N§(_loc2_,_loc3_,§2"!§.explosionRadius,§2"!§.explosionForce,§2"!§.explosionDamageRadius,§2"!§.explosionDamage);
               }
            }
         }
      }
   }
}
