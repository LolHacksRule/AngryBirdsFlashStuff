package §"§#0
{
   import §7§.§8[§;
   
   public class §8!8§
   {
      
      protected static const §4"S§:Number = 1000 / 60;
       
      
      protected var §[!d§:Number = 0;
      
      protected var §2b§:Number = 0;
      
      protected var §0#-§:Number = 0;
      
      protected var §<M§:Number = 0;
      
      protected var §9!d§:Number = 0;
      
      protected var §%K§:Number = 0;
      
      protected var §5f§:Number = 0;
      
      public function §8!8§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§0#-§ = param1;
         this.§<M§ = param2;
         this.§%K§ = param1;
         this.§5f§ = param2;
         this.§[!d§ = 0;
         this.§2b§ = 0;
         this.§9!d§ = param3;
      }
      
      public function §`q§(param1:§8[§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§[!d§ < this.§9!d§)
         {
            this.§[!d§ += param2;
            this.§2b§ += this.§0#-§;
            _loc3_ = param2 / §4"S§ * this.§<M§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§2b§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§<M§ -= param2 / this.§9!d§ * this.§5f§;
            this.§0#-§ -= param2 / this.§9!d§ * this.§%K§;
            param1.§^"?§(_loc4_,_loc5_);
            param1.§+"r§();
            return true;
         }
         return false;
      }
   }
}
