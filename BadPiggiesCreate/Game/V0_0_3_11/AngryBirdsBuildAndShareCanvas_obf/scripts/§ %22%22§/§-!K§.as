package § ""§
{
   import §7z§.b2Body;
   import §^+§.b2Settings;
   
   public class §-!K§
   {
      
      public static const §8v§:String = "max";
      
      public static const §<!^§:String = "average";
       
      
      private var §]q§:Number;
      
      private var §!O§:uint;
      
      private var §!!I§:Number;
      
      private var §9_§:Number;
      
      private var §7!5§:Vector.<Number>;
      
      private var § !z§:Vector.<Number>;
      
      private var §-@§:Vector.<Number>;
      
      private var §8"'§:int = 0;
      
      private var §>!+§:Function;
      
      public function §-!K§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§7!5§ = new Vector.<Number>();
         this.§ !z§ = new Vector.<Number>();
         this.§-@§ = new Vector.<Number>();
         this.§+j§ = param2;
         this.limitMultiplier = param1;
         this.§>!+§ = this.§+",§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§]q§ = param1;
         this.§!!I§ = b2Settings.b2_linearSleepTolerance * this.§]q§;
         this.§9_§ = b2Settings.b2_angularSleepTolerance * this.§]q§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§]q§;
      }
      
      public function set §+j§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§!O§ = param1;
         if(this.§!O§ < this.§7!5§.length)
         {
            _loc2_ = this.§7!5§.length - this.§!O§;
            this.§7!5§.splice(0,_loc2_);
            this.§ !z§.splice(0,_loc2_);
            this.§-@§.splice(0,_loc2_);
         }
         else if(this.§!O§ > this.§7!5§.length)
         {
            _loc3_ = this.§7!5§.length;
            while(_loc3_ < this.§!O§)
            {
               this.§7!5§.push(0);
               this.§ !z§.push(0);
               this.§-@§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §+j§() : uint
      {
         return this.§!O§;
      }
      
      public function §]i§() : void
      {
         this.§8"'§ = this.§8"'§ + 1 >= this.§7!5§.length ? 0 : int(this.§8"'§ + 1);
      }
      
      public function §4H§(param1:b2Body) : void
      {
         this.§7!5§[this.§8"'§] = param1.GetLinearVelocity().x;
         this.§ !z§[this.§8"'§] = param1.GetLinearVelocity().y;
         this.§-@§[this.§8"'§] = param1.§,!4§();
      }
      
      public function §`!3§() : Boolean
      {
         if(Math.abs(this.§>!+§(this.§7!5§)) < this.§!!I§ && Math.abs(this.§>!+§(this.§ !z§)) < this.§!!I§ && Math.abs(this.§>!+§(this.§-@§)) < this.§9_§)
         {
            return false;
         }
         return true;
      }
      
      public function §5!Y§(param1:String) : void
      {
         switch(param1)
         {
            case §8v§:
               this.§>!+§ = this.§==§;
               break;
            case §<!^§:
            default:
               this.§>!+§ = this.§+",§;
         }
      }
      
      private function §+",§(param1:Vector.<Number>) : Number
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
      
      private function §==§(param1:Vector.<Number>) : Number
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
