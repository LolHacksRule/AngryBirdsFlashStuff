package §]!9§
{
   import §%x§.§#;§;
   import §?^§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §5,§ extends §&v§
   {
       
      
      private var §7! §:Number = 0;
      
      public function §5,§(param1:§]!H§, param2:Sprite, param3:b2World, param4:§#;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§7! § != 0 && §4!;§ != §8!,§)
         {
            this.§7! § = 0;
         }
         if(this.§7! § != 0)
         {
            _loc2_ = §%;§().GetLinearVelocity().x;
            _loc3_ = §%;§().GetLinearVelocity().y;
            if(this.§7! § < _loc2_)
            {
               §%;§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§7! § >= _loc2_)
               {
                  this.§7! § = 0;
               }
            }
            else if(this.§7! § > _loc2_)
            {
               §%;§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§7! § <= _loc2_)
               {
                  this.§7! § = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§]!H§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §%;§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§7! § = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
