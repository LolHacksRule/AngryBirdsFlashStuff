package §_-Sp§
{
   import §_-0y§.§_-B3§;
   import §_-Zl§.b2Vec2;
   import §_-rg§.b2World;
   import §_-se§.Sprite;
   
   public class §_-7b§ extends §_-FR§
   {
       
      
      public function §_-7b§(param1:§_-D4§, param2:Sprite, param3:b2World, param4:§_-B3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function activateSpecialPower(param1:§_-D4§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-dZ§().GetPosition().x;
         var _loc3_:Number = §_-dZ§().GetPosition().y;
         var _loc4_:Number = §_-dZ§().GetLinearVelocity().x;
         var _loc5_:Number = §_-dZ§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:§_-JP§;
         (_loc9_ = param1.§_-08§("BIRD_BLUE",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false,false)).§_-Lb§(new b2Vec2(_loc4_ - 7 * _loc8_,_loc5_ - 7 * _loc7_));
         (_loc9_ = param1.§_-08§("BIRD_BLUE",_loc2_ + _loc8_,_loc3_ + _loc7_,0,true,false,false)).§_-Lb§(new b2Vec2(_loc4_ + 7 * _loc8_,_loc5_ + 7 * _loc7_));
         return true;
      }
   }
}
