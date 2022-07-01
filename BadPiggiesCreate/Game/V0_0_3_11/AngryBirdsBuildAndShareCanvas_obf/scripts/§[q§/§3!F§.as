package §[q§
{
   import §1!v§.§@%§;
   import flash.system.Capabilities;
   
   public class §3!F§
   {
      
      public static const §1U§:String = "@@";
      
      public static const §^!V§:String = "@";
       
      
      private var §`!2§:String;
      
      private var §,!P§:int;
      
      private var §2!8§:Number;
      
      private var §]!p§:Number;
      
      protected var §0v§:Boolean;
      
      protected var §@!j§:Vector.<§@y§>;
      
      protected var §-s§:Vector.<§%h§>;
      
      private var §6!;§:int;
      
      private var §?!R§:int;
      
      public function §3!F§(param1:String)
      {
         this.§@!j§ = new Vector.<§@y§>();
         this.§-s§ = new Vector.<§%h§>();
         super();
         this.§`!2§ = param1;
         this.§2!8§ = 1;
      }
      
      public static function initialize(param1:String) : §3!F§
      {
         var _loc2_:§3!F§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§@y§ = null;
         var _loc9_:§%h§ = null;
         var _loc3_:Array = param1.split(§1U§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §3!F§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§^!V§);
            _loc5_ = _loc3_[2].split(§^!V§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §@y§.initialize(_loc6_))
               {
                  _loc2_.§@!j§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §%h§.initialize(_loc7_))
               {
                  _loc2_.§-s§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §@!K§() : Boolean
      {
         return this.§0v§;
      }
      
      public function get §"f§() : String
      {
         return this.§`!2§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§2!8§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§2!8§;
      }
      
      protected function get §[V§() : int
      {
         return this.§,!P§;
      }
      
      public function §-!%§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§0v§)
         {
            this.§@!j§.push(new §@y§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §+"$§(param1:int) : void
      {
         if(!this.§0v§)
         {
            if(this.§-s§.length > 0)
            {
               if(this.§-s§[this.§-s§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§-s§.push(new §%h§(param1));
         }
      }
      
      public function play() : void
      {
         this.§0v§ = true;
      }
      
      public function step(param1:§@%§) : void
      {
         var _loc2_:§@y§ = null;
         var _loc3_:§%h§ = null;
         if(this.§@!j§.length > this.§6!;§)
         {
            _loc2_ = this.§@!j§[this.§6!;§];
            if(_loc2_.step == this.§[V§)
            {
               param1.slingshot.§76§(_loc2_.x,_loc2_.y,_loc2_.§`![§,_loc2_.angle);
               ++this.§6!;§;
            }
         }
         if(this.§-s§.length > this.§?!R§)
         {
            _loc3_ = this.§-s§[this.§?!R§];
            if(_loc3_.step == this.§[V§)
            {
               param1.activatePowerup();
               ++this.§?!R§;
            }
         }
         ++this.§,!P§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§`!2§ + §1U§ + this.§9!"§() + §1U§ + this.§<p§());
      }
      
      private function §9!"§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§@!j§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!j§.length)
         {
            _loc1_ += §^!V§;
            _loc1_ += this.§@!j§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §<p§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§-s§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§-s§.length)
         {
            _loc1_ += §^!V§;
            _loc1_ += this.§-s§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
