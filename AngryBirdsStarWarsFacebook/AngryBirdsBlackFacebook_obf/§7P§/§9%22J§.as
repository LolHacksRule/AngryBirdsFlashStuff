package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§=+§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §9"J§ extends §9"k§
   {
      
      public static const §+"§:String = "BlackBird";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §+"§ = "BlackBird";
         }
      }
      
      protected var §+#9§:Number = 0.0;
      
      protected var §#+§:Number = 0.0;
      
      protected var §>#Q§:Number = 0.0;
      
      protected var §]#V§:Number = 0.0;
      
      protected var § !q§:Number = 0.0;
      
      protected var §#!;§:Number = 0.0;
      
      protected var §>"8§:Number = 0.0;
      
      protected var §^4§:Number = 0.0;
      
      protected var §%e§:Number;
      
      public function §9"J§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§=+§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7);
            loop0:
            while(true)
            {
               this.§+#9§ = param4.getNumberProperty("forceArcWidth");
               loop1:
               while(true)
               {
                  this.§#+§ = param4.getNumberProperty("explosionForce");
                  while(true)
                  {
                     this.§>#Q§ = param4.getNumberProperty("explosionMinForce");
                     loop3:
                     for(; !_loc8_; while(_loc9_ || param2)
                     {
                        this.§#!;§ = param4.getNumberProperty("smallExplosionForce");
                        loop6:
                        while(_loc9_ || param1)
                        {
                           this.§>"8§ = param4.getNumberProperty("smallExplosionMinForce");
                           loop7:
                           while(_loc9_)
                           {
                              while(true)
                              {
                                 this.§^4§ = param4.getNumberProperty("smallExplosionRadius");
                                 if(_loc9_ || param2)
                                 {
                                    if(_loc9_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop6;
                                 }
                                 continue loop7;
                              }
                              return;
                           }
                           §§goto(addr112);
                        }
                     })
                     {
                        this.§]#V§ = param4.getNumberProperty("explosionRadius");
                        while(true)
                        {
                           this.§ !q§ = param4.getNumberProperty("explosionDamageRadius");
                           continue loop3;
                        }
                     }
                  }
                  if(!(_loc8_ && param1))
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      override protected function specialPower(param1:§;$§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§+c§ = new §+c§();
         var _loc5_:Number = §>#8§(param2,param3);
         if(_loc8_)
         {
            this.§%e§ = _loc5_;
         }
         loop0:
         while(true)
         {
            _loc4_.angle = _loc5_;
            loop1:
            while(true)
            {
               _loc4_.§5e§ = this.§+#9§;
               loop2:
               while(true)
               {
                  _loc4_.explosionForce = this.§#+§;
                  while(true)
                  {
                     _loc4_.explosionMinForce = this.§>#Q§;
                     addr154:
                     addr83:
                     while(true)
                     {
                        _loc4_.explosionRadius = this.§]#V§;
                        continue loop1;
                     }
                     if(!(_loc7_ && this))
                     {
                        _loc4_.y = §3!t§().GetPosition().y;
                        if(_loc8_ || param2)
                        {
                           if(_loc8_)
                           {
                              addr46:
                              if(!(_loc7_ && this))
                              {
                                 addr53:
                                 if(_loc8_ || param3)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    _loc4_.smallExplosionMinForce = this.§>"8§;
                                    §§goto(addr53);
                                 }
                                 addr127:
                              }
                              loop8:
                              while(true)
                              {
                                 if(_loc8_ || this)
                                 {
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    _loc4_.smallExplosionRadius = this.§^4§;
                                 }
                                 else
                                 {
                                    while(!_loc7_)
                                    {
                                       _loc4_.smallExplosionForce = this.§#!;§;
                                       §§goto(addr127);
                                       continue loop8;
                                    }
                                    §§goto(addr154);
                                    addr133:
                                 }
                              }
                              continue loop2;
                           }
                           while(true)
                           {
                              addr69:
                              while(true)
                              {
                                 _loc4_.x = §3!t§().GetPosition().x;
                              }
                              continue loop0;
                           }
                        }
                        while(!(_loc7_ && param3))
                        {
                           §§goto(addr83);
                        }
                        continue loop1;
                        addr76:
                     }
                  }
               }
            }
         }
      }
      
      override protected function updateFlying() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(!isNaN(this.§%e§))
            {
               if(_loc2_ || this)
               {
                  §8"r§(this.§%e§);
               }
               §3!t§().SetAngle(this.§%e§);
               addr82:
            }
            else
            {
               super.updateFlying();
               if(!_loc1_)
               {
                  if(_loc1_)
                  {
                     §§goto(addr82);
                  }
                  §§goto(addr25);
               }
            }
         }
         addr25:
      }
      
      override protected function get hasTargetedSpecialPowerParticles() : Boolean
      {
         return true;
      }
   }
}
