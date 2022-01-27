package §3F§
{
   import §3H§.Sprite;
   import §>2§.§4h§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §;'§ extends §=4§
   {
       
      
      private var §,!#§:Number = 0;
      
      public function §;'§(param1:§0z§, param2:Sprite, param3:b2World, param4:§4h§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§,!#§ != 0 && §7^§ != §0-§)
         {
            this.§,!#§ = 0;
         }
         if(this.§,!#§ != 0)
         {
            _loc2_ = §?!M§().GetLinearVelocity().x;
            _loc3_ = §?!M§().GetLinearVelocity().y;
            if(this.§,!#§ < _loc2_)
            {
               §?!M§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§,!#§ >= _loc2_)
               {
                  this.§,!#§ = 0;
               }
            }
            else if(this.§,!#§ > _loc2_)
            {
               §?!M§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§,!#§ <= _loc2_)
               {
                  this.§,!#§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§0z§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §?!M§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§,!#§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
