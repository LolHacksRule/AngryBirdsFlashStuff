package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§1!;§;
   import §6!n§.b2Vec2;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class §"!6§ extends §7!>§
   {
      
      public static const §#!"§:String = "SmallBlueBird";
       
      
      public function §"!6§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§1!;§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§0!s§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = §`I§().GetPosition().x;
         var _loc5_:Number = §`I§().GetPosition().y;
         var _loc6_:Number = §`I§().GetLinearVelocity().x;
         var _loc7_:Number = §`I§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc9_:Number = -_loc6_ / _loc8_;
         var _loc10_:Number = _loc7_ / _loc8_;
         var _loc11_:§!!H§;
         (_loc11_ = §!!H§(param1.addObject(§#!"§,_loc4_ - _loc10_,_loc5_ - _loc9_,0,§"" §.§%A§,true,false,false,scale))).§?!m§(new b2Vec2(_loc6_ - 7 * _loc10_,_loc7_ - 7 * _loc9_));
         (_loc11_ = §!!H§(param1.addObject(§#!"§,_loc4_ + _loc10_,_loc5_ + _loc9_,0,§"" §.§%A§,true,false,false,scale))).§?!m§(new b2Vec2(_loc6_ + 7 * _loc10_,_loc7_ + 7 * _loc9_));
         return true;
      }
   }
}
