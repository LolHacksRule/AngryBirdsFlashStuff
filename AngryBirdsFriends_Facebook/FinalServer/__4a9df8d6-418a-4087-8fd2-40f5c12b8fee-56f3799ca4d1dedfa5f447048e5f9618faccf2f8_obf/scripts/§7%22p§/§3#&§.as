package §7"p§
{
   import §'G§.§3$§;
   import §'G§.§^"[§;
   
   public class §3#&§ extends §6!9§
   {
      
      public static const §-$?§:String = "Effect_Shrinking_Particle";
       
      
      private var §6$C§:String;
      
      private var §=c§:Number;
      
      public function §3#&§(param1:§^"[§, param2:§3$§, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:Number = -1, param15:Boolean = false, param16:String = "", param17:Number = 0)
      {
         this.§6$C§ = param16;
         this.§=c§ = param17;
         super(param1,param2,§-$?§,param3,param4,param5,param6,param7,"",param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      override protected function getParticleType() : String
      {
         return this.§6$C§;
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Boolean = super.updateParticles(param1);
         var _loc3_:Number = §%"<§ / §&$!§ * 100;
         if(_loc3_ >= this.§=c§)
         {
            _loc4_ = §&$!§ * (this.§=c§ / 100);
            _loc5_ = §5>§ * (1 - (§%"<§ - _loc4_) / (§&$!§ - _loc4_));
            §&#W§.scaleX = _loc5_;
            §&#W§.scaleY = _loc5_;
         }
         else
         {
            §&#W§.scaleX = §5>§;
            §&#W§.scaleY = §5>§;
         }
         return _loc2_;
      }
   }
}
