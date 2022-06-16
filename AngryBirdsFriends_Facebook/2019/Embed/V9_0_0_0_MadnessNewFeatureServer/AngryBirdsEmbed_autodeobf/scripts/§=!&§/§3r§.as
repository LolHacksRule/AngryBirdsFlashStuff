package §=!&§
{
   import §`!4§.§6l§;
   import flash.system.Capabilities;
   
   public class §3r§
   {
      
      public static const §&!H§:String = "@@";
      
      public static const §&!N§:String = "@";
       
      
      private var §]r§:String;
      
      private var §%7§:int;
      
      private var §'c§:Number;
      
      private var §"<§:Number;
      
      protected var §import§:Boolean;
      
      protected var §>r§:Vector.<§9!!§>;
      
      protected var §6X§:Vector.<PowerUp>;
      
      private var §4!7§:int;
      
      private var § _§:int;
      
      public function §3r§(param1:String)
      {
         this.§>r§ = new Vector.<§9!!§>();
         this.§6X§ = new Vector.<PowerUp>();
         super();
         this.§]r§ = param1;
         this.§'c§ = 1;
      }
      
      public static function initialize(param1:String) : §3r§
      {
         var _loc2_:§3r§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§9!!§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§&!H§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §3r§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§&!N§);
            _loc5_ = _loc3_[2].split(§&!N§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §9!!§.initialize(_loc6_))
               {
                  _loc2_.§>r§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§6X§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §?d§() : Boolean
      {
         return this.§import§;
      }
      
      public function get §7u§() : String
      {
         return this.§]r§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§'c§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§'c§;
      }
      
      protected function get §!c§() : int
      {
         return this.§%7§;
      }
      
      public function §%5§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§import§)
         {
            this.§>r§.push(new §9!!§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §3A§(param1:int) : void
      {
         if(!this.§import§)
         {
            if(this.§6X§.length > 0)
            {
               if(this.§6X§[this.§6X§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§6X§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§import§ = true;
      }
      
      public function step(param1:§6l§) : void
      {
         var _loc2_:§9!!§ = null;
         var _loc3_:PowerUp = null;
         if(this.§>r§.length > this.§4!7§)
         {
            _loc2_ = this.§>r§[this.§4!7§];
            if(_loc2_.step == this.§!c§)
            {
               param1.slingshot.§>k§(_loc2_.x,_loc2_.y,_loc2_.§`!'§,_loc2_.angle);
               ++this.§4!7§;
            }
         }
         if(this.§6X§.length > this.§ _§)
         {
            _loc3_ = this.§6X§[this.§ _§];
            if(_loc3_.step == this.§!c§)
            {
               param1.activatePowerup();
               ++this.§ _§;
            }
         }
         ++this.§%7§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§]r§ + §&!H§ + this.§&'§() + §&!H§ + this.§;9§());
      }
      
      private function §&'§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§>r§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§>r§.length)
         {
            _loc1_ += §&!N§;
            _loc1_ += this.§>r§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §;9§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§6X§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§6X§.length)
         {
            _loc1_ += §&!N§;
            _loc1_ += this.§6X§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
