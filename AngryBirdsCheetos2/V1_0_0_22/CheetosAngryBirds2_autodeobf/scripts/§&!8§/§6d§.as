package §&!8§
{
   import § o§.b2World;
   import §,§.§ p§;
   import §6!H§.b2Vec2;
   import §^a§.Sprite;
   
   public class §6d§ extends §]V§
   {
       
      
      private var §>!>§:Number = 0;
      
      public function §6d§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§>!>§ != 0 && §+_§ != § !G§)
         {
            this.§>!>§ = 0;
         }
         if(this.§>!>§ != 0)
         {
            _loc2_ = §`e§().GetLinearVelocity().x;
            _loc3_ = §`e§().GetLinearVelocity().y;
            if(this.§>!>§ < _loc2_)
            {
               §`e§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§>!>§ >= _loc2_)
               {
                  this.§>!>§ = 0;
               }
            }
            else if(this.§>!>§ > _loc2_)
            {
               §`e§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§>!>§ <= _loc2_)
               {
                  this.§>!>§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§+!6§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §`e§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§>!>§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
