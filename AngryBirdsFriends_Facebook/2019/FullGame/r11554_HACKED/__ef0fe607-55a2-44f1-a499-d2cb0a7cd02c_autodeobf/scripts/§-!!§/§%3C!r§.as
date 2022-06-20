package §-!!§
{
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   
   public class §<!r§ extends §5"W§
   {
      
      public static const §&#3§:String = "MISC_FOOD_EGG";
       
      
      public function §<!r§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§ #'§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = getBody().GetPosition().x;
         _loc5_ = getBody().GetPosition().y;
         var _loc6_:§8"J§;
         (_loc6_ = §8"J§(param1.addObject(§&#3§,_loc4_,_loc5_ + 0.01,0,§7S§.ID_NEXT_FREE,false,true,true,scale))).§^#v§ = true;
         _loc6_.getBody().SetLinearVelocity(new b2Vec2(0,100));
         getBody().ApplyImpulse(new b2Vec2(30 * getBody().GetMass(),-60 * getBody().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5);
         if(specialPowerUsed)
         {
            health = §1#H§ - 1;
         }
         return health;
      }
   }
}
