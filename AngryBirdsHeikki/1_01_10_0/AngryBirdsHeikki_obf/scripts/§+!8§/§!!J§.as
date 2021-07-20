package §+!8§
{
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2World;
   import §6A§.b2Vec2;
   
   public class §!!J§ extends §`!O§
   {
       
      
      public function §!!J§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§-!N§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §0c§().GetPosition().x;
         var _loc3_:Number = §0c§().GetPosition().y;
         var _loc4_:Number = §0c§().GetLinearVelocity().x;
         var _loc5_:Number = §0c§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:§,_§;
         (_loc9_ = param1.§@!,§("BIRD_BLUE",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false,false,scale)).§[!8§(new b2Vec2(_loc4_ - 7 * _loc8_,_loc5_ - 7 * _loc7_));
         (_loc9_ = param1.§@!,§("BIRD_BLUE",_loc2_ + _loc8_,_loc3_ + _loc7_,0,true,false,false,scale)).§[!8§(new b2Vec2(_loc4_ + 7 * _loc8_,_loc5_ + 7 * _loc7_));
         return true;
      }
   }
}
