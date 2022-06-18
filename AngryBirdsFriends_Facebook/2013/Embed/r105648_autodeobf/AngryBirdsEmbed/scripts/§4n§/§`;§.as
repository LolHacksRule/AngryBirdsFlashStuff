package §4n§
{
   import §;'§.§?!D§;
   import §;^§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §`;§ extends §>!4§
   {
       
      
      public function §`;§(param1:§8y§, param2:Sprite, param3:b2World, param4:§?!D§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§8y§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §^C§().GetPosition().x;
         var _loc3_:Number = §^C§().GetPosition().y;
         var _loc4_:Number = §^C§().GetLinearVelocity().x;
         var _loc5_:Number = §^C§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:§@!4§;
         (_loc9_ = param1.addObject("BIRD_BLUE",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false,false,scale)).§,I§(new b2Vec2(_loc4_ - 7 * _loc8_,_loc5_ - 7 * _loc7_));
         (_loc9_ = param1.addObject("BIRD_BLUE",_loc2_ + _loc8_,_loc3_ + _loc7_,0,true,false,false,scale)).§,I§(new b2Vec2(_loc4_ + 7 * _loc8_,_loc5_ + 7 * _loc7_));
         return true;
      }
   }
}
