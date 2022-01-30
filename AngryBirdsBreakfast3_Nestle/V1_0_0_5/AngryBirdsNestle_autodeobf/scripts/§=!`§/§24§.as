package §=!`§
{
   import §%z§.§9!n§;
   import §,!q§.Sprite;
   import §,v§.b2World;
   import §-!A§.b2Vec2;
   import §-!b§.§<W§;
   
   public class §24§ extends §6!-§
   {
       
      
      public function §24§(param1:Sprite, param2:§<W§, param3:b2World, param4:§9!n§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
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
         return !§3!G§ && !§5!;§;
      }
      
      override protected function specialPower(param1:§'`§, param2:Number = 0, param3:Number = 0) : void
      {
         scream();
         var _loc4_:Number = §^",§().GetPosition().x;
         var _loc5_:Number = §^",§().GetPosition().y;
         var _loc6_:Number = §^",§().GetLinearVelocity().x;
         var _loc7_:Number = §^",§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc9_:Number = -_loc6_ / _loc8_;
         var _loc10_:Number = _loc7_ / _loc8_;
         var _loc11_:§6!-§;
         (_loc11_ = §6!-§(param1.§`!k§("BIRD_BLUE",_loc4_ - _loc10_,_loc5_ - _loc9_,0,§!H§.§"!W§,true,false,false,scale))).§=!P§(new b2Vec2(_loc6_ - 7 * _loc10_,_loc7_ - 7 * _loc9_));
         _loc11_.scream();
         (_loc11_ = §6!-§(param1.§`!k§("BIRD_BLUE",_loc4_ + _loc10_,_loc5_ + _loc9_,0,§!H§.§"!W§,true,false,false,scale))).§=!P§(new b2Vec2(_loc6_ + 7 * _loc10_,_loc7_ + 7 * _loc9_));
         _loc11_.scream();
      }
   }
}
