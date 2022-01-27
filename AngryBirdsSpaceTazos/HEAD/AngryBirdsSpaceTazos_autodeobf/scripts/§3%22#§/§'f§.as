package §3"#§
{
   import §3h§.§'`§;
   
   public class §'f§
   {
      
      protected static const §`![§:Number = 1000 / 60;
       
      
      protected var §[P§:Number = 0;
      
      protected var §^!f§:Number = 0;
      
      protected var §9!W§:Number = 0;
      
      protected var §9!x§:Number = 0;
      
      protected var §&!w§:Number = 0;
      
      protected var §6"&§:Number = 0;
      
      protected var §^!7§:Number = 0;
      
      public function §'f§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§9!W§ = param1;
         this.§9!x§ = param2;
         this.§6"&§ = param1;
         this.§^!7§ = param2;
         this.§[P§ = 0;
         this.§^!f§ = 0;
         this.§&!w§ = param3;
      }
      
      public function §^X§(param1:§'`§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§[P§ < this.§&!w§)
         {
            this.§[P§ += param2;
            this.§^!f§ += this.§9!W§;
            _loc3_ = param2 / §`![§ * this.§9!x§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§^!f§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§9!x§ -= param2 / this.§&!w§ * this.§^!7§;
            this.§9!W§ -= param2 / this.§&!w§ * this.§6"&§;
            param1.§=!F§(_loc4_,_loc5_);
            param1.§[!q§();
            return true;
         }
         return false;
      }
   }
}
