package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   
   public class §]!n§ extends §"7§
   {
      
      public static const §3#J§:String = "MISC_FOOD_EGG";
       
      
      public function §]!n§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§-!S§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = getBody().GetPosition().x;
         _loc5_ = getBody().GetPosition().y;
         var _loc6_:§^"9§;
         (_loc6_ = §^"9§(param1.addObject(§3#J§,_loc4_,_loc5_ + 0.01,0,§6#-§.ID_NEXT_FREE,false,true,true,scale))).§0#l§ = true;
         _loc6_.getBody().SetLinearVelocity(new b2Vec2(0,100));
         getBody().ApplyImpulse(new b2Vec2(30 * getBody().GetMass(),-60 * getBody().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         super.applyDamage(param1,param2,param3,param4);
         if(specialPowerUsed)
         {
            health = §##6§ - 1;
         }
         return health;
      }
   }
}
