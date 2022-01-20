package §4j§
{
   import §8T§.b2Body;
   import §?!n§.b2Settings;
   
   public class §`4§
   {
      
      public static const §4!X§:String = "max";
      
      public static const §>!9§:String = "average";
       
      
      private var §92§:Number;
      
      private var §+I§:uint;
      
      private var §;!5§:Number;
      
      private var §=A§:Number;
      
      private var §#!p§:Vector.<Number>;
      
      private var §5;§:Vector.<Number>;
      
      private var §3! §:Vector.<Number>;
      
      private var §8$§:int = 0;
      
      private var §,B§:Function;
      
      public function §`4§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§#!p§ = new Vector.<Number>();
         this.§5;§ = new Vector.<Number>();
         this.§3! § = new Vector.<Number>();
         this.§>!X§ = param2;
         this.limitMultiplier = param1;
         this.§,B§ = this.§]!$§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§92§ = param1;
         this.§;!5§ = b2Settings.b2_linearSleepTolerance * this.§92§;
         this.§=A§ = b2Settings.b2_angularSleepTolerance * this.§92§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§92§;
      }
      
      public function set §>!X§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§+I§ = param1;
         if(this.§+I§ < this.§#!p§.length)
         {
            _loc2_ = this.§#!p§.length - this.§+I§;
            this.§#!p§.splice(0,_loc2_);
            this.§5;§.splice(0,_loc2_);
            this.§3! §.splice(0,_loc2_);
         }
         else if(this.§+I§ > this.§#!p§.length)
         {
            _loc3_ = this.§#!p§.length;
            while(_loc3_ < this.§+I§)
            {
               this.§#!p§.push(0);
               this.§5;§.push(0);
               this.§3! §.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §>!X§() : uint
      {
         return this.§+I§;
      }
      
      public function §[!E§() : void
      {
         this.§8$§ = this.§8$§ + 1 >= this.§#!p§.length ? 0 : int(this.§8$§ + 1);
      }
      
      public function §;u§(param1:b2Body) : void
      {
         this.§#!p§[this.§8$§] = param1.GetLinearVelocity().x;
         this.§5;§[this.§8$§] = param1.GetLinearVelocity().y;
         this.§3! §[this.§8$§] = param1.§?`§();
      }
      
      public function §5k§() : Boolean
      {
         if(Math.abs(this.§,B§(this.§#!p§)) < this.§;!5§ && Math.abs(this.§,B§(this.§5;§)) < this.§;!5§ && Math.abs(this.§,B§(this.§3! §)) < this.§=A§)
         {
            return false;
         }
         return true;
      }
      
      public function §"K§(param1:String) : void
      {
         switch(param1)
         {
            case §4!X§:
               this.§,B§ = this.§`K§;
               break;
            case §>!9§:
            default:
               this.§,B§ = this.§]!$§;
         }
      }
      
      private function §]!$§(param1:Vector.<Number>) : Number
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
      
      private function §`K§(param1:Vector.<Number>) : Number
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
