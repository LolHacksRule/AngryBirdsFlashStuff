package §^!$§
{
   import §&!9§.Sprite;
   import §&F§.§>!2§;
   import §6V§.b2Vec2;
   import §<!L§.b2World;
   
   public class §4!G§ extends §6y§
   {
       
      
      private var §<!Z§:Number = 0;
      
      public function §4!G§(param1:§;!D§, param2:Sprite, param3:b2World, param4:§>!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§<!Z§ != 0 && §+m§ != §>!`§)
         {
            this.§<!Z§ = 0;
         }
         if(this.§<!Z§ != 0)
         {
            _loc2_ = §#!!§().GetLinearVelocity().x;
            _loc3_ = §#!!§().GetLinearVelocity().y;
            if(this.§<!Z§ < _loc2_)
            {
               §#!!§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§<!Z§ >= _loc2_)
               {
                  this.§<!Z§ = 0;
               }
            }
            else if(this.§<!Z§ > _loc2_)
            {
               §#!!§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§<!Z§ <= _loc2_)
               {
                  this.§<!Z§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§;!D§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §#!!§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§<!Z§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
