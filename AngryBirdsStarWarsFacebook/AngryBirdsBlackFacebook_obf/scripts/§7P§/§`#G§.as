package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§8!D§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §`#G§ extends §7";§
   {
      
      public static const §^!k§:Number = 0.15;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^!k§ = 0.15;
         }
      }
      
      protected var §<X§:§8!D§;
      
      protected var §7[§:§!p§;
      
      public function §`#G§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param2)
         {
            this.§<X§ = param4 as §8!D§;
            while(true)
            {
               §§push(this.§<X§);
               if(!(_loc7_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        §§push(this.§<X§);
                        if(_loc8_ || param2)
                        {
                           if(§§pop().scale)
                           {
                              if(_loc8_ || this)
                              {
                                 addr90:
                                 param6 = this.§<X§.scale;
                              }
                           }
                           do
                           {
                              this.initializeObjectBehaviorLogic();
                              do
                              {
                                 super(param1,param2,param3,param4,param5,param6);
                              }
                              while(_loc7_);
                              
                           }
                           while(_loc7_);
                           
                           return;
                           addr43:
                           addr42:
                        }
                        §§goto(addr90);
                     }
                     while(!_loc7_)
                     {
                        §§goto(addr43);
                     }
                     continue;
                  }
                  §§goto(addr43);
               }
               §§goto(addr90);
            }
         }
         §§goto(addr42);
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§7[§ = new §!p§(this.§<X§);
         }
      }
      
      override protected function initObjectRenderer() : §,D§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = false;
         if(_loc2_ || this)
         {
            §§push(this.§<X§);
            if(!(_loc3_ && _loc1_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr69);
            }
            §§push(§§pop().§-"i§);
            if(!(_loc3_ && this))
            {
               §§push(Boolean(§§pop()));
            }
            _loc1_ = §§pop();
         }
         addr69:
         if(_loc2_)
         {
            §§push(this.§<X§);
         }
         return new §,D§(animation,sprite,_loc1_);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.update(param1,param2);
            do
            {
               this.§7[§.update(param1,param2,x,y);
            }
            while(_loc4_);
            
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super.render(param1,param2,param3);
            do
            {
               sprite.rotation = §<#W§ + this.§7[§.§3"a§;
            }
            while(!_loc4_);
            
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§7[§.removeOnNextUpdate);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(true);
                  }
                  else
                  {
                     §§goto(addr49);
                  }
               }
               §§goto(addr49);
            }
            return §§pop();
         }
         addr49:
         return super.removeOnNextUpdate;
      }
      
      override public function updateBeforeRemoving(param1:§;$§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!(_loc4_ && this))
         {
            this.explodeBeforeRemoving(param1);
            loop0:
            while(true)
            {
               if(health <= 0)
               {
                  continue;
               }
               addr33:
               loop7:
               while(true)
               {
                  super.updateBeforeRemoving(param1);
                  if(!(_loc4_ && this))
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     addr115:
                     while(true)
                     {
                        §§push(Number(§3!t§().GetPosition().x));
                        while(true)
                        {
                           _loc2_ = §§pop();
                           while(true)
                           {
                              §§push(Number(§3!t§().GetPosition().y));
                              if(!_loc5_)
                              {
                                 break;
                              }
                              _loc3_ = §§pop();
                              while(_loc5_)
                              {
                                 param1.addObject(this.§<X§.spriteScore,_loc2_,_loc3_,0,§;=§.§""3§,false,false,false,3,true);
                                 while(_loc5_ || _loc2_)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       continue loop7;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr73);
               }
            }
         }
      }
      
      protected function §2"+§(param1:§;$§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Number = §3!t§().GetPosition().x;
         var _loc3_:Number = §3!t§().GetPosition().y;
         var _loc4_:Number = §"#,§();
         if(!(_loc6_ && _loc2_))
         {
            §§push(this.§7[§);
            while(true)
            {
               §§pop().§]T§(param1,_loc2_,_loc3_,_loc4_);
               while(true)
               {
                  §§push(this.§7[§);
                  if(_loc6_)
                  {
                     break;
                  }
                  §§pop().§+"M§(param1,_loc2_,_loc3_,_loc4_);
                  if(!(_loc6_ && _loc2_))
                  {
                     return;
                     addr81:
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      protected function explodeBeforeRemoving(param1:§;$§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = §3!t§().GetPosition().x;
         var _loc3_:Number = §3!t§().GetPosition().y;
         if(!(_loc4_ && this))
         {
            this.§7[§.§4c§(param1,_loc2_,_loc3_);
         }
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.createPhysicsBody(param1,param2);
            do
            {
               §3!t§().SetLinearDamping(§^!k§);
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            this.§7[§.applyDamage(param1,param2,param3);
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§7[§.playCollisionSound();
         }
      }
      
      override protected function playDamagedSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§7[§.playDamagedSound();
         }
      }
      
      override protected function playDestroyedSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§7[§.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§;$§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§2"+§(param1);
         }
      }
      
      override public function addDamageParticles(param1:§;$§, param2:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Number = §3!t§().GetPosition().x;
         var _loc4_:Number = §3!t§().GetPosition().y;
         var _loc5_:Number = §"#,§();
         if(_loc6_ || this)
         {
            this.§7[§.§]T§(param1,_loc3_,_loc4_,_loc5_,0.5);
         }
      }
   }
}
