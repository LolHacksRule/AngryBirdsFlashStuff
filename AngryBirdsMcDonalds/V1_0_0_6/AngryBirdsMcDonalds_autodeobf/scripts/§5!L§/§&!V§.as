package §5!L§
{
   import §7!5§.b2Body;
   import §7!Y§.b2Settings;
   
   public class §&!V§
   {
      
      public static const §;U§:String = "max";
      
      public static const §';§:String = "average";
       
      
      private var §&!F§:Number;
      
      private var §`"§:uint;
      
      private var §4!S§:Number;
      
      private var §<J§:Number;
      
      private var §-!a§:Vector.<Number>;
      
      private var §0R§:Vector.<Number>;
      
      private var §<!Q§:Vector.<Number>;
      
      private var §-!7§:int = 0;
      
      private var §;e§:Function;
      
      public function §&!V§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§-!a§ = new Vector.<Number>();
         this.§0R§ = new Vector.<Number>();
         this.§<!Q§ = new Vector.<Number>();
         this.§-W§ = param2;
         this.limitMultiplier = param1;
         this.§;e§ = this.§]!?§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§&!F§ = param1;
         this.§4!S§ = b2Settings.b2_linearSleepTolerance * this.§&!F§;
         this.§<J§ = b2Settings.b2_angularSleepTolerance * this.§&!F§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§&!F§;
      }
      
      public function set §-W§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§`"§ = param1;
         if(this.§`"§ < this.§-!a§.length)
         {
            _loc2_ = this.§-!a§.length - this.§`"§;
            this.§-!a§.splice(0,_loc2_);
            this.§0R§.splice(0,_loc2_);
            this.§<!Q§.splice(0,_loc2_);
         }
         else if(this.§`"§ > this.§-!a§.length)
         {
            _loc3_ = this.§-!a§.length;
            while(_loc3_ < this.§`"§)
            {
               this.§-!a§.push(0);
               this.§0R§.push(0);
               this.§<!Q§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §-W§() : uint
      {
         return this.§`"§;
      }
      
      public function §=s§() : void
      {
         this.§-!7§ = this.§-!7§ + 1 >= this.§-!a§.length ? 0 : int(this.§-!7§ + 1);
      }
      
      public function §^y§(param1:b2Body) : void
      {
         this.§-!a§[this.§-!7§] = param1.GetLinearVelocity().x;
         this.§0R§[this.§-!7§] = param1.GetLinearVelocity().y;
         this.§<!Q§[this.§-!7§] = param1.§3!k§();
      }
      
      public function §^!?§() : Boolean
      {
         if(Math.abs(this.§;e§(this.§-!a§)) < this.§4!S§ && Math.abs(this.§;e§(this.§0R§)) < this.§4!S§ && Math.abs(this.§;e§(this.§<!Q§)) < this.§<J§)
         {
            return false;
         }
         return true;
      }
      
      public function §<H§(param1:String) : void
      {
         switch(param1)
         {
            case §;U§:
               this.§;e§ = this.§1[§;
               break;
            case §';§:
            default:
               this.§;e§ = this.§]!?§;
         }
      }
      
      private function §]!?§(param1:Vector.<Number>) : Number
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
      
      private function §1[§(param1:Vector.<Number>) : Number
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
