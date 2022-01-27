package §+!#§
{
   import §0!=§.b2Vec2;
   import §0!?§.b2World;
   import §2z§.§2!U§;
   import §=!E§.Sprite;
   
   public class §&!A§ extends § q§
   {
       
      
      private var §+!_§:Number = 0;
      
      public function §&!A§(param1:§"!6§, param2:Sprite, param3:b2World, param4:§2!U§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§+!_§ != 0 && §7!M§ != §+z§)
         {
            this.§+!_§ = 0;
         }
         if(this.§+!_§ != 0)
         {
            _loc2_ = §[!H§().GetLinearVelocity().x;
            _loc3_ = §[!H§().GetLinearVelocity().y;
            if(this.§+!_§ < _loc2_)
            {
               §[!H§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
               if(this.§+!_§ >= _loc2_)
               {
                  this.§+!_§ = 0;
               }
            }
            else if(this.§+!_§ > _loc2_)
            {
               §[!H§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
               if(this.§+!_§ <= _loc2_)
               {
                  this.§+!_§ = 0;
               }
            }
         }
      }
      
      override public function activateSpecialPower(param1:§"!6§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §[!H§().GetLinearVelocity().x;
         if(_loc2_ != 0)
         {
            this.§+!_§ = -_loc2_ * 1.5;
         }
         return true;
      }
   }
}
