package § var§
{
   import §#I§.b2Body;
   import §@!3§.b2Settings;
   
   public class §[!8§
   {
      
      public static const §+!'§:String = "max";
      
      public static const §'!v§:String = "average";
       
      
      private var §&"§:Number;
      
      private var §%!4§:uint;
      
      private var §<!p§:Number;
      
      private var §>!7§:Number;
      
      private var §,!o§:Vector.<Number>;
      
      private var §1!N§:Vector.<Number>;
      
      private var §switch§:Vector.<Number>;
      
      private var §4!T§:int = 0;
      
      private var §9!]§:Function;
      
      public function §[!8§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§,!o§ = new Vector.<Number>();
         this.§1!N§ = new Vector.<Number>();
         this.§switch§ = new Vector.<Number>();
         this.§;c§ = param2;
         this.limitMultiplier = param1;
         this.§9!]§ = this.§!o§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§&"§ = param1;
         this.§<!p§ = b2Settings.b2_linearSleepTolerance * this.§&"§;
         this.§>!7§ = b2Settings.b2_angularSleepTolerance * this.§&"§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§&"§;
      }
      
      public function set §;c§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§%!4§ = param1;
         if(this.§%!4§ < this.§,!o§.length)
         {
            _loc2_ = this.§,!o§.length - this.§%!4§;
            this.§,!o§.splice(0,_loc2_);
            this.§1!N§.splice(0,_loc2_);
            this.§switch§.splice(0,_loc2_);
         }
         else if(this.§%!4§ > this.§,!o§.length)
         {
            _loc3_ = this.§,!o§.length;
            while(_loc3_ < this.§%!4§)
            {
               this.§,!o§.push(0);
               this.§1!N§.push(0);
               this.§switch§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §;c§() : uint
      {
         return this.§%!4§;
      }
      
      public function §+!R§() : void
      {
         this.§4!T§ = this.§4!T§ + 1 >= this.§,!o§.length ? 0 : int(this.§4!T§ + 1);
      }
      
      public function §4k§(param1:b2Body) : void
      {
         this.§,!o§[this.§4!T§] = param1.GetLinearVelocity().x;
         this.§1!N§[this.§4!T§] = param1.GetLinearVelocity().y;
         this.§switch§[this.§4!T§] = param1.§'K§();
      }
      
      public function §""#§() : Boolean
      {
         if(Math.abs(this.§9!]§(this.§,!o§)) < this.§<!p§ && Math.abs(this.§9!]§(this.§1!N§)) < this.§<!p§ && Math.abs(this.§9!]§(this.§switch§)) < this.§>!7§)
         {
            return false;
         }
         return true;
      }
      
      public function §4![§(param1:String) : void
      {
         switch(param1)
         {
            case §+!'§:
               this.§9!]§ = this.§^!U§;
               break;
            case §'!v§:
            default:
               this.§9!]§ = this.§!o§;
         }
      }
      
      private function §!o§(param1:Vector.<Number>) : Number
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
      
      private function §^!U§(param1:Vector.<Number>) : Number
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
