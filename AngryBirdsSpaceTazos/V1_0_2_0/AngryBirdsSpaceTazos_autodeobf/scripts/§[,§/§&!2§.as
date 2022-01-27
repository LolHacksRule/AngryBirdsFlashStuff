package §[,§
{
   import §#!X§.b2World;
   import §&!S§.b2Vec2;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§]"<§;
   
   public class §&!2§ extends §#!v§
   {
      
      public static const §!7§:String = "MISC_FOOD_EGG";
       
      
      public function §&!2§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§class§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = § <§().GetPosition().x;
         var _loc5_:Number = § <§().GetPosition().y;
         var _loc6_:§5,§;
         (_loc6_ = §5,§(param1.addObject(§!7§,_loc4_,_loc5_ + 0.01,0,§]j§.§4"1§,false,true,true,scale))).§@Q§ = true;
         _loc6_.§ <§().SetLinearVelocity(new b2Vec2(0,100));
         § <§().ApplyImpulse(new b2Vec2(30 * § <§().GetMass(),-60 * § <§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§class§, param3:§5,§, param4:Boolean = true) : Number
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
