package §?!8§
{
   import §90§.Sprite;
   import §`!4§.§6l§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §4F§ extends §-!1§
   {
       
      
      private var §]E§:Number = 0;
      
      public function §4F§(param1:§#K§, param2:Sprite, param3:b2World, param4:§6l§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§]E§ != 0 && §`]§ != §+D§)
         {
            this.§]E§ = 0;
         }
         if(this.§]E§ != 0)
         {
            _loc2_ = §<!9§().GetLinearVelocity().x;
            _loc3_ = §<!9§().GetLinearVelocity().y;
            if(this.§]E§ < _loc2_)
            {
               §<!9§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§]E§ >= _loc2_)
               {
                  this.§]E§ = 0;
               }
            }
            else if(this.§]E§ > _loc2_)
            {
               §<!9§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§]E§ <= _loc2_)
               {
                  this.§]E§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§#K§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §<!9§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§]E§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
