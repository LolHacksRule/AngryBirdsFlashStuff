package §@!b§
{
   import §!!g§.§8d§;
   
   public class §>f§
   {
       
      
      public var §+!9§:Number = 0;
      
      public var §2!O§:Number = 0;
      
      public var §->§:Number;
      
      public var §[&§:Number;
      
      public function §>f§(param1:Number, param2:Number)
      {
         this.§->§ = §0]§.§3I§;
         this.§[&§ = §0]§.§@!]§;
         super();
         this.§->§ = param1;
         this.§[&§ = param2;
         this.§+!9§ = 0;
         this.§2!O§ = 0;
      }
      
      public function §7;§(param1:§8d§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§+!9§ < §0]§.§@8§)
         {
            this.§+!9§ += param2;
            this.§2!O§ += this.§->§;
            _loc3_ = param2 / §0]§.§<!7§ * this.§[&§ * Math.sin(Math.PI / 4 + this.§2!O§ * 2 * Math.PI);
            _loc4_ = param2 / §0]§.§<!7§ * this.§[&§ * Math.sin(this.§2!O§ * 2.1 * Math.PI);
            this.§[&§ -= param2 * §0]§.§@!]§ / §0]§.§@8§;
            this.§->§ -= param2 * §0]§.§3I§ / §0]§.§@8§;
            param1.setOffset(_loc3_,_loc4_);
            param1.§0!?§();
            return true;
         }
         return false;
      }
   }
}
