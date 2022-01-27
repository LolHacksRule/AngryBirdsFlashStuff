package §>Y§
{
   import §4!-§.§%o§;
   import §86§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §?i§ extends §5t§
   {
       
      
      private var §case §:Number = 0;
      
      public function §?i§(param1:§2>§, param2:Sprite, param3:b2World, param4:§%o§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§case § != 0 && §=4§ != §72§)
         {
            this.§case § = 0;
         }
         if(this.§case § != 0)
         {
            _loc2_ = §[5§().GetLinearVelocity().x;
            _loc3_ = §[5§().GetLinearVelocity().y;
            if(this.§case § < _loc2_)
            {
               §[5§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§case § >= _loc2_)
               {
                  this.§case § = 0;
               }
            }
            else if(this.§case § > _loc2_)
            {
               §[5§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§case § <= _loc2_)
               {
                  this.§case § = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§2>§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §[5§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§case § = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
