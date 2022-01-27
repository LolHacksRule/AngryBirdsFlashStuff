package §?!<§
{
   import §[r§.§ use§;
   
   public class §5!,§
   {
      
      protected static const each:Number = 1000 / 60;
       
      
      protected var §;4§:Number = 0;
      
      protected var §,!j§:Number = 0;
      
      protected var §7">§:Number = 0;
      
      protected var §--§:Number = 0;
      
      protected var §]"=§:Number = 0;
      
      protected var §>O§:Number = 0;
      
      protected var §'!?§:Number = 0;
      
      public function §5!,§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§7">§ = param1;
         this.§--§ = param2;
         this.§>O§ = param1;
         this.§'!?§ = param2;
         this.§;4§ = 0;
         this.§,!j§ = 0;
         this.§]"=§ = param3;
      }
      
      public function §?&§(param1:§ use§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§;4§ < this.§]"=§)
         {
            this.§;4§ += param2;
            this.§,!j§ += this.§7">§;
            _loc3_ = param2 / each * this.§--§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§,!j§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§--§ -= param2 / this.§]"=§ * this.§'!?§;
            this.§7">§ -= param2 / this.§]"=§ * this.§>O§;
            param1.§&%§(_loc4_,_loc5_);
            param1.§2!Q§();
            return true;
         }
         return false;
      }
   }
}
