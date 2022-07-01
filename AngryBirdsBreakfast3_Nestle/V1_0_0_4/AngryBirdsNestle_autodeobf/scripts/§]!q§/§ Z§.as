package §]!q§
{
   import §-!f§.Sprite;
   import §-%§.b2Vec2;
   import §5!7§.§3!Y§;
   import §6_§.§6k§;
   import §9"5§.b2World;
   
   public class § Z§ extends §,6§
   {
      
      public static const §@""§:String = "MISC_FOOD_EGG";
       
      
      public function § Z§(param1:Sprite, param2:§6k§, param3:b2World, param4:§3!Y§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§5z§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = §4!7§().GetPosition().x;
         var _loc5_:Number = §4!7§().GetPosition().y;
         var _loc6_:§,[§;
         (_loc6_ = §,[§(param1.§!t§(§@""§,_loc4_,_loc5_ + 0.01,0,§!i§.§-1§,false,true,true,scale))).§4!J§ = true;
         _loc6_.§4!7§().SetLinearVelocity(new b2Vec2(0,100));
         §4!7§().ApplyImpulse(new b2Vec2(30 * §4!7§().GetMass(),-60 * §4!7§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§5z§, param3:§,[§, param4:Boolean = true) : Number
      {
         super.applyDamage(param1,param2,param3,param4);
         if(specialPowerUsed)
         {
            health = healthMax - 1;
         }
         return health;
      }
   }
}
