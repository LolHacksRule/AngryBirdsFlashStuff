package § !w§
{
   import §^#>§.§#_§;
   import flash.system.Capabilities;
   
   public class §0p§
   {
      
      public static const §%!B§:String = "@@";
      
      public static const §5#;§:String = "@";
       
      
      private var § n§:String;
      
      private var §-!Q§:int;
      
      private var §<C§:Number;
      
      private var §#T§:Number;
      
      protected var §,!%§:Boolean;
      
      protected var §=A§:Vector.<§&-§>;
      
      protected var §;#`§:Vector.<§3!1§>;
      
      private var §1"u§:int;
      
      private var §"!3§:int;
      
      public function §0p§(param1:String)
      {
         this.§=A§ = new Vector.<§&-§>();
         this.§;#`§ = new Vector.<§3!1§>();
         super();
         this.§ n§ = param1;
         this.§<C§ = 1;
      }
      
      public static function initialize(param1:String) : §0p§
      {
         var _loc2_:§0p§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§&-§ = null;
         var _loc9_:§3!1§ = null;
         var _loc3_:Array = param1.split(§%!B§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §0p§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§5#;§);
            _loc5_ = _loc3_[2].split(§5#;§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §&-§.initialize(_loc6_))
               {
                  _loc2_.§=A§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §3!1§.initialize(_loc7_))
               {
                  _loc2_.§;#`§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §<"M§() : Boolean
      {
         return this.§,!%§;
      }
      
      public function get §]"+§() : String
      {
         return this.§ n§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§<C§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§<C§;
      }
      
      protected function get §9o§() : int
      {
         return this.§-!Q§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§,!%§)
         {
            this.§=A§.push(new §&-§(param1,param2,param3,param4,param5));
         }
      }
      
      public function § "t§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§,!%§)
         {
            if(this.§;#`§.length > 0)
            {
               if(this.§;#`§[this.§;#`§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§;#`§.push(new §3!1§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§,!%§ = true;
      }
      
      public function step(param1:§#_§) : void
      {
         var _loc2_:§&-§ = null;
         var _loc3_:§3!1§ = null;
         if(this.§=A§.length > this.§1"u§)
         {
            _loc2_ = this.§=A§[this.§1"u§];
            if(_loc2_.step == this.§9o§)
            {
               param1.slingshot.§;"A§(_loc2_.x,_loc2_.y,_loc2_.§3"'§,_loc2_.angle);
               ++this.§1"u§;
            }
         }
         if(this.§;#`§.length > this.§"!3§)
         {
            _loc3_ = this.§;#`§[this.§"!3§];
            if(_loc3_.step == this.§9o§)
            {
               param1.activateSpecialPower(_loc3_.§6#I§,_loc3_.§,!u§);
               ++this.§"!3§;
            }
         }
         ++this.§-!Q§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§ n§ + §%!B§ + this.§@#1§() + §%!B§ + this.§6D§());
      }
      
      private function §@#1§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§=A§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§=A§.length)
         {
            _loc1_ += §5#;§;
            _loc1_ += this.§=A§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §6D§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§;#`§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§;#`§.length)
         {
            _loc1_ += §5#;§;
            _loc1_ += this.§;#`§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
