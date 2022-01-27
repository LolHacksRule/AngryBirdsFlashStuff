package §+!#§
{
   import §0!?§.b2Body;
   import §0^§.b2Settings;
   
   public class §9!X§
   {
      
      public static const §1a§:String = "max";
      
      public static const § 5§:String = "average";
       
      
      private var §!!C§:Number;
      
      private var §6t§:uint;
      
      private var §%Z§:Number;
      
      private var §1!R§:Number;
      
      private var §0e§:Vector.<Number>;
      
      private var §@R§:Vector.<Number>;
      
      private var §%!T§:Vector.<Number>;
      
      private var §+C§:int = 0;
      
      private var §?p§:Function;
      
      public function §9!X§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§0e§ = new Vector.<Number>();
         this.§@R§ = new Vector.<Number>();
         this.§%!T§ = new Vector.<Number>();
         this.§1M§ = param2;
         this.limitMultiplier = param1;
         this.§?p§ = this.§#!N§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§!!C§ = param1;
         this.§%Z§ = b2Settings.b2_linearSleepTolerance * this.§!!C§;
         this.§1!R§ = b2Settings.b2_angularSleepTolerance * this.§!!C§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§!!C§;
      }
      
      public function set §1M§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§6t§ = param1;
         if(this.§6t§ < this.§0e§.length)
         {
            _loc2_ = this.§0e§.length - this.§6t§;
            this.§0e§.splice(0,_loc2_);
            this.§@R§.splice(0,_loc2_);
            this.§%!T§.splice(0,_loc2_);
         }
         else if(this.§6t§ > this.§0e§.length)
         {
            _loc3_ = this.§0e§.length;
            while(_loc3_ < this.§6t§)
            {
               this.§0e§.push(0);
               this.§@R§.push(0);
               this.§%!T§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §1M§() : uint
      {
         return this.§6t§;
      }
      
      public function §=W§() : void
      {
         this.§+C§ = this.§+C§ + 1 >= this.§0e§.length ? 0 : int(this.§+C§ + 1);
      }
      
      public function §0!B§(param1:b2Body) : void
      {
         this.§0e§[this.§+C§] = param1.GetLinearVelocity().x;
         this.§@R§[this.§+C§] = param1.GetLinearVelocity().y;
         this.§%!T§[this.§+C§] = param1.§0!L§();
      }
      
      public function §9!T§() : Boolean
      {
         if(Math.abs(this.§?p§(this.§0e§)) < this.§%Z§ && Math.abs(this.§?p§(this.§@R§)) < this.§%Z§ && Math.abs(this.§?p§(this.§%!T§)) < this.§1!R§)
         {
            return false;
         }
         return true;
      }
      
      public function §3Z§(param1:String) : void
      {
         switch(param1)
         {
            case §1a§:
               this.§?p§ = this.§>!H§;
               break;
            case § 5§:
            default:
               this.§?p§ = this.§#!N§;
         }
      }
      
      private function §#!N§(param1:Vector.<Number>) : Number
      {
         var _loc2_:Number = 0;
         var _loc3_:int = param1.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ += param1[_loc3_];
            _loc3_--;
         }
         return _loc2_ / param1.length;
      }
      
      private function §>!H§(param1:Vector.<Number>) : Number
      {
         var _loc2_:Number = 0;
         var _loc3_:int = param1.length - 1;
         while(_loc3_ >= 0)
         {
            if(param1[_loc3_] > _loc2_)
            {
               _loc2_ = param1[_loc3_];
            }
            _loc3_--;
         }
         return _loc2_;
      }
   }
}
