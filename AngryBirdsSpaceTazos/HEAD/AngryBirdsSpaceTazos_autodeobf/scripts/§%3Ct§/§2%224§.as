package §<t§
{
   import §3"#§.§`"8§;
   import flash.system.Capabilities;
   
   public class §2"4§
   {
      
      public static const §;!s§:String = "@@";
      
      public static const §]G§:String = "@";
       
      
      private var §"-§:String;
      
      private var §"!2§:int;
      
      private var §`"%§:Number;
      
      private var §6!q§:Number;
      
      protected var §;"9§:Boolean;
      
      protected var §@!I§:Vector.<§?!`§>;
      
      protected var §-!q§:Vector.<§6"8§>;
      
      private var §>">§:int;
      
      private var §9"H§:int;
      
      public function §2"4§(param1:String)
      {
         this.§@!I§ = new Vector.<§?!`§>();
         this.§-!q§ = new Vector.<§6"8§>();
         super();
         this.§"-§ = param1;
         this.§`"%§ = 1;
      }
      
      public static function initialize(param1:String) : §2"4§
      {
         var _loc2_:§2"4§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§?!`§ = null;
         var _loc9_:§6"8§ = null;
         var _loc3_:Array = param1.split(§;!s§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §2"4§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§]G§);
            _loc5_ = _loc3_[2].split(§]G§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §?!`§.initialize(_loc6_))
               {
                  _loc2_.§@!I§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §6"8§.initialize(_loc7_))
               {
                  _loc2_.§-!q§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §6!L§() : Boolean
      {
         return this.§;"9§;
      }
      
      public function get levelName() : String
      {
         return this.§"-§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§`"%§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§`"%§;
      }
      
      protected function get §<",§() : int
      {
         return this.§"!2§;
      }
      
      public function §3!V§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§;"9§)
         {
            this.§@!I§.push(new §?!`§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §9o§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§;"9§)
         {
            if(this.§-!q§.length > 0)
            {
               if(this.§-!q§[this.§-!q§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§-!q§.push(new §6"8§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§;"9§ = true;
      }
      
      public function step(param1:§`"8§) : void
      {
         var _loc2_:§?!`§ = null;
         var _loc3_:§6"8§ = null;
         if(this.§@!I§.length > this.§>">§)
         {
            _loc2_ = this.§@!I§[this.§>">§];
            if(_loc2_.step == this.§<",§)
            {
               param1.slingshot.§#!Z§(_loc2_.x,_loc2_.y,_loc2_.§3";§,_loc2_.angle);
               ++this.§>">§;
            }
         }
         if(this.§-!q§.length > this.§9"H§)
         {
            _loc3_ = this.§-!q§[this.§9"H§];
            if(_loc3_.step == this.§<",§)
            {
               param1.activateSpecialPower(_loc3_.§@w§,_loc3_.§`!-§);
               ++this.§9"H§;
            }
         }
         ++this.§"!2§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§"-§ + §;!s§ + this.§4!J§() + §;!s§ + this.§+"H§());
      }
      
      private function §4!J§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§@!I§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!I§.length)
         {
            _loc1_ += §]G§;
            _loc1_ += this.§@!I§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §+"H§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§-!q§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!q§.length)
         {
            _loc1_ += §]G§;
            _loc1_ += this.§-!q§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
