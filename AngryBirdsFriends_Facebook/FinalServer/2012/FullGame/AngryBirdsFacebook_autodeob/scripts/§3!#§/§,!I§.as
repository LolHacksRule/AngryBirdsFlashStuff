package §3!#§
{
   import §&!Y§.b2Body;
   import §@!a§.b2Settings;
   
   public class §,!I§
   {
      
      public static const §;;§:String = "max";
      
      public static const §<-§:String = "average";
       
      
      private var §"7§:Number;
      
      private var §5!r§:uint;
      
      private var §!!p§:Number;
      
      private var §3&§:Number;
      
      private var §5!§:Vector.<Number>;
      
      private var §6T§:Vector.<Number>;
      
      private var §%!y§:Vector.<Number>;
      
      private var §+!f§:int = 0;
      
      private var §`!K§:Function;
      
      public function §,!I§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§5!§ = new Vector.<Number>();
         this.§6T§ = new Vector.<Number>();
         this.§%!y§ = new Vector.<Number>();
         this.§%F§ = param2;
         this.limitMultiplier = param1;
         this.§`!K§ = this.§5!E§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§"7§ = param1;
         this.§!!p§ = b2Settings.b2_linearSleepTolerance * this.§"7§;
         this.§3&§ = b2Settings.b2_angularSleepTolerance * this.§"7§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§"7§;
      }
      
      public function set §%F§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§5!r§ = param1;
         if(this.§5!r§ < this.§5!§.length)
         {
            _loc2_ = this.§5!§.length - this.§5!r§;
            this.§5!§.splice(0,_loc2_);
            this.§6T§.splice(0,_loc2_);
            this.§%!y§.splice(0,_loc2_);
         }
         else if(this.§5!r§ > this.§5!§.length)
         {
            _loc3_ = this.§5!§.length;
            while(_loc3_ < this.§5!r§)
            {
               this.§5!§.push(0);
               this.§6T§.push(0);
               this.§%!y§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §%F§() : uint
      {
         return this.§5!r§;
      }
      
      public function §'!g§() : void
      {
         this.§+!f§ = this.§+!f§ + 1 >= this.§5!§.length ? 0 : int(this.§+!f§ + 1);
      }
      
      public function §2^§(param1:b2Body) : void
      {
         this.§5!§[this.§+!f§] = param1.GetLinearVelocity().x;
         this.§6T§[this.§+!f§] = param1.GetLinearVelocity().y;
         this.§%!y§[this.§+!f§] = param1.GetAngularVelocity();
      }
      
      public function §7!`§() : Boolean
      {
         if(Math.abs(this.§`!K§(this.§5!§)) < this.§!!p§ && Math.abs(this.§`!K§(this.§6T§)) < this.§!!p§ && Math.abs(this.§`!K§(this.§%!y§)) < this.§3&§)
         {
            return false;
         }
         return true;
      }
      
      public function §&&§(param1:String) : void
      {
         switch(param1)
         {
            case §;;§:
               this.§`!K§ = this.§5!F§;
               break;
            case §<-§:
            default:
               this.§`!K§ = this.§5!E§;
         }
      }
      
      private function §5!E§(param1:Vector.<Number>) : Number
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
      
      private function §5!F§(param1:Vector.<Number>) : Number
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
