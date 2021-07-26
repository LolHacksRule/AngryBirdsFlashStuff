package §3!#§
{
   import §&!Y§.b2World;
   import §0!2§.§5"L§;
   import §7F§.b2Vec2;
   import §]!v§.Sprite;
   
   public class §7!u§ extends §!!k§
   {
       
      
      private var §#!y§:Number = 0;
      
      public function §7!u§(param1:§04§, param2:Sprite, param3:b2World, param4:§5"L§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§#!y§ != 0 && §!!U§ != §3!A§)
         {
            this.§#!y§ = 0;
         }
         if(this.§#!y§ != 0)
         {
            _loc2_ = §`!y§().GetLinearVelocity().x;
            _loc3_ = §`!y§().GetLinearVelocity().y;
            if(this.§#!y§ < _loc2_)
            {
               §`!y§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§#!y§ >= _loc2_)
               {
                  this.§#!y§ = 0;
               }
            }
            else if(this.§#!y§ > _loc2_)
            {
               §`!y§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§#!y§ <= _loc2_)
               {
                  this.§#!y§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§04§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §`!y§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§#!y§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
