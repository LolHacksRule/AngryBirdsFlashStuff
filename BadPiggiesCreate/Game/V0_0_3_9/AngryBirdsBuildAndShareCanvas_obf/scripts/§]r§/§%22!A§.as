package §]r§
{
   import §7"'§.b2Settings;
   import §=9§.b2Body;
   
   public class §"!A§
   {
      
      public static const §'!3§:String = "max";
      
      public static const §6n§:String = "average";
       
      
      private var §5"3§:Number;
      
      private var §9r§:uint;
      
      private var §4y§:Number;
      
      private var §6!i§:Number;
      
      private var §@7§:Vector.<Number>;
      
      private var §5!I§:Vector.<Number>;
      
      private var §0t§:Vector.<Number>;
      
      private var §8!,§:int = 0;
      
      private var §&!n§:Function;
      
      public function §"!A§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§@7§ = new Vector.<Number>();
         this.§5!I§ = new Vector.<Number>();
         this.§0t§ = new Vector.<Number>();
         this.§5!t§ = param2;
         this.limitMultiplier = param1;
         this.§&!n§ = this.§'""§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§5"3§ = param1;
         this.§4y§ = b2Settings.b2_linearSleepTolerance * this.§5"3§;
         this.§6!i§ = b2Settings.b2_angularSleepTolerance * this.§5"3§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§5"3§;
      }
      
      public function set §5!t§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§9r§ = param1;
         if(this.§9r§ < this.§@7§.length)
         {
            _loc2_ = this.§@7§.length - this.§9r§;
            this.§@7§.splice(0,_loc2_);
            this.§5!I§.splice(0,_loc2_);
            this.§0t§.splice(0,_loc2_);
         }
         else if(this.§9r§ > this.§@7§.length)
         {
            _loc3_ = this.§@7§.length;
            while(_loc3_ < this.§9r§)
            {
               this.§@7§.push(0);
               this.§5!I§.push(0);
               this.§0t§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §5!t§() : uint
      {
         return this.§9r§;
      }
      
      public function §8!A§() : void
      {
         this.§8!,§ = this.§8!,§ + 1 >= this.§@7§.length ? 0 : int(this.§8!,§ + 1);
      }
      
      public function §&!4§(param1:b2Body) : void
      {
         this.§@7§[this.§8!,§] = param1.GetLinearVelocity().x;
         this.§5!I§[this.§8!,§] = param1.GetLinearVelocity().y;
         this.§0t§[this.§8!,§] = param1.§`I§();
      }
      
      public function §!!"§() : Boolean
      {
         if(Math.abs(this.§&!n§(this.§@7§)) < this.§4y§ && Math.abs(this.§&!n§(this.§5!I§)) < this.§4y§ && Math.abs(this.§&!n§(this.§0t§)) < this.§6!i§)
         {
            return false;
         }
         return true;
      }
      
      public function §`!9§(param1:String) : void
      {
         switch(param1)
         {
            case §'!3§:
               this.§&!n§ = this.§]!i§;
               break;
            case §6n§:
            default:
               this.§&!n§ = this.§'""§;
         }
      }
      
      private function §'""§(param1:Vector.<Number>) : Number
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
      
      private function §]!i§(param1:Vector.<Number>) : Number
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
