package §'R§
{
   import §%"§.§ do§;
   import §<!N§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §<y§ extends §7!0§
   {
       
      
      private var §[M§:Number = 0;
      
      public function §<y§(param1:§!m§, param2:Sprite, param3:b2World, param4:§ do§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§[M§ != 0 && §3! § != §`!O§)
         {
            this.§[M§ = 0;
         }
         if(this.§[M§ != 0)
         {
            _loc2_ = §<!I§().GetLinearVelocity().x;
            _loc3_ = §<!I§().GetLinearVelocity().y;
            if(this.§[M§ < _loc2_)
            {
               §<!I§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§[M§ >= _loc2_)
               {
                  this.§[M§ = 0;
               }
            }
            else if(this.§[M§ > _loc2_)
            {
               §<!I§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§[M§ <= _loc2_)
               {
                  this.§[M§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§!m§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §<!I§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§[M§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
