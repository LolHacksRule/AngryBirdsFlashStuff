package §%!;§
{
   import §3G§.§!E§;
   import flash.system.Capabilities;
   
   public class § else§
   {
      
      public static const §!&§:String = "@@";
      
      public static const §"!>§:String = "@";
       
      
      private var §^!4§:String;
      
      private var §?!7§:int;
      
      private var §#A§:Number;
      
      private var §9!8§:Number;
      
      protected var §"K§:Boolean;
      
      protected var §>N§:Vector.<§@v§>;
      
      protected var §3T§:Vector.<PowerUp>;
      
      private var §!,§:int;
      
      private var §6h§:int;
      
      public function § else§(param1:String)
      {
         this.§>N§ = new Vector.<§@v§>();
         this.§3T§ = new Vector.<PowerUp>();
         super();
         this.§^!4§ = param1;
         this.§#A§ = 1;
      }
      
      public static function initialize(param1:String) : § else§
      {
         var _loc2_:§ else§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§@v§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§!&§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new § else§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§"!>§);
            _loc5_ = _loc3_[2].split(§"!>§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §@v§.initialize(_loc6_))
               {
                  _loc2_.§>N§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§3T§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §'I§() : Boolean
      {
         return this.§"K§;
      }
      
      public function get §!h§() : String
      {
         return this.§^!4§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§#A§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§#A§;
      }
      
      protected function get §>! §() : int
      {
         return this.§?!7§;
      }
      
      public function §0F§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§"K§)
         {
            this.§>N§.push(new §@v§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §4!3§(param1:int) : void
      {
         if(!this.§"K§)
         {
            if(this.§3T§.length > 0)
            {
               if(this.§3T§[this.§3T§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§3T§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§"K§ = true;
      }
      
      public function step(param1:§!E§) : void
      {
         var _loc2_:§@v§ = null;
         var _loc3_:PowerUp = null;
         if(this.§>N§.length > this.§!,§)
         {
            _loc2_ = this.§>N§[this.§!,§];
            if(_loc2_.step == this.§>! §)
            {
               param1.slingshot.§7>§(_loc2_.x,_loc2_.y,_loc2_.§@!§,_loc2_.angle);
               ++this.§!,§;
            }
         }
         if(this.§3T§.length > this.§6h§)
         {
            _loc3_ = this.§3T§[this.§6h§];
            if(_loc3_.step == this.§>! §)
            {
               param1.activatePowerup();
               ++this.§6h§;
            }
         }
         ++this.§?!7§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§^!4§ + §!&§ + this.§1!0§() + §!&§ + this.§-x§());
      }
      
      private function §1!0§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§>N§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§>N§.length)
         {
            _loc1_ += §"!>§;
            _loc1_ += this.§>N§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §-x§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§3T§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§3T§.length)
         {
            _loc1_ += §"!>§;
            _loc1_ += this.§3T§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
