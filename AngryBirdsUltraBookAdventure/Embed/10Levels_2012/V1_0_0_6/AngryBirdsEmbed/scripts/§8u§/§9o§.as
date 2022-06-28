package §8u§
{
   import §,_§.Sprite;
   import §3G§.§!E§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §9o§ extends §8j§
   {
       
      
      private var §;=§:Number = 0;
      
      public function §9o§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§;=§ != 0 && §@^§ != §%!J§)
         {
            this.§;=§ = 0;
         }
         if(this.§;=§ != 0)
         {
            _loc2_ = §?n§().GetLinearVelocity().x;
            _loc3_ = §?n§().GetLinearVelocity().y;
            if(this.§;=§ < _loc2_)
            {
               §?n§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§;=§ >= _loc2_)
               {
                  this.§;=§ = 0;
               }
            }
            else if(this.§;=§ > _loc2_)
            {
               §?n§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§;=§ <= _loc2_)
               {
                  this.§;=§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§6a§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §?n§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§;=§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
