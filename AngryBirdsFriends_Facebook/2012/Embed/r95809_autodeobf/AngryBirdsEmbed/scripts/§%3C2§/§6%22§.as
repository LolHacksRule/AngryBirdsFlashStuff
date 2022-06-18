package §<2§
{
   import §+!%§.§'!"§;
   import flash.system.Capabilities;
   
   public class §6"§
   {
      
      public static const §>B§:String = "@@";
      
      public static const §0!6§:String = "@";
       
      
      private var §>!+§:String;
      
      private var §!^§:int;
      
      private var §"!§:Number;
      
      private var §&!9§:Number;
      
      protected var §][§:Boolean;
      
      protected var §[i§:Vector.<§"!7§>;
      
      protected var §4v§:Vector.<PowerUp>;
      
      private var §<!%§:int;
      
      private var §4t§:int;
      
      public function §6"§(param1:String)
      {
         this.§[i§ = new Vector.<§"!7§>();
         this.§4v§ = new Vector.<PowerUp>();
         super();
         this.§>!+§ = param1;
         this.§"!§ = 1;
      }
      
      public static function initialize(param1:String) : §6"§
      {
         var _loc2_:§6"§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§"!7§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§>B§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §6"§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§0!6§);
            _loc5_ = _loc3_[2].split(§0!6§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §"!7§.initialize(_loc6_))
               {
                  _loc2_.§[i§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§4v§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §4I§() : Boolean
      {
         return this.§][§;
      }
      
      public function get §40§() : String
      {
         return this.§>!+§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§"!§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§"!§;
      }
      
      protected function get §83§() : int
      {
         return this.§!^§;
      }
      
      public function §`U§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§][§)
         {
            this.§[i§.push(new §"!7§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §!F§(param1:int) : void
      {
         if(!this.§][§)
         {
            if(this.§4v§.length > 0)
            {
               if(this.§4v§[this.§4v§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§4v§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§][§ = true;
      }
      
      public function step(param1:§'!"§) : void
      {
         var _loc2_:§"!7§ = null;
         var _loc3_:PowerUp = null;
         if(this.§[i§.length > this.§<!%§)
         {
            _loc2_ = this.§[i§[this.§<!%§];
            if(_loc2_.step == this.§83§)
            {
               param1.slingshot.§,q§(_loc2_.x,_loc2_.y,_loc2_.§6!§,_loc2_.angle);
               ++this.§<!%§;
            }
         }
         if(this.§4v§.length > this.§4t§)
         {
            _loc3_ = this.§4v§[this.§4t§];
            if(_loc3_.step == this.§83§)
            {
               param1.activatePowerup();
               ++this.§4t§;
            }
         }
         ++this.§!^§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§>!+§ + §>B§ + this.§3u§() + §>B§ + this.§ +§());
      }
      
      private function §3u§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§[i§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§[i§.length)
         {
            _loc1_ += §0!6§;
            _loc1_ += this.§[i§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function § +§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§4v§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§4v§.length)
         {
            _loc1_ += §0!6§;
            _loc1_ += this.§4v§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
