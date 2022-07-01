package §9G§
{
   import §^!<§.§#t§;
   
   public class §1!u§
   {
      
      protected static const §#!z§:Number = 1000 / 60;
       
      
      protected var §3!P§:Number = 0;
      
      protected var §1M§:Number = 0;
      
      protected var §]c§:Number = 0;
      
      protected var §-!z§:Number = 0;
      
      protected var §+L§:Number = 0;
      
      protected var §@!?§:Number = 0;
      
      protected var §;!H§:Number = 0;
      
      public function §1!u§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§]c§ = param1;
         this.§-!z§ = param2;
         this.§@!?§ = param1;
         this.§;!H§ = param2;
         this.§3!P§ = 0;
         this.§1M§ = 0;
         this.§+L§ = param3;
      }
      
      public function §@`§(param1:§#t§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§3!P§ < this.§+L§)
         {
            this.§3!P§ += param2;
            this.§1M§ += this.§]c§;
            _loc3_ = param2 / §#!z§ * this.§-!z§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§1M§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§-!z§ -= param2 / this.§+L§ * this.§;!H§;
            this.§]c§ -= param2 / this.§+L§ * this.§@!?§;
            param1.§>k§(_loc4_,_loc5_);
            param1.§?!,§();
            return true;
         }
         return false;
      }
   }
}
