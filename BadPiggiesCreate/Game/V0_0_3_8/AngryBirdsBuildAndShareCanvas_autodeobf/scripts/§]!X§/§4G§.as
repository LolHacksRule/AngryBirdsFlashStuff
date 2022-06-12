package §]!X§
{
   import §%h§.§5X§;
   import flash.system.Capabilities;
   
   public class §4G§
   {
      
      public static const §6z§:String = "@@";
      
      public static const §+!#§:String = "@";
       
      
      private var §8f§:String;
      
      private var §5d§:int;
      
      private var §7Z§:Number;
      
      private var §<h§:Number;
      
      protected var §0K§:Boolean;
      
      protected var §8u§:Vector.<§<Z§>;
      
      protected var §'r§:Vector.<§[!y§>;
      
      private var §=t§:int;
      
      private var §2+§:int;
      
      public function §4G§(param1:String)
      {
         this.§8u§ = new Vector.<§<Z§>();
         this.§'r§ = new Vector.<§[!y§>();
         super();
         this.§8f§ = param1;
         this.§7Z§ = 1;
      }
      
      public static function initialize(param1:String) : §4G§
      {
         var _loc2_:§4G§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§<Z§ = null;
         var _loc9_:§[!y§ = null;
         var _loc3_:Array = param1.split(§6z§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §4G§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§+!#§);
            _loc5_ = _loc3_[2].split(§+!#§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §<Z§.initialize(_loc6_))
               {
                  _loc2_.§8u§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §[!y§.initialize(_loc7_))
               {
                  _loc2_.§'r§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §^" §() : Boolean
      {
         return this.§0K§;
      }
      
      public function get §0!7§() : String
      {
         return this.§8f§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§7Z§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§7Z§;
      }
      
      protected function get §0k§() : int
      {
         return this.§5d§;
      }
      
      public function §^!$§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§0K§)
         {
            this.§8u§.push(new §<Z§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §2!K§(param1:int) : void
      {
         if(!this.§0K§)
         {
            if(this.§'r§.length > 0)
            {
               if(this.§'r§[this.§'r§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§'r§.push(new §[!y§(param1));
         }
      }
      
      public function play() : void
      {
         this.§0K§ = true;
      }
      
      public function step(param1:§5X§) : void
      {
         var _loc2_:§<Z§ = null;
         var _loc3_:§[!y§ = null;
         if(this.§8u§.length > this.§=t§)
         {
            _loc2_ = this.§8u§[this.§=t§];
            if(_loc2_.step == this.§0k§)
            {
               param1.slingshot.§]d§(_loc2_.x,_loc2_.y,_loc2_.§<!+§,_loc2_.angle);
               ++this.§=t§;
            }
         }
         if(this.§'r§.length > this.§2+§)
         {
            _loc3_ = this.§'r§[this.§2+§];
            if(_loc3_.step == this.§0k§)
            {
               param1.activatePowerup();
               ++this.§2+§;
            }
         }
         ++this.§5d§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§8f§ + §6z§ + this.§,U§() + §6z§ + this.§[h§());
      }
      
      private function §,U§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§8u§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§8u§.length)
         {
            _loc1_ += §+!#§;
            _loc1_ += this.§8u§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §[h§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§'r§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§'r§.length)
         {
            _loc1_ += §+!#§;
            _loc1_ += this.§'r§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
