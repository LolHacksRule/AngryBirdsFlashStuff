package §4!s§
{
   import §2!§.§1!n§;
   
   public class §8!Q§
   {
       
      
      public var §==§:Number = 0;
      
      public var §[@§:Number = 0;
      
      public var §;I§:Number;
      
      public var §6"$§:Number;
      
      public function §8!Q§(param1:Number, param2:Number)
      {
         this.§;I§ = §7!$§.§ "-§;
         this.§6"$§ = §7!$§.§,M§;
         super();
         this.§;I§ = param1;
         this.§6"$§ = param2;
         this.§==§ = 0;
         this.§[@§ = 0;
      }
      
      public function §,N§(param1:§1!n§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§==§ < §7!$§.§#e§)
         {
            this.§==§ += param2;
            this.§[@§ += this.§;I§;
            _loc3_ = param2 / §7!$§.§=u§ * this.§6"$§ * Math.sin(Math.PI / 4 + this.§[@§ * 2 * Math.PI);
            _loc4_ = param2 / §7!$§.§=u§ * this.§6"$§ * Math.sin(this.§[@§ * 2.1 * Math.PI);
            this.§6"$§ -= param2 * §7!$§.§,M§ / §7!$§.§#e§;
            this.§;I§ -= param2 * §7!$§.§ "-§ / §7!$§.§#e§;
            param1.§[o§(_loc3_,_loc4_);
            param1.§5"§();
            return true;
         }
         return false;
      }
   }
}
