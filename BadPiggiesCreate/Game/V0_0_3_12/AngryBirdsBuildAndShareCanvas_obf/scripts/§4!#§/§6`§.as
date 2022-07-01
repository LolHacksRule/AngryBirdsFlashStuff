package §4!#§
{
   import §&!M§.b2Body;
   import §6!`§.b2Settings;
   
   public class §6`§
   {
      
      public static const §>#§:String = "max";
      
      public static const §0"!§:String = "average";
       
      
      private var §;!t§:Number;
      
      private var §0H§:uint;
      
      private var §"!e§:Number;
      
      private var §-K§:Number;
      
      private var §1!U§:Vector.<Number>;
      
      private var § r§:Vector.<Number>;
      
      private var §=!I§:Vector.<Number>;
      
      private var §0!_§:int = 0;
      
      private var §+"!§:Function;
      
      public function §6`§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§1!U§ = new Vector.<Number>();
         this.§ r§ = new Vector.<Number>();
         this.§=!I§ = new Vector.<Number>();
         this.§ Z§ = param2;
         this.limitMultiplier = param1;
         this.§+"!§ = this.§4!a§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§;!t§ = param1;
         this.§"!e§ = b2Settings.b2_linearSleepTolerance * this.§;!t§;
         this.§-K§ = b2Settings.b2_angularSleepTolerance * this.§;!t§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§;!t§;
      }
      
      public function set § Z§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§0H§ = param1;
         if(this.§0H§ < this.§1!U§.length)
         {
            _loc2_ = this.§1!U§.length - this.§0H§;
            this.§1!U§.splice(0,_loc2_);
            this.§ r§.splice(0,_loc2_);
            this.§=!I§.splice(0,_loc2_);
         }
         else if(this.§0H§ > this.§1!U§.length)
         {
            _loc3_ = this.§1!U§.length;
            while(_loc3_ < this.§0H§)
            {
               this.§1!U§.push(0);
               this.§ r§.push(0);
               this.§=!I§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get § Z§() : uint
      {
         return this.§0H§;
      }
      
      public function §in §() : void
      {
         this.§0!_§ = this.§0!_§ + 1 >= this.§1!U§.length ? 0 : int(this.§0!_§ + 1);
      }
      
      public function §3"+§(param1:b2Body) : void
      {
         this.§1!U§[this.§0!_§] = param1.GetLinearVelocity().x;
         this.§ r§[this.§0!_§] = param1.GetLinearVelocity().y;
         this.§=!I§[this.§0!_§] = param1.§1!'§();
      }
      
      public function §[y§() : Boolean
      {
         if(Math.abs(this.§+"!§(this.§1!U§)) < this.§"!e§ && Math.abs(this.§+"!§(this.§ r§)) < this.§"!e§ && Math.abs(this.§+"!§(this.§=!I§)) < this.§-K§)
         {
            return false;
         }
         return true;
      }
      
      public function §^"8§(param1:String) : void
      {
         switch(param1)
         {
            case §>#§:
               this.§+"!§ = this.§ !c§;
               break;
            case §0"!§:
            default:
               this.§+"!§ = this.§4!a§;
         }
      }
      
      private function §4!a§(param1:Vector.<Number>) : Number
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
      
      private function § !c§(param1:Vector.<Number>) : Number
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
