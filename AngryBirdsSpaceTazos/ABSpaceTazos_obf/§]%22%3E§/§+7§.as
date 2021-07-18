package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   
   public class §+7§ extends § 6§
   {
      
      public static const §<>§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<>§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §+7§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
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
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            §§push(super.activateSpecialPower(param1,param2,param3));
            if(!(_loc8_ && param2))
            {
               if(!§§pop())
               {
                  if(_loc7_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     §§goto(addr35);
                  }
               }
               §§goto(addr35);
            }
            return §§pop();
         }
         addr35:
         var _loc4_:Number = §^!z§().GetPosition().x;
         var _loc5_:Number = §^!z§().GetPosition().y;
         §§push(§§findproperty(§1!0§));
         §§push(param1);
         §§push(§<>§);
         §§push(_loc4_);
         §§push(_loc5_);
         if(!(_loc8_ && param1))
         {
            §§push(§§pop() + 0.01);
         }
         var _loc6_:§1!0§;
         (_loc6_ = §§pop().§1!0§(§§pop().addObject(§§pop(),§§pop(),§§pop(),0,§-%§.§;!J§,false,true,true,scale))).§>_§ = true;
         if(_loc7_ || this)
         {
            _loc6_.§^!z§().SetLinearVelocity(new b2Vec2(0,100));
         }
         do
         {
            §^!z§().ApplyImpulse(new b2Vec2(30 * §^!z§().GetMass(),-60 * §^!z§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
         }
         while(_loc8_);
         
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            super.applyDamage(param1,param2,param3,param4);
            loop0:
            for(; specialPowerUsed; while(true)
            {
               if(_loc5_)
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(!(_loc5_ || this))
               {
                  continue;
               }
            }
            return health;
         }
         while(true)
         {
            health = healthMax - 1;
            §§goto(addr53);
         }
      }
   }
}
