package §5!L§
{
   import §2![§.Sprite;
   import §7!5§.b2World;
   import §<L§.§!!G§;
   import §@![§.b2Vec2;
   
   public class §#!X§ extends §1L§
   {
       
      
      public function §#!X§(param1:§?8§, param2:Sprite, param3:b2World, param4:§!!G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§?8§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §;G§().GetPosition().x;
         var _loc3_:Number = §;G§().GetPosition().y;
         var _loc4_:Number = §;G§().GetLinearVelocity().x;
         var _loc5_:Number = §;G§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:§,!&§;
         (_loc9_ = param1.§'e§("BIRD_BLUE",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false,false,scale)).§%!o§(new b2Vec2(_loc4_ - 7 * _loc8_,_loc5_ - 7 * _loc7_));
         (_loc9_ = param1.§'e§("BIRD_BLUE",_loc2_ + _loc8_,_loc3_ + _loc7_,0,true,false,false,scale)).§%!o§(new b2Vec2(_loc4_ + 7 * _loc8_,_loc5_ + 7 * _loc7_));
         return true;
      }
   }
}
