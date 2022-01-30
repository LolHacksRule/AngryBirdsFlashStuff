package §"!-§
{
   import §!!<§.§>"4§;
   import §,!k§.b2Vec2;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §;'§.b2World;
   
   public class §]!b§ extends § !§
   {
       
      
      public function §]!b§(param1:Sprite, param2:§7!t§, param3:b2World, param4:§>"4§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
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
         return !§6X§ && !§<p§;
      }
      
      override protected function specialPower(param1:§!l§, param2:Number = 0, param3:Number = 0) : void
      {
         scream();
         var _loc4_:Number = §9l§().GetPosition().x;
         var _loc5_:Number = §9l§().GetPosition().y;
         var _loc6_:Number = §9l§().GetLinearVelocity().x;
         var _loc7_:Number = §9l§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc9_:Number = -_loc6_ / _loc8_;
         var _loc10_:Number = _loc7_ / _loc8_;
         var _loc11_:§ !§;
         (_loc11_ = § !§(param1.§&0§("BIRD_BLUE",_loc4_ - _loc10_,_loc5_ - _loc9_,0,§1i§.§^!;§,true,false,false,scale))).§'M§(new b2Vec2(_loc6_ - 7 * _loc10_,_loc7_ - 7 * _loc9_));
         _loc11_.scream();
         (_loc11_ = § !§(param1.§&0§("BIRD_BLUE",_loc4_ + _loc10_,_loc5_ + _loc9_,0,§1i§.§^!;§,true,false,false,scale))).§'M§(new b2Vec2(_loc6_ + 7 * _loc10_,_loc7_ + 7 * _loc9_));
         _loc11_.scream();
      }
   }
}
