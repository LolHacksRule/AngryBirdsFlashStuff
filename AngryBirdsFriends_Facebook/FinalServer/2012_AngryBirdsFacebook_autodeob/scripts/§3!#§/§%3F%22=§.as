package §3!#§
{
   import §&!Y§.b2World;
   import §0!2§.§5"L§;
   import §7F§.b2Vec2;
   import §]!v§.Sprite;
   
   public class §?"=§ extends §!!k§
   {
       
      
      public function §?"=§(param1:§04§, param2:Sprite, param3:b2World, param4:§5"L§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§04§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §`!y§().GetPosition().x;
         var _loc3_:Number = §`!y§().GetPosition().y;
         var _loc4_:Number = §`!y§().GetLinearVelocity().x;
         var _loc5_:Number = §`!y§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:§5"A§;
         (_loc9_ = param1.addObject("BIRD_BLUE",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false,false,scale)).§1!2§(new b2Vec2(_loc4_ - 7 * _loc8_,_loc5_ - 7 * _loc7_));
         (_loc9_ = param1.addObject("BIRD_BLUE",_loc2_ + _loc8_,_loc3_ + _loc7_,0,true,false,false,scale)).§1!2§(new b2Vec2(_loc4_ + 7 * _loc8_,_loc5_ + 7 * _loc7_));
         return true;
      }
   }
}
