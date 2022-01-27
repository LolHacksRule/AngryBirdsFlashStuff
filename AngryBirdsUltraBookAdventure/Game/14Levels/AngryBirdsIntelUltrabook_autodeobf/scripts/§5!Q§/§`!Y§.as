package §5!Q§
{
   import §40§.§5G§;
   import flash.system.Capabilities;
   
   public class §`!Y§
   {
      
      public static const §]m§:String = "@@";
      
      public static const §@!g§:String = "@";
       
      
      private var §1m§:String;
      
      private var §6!§:int;
      
      private var § ;§:Number;
      
      private var §!!L§:Number;
      
      protected var §#!#§:Boolean;
      
      protected var §@B§:Vector.<§?v§>;
      
      protected var §,""§:Vector.<§#!m§>;
      
      private var §@a§:int;
      
      private var § f§:int;
      
      public function §`!Y§(param1:String)
      {
         this.§@B§ = new Vector.<§?v§>();
         this.§,""§ = new Vector.<§#!m§>();
         super();
         this.§1m§ = param1;
         this.§ ;§ = 1;
      }
      
      public static function initialize(param1:String) : §`!Y§
      {
         var _loc2_:§`!Y§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§?v§ = null;
         var _loc9_:§#!m§ = null;
         var _loc3_:Array = param1.split(§]m§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §`!Y§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§@!g§);
            _loc5_ = _loc3_[2].split(§@!g§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §?v§.initialize(_loc6_))
               {
                  _loc2_.§@B§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §#!m§.initialize(_loc7_))
               {
                  _loc2_.§,""§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §!!#§() : Boolean
      {
         return this.§#!#§;
      }
      
      public function get §#!9§() : String
      {
         return this.§1m§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§ ;§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§ ;§;
      }
      
      protected function get §[!2§() : int
      {
         return this.§6!§;
      }
      
      public function §`!`§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§#!#§)
         {
            this.§@B§.push(new §?v§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §"z§(param1:int) : void
      {
         if(!this.§#!#§)
         {
            if(this.§,""§.length > 0)
            {
               if(this.§,""§[this.§,""§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§,""§.push(new §#!m§(param1));
         }
      }
      
      public function play() : void
      {
         this.§#!#§ = true;
      }
      
      public function step(param1:§5G§) : void
      {
         var _loc2_:§?v§ = null;
         var _loc3_:§#!m§ = null;
         if(this.§@B§.length > this.§@a§)
         {
            _loc2_ = this.§@B§[this.§@a§];
            if(_loc2_.step == this.§[!2§)
            {
               param1.slingshot.§7!t§(_loc2_.x,_loc2_.y,_loc2_.§2!§,_loc2_.angle);
               ++this.§@a§;
            }
         }
         if(this.§,""§.length > this.§ f§)
         {
            _loc3_ = this.§,""§[this.§ f§];
            if(_loc3_.step == this.§[!2§)
            {
               param1.activatePowerup();
               ++this.§ f§;
            }
         }
         ++this.§6!§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§1m§ + §]m§ + this.§7!h§() + §]m§ + this.§[7§());
      }
      
      private function §7!h§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§@B§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§@B§.length)
         {
            _loc1_ += §@!g§;
            _loc1_ += this.§@B§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §[7§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§,""§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§,""§.length)
         {
            _loc1_ += §@!g§;
            _loc1_ += this.§,""§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
