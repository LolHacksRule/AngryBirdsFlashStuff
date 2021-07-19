package §^#>§
{
   import §-!_§.§,#Q§;
   
   public class §40§
   {
      
      protected static const §1!`§:Number = 1000 / 60;
       
      
      protected var §3g§:Number = 0;
      
      protected var §1"`§:Number = 0;
      
      protected var §&=§:Number = 0;
      
      protected var §8L§:Number = 0;
      
      protected var §`#a§:Number = 0;
      
      protected var §4"<§:Number = 0;
      
      protected var §8P§:Number = 0;
      
      public function §40§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§&=§ = param1;
         this.§8L§ = param2;
         this.§4"<§ = param1;
         this.§8P§ = param2;
         this.§3g§ = 0;
         this.§1"`§ = 0;
         this.§`#a§ = param3;
      }
      
      public function §9"f§(param1:§,#Q§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§3g§ < this.§`#a§)
         {
            this.§3g§ += param2;
            this.§1"`§ += this.§&=§;
            _loc3_ = param2 / §1!`§ * this.§8L§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§1"`§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§8L§ -= param2 / this.§`#a§ * this.§8P§;
            this.§&=§ -= param2 / this.§`#a§ * this.§4"<§;
            param1.§3u§(_loc4_,_loc5_);
            param1.§,n§();
            return true;
         }
         return false;
      }
   }
}
