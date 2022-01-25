package §;+§
{
   import § !K§.Sprite;
   import §&!L§.b2Vec2;
   import §3f§.b2World;
   import §4A§.§&_§;
   
   public class §@!1§ extends §"!R§
   {
       
      
      private var §;!X§:Number = 0;
      
      public function §@!1§(param1:§+!?§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§;!X§ != 0 && §"!D§ != §?L§)
         {
            this.§;!X§ = 0;
         }
         if(this.§;!X§ != 0)
         {
            _loc2_ = §1!d§().GetLinearVelocity().x;
            _loc3_ = §1!d§().GetLinearVelocity().y;
            if(this.§;!X§ < _loc2_)
            {
               §1!d§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§;!X§ >= _loc2_)
               {
                  this.§;!X§ = 0;
               }
            }
            else if(this.§;!X§ > _loc2_)
            {
               §1!d§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§;!X§ <= _loc2_)
               {
                  this.§;!X§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§+!?§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §1!d§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§;!X§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
