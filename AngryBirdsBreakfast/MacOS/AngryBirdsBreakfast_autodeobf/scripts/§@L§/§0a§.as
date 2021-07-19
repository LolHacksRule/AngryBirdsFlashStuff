package §@L§
{
   import §+!!§.§5"+§;
   
   public class §0a§
   {
      
      protected static const §-! §:Number = 1000 / 60;
       
      
      protected var §]!q§:Number = 0;
      
      protected var §#q§:Number = 0;
      
      protected var §;U§:Number = 0;
      
      protected var §2!l§:Number = 0;
      
      protected var §0u§:Number = 0;
      
      protected var §%!E§:Number = 0;
      
      protected var §1l§:Number = 0;
      
      public function §0a§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§;U§ = param1;
         this.§2!l§ = param2;
         this.§%!E§ = param1;
         this.§1l§ = param2;
         this.§]!q§ = 0;
         this.§#q§ = 0;
         this.§0u§ = param3;
      }
      
      public function §]!U§(param1:§5"+§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§]!q§ < this.§0u§)
         {
            this.§]!q§ += param2;
            this.§#q§ += this.§;U§;
            _loc3_ = param2 / §-! § * this.§2!l§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§#q§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§2!l§ -= param2 / this.§0u§ * this.§1l§;
            this.§;U§ -= param2 / this.§0u§ * this.§%!E§;
            param1.§9!!§(_loc4_,_loc5_);
            param1.§?!F§();
            return true;
         }
         return false;
      }
   }
}
