package §[X§
{
   import §,!F§.§#§;
   import flash.system.Capabilities;
   
   public class §7a§
   {
      
      public static const §4%§:String = "@@";
      
      public static const §`a§:String = "@";
       
      
      private var § !Q§:String;
      
      private var §%1§:int;
      
      private var §-!2§:Number;
      
      private var §!p§:Number;
      
      protected var §-2§:Boolean;
      
      protected var §+!J§:Vector.<§ T§>;
      
      protected var §-!H§:Vector.<PowerUp>;
      
      private var §5P§:int;
      
      private var §7g§:int;
      
      public function §7a§(param1:String)
      {
         this.§+!J§ = new Vector.<§ T§>();
         this.§-!H§ = new Vector.<PowerUp>();
         super();
         this.§ !Q§ = param1;
         this.§-!2§ = 1;
      }
      
      public static function initialize(param1:String) : §7a§
      {
         var _loc2_:§7a§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§ T§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§4%§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §7a§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§`a§);
            _loc5_ = _loc3_[2].split(§`a§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = § T§.initialize(_loc6_))
               {
                  _loc2_.§+!J§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§-!H§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §#!"§() : Boolean
      {
         return this.§-2§;
      }
      
      public function get §0!8§() : String
      {
         return this.§ !Q§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§-!2§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§-!2§;
      }
      
      protected function get §>W§() : int
      {
         return this.§%1§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§-2§)
         {
            this.§+!J§.push(new § T§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §1E§(param1:int) : void
      {
         if(!this.§-2§)
         {
            if(this.§-!H§.length > 0)
            {
               if(this.§-!H§[this.§-!H§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§-!H§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§-2§ = true;
      }
      
      public function step(param1:§#§) : void
      {
         var _loc2_:§ T§ = null;
         var _loc3_:PowerUp = null;
         if(this.§+!J§.length > this.§5P§)
         {
            _loc2_ = this.§+!J§[this.§5P§];
            if(_loc2_.step == this.§>W§)
            {
               param1.slingshot.§^!P§(_loc2_.x,_loc2_.y,_loc2_.§6!A§,_loc2_.angle);
               ++this.§5P§;
            }
         }
         if(this.§-!H§.length > this.§7g§)
         {
            _loc3_ = this.§-!H§[this.§7g§];
            if(_loc3_.step == this.§>W§)
            {
               param1.activatePowerup();
               ++this.§7g§;
            }
         }
         ++this.§%1§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§ !Q§ + §4%§ + this.§do§() + §4%§ + this.§+!@§());
      }
      
      private function §do§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§+!J§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!J§.length)
         {
            _loc1_ += §`a§;
            _loc1_ += this.§+!J§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §+!@§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§-!H§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!H§.length)
         {
            _loc1_ += §`a§;
            _loc1_ += this.§-!H§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
