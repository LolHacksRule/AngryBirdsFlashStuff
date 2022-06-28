package §&!'§
{
   import §,!5§.§^g§;
   import flash.system.Capabilities;
   
   public class §>C§
   {
      
      public static const §9@§:String = "@@";
      
      public static const §%S§:String = "@";
       
      
      private var §;!§:String;
      
      private var §"!p§:int;
      
      private var §5y§:Number;
      
      private var §=U§:Number;
      
      protected var §02§:Boolean;
      
      protected var §-l§:Vector.<§4!?§>;
      
      protected var §1&§:Vector.<§#!7§>;
      
      private var §5!g§:int;
      
      private var §]!j§:int;
      
      public function §>C§(param1:String)
      {
         this.§-l§ = new Vector.<§4!?§>();
         this.§1&§ = new Vector.<§#!7§>();
         super();
         this.§;!§ = param1;
         this.§5y§ = 1;
      }
      
      public static function initialize(param1:String) : §>C§
      {
         var _loc2_:§>C§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§4!?§ = null;
         var _loc9_:§#!7§ = null;
         var _loc3_:Array = param1.split(§9@§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §>C§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§%S§);
            _loc5_ = _loc3_[2].split(§%S§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §4!?§.initialize(_loc6_))
               {
                  _loc2_.§-l§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §#!7§.initialize(_loc7_))
               {
                  _loc2_.§1&§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §;J§() : Boolean
      {
         return this.§02§;
      }
      
      public function get §>Z§() : String
      {
         return this.§;!§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§5y§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§5y§;
      }
      
      protected function get §?!Z§() : int
      {
         return this.§"!p§;
      }
      
      public function §%!1§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§02§)
         {
            this.§-l§.push(new §4!?§(param1,param2,param3,param4,param5));
         }
      }
      
      public function § do§(param1:int) : void
      {
         if(!this.§02§)
         {
            if(this.§1&§.length > 0)
            {
               if(this.§1&§[this.§1&§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§1&§.push(new §#!7§(param1));
         }
      }
      
      public function play() : void
      {
         this.§02§ = true;
      }
      
      public function step(param1:§^g§) : void
      {
         var _loc2_:§4!?§ = null;
         var _loc3_:§#!7§ = null;
         if(this.§-l§.length > this.§5!g§)
         {
            _loc2_ = this.§-l§[this.§5!g§];
            if(_loc2_.step == this.§?!Z§)
            {
               param1.slingshot.§!!p§(_loc2_.x,_loc2_.y,_loc2_.§1$§,_loc2_.angle);
               ++this.§5!g§;
            }
         }
         if(this.§1&§.length > this.§]!j§)
         {
            _loc3_ = this.§1&§[this.§]!j§];
            if(_loc3_.step == this.§?!Z§)
            {
               param1.activatePowerup();
               ++this.§]!j§;
            }
         }
         ++this.§"!p§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§;!§ + §9@§ + this.§;!'§() + §9@§ + this.§`W§());
      }
      
      private function §;!'§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§-l§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§-l§.length)
         {
            _loc1_ += §%S§;
            _loc1_ += this.§-l§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §`W§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§1&§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§1&§.length)
         {
            _loc1_ += §%S§;
            _loc1_ += this.§1&§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
