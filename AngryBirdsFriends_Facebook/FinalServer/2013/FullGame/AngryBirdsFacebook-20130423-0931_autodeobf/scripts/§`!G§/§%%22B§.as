package §`!G§
{
   import §,"[§.b2Settings;
   import §6"1§.b2Body;
   
   public class §%"B§
   {
      
      public static const §@"!§:String = "max";
      
      public static const §1L§:String = "average";
       
      
      private var §4u§:Number;
      
      private var §-!u§:uint;
      
      private var §3!`§:Number;
      
      private var §>!i§:Number;
      
      private var §1"8§:Vector.<Number>;
      
      private var §9!B§:Vector.<Number>;
      
      private var §&Y§:Vector.<Number>;
      
      private var §'!`§:int = 0;
      
      private var §-!B§:Function;
      
      public function §%"B§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§1"8§ = new Vector.<Number>();
         this.§9!B§ = new Vector.<Number>();
         this.§&Y§ = new Vector.<Number>();
         this.§8!A§ = param2;
         this.limitMultiplier = param1;
         this.§-!B§ = this.§4i§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§4u§ = param1;
         this.§3!`§ = b2Settings.b2_linearSleepTolerance * this.§4u§;
         this.§>!i§ = b2Settings.b2_angularSleepTolerance * this.§4u§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§4u§;
      }
      
      public function set §8!A§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§-!u§ = param1;
         if(this.§-!u§ < this.§1"8§.length)
         {
            _loc2_ = this.§1"8§.length - this.§-!u§;
            this.§1"8§.splice(0,_loc2_);
            this.§9!B§.splice(0,_loc2_);
            this.§&Y§.splice(0,_loc2_);
         }
         else if(this.§-!u§ > this.§1"8§.length)
         {
            _loc3_ = this.§1"8§.length;
            while(_loc3_ < this.§-!u§)
            {
               this.§1"8§.push(0);
               this.§9!B§.push(0);
               this.§&Y§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §8!A§() : uint
      {
         return this.§-!u§;
      }
      
      public function §2!m§() : void
      {
         this.§'!`§ = this.§'!`§ + 1 >= this.§1"8§.length ? 0 : int(this.§'!`§ + 1);
      }
      
      public function §="!§(param1:b2Body) : void
      {
         this.§1"8§[this.§'!`§] = param1.GetLinearVelocity().x;
         this.§9!B§[this.§'!`§] = param1.GetLinearVelocity().y;
         this.§&Y§[this.§'!`§] = param1.GetAngularVelocity();
      }
      
      public function §%`§() : Boolean
      {
         if(Math.abs(this.§-!B§(this.§1"8§)) < this.§3!`§ && Math.abs(this.§-!B§(this.§9!B§)) < this.§3!`§ && Math.abs(this.§-!B§(this.§&Y§)) < this.§>!i§)
         {
            return false;
         }
         return true;
      }
      
      public function §=$§(param1:String) : void
      {
         switch(param1)
         {
            case §@"!§:
               this.§-!B§ = this.§5d§;
               break;
            case §1L§:
            default:
               this.§-!B§ = this.§4i§;
         }
      }
      
      private function §4i§(param1:Vector.<Number>) : Number
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
      
      private function §5d§(param1:Vector.<Number>) : Number
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
