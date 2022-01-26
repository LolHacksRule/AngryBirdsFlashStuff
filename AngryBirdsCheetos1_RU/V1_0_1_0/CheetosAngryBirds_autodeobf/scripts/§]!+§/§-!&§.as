package §]!+§
{
   import §[x§.b2Body;
   import §^<§.b2Settings;
   
   public class §-!&§
   {
      
      public static const §`<§:String = "max";
      
      public static const §9!$§:String = "average";
       
      
      private var §4!]§:Number;
      
      private var §%]§:uint;
      
      private var § !F§:Number;
      
      private var §5E§:Number;
      
      private var §[U§:Vector.<Number>;
      
      private var §?!=§:Vector.<Number>;
      
      private var §6l§:Vector.<Number>;
      
      private var §;5§:int = 0;
      
      private var §3@§:Function;
      
      public function §-!&§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§[U§ = new Vector.<Number>();
         this.§?!=§ = new Vector.<Number>();
         this.§6l§ = new Vector.<Number>();
         this.§[!-§ = param2;
         this.limitMultiplier = param1;
         this.§3@§ = this.§#&§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§4!]§ = param1;
         this.§ !F§ = b2Settings.b2_linearSleepTolerance * this.§4!]§;
         this.§5E§ = b2Settings.b2_angularSleepTolerance * this.§4!]§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§4!]§;
      }
      
      public function set §[!-§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§%]§ = param1;
         if(this.§%]§ < this.§[U§.length)
         {
            _loc2_ = this.§[U§.length - this.§%]§;
            this.§[U§.splice(0,_loc2_);
            this.§?!=§.splice(0,_loc2_);
            this.§6l§.splice(0,_loc2_);
         }
         else if(this.§%]§ > this.§[U§.length)
         {
            _loc3_ = this.§[U§.length;
            while(_loc3_ < this.§%]§)
            {
               this.§[U§.push(0);
               this.§?!=§.push(0);
               this.§6l§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §[!-§() : uint
      {
         return this.§%]§;
      }
      
      public function §,7§() : void
      {
         this.§;5§ = this.§;5§ + 1 >= this.§[U§.length ? 0 : int(this.§;5§ + 1);
      }
      
      public function §?!,§(param1:b2Body) : void
      {
         this.§[U§[this.§;5§] = param1.GetLinearVelocity().x;
         this.§?!=§[this.§;5§] = param1.GetLinearVelocity().y;
         this.§6l§[this.§;5§] = param1.§5!+§();
      }
      
      public function §@!U§() : Boolean
      {
         if(Math.abs(this.§3@§(this.§[U§)) < this.§ !F§ && Math.abs(this.§3@§(this.§?!=§)) < this.§ !F§ && Math.abs(this.§3@§(this.§6l§)) < this.§5E§)
         {
            return false;
         }
         return true;
      }
      
      public function §]o§(param1:String) : void
      {
         switch(param1)
         {
            case §`<§:
               this.§3@§ = this.§-_§;
               break;
            case §9!$§:
            default:
               this.§3@§ = this.§#&§;
         }
      }
      
      private function §#&§(param1:Vector.<Number>) : Number
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
      
      private function §-_§(param1:Vector.<Number>) : Number
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
