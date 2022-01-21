package §5!G§
{
   import §!R§.b2Vec2;
   import §1B§.b2World;
   import §2!g§.Sprite;
   import §@!b§.§@!k§;
   
   public class §'5§ extends §'!1§
   {
       
      
      private var §0i§:Number = 0;
      
      public function §'5§(param1:§8+§, param2:Sprite, param3:b2World, param4:§@!k§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§0i§ != 0 && §%!C§ != §#!2§)
         {
            this.§0i§ = 0;
         }
         if(this.§0i§ != 0)
         {
            _loc2_ = §>j§().GetLinearVelocity().x;
            _loc3_ = §>j§().GetLinearVelocity().y;
            if(this.§0i§ < _loc2_)
            {
               §>j§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§0i§ >= _loc2_)
               {
                  this.§0i§ = 0;
               }
            }
            else if(this.§0i§ > _loc2_)
            {
               §>j§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§0i§ <= _loc2_)
               {
                  this.§0i§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§8+§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §>j§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§0i§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
