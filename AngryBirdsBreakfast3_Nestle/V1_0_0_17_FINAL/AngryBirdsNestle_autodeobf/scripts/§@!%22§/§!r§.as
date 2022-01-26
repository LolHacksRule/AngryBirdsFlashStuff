package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §@!E§.b2Vec2;
   
   public class §!r§ extends §^"2§
   {
       
      
      public function §!r§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function specialPower(param1:§`!m§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         var _loc4_:Number = §!!I§().GetPosition().x;
         var _loc5_:Number = §!!I§().GetPosition().y;
         var _loc6_:Number = §!!I§().GetLinearVelocity().x;
         var _loc7_:Number = §!!I§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc9_:Number = -_loc6_ / _loc8_;
         var _loc10_:Number = _loc7_ / _loc8_;
         var _loc11_:§^"2§;
         (_loc11_ = §^"2§(param1.§&w§("BIRD_BLUE",_loc4_ - _loc10_,_loc5_ - _loc9_,0,§<!l§.§0"+§,true,false,false,scale))).§^y§(new b2Vec2(_loc6_ - 7 * _loc10_,_loc7_ - 7 * _loc9_));
         _loc11_.isLeavingTrail = true;
         (_loc11_ = §^"2§(param1.§&w§("BIRD_BLUE",_loc4_ + _loc10_,_loc5_ + _loc9_,0,§<!l§.§0"+§,true,false,false,scale))).§^y§(new b2Vec2(_loc6_ + 7 * _loc10_,_loc7_ + 7 * _loc9_));
         _loc11_.isLeavingTrail = true;
      }
   }
}
