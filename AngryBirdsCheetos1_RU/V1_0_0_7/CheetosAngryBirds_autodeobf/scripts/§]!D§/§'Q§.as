package §]!D§
{
   import §3q§.b2Vec2;
   import §8!`§.§4J§;
   import §;!Q§.Sprite;
   import §?0§.b2World;
   
   public class §'Q§ extends §,!@§
   {
      
      public static const §9Y§:String = "MISC_FOOD_EGG";
       
      
      public function §'Q§(param1:§?!9§, param2:Sprite, param3:b2World, param4:§4J§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§?!9§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §^!_§().GetPosition().x;
         var _loc3_:Number = §^!_§().GetPosition().y;
         var _loc4_:§@!]§;
         (_loc4_ = param1.addObject(§9Y§,_loc2_,_loc3_ + 0.01,0,false,true,true,scale)).§-!0§ = true;
         _loc4_.§^!_§().SetLinearVelocity(new b2Vec2(0,100));
         §^!_§().ApplyImpulse(new b2Vec2(30 * §^!_§().GetMass(),-60 * §^!_§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§-g§)
         {
            §5h§ = §!e§ - 1;
            §`T§.setDamagedFrame();
         }
         return §5h§;
      }
   }
}
