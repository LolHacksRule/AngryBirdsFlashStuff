package §[,§
{
   import §#!X§.b2World;
   import §&!S§.b2Vec2;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§[e§;
   
   public class §&!l§ extends §@9§
   {
      
      public static const §2_§:String = "SmallBlueBird";
       
      
      public function §&!l§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§[e§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
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
         var _loc6_:Number = § <§().GetLinearVelocity().x;
         var _loc7_:Number = § <§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc9_:Number = -_loc6_ / _loc8_;
         var _loc10_:Number = _loc7_ / _loc8_;
         var _loc11_:§#!v§;
         (_loc11_ = §#!v§(param1.addObject(§2_§,_loc4_ - _loc10_,_loc5_ - _loc9_,0,§]j§.§4"1§,true,false,false,scale))).§]Q§(new b2Vec2(_loc6_ - 7 * _loc10_,_loc7_ - 7 * _loc9_));
         (_loc11_ = §#!v§(param1.addObject(§2_§,_loc4_ + _loc10_,_loc5_ + _loc9_,0,§]j§.§4"1§,true,false,false,scale))).§]Q§(new b2Vec2(_loc6_ + 7 * _loc10_,_loc7_ + 7 * _loc9_));
         return true;
      }
   }
}
