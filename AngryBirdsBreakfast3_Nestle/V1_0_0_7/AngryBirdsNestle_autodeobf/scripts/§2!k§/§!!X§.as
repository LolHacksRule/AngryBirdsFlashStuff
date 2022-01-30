package §2!k§
{
   import § !=§.Sprite;
   import §-!2§.b2Vec2;
   import §0!j§.b2World;
   import §;L§.§=l§;
   import §[^§.§`!M§;
   
   public class §!!X§ extends §6",§
   {
       
      
      public function §!!X§(param1:Sprite, param2:§=l§, param3:b2World, param4:§`!M§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function get canScream() : Boolean
      {
         return true;
      }
      
      override protected function get canNormalize() : Boolean
      {
         return true;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§86§ && !§[u§;
      }
      
      override protected function specialPower(param1:§?N§, param2:Number = 0, param3:Number = 0) : void
      {
         scream();
         var _loc4_:Number = § 2§().GetPosition().x;
         var _loc5_:Number = § 2§().GetPosition().y;
         var _loc6_:Number = § 2§().GetLinearVelocity().x;
         var _loc7_:Number = § 2§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc9_:Number = -_loc6_ / _loc8_;
         var _loc10_:Number = _loc7_ / _loc8_;
         var _loc11_:§6",§;
         (_loc11_ = §6",§(param1.§1!w§("BIRD_BLUE",_loc4_ - _loc10_,_loc5_ - _loc9_,0,§^O§.§@"+§,true,false,false,scale))).§"E§(new b2Vec2(_loc6_ - 7 * _loc10_,_loc7_ - 7 * _loc9_));
         _loc11_.scream();
         (_loc11_ = §6",§(param1.§1!w§("BIRD_BLUE",_loc4_ + _loc10_,_loc5_ + _loc9_,0,§^O§.§@"+§,true,false,false,scale))).§"E§(new b2Vec2(_loc6_ + 7 * _loc10_,_loc7_ + 7 * _loc9_));
         _loc11_.scream();
      }
   }
}
