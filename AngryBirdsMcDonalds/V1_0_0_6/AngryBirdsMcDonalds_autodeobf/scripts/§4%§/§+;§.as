package §4%§
{
   import §<L§.§!!G§;
   import flash.system.Capabilities;
   
   public class §+;§
   {
      
      public static const §?!e§:String = "@@";
      
      public static const §-!f§:String = "@";
       
      
      private var §-1§:String;
      
      private var §1I§:int;
      
      private var §'!X§:Number;
      
      private var §>!b§:Number;
      
      protected var §83§:Boolean;
      
      protected var §&!<§:Vector.<§>R§>;
      
      protected var §4!j§:Vector.<§5V§>;
      
      private var §>!5§:int;
      
      private var §#!i§:int;
      
      public function §+;§(param1:String)
      {
         this.§&!<§ = new Vector.<§>R§>();
         this.§4!j§ = new Vector.<§5V§>();
         super();
         this.§-1§ = param1;
         this.§'!X§ = 1;
      }
      
      public static function initialize(param1:String) : §+;§
      {
         var _loc2_:§+;§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§>R§ = null;
         var _loc9_:§5V§ = null;
         var _loc3_:Array = param1.split(§?!e§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §+;§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§-!f§);
            _loc5_ = _loc3_[2].split(§-!f§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §>R§.initialize(_loc6_))
               {
                  _loc2_.§&!<§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §5V§.initialize(_loc7_))
               {
                  _loc2_.§4!j§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §9! §() : Boolean
      {
         return this.§83§;
      }
      
      public function get levelName() : String
      {
         return this.§-1§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§'!X§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§'!X§;
      }
      
      protected function get §,!§() : int
      {
         return this.§1I§;
      }
      
      public function §<V§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§83§)
         {
            this.§&!<§.push(new §>R§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §&!$§(param1:int) : void
      {
         if(!this.§83§)
         {
            if(this.§4!j§.length > 0)
            {
               if(this.§4!j§[this.§4!j§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§4!j§.push(new §5V§(param1));
         }
      }
      
      public function play() : void
      {
         this.§83§ = true;
      }
      
      public function step(param1:§!!G§) : void
      {
         var _loc2_:§>R§ = null;
         var _loc3_:§5V§ = null;
         if(this.§&!<§.length > this.§>!5§)
         {
            _loc2_ = this.§&!<§[this.§>!5§];
            if(_loc2_.step == this.§,!§)
            {
               param1.slingshot.§#!3§(_loc2_.x,_loc2_.y,_loc2_.§[!#§,_loc2_.angle);
               ++this.§>!5§;
            }
         }
         if(this.§4!j§.length > this.§#!i§)
         {
            _loc3_ = this.§4!j§[this.§#!i§];
            if(_loc3_.step == this.§,!§)
            {
               param1.activatePowerup();
               ++this.§#!i§;
            }
         }
         ++this.§1I§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§-1§ + §?!e§ + this.§%!f§() + §?!e§ + this.§#]§());
      }
      
      private function §%!f§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§&!<§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!<§.length)
         {
            _loc1_ += §-!f§;
            _loc1_ += this.§&!<§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §#]§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§4!j§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§4!j§.length)
         {
            _loc1_ += §-!f§;
            _loc1_ += this.§4!j§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
