package §+!C§
{
   import §9$<§.§-t§;
   
   public class §;#b§
   {
      
      protected static const §;!q§:Number = 1000 / 60;
       
      
      protected var §;#k§:Number = 0;
      
      protected var §;!_§:Number = 0;
      
      protected var §?!a§:Number = 0;
      
      protected var §<$<§:Number = 0;
      
      protected var §0"N§:Number = 0;
      
      protected var §5l§:Number = 0;
      
      protected var §7!&§:Number = 0;
      
      public function §;#b§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§?!a§ = param1;
         this.§<$<§ = param2;
         this.§5l§ = param1;
         this.§7!&§ = param2;
         this.§;#k§ = 0;
         this.§;!_§ = 0;
         this.§0"N§ = param3;
      }
      
      public function §`"o§(param1:§-t§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§;#k§ < this.§0"N§)
         {
            this.§;#k§ += param2;
            this.§;!_§ += this.§?!a§;
            _loc3_ = param2 / §;!q§ * this.§<$<§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§;!_§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§<$<§ -= param2 / this.§0"N§ * this.§7!&§;
            this.§?!a§ -= param2 / this.§0"N§ * this.§5l§;
            param1.§,!P§(_loc4_,_loc5_);
            param1.§&!C§();
            return true;
         }
         return false;
      }
      
      private function get §[#A§() : Number
      {
         return this.§0"N§ - this.§;#k§;
      }
      
      public function §?W§(param1:Number) : void
      {
         var _loc2_:Number = param1 - (this.§?!a§ < 0 ? 0 : this.§?!a§);
         if(_loc2_ > 0)
         {
            this.§?!a§ += _loc2_;
         }
      }
      
      public function §1"v§(param1:Number) : void
      {
         var _loc2_:Number = param1 - (this.§<$<§ < 0 ? 0 : this.§<$<§);
         if(_loc2_ > 0)
         {
            this.§<$<§ += _loc2_;
         }
      }
      
      public function §]!G§(param1:Number) : void
      {
         var _loc2_:Number = param1 - this.§[#A§;
         if(_loc2_ > 0)
         {
            this.§0"N§ += _loc2_;
         }
      }
   }
}
