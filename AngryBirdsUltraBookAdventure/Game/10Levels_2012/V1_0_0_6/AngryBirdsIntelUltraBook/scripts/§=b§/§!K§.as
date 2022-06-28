package §=b§
{
   import §#V§.b2Body;
   import §3!m§.b2Settings;
   
   public class §!K§
   {
      
      public static const §6!^§:String = "max";
      
      public static const §;i§:String = "average";
       
      
      private var §9O§:Number;
      
      private var §3!!§:uint;
      
      private var §<W§:Number;
      
      private var §5!y§:Number;
      
      private var §=s§:Vector.<Number>;
      
      private var §4k§:Vector.<Number>;
      
      private var §4j§:Vector.<Number>;
      
      private var § !T§:int = 0;
      
      private var §;!G§:Function;
      
      public function §!K§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§=s§ = new Vector.<Number>();
         this.§4k§ = new Vector.<Number>();
         this.§4j§ = new Vector.<Number>();
         this.§&Y§ = param2;
         this.limitMultiplier = param1;
         this.§;!G§ = this.§-!q§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§9O§ = param1;
         this.§<W§ = b2Settings.b2_linearSleepTolerance * this.§9O§;
         this.§5!y§ = b2Settings.b2_angularSleepTolerance * this.§9O§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§9O§;
      }
      
      public function set §&Y§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§3!!§ = param1;
         if(this.§3!!§ < this.§=s§.length)
         {
            _loc2_ = this.§=s§.length - this.§3!!§;
            this.§=s§.splice(0,_loc2_);
            this.§4k§.splice(0,_loc2_);
            this.§4j§.splice(0,_loc2_);
         }
         else if(this.§3!!§ > this.§=s§.length)
         {
            _loc3_ = this.§=s§.length;
            while(_loc3_ < this.§3!!§)
            {
               this.§=s§.push(0);
               this.§4k§.push(0);
               this.§4j§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §&Y§() : uint
      {
         return this.§3!!§;
      }
      
      public function §+!K§() : void
      {
         this.§ !T§ = this.§ !T§ + 1 >= this.§=s§.length ? 0 : int(this.§ !T§ + 1);
      }
      
      public function §8!X§(param1:b2Body) : void
      {
         this.§=s§[this.§ !T§] = param1.GetLinearVelocity().x;
         this.§4k§[this.§ !T§] = param1.GetLinearVelocity().y;
         this.§4j§[this.§ !T§] = param1.§8!G§();
      }
      
      public function §5&§() : Boolean
      {
         if(Math.abs(this.§;!G§(this.§=s§)) < this.§<W§ && Math.abs(this.§;!G§(this.§4k§)) < this.§<W§ && Math.abs(this.§;!G§(this.§4j§)) < this.§5!y§)
         {
            return false;
         }
         return true;
      }
      
      public function §1!I§(param1:String) : void
      {
         switch(param1)
         {
            case §6!^§:
               this.§;!G§ = this.§#!h§;
               break;
            case §;i§:
            default:
               this.§;!G§ = this.§-!q§;
         }
      }
      
      private function §-!q§(param1:Vector.<Number>) : Number
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
      
      private function §#!h§(param1:Vector.<Number>) : Number
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
