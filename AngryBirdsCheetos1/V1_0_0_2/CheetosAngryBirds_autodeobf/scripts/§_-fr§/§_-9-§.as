package §_-fr§
{
   import §_-43§.b2World;
   import §_-F2§.b2Vec2;
   import §_-GY§.Sprite;
   import §_-Kz§.§_-c3§;
   
   public class §_-9-§ extends §_-ZS§
   {
       
      
      public function §_-9-§(param1:§ else§, param2:Sprite, param3:b2World, param4:§_-c3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§ else§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §implements§().GetPosition().x;
         var _loc3_:Number = §implements§().GetPosition().y;
         var _loc4_:Number = §implements§().GetLinearVelocity().x;
         var _loc5_:Number = §implements§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:§_-FX§;
         (_loc9_ = param1.addObject("BIRD_BLUE",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false,false,scale)).§_-PP§(new b2Vec2(_loc4_ - 7 * _loc8_,_loc5_ - 7 * _loc7_));
         (_loc9_ = param1.addObject("BIRD_BLUE",_loc2_ + _loc8_,_loc3_ + _loc7_,0,true,false,false,scale)).§_-PP§(new b2Vec2(_loc4_ + 7 * _loc8_,_loc5_ + 7 * _loc7_));
         return true;
      }
   }
}
