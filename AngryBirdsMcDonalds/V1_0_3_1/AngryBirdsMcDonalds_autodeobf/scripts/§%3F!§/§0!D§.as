package §?!§
{
   import §&x§.b2Body;
   import §3o§.b2Settings;
   
   public class §0!D§
   {
      
      public static const §#x§:String = "max";
      
      public static const §4f§:String = "average";
       
      
      private var §"!G§:Number;
      
      private var §2! §:uint;
      
      private var §+!L§:Number;
      
      private var §[!G§:Number;
      
      private var §8w§:Vector.<Number>;
      
      private var §%!h§:Vector.<Number>;
      
      private var §]!K§:Vector.<Number>;
      
      private var §?]§:int = 0;
      
      private var §-!?§:Function;
      
      public function §0!D§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§8w§ = new Vector.<Number>();
         this.§%!h§ = new Vector.<Number>();
         this.§]!K§ = new Vector.<Number>();
         this.§@!8§ = param2;
         this.limitMultiplier = param1;
         this.§-!?§ = this.§<!P§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§"!G§ = param1;
         this.§+!L§ = b2Settings.b2_linearSleepTolerance * this.§"!G§;
         this.§[!G§ = b2Settings.b2_angularSleepTolerance * this.§"!G§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§"!G§;
      }
      
      public function set §@!8§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§2! § = param1;
         if(this.§2! § < this.§8w§.length)
         {
            _loc2_ = this.§8w§.length - this.§2! §;
            this.§8w§.splice(0,_loc2_);
            this.§%!h§.splice(0,_loc2_);
            this.§]!K§.splice(0,_loc2_);
         }
         else if(this.§2! § > this.§8w§.length)
         {
            _loc3_ = this.§8w§.length;
            while(_loc3_ < this.§2! §)
            {
               this.§8w§.push(0);
               this.§%!h§.push(0);
               this.§]!K§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §@!8§() : uint
      {
         return this.§2! §;
      }
      
      public function §-!f§() : void
      {
         this.§?]§ = this.§?]§ + 1 >= this.§8w§.length ? 0 : int(this.§?]§ + 1);
      }
      
      public function §2F§(param1:b2Body) : void
      {
         this.§8w§[this.§?]§] = param1.GetLinearVelocity().x;
         this.§%!h§[this.§?]§] = param1.GetLinearVelocity().y;
         this.§]!K§[this.§?]§] = param1.§#!n§();
      }
      
      public function §<R§() : Boolean
      {
         if(Math.abs(this.§-!?§(this.§8w§)) < this.§+!L§ && Math.abs(this.§-!?§(this.§%!h§)) < this.§+!L§ && Math.abs(this.§-!?§(this.§]!K§)) < this.§[!G§)
         {
            return false;
         }
         return true;
      }
      
      public function §[!O§(param1:String) : void
      {
         switch(param1)
         {
            case §#x§:
               this.§-!?§ = this.§ !P§;
               break;
            case §4f§:
            default:
               this.§-!?§ = this.§<!P§;
         }
      }
      
      private function §<!P§(param1:Vector.<Number>) : Number
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
      
      private function § !P§(param1:Vector.<Number>) : Number
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
