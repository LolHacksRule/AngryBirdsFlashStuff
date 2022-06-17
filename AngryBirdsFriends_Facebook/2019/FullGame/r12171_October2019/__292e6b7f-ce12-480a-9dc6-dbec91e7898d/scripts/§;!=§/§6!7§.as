package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   
   public class §6!7§ extends §[!k§
   {
      
      public static const §7!_§:String = "MISC_FOOD_EGG";
       
      
      public function §6!7§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§]!m§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = getBody().GetPosition().x;
         _loc5_ = getBody().GetPosition().y;
         var _loc6_:§>"G§;
         (_loc6_ = §>"G§(param1.addObject(§7!_§,_loc4_,_loc5_ + 0.01,0,§ !i§.ID_NEXT_FREE,false,true,true,scale))).§-##§ = true;
         _loc6_.getBody().SetLinearVelocity(new b2Vec2(0,100));
         getBody().ApplyImpulse(new b2Vec2(30 * getBody().GetMass(),-60 * getBody().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5);
         if(specialPowerUsed)
         {
            health = §+#_§ - 1;
         }
         return health;
      }
   }
}
