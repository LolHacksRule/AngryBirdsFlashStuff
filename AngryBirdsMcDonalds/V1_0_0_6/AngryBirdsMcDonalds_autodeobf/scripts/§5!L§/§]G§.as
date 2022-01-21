package §5!L§
{
   import §2![§.Sprite;
   import §7!5§.b2World;
   import §<L§.§!!G§;
   import §@![§.b2Vec2;
   
   public class §]G§ extends §1L§
   {
       
      
      private var §&!T§:Number = 0;
      
      public function §]G§(param1:§?8§, param2:Sprite, param3:b2World, param4:§!!G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§&!T§ != 0 && §3o§ != §'6§)
         {
            this.§&!T§ = 0;
         }
         if(this.§&!T§ != 0)
         {
            _loc2_ = §;G§().GetLinearVelocity().x;
            _loc3_ = §;G§().GetLinearVelocity().y;
            if(this.§&!T§ < _loc2_)
            {
               §;G§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§&!T§ >= _loc2_)
               {
                  this.§&!T§ = 0;
               }
            }
            else if(this.§&!T§ > _loc2_)
            {
               §;G§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§&!T§ <= _loc2_)
               {
                  this.§&!T§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§?8§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §;G§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§&!T§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
