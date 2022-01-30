package §#"-§
{
   import §9G§.§2F§;
   import flash.system.Capabilities;
   
   public class §5!a§
   {
      
      public static const §7`§:String = "@@";
      
      public static const §-!=§:String = "@";
       
      
      private var §!u§:String;
      
      private var §0J§:int;
      
      private var §1g§:Number;
      
      private var §3p§:Number;
      
      protected var §="$§:Boolean;
      
      protected var §4!_§:Vector.<§^F§>;
      
      protected var §=Y§:Vector.<§,e§>;
      
      private var §0d§:int;
      
      private var §?!v§:int;
      
      public function §5!a§(param1:String)
      {
         this.§4!_§ = new Vector.<§^F§>();
         this.§=Y§ = new Vector.<§,e§>();
         super();
         this.§!u§ = param1;
         this.§1g§ = 1;
      }
      
      public static function initialize(param1:String) : §5!a§
      {
         var _loc2_:§5!a§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§^F§ = null;
         var _loc9_:§,e§ = null;
         var _loc3_:Array = param1.split(§7`§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §5!a§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§-!=§);
            _loc5_ = _loc3_[2].split(§-!=§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §^F§.initialize(_loc6_))
               {
                  _loc2_.§4!_§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §,e§.initialize(_loc7_))
               {
                  _loc2_.§=Y§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §'_§() : Boolean
      {
         return this.§="$§;
      }
      
      public function get levelName() : String
      {
         return this.§!u§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§1g§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§1g§;
      }
      
      protected function get §&P§() : int
      {
         return this.§0J§;
      }
      
      public function §2c§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§="$§)
         {
            this.§4!_§.push(new §^F§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §0!S§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§="$§)
         {
            if(this.§=Y§.length > 0)
            {
               if(this.§=Y§[this.§=Y§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§=Y§.push(new §,e§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§="$§ = true;
      }
      
      public function step(param1:§2F§) : void
      {
         var _loc2_:§^F§ = null;
         var _loc3_:§,e§ = null;
         if(this.§4!_§.length > this.§0d§)
         {
            _loc2_ = this.§4!_§[this.§0d§];
            if(_loc2_.step == this.§&P§)
            {
               param1.slingshot.§&_§(_loc2_.x,_loc2_.y,_loc2_.§<!$§,_loc2_.angle);
               ++this.§0d§;
            }
         }
         if(this.§=Y§.length > this.§?!v§)
         {
            _loc3_ = this.§=Y§[this.§?!v§];
            if(_loc3_.step == this.§&P§)
            {
               param1.activateSpecialPower(_loc3_.§>!4§,_loc3_.§,!x§);
               ++this.§?!v§;
            }
         }
         ++this.§0J§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§!u§ + §7`§ + this.§+z§() + §7`§ + this.§>!m§());
      }
      
      private function §+z§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§4!_§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§4!_§.length)
         {
            _loc1_ += §-!=§;
            _loc1_ += this.§4!_§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §>!m§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§=Y§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§=Y§.length)
         {
            _loc1_ += §-!=§;
            _loc1_ += this.§=Y§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
