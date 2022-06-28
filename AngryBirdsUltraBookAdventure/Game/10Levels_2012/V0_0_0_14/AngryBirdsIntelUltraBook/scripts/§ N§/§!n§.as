package § N§
{
   import §+&§.§-!7§;
   import flash.system.Capabilities;
   
   public class §!n§
   {
      
      public static const §0@§:String = "@@";
      
      public static const §3'§:String = "@";
       
      
      private var §5'§:String;
      
      private var §+!w§:int;
      
      private var §9j§:Number;
      
      private var §?Q§:Number;
      
      protected var §6'§:Boolean;
      
      protected var §07§:Vector.<§=8§>;
      
      protected var §'!X§:Vector.<§9'§>;
      
      private var §@!u§:int;
      
      private var §<!>§:int;
      
      public function §!n§(param1:String)
      {
         this.§07§ = new Vector.<§=8§>();
         this.§'!X§ = new Vector.<§9'§>();
         super();
         this.§5'§ = param1;
         this.§9j§ = 1;
      }
      
      public static function initialize(param1:String) : §!n§
      {
         var _loc2_:§!n§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§=8§ = null;
         var _loc9_:§9'§ = null;
         var _loc3_:Array = param1.split(§0@§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §!n§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§3'§);
            _loc5_ = _loc3_[2].split(§3'§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §=8§.initialize(_loc6_))
               {
                  _loc2_.§07§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §9'§.initialize(_loc7_))
               {
                  _loc2_.§'!X§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §<!P§() : Boolean
      {
         return this.§6'§;
      }
      
      public function get §<&§() : String
      {
         return this.§5'§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§9j§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§9j§;
      }
      
      protected function get §]!@§() : int
      {
         return this.§+!w§;
      }
      
      public function §9!,§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§6'§)
         {
            this.§07§.push(new §=8§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §>!v§(param1:int) : void
      {
         if(!this.§6'§)
         {
            if(this.§'!X§.length > 0)
            {
               if(this.§'!X§[this.§'!X§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§'!X§.push(new §9'§(param1));
         }
      }
      
      public function play() : void
      {
         this.§6'§ = true;
      }
      
      public function step(param1:§-!7§) : void
      {
         var _loc2_:§=8§ = null;
         var _loc3_:§9'§ = null;
         if(this.§07§.length > this.§@!u§)
         {
            _loc2_ = this.§07§[this.§@!u§];
            if(_loc2_.step == this.§]!@§)
            {
               param1.slingshot.§;!P§(_loc2_.x,_loc2_.y,_loc2_.§ !I§,_loc2_.angle);
               ++this.§@!u§;
            }
         }
         if(this.§'!X§.length > this.§<!>§)
         {
            _loc3_ = this.§'!X§[this.§<!>§];
            if(_loc3_.step == this.§]!@§)
            {
               param1.activatePowerup();
               ++this.§<!>§;
            }
         }
         ++this.§+!w§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§5'§ + §0@§ + this.§1q§() + §0@§ + this.§3!a§());
      }
      
      private function §1q§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§07§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§07§.length)
         {
            _loc1_ += §3'§;
            _loc1_ += this.§07§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §3!a§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§'!X§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§'!X§.length)
         {
            _loc1_ += §3'§;
            _loc1_ += this.§'!X§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
