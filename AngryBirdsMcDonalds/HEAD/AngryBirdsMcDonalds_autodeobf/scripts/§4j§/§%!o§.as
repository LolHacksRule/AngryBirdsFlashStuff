package §4j§
{
   import § !J§.§%M§;
   import §+S§.b2Vec2;
   import §8T§.b2World;
   import §`!n§.Sprite;
   
   public class §%!o§ extends §@!K§
   {
       
      
      public function §%!o§(param1:§0K§, param2:Sprite, param3:b2World, param4:§%M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§0K§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §3H§().GetPosition().x;
         var _loc3_:Number = §3H§().GetPosition().y;
         var _loc4_:Number = §3H§().GetLinearVelocity().x;
         var _loc5_:Number = §3H§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:§9M§;
         (_loc9_ = param1.§+"§("BIRD_BLUE",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false,false,scale)).§>4§(new b2Vec2(_loc4_ - 7 * _loc8_,_loc5_ - 7 * _loc7_));
         (_loc9_ = param1.§+"§("BIRD_BLUE",_loc2_ + _loc8_,_loc3_ + _loc7_,0,true,false,false,scale)).§>4§(new b2Vec2(_loc4_ + 7 * _loc8_,_loc5_ + 7 * _loc7_));
         return true;
      }
   }
}
