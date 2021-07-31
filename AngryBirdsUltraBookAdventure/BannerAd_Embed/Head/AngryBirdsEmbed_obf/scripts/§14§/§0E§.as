package §14§
{
   import §%x§.§#;§;
   import flash.system.Capabilities;
   
   public class §0E§
   {
      
      public static const §0!8§:String = "@@";
      
      public static const §'N§:String = "@";
       
      
      private var §<I§:String;
      
      private var §=x§:int;
      
      private var §4p§:Number;
      
      private var §=,§:Number;
      
      protected var §0-§:Boolean;
      
      protected var §@!3§:Vector.<§'8§>;
      
      protected var §&"§:Vector.<PowerUp>;
      
      private var §>!-§:int;
      
      private var §-!=§:int;
      
      public function §0E§(param1:String)
      {
         this.§@!3§ = new Vector.<§'8§>();
         this.§&"§ = new Vector.<PowerUp>();
         super();
         this.§<I§ = param1;
         this.§4p§ = 1;
      }
      
      public static function initialize(param1:String) : §0E§
      {
         var _loc2_:§0E§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§'8§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§0!8§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §0E§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§'N§);
            _loc5_ = _loc3_[2].split(§'N§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §'8§.initialize(_loc6_))
               {
                  _loc2_.§@!3§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§&"§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §!q§() : Boolean
      {
         return this.§0-§;
      }
      
      public function get §3w§() : String
      {
         return this.§<I§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§4p§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§4p§;
      }
      
      protected function get §4!&§() : int
      {
         return this.§=x§;
      }
      
      public function §[!7§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§0-§)
         {
            this.§@!3§.push(new §'8§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §6=§(param1:int) : void
      {
         if(!this.§0-§)
         {
            if(this.§&"§.length > 0)
            {
               if(this.§&"§[this.§&"§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§&"§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§0-§ = true;
      }
      
      public function step(param1:§#;§) : void
      {
         var _loc2_:§'8§ = null;
         var _loc3_:PowerUp = null;
         if(this.§@!3§.length > this.§>!-§)
         {
            _loc2_ = this.§@!3§[this.§>!-§];
            if(_loc2_.step == this.§4!&§)
            {
               param1.slingshot.§>f§(_loc2_.x,_loc2_.y,_loc2_.§4!$§,_loc2_.angle);
               ++this.§>!-§;
            }
         }
         if(this.§&"§.length > this.§-!=§)
         {
            _loc3_ = this.§&"§[this.§-!=§];
            if(_loc3_.step == this.§4!&§)
            {
               param1.activatePowerup();
               ++this.§-!=§;
            }
         }
         ++this.§=x§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§<I§ + §0!8§ + this.§;v§() + §0!8§ + this.§]!+§());
      }
      
      private function §;v§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§@!3§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!3§.length)
         {
            _loc1_ += §'N§;
            _loc1_ += this.§@!3§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §]!+§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§&"§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&"§.length)
         {
            _loc1_ += §'N§;
            _loc1_ += this.§&"§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
