package §-!X§
{
   import §0I§.§!!p§;
   import flash.system.Capabilities;
   
   public class §;!V§
   {
      
      public static const §@P§:String = "@@";
      
      public static const §^l§:String = "@";
       
      
      private var §5!w§:String;
      
      private var §&!?§:int;
      
      private var §8!i§:Number;
      
      private var §!`§:Number;
      
      protected var §[]§:Boolean;
      
      protected var §4!K§:Vector.<§]!0§>;
      
      protected var §#!D§:Vector.<§0J§>;
      
      private var §5_§:int;
      
      private var §]k§:int;
      
      public function §;!V§(param1:String)
      {
         this.§4!K§ = new Vector.<§]!0§>();
         this.§#!D§ = new Vector.<§0J§>();
         super();
         this.§5!w§ = param1;
         this.§8!i§ = 1;
      }
      
      public static function initialize(param1:String) : §;!V§
      {
         var _loc2_:§;!V§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§]!0§ = null;
         var _loc9_:§0J§ = null;
         var _loc3_:Array = param1.split(§@P§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §;!V§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§^l§);
            _loc5_ = _loc3_[2].split(§^l§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §]!0§.initialize(_loc6_))
               {
                  _loc2_.§4!K§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §0J§.initialize(_loc7_))
               {
                  _loc2_.§#!D§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §="§() : Boolean
      {
         return this.§[]§;
      }
      
      public function get levelName() : String
      {
         return this.§5!w§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§8!i§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§8!i§;
      }
      
      protected function get §0&§() : int
      {
         return this.§&!?§;
      }
      
      public function §4!@§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§[]§)
         {
            this.§4!K§.push(new §]!0§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §[!B§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§[]§)
         {
            if(this.§#!D§.length > 0)
            {
               if(this.§#!D§[this.§#!D§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§#!D§.push(new §0J§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§[]§ = true;
      }
      
      public function step(param1:§!!p§) : void
      {
         var _loc2_:§]!0§ = null;
         var _loc3_:§0J§ = null;
         if(this.§4!K§.length > this.§5_§)
         {
            _loc2_ = this.§4!K§[this.§5_§];
            if(_loc2_.step == this.§0&§)
            {
               param1.slingshot.§2!r§(_loc2_.x,_loc2_.y,_loc2_.§"!C§,_loc2_.angle);
               ++this.§5_§;
            }
         }
         if(this.§#!D§.length > this.§]k§)
         {
            _loc3_ = this.§#!D§[this.§]k§];
            if(_loc3_.step == this.§0&§)
            {
               param1.activateSpecialPower(_loc3_.§+!p§,_loc3_.§2"2§);
               ++this.§]k§;
            }
         }
         ++this.§&!?§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§5!w§ + §@P§ + this.§-Y§() + §@P§ + this.§@!]§());
      }
      
      private function §-Y§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§4!K§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§4!K§.length)
         {
            _loc1_ += §^l§;
            _loc1_ += this.§4!K§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §@!]§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§#!D§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!D§.length)
         {
            _loc1_ += §^l§;
            _loc1_ += this.§#!D§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
