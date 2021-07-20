package § !$§
{
   import §+d§.b2World;
   import §6!;§.Sprite;
   import §9!'§.§0!%§;
   import §`!^§.b2Vec2;
   
   public class §0!-§ extends §2!J§
   {
       
      
      public function §0!-§(param1:§7!!§, param2:Sprite, param3:b2World, param4:§0!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§7!!§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §]!2§().GetPosition().x;
         var _loc3_:Number = §]!2§().GetPosition().y;
         var _loc4_:Number = §]!2§().GetLinearVelocity().x;
         var _loc5_:Number = §]!2§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:§>C§;
         (_loc9_ = param1.§&H§("BIRD_BLUE",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false,false,scale)).§%!O§(new b2Vec2(_loc4_ - 7 * _loc8_,_loc5_ - 7 * _loc7_));
         (_loc9_ = param1.§&H§("BIRD_BLUE",_loc2_ + _loc8_,_loc3_ + _loc7_,0,true,false,false,scale)).§%!O§(new b2Vec2(_loc4_ + 7 * _loc8_,_loc5_ + 7 * _loc7_));
         return true;
      }
   }
}
