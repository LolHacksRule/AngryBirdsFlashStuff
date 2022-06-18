package §4n§
{
   import §;'§.§?!D§;
   import §;^§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §>y§ extends §>!4§
   {
       
      
      private var §'Y§:Number = 0;
      
      public function §>y§(param1:§8y§, param2:Sprite, param3:b2World, param4:§?!D§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§'Y§ != 0 && §'s§ != §@g§)
         {
            this.§'Y§ = 0;
         }
         if(this.§'Y§ != 0)
         {
            _loc2_ = §^C§().GetLinearVelocity().x;
            _loc3_ = §^C§().GetLinearVelocity().y;
            if(this.§'Y§ < _loc2_)
            {
               §^C§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§'Y§ >= _loc2_)
               {
                  this.§'Y§ = 0;
               }
            }
            else if(this.§'Y§ > _loc2_)
            {
               §^C§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§'Y§ <= _loc2_)
               {
                  this.§'Y§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§8y§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §^C§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§'Y§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
