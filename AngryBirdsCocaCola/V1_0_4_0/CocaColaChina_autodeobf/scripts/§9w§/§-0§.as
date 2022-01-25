package §9w§
{
   import §4A§.§&_§;
   import flash.system.Capabilities;
   
   public class §-0§
   {
      
      public static const §4H§:String = "@@";
      
      public static const §?!T§:String = "@";
       
      
      private var §?"§:String;
      
      private var §%Y§:int;
      
      private var §1u§:Number;
      
      private var §7!G§:Number;
      
      protected var §!!?§:Boolean;
      
      protected var §1I§:Vector.<§5!A§>;
      
      protected var §^o§:Vector.<§9E§>;
      
      private var §]!Z§:int;
      
      private var §0m§:int;
      
      public function §-0§(param1:String)
      {
         this.§1I§ = new Vector.<§5!A§>();
         this.§^o§ = new Vector.<§9E§>();
         super();
         this.§?"§ = param1;
         this.§1u§ = 1;
      }
      
      public static function §1!b§(param1:String) : §-0§
      {
         var _loc2_:§-0§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§5!A§ = null;
         var _loc9_:§9E§ = null;
         var _loc3_:Array = param1.split(§4H§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §-0§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§?!T§);
            _loc5_ = _loc3_[2].split(§?!T§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §5!A§.§1!b§(_loc6_))
               {
                  _loc2_.§1I§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §9E§.§1!b§(_loc7_))
               {
                  _loc2_.§^o§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §0M§() : Boolean
      {
         return this.§!!?§;
      }
      
      public function get §7"§() : String
      {
         return this.§?"§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§1u§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§1u§;
      }
      
      protected function get §[X§() : int
      {
         return this.§%Y§;
      }
      
      public function §1!&§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§!!?§)
         {
            this.§1I§.push(new §5!A§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §<'§(param1:int) : void
      {
         if(!this.§!!?§)
         {
            if(this.§^o§.length > 0)
            {
               if(this.§^o§[this.§^o§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§^o§.push(new §9E§(param1));
         }
      }
      
      public function play() : void
      {
         this.§!!?§ = true;
      }
      
      public function step(param1:§&_§) : void
      {
         var _loc2_:§5!A§ = null;
         var _loc3_:§9E§ = null;
         if(this.§1I§.length > this.§]!Z§)
         {
            _loc2_ = this.§1I§[this.§]!Z§];
            if(_loc2_.step == this.§[X§)
            {
               param1.slingshot.§+b§(_loc2_.x,_loc2_.y,_loc2_.§-!-§,_loc2_.angle);
               ++this.§]!Z§;
            }
         }
         if(this.§^o§.length > this.§0m§)
         {
            _loc3_ = this.§^o§[this.§0m§];
            if(_loc3_.step == this.§[X§)
            {
               param1.activatePowerup();
               ++this.§0m§;
            }
         }
         ++this.§%Y§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§?"§ + §4H§ + this.§?!2§() + §4H§ + this.§4S§());
      }
      
      private function §?!2§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§1I§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§1I§.length)
         {
            _loc1_ += §?!T§;
            _loc1_ += this.§1I§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §4S§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§^o§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§^o§.length)
         {
            _loc1_ += §?!T§;
            _loc1_ += this.§^o§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
