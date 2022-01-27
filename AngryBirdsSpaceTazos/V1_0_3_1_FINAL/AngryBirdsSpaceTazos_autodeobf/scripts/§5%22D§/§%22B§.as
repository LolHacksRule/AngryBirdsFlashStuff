package §5"D§
{
   import §4"@§.Sprite;
   import §6!M§.§9`§;
   import §;`§.b2World;
   import §[!f§.b2Vec2;
   import §^e§.§^5§;
   
   public class §"B§ extends §34§
   {
      
      public static const §8p§:String = "SmallBlueBird";
       
      
      public function §"B§(param1:Sprite, param2:§^5§, param3:b2World, param4:§9`§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§0!5§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = §9B§().GetPosition().x;
         var _loc5_:Number = §9B§().GetPosition().y;
         var _loc6_:Number = §9B§().GetLinearVelocity().x;
         var _loc7_:Number = §9B§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc9_:Number = -_loc6_ / _loc8_;
         var _loc10_:Number = _loc7_ / _loc8_;
         var _loc11_:§1"G§;
         (_loc11_ = §1"G§(param1.addObject(§8p§,_loc4_ - _loc10_,_loc5_ - _loc9_,0,§3!3§.§'!y§,true,false,false,scale))).§6!;§(new b2Vec2(_loc6_ - 7 * _loc10_,_loc7_ - 7 * _loc9_));
         (_loc11_ = §1"G§(param1.addObject(§8p§,_loc4_ + _loc10_,_loc5_ + _loc9_,0,§3!3§.§'!y§,true,false,false,scale))).§6!;§(new b2Vec2(_loc6_ + 7 * _loc10_,_loc7_ + 7 * _loc9_));
         return true;
      }
   }
}
