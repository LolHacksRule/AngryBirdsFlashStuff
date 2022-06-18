package §#!P§
{
   import §!!B§.b2Body;
   import §;0§.b2Settings;
   
   public class §#!B§
   {
      
      public static const §;!;§:String = "max";
      
      public static const §6B§:String = "average";
       
      
      private var §!!a§:Number;
      
      private var §!!N§:uint;
      
      private var §]N§:Number;
      
      private var §=M§:Number;
      
      private var §9I§:Vector.<Number>;
      
      private var §-H§:Vector.<Number>;
      
      private var §[!=§:Vector.<Number>;
      
      private var §]K§:int = 0;
      
      private var §1h§:Function;
      
      public function §#!B§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§9I§ = new Vector.<Number>();
         this.§-H§ = new Vector.<Number>();
         this.§[!=§ = new Vector.<Number>();
         this.§4D§ = param2;
         this.limitMultiplier = param1;
         this.§1h§ = this.§8!D§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§!!a§ = param1;
         this.§]N§ = b2Settings.b2_linearSleepTolerance * this.§!!a§;
         this.§=M§ = b2Settings.b2_angularSleepTolerance * this.§!!a§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§!!a§;
      }
      
      public function set §4D§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§!!N§ = param1;
         if(this.§!!N§ < this.§9I§.length)
         {
            _loc2_ = this.§9I§.length - this.§!!N§;
            this.§9I§.splice(0,_loc2_);
            this.§-H§.splice(0,_loc2_);
            this.§[!=§.splice(0,_loc2_);
         }
         else if(this.§!!N§ > this.§9I§.length)
         {
            _loc3_ = this.§9I§.length;
            while(_loc3_ < this.§!!N§)
            {
               this.§9I§.push(0);
               this.§-H§.push(0);
               this.§[!=§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §4D§() : uint
      {
         return this.§!!N§;
      }
      
      public function §3!I§() : void
      {
         this.§]K§ = this.§]K§ + 1 >= this.§9I§.length ? 0 : int(this.§]K§ + 1);
      }
      
      public function §2!=§(param1:b2Body) : void
      {
         this.§9I§[this.§]K§] = param1.GetLinearVelocity().x;
         this.§-H§[this.§]K§] = param1.GetLinearVelocity().y;
         this.§[!=§[this.§]K§] = param1.§#=§();
      }
      
      public function §@G§() : Boolean
      {
         if(Math.abs(this.§1h§(this.§9I§)) < this.§]N§ && Math.abs(this.§1h§(this.§-H§)) < this.§]N§ && Math.abs(this.§1h§(this.§[!=§)) < this.§=M§)
         {
            return false;
         }
         return true;
      }
      
      public function §;c§(param1:String) : void
      {
         switch(param1)
         {
            case §;!;§:
               this.§1h§ = this.§"q§;
               break;
            case §6B§:
            default:
               this.§1h§ = this.§8!D§;
         }
      }
      
      private function §8!D§(param1:Vector.<Number>) : Number
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
      
      private function §"q§(param1:Vector.<Number>) : Number
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
