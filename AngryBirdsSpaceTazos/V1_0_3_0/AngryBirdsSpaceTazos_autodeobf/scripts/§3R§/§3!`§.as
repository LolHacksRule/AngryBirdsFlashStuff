package §3R§
{
   import §&!3§.§0!W§;
   
   public class §3!`§
   {
      
      protected static const §0!Y§:Number = 1000 / 60;
       
      
      protected var §,!m§:Number = 0;
      
      protected var §"!l§:Number = 0;
      
      protected var §2!>§:Number = 0;
      
      protected var §0b§:Number = 0;
      
      protected var §5!o§:Number = 0;
      
      protected var §1J§:Number = 0;
      
      protected var §-!=§:Number = 0;
      
      public function §3!`§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§2!>§ = param1;
         this.§0b§ = param2;
         this.§1J§ = param1;
         this.§-!=§ = param2;
         this.§,!m§ = 0;
         this.§"!l§ = 0;
         this.§5!o§ = param3;
      }
      
      public function §7!'§(param1:§0!W§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§,!m§ < this.§5!o§)
         {
            this.§,!m§ += param2;
            this.§"!l§ += this.§2!>§;
            _loc3_ = param2 / §0!Y§ * this.§0b§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§"!l§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§0b§ -= param2 / this.§5!o§ * this.§-!=§;
            this.§2!>§ -= param2 / this.§5!o§ * this.§1J§;
            param1.§#!w§(_loc4_,_loc5_);
            param1.§-!x§();
            return true;
         }
         return false;
      }
   }
}
