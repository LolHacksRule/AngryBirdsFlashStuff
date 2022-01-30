package §?"&§
{
   import §7!q§.b2Body;
   import §[M§.b2Settings;
   
   public class §?!k§
   {
      
      public static const §;Y§:String = "max";
      
      public static const §5!n§:String = "average";
       
      
      private var §"!<§:Number;
      
      private var §@!B§:uint;
      
      private var §5#§:Number;
      
      private var §[!n§:Number;
      
      private var §>t§:Vector.<Number>;
      
      private var §"v§:Vector.<Number>;
      
      private var §5"$§:Vector.<Number>;
      
      private var §5!c§:int = 0;
      
      private var §&=§:Function;
      
      public function §?!k§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§>t§ = new Vector.<Number>();
         this.§"v§ = new Vector.<Number>();
         this.§5"$§ = new Vector.<Number>();
         this.§^=§ = param2;
         this.limitMultiplier = param1;
         this.§&=§ = this.§!!#§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§"!<§ = param1;
         this.§5#§ = b2Settings.b2_linearSleepTolerance * this.§"!<§;
         this.§[!n§ = b2Settings.b2_angularSleepTolerance * this.§"!<§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§"!<§;
      }
      
      public function set §^=§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§@!B§ = param1;
         if(this.§@!B§ < this.§>t§.length)
         {
            _loc2_ = this.§>t§.length - this.§@!B§;
            this.§>t§.splice(0,_loc2_);
            this.§"v§.splice(0,_loc2_);
            this.§5"$§.splice(0,_loc2_);
         }
         else if(this.§@!B§ > this.§>t§.length)
         {
            _loc3_ = this.§>t§.length;
            while(_loc3_ < this.§@!B§)
            {
               this.§>t§.push(0);
               this.§"v§.push(0);
               this.§5"$§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §^=§() : uint
      {
         return this.§@!B§;
      }
      
      public function §-!K§() : void
      {
         this.§5!c§ = this.§5!c§ + 1 >= this.§>t§.length ? 0 : int(this.§5!c§ + 1);
      }
      
      public function §&V§(param1:b2Body) : void
      {
         this.§>t§[this.§5!c§] = param1.GetLinearVelocity().x;
         this.§"v§[this.§5!c§] = param1.GetLinearVelocity().y;
         this.§5"$§[this.§5!c§] = param1.§9%§();
      }
      
      public function §9V§() : Boolean
      {
         if(Math.abs(this.§&=§(this.§>t§)) < this.§5#§ && Math.abs(this.§&=§(this.§"v§)) < this.§5#§ && Math.abs(this.§&=§(this.§5"$§)) < this.§[!n§)
         {
            return false;
         }
         return true;
      }
      
      public function §+t§(param1:String) : void
      {
         switch(param1)
         {
            case §;Y§:
               this.§&=§ = this.§#"4§;
               break;
            case §5!n§:
            default:
               this.§&=§ = this.§!!#§;
         }
      }
      
      private function §!!#§(param1:Vector.<Number>) : Number
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
      
      private function §#"4§(param1:Vector.<Number>) : Number
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
