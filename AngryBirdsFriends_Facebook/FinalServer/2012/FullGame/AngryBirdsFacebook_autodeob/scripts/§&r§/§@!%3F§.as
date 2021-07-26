package §&r§
{
   import §0!2§.§5"L§;
   import flash.system.Capabilities;
   
   public class §@!?§
   {
      
      public static const §[!!§:String = "@@";
      
      public static const §7N§:String = "@";
       
      
      private var §54§:String;
      
      private var §!+§:int;
      
      private var §3"=§:Number;
      
      private var §=!S§:Number;
      
      protected var §4!8§:Boolean;
      
      protected var §+"?§:Vector.<§2!u§>;
      
      protected var §%T§:Vector.<§3J§>;
      
      private var §9!8§:int;
      
      private var §3@§:int;
      
      public function §@!?§(param1:String)
      {
         this.§+"?§ = new Vector.<§2!u§>();
         this.§%T§ = new Vector.<§3J§>();
         super();
         this.§54§ = param1;
         this.§3"=§ = 1;
      }
      
      public static function initialize(param1:String) : §@!?§
      {
         var _loc2_:§@!?§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§2!u§ = null;
         var _loc9_:§3J§ = null;
         var _loc3_:Array = param1.split(§[!!§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §@!?§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§7N§);
            _loc5_ = _loc3_[2].split(§7N§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §2!u§.initialize(_loc6_))
               {
                  _loc2_.§+"?§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §3J§.initialize(_loc7_))
               {
                  _loc2_.§%T§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §%![§() : Boolean
      {
         return this.§4!8§;
      }
      
      public function get §`!c§() : String
      {
         return this.§54§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§3"=§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§3"=§;
      }
      
      protected function get §2!_§() : int
      {
         return this.§!+§;
      }
      
      public function §6"7§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§4!8§)
         {
            this.§+"?§.push(new §2!u§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §`!%§(param1:int) : void
      {
         if(!this.§4!8§)
         {
            if(this.§%T§.length > 0)
            {
               if(this.§%T§[this.§%T§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§%T§.push(new §3J§(param1));
         }
      }
      
      public function play() : void
      {
         this.§4!8§ = true;
      }
      
      public function step(param1:§5"L§) : void
      {
         var _loc2_:§2!u§ = null;
         var _loc3_:§3J§ = null;
         if(this.§+"?§.length > this.§9!8§)
         {
            _loc2_ = this.§+"?§[this.§9!8§];
            if(_loc2_.step == this.§2!_§)
            {
               param1.slingshot.§`"K§(_loc2_.x,_loc2_.y,_loc2_.§9'§,_loc2_.angle);
               ++this.§9!8§;
            }
         }
         if(this.§%T§.length > this.§3@§)
         {
            _loc3_ = this.§%T§[this.§3@§];
            if(_loc3_.step == this.§2!_§)
            {
               param1.activatePowerup();
               ++this.§3@§;
            }
         }
         ++this.§!+§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§54§ + §[!!§ + this.§ !P§() + §[!!§ + this.§?!8§());
      }
      
      private function § !P§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§+"?§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§+"?§.length)
         {
            _loc1_ += §7N§;
            _loc1_ += this.§+"?§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §?!8§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§%T§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§%T§.length)
         {
            _loc1_ += §7N§;
            _loc1_ += this.§%T§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
