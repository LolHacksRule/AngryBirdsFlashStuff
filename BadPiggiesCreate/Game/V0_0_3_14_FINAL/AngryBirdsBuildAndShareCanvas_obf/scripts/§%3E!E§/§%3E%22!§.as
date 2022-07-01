package §>!E§
{
   import §5!V§.§!w§;
   import flash.system.Capabilities;
   
   public class §>"!§
   {
      
      public static const §8N§:String = "@@";
      
      public static const §"r§:String = "@";
       
      
      private var §#!§:String;
      
      private var §+7§:int;
      
      private var §5!?§:Number;
      
      private var §7A§:Number;
      
      protected var §^!D§:Boolean;
      
      protected var §'F§:Vector.<§+G§>;
      
      protected var §1§:Vector.<§-!@§>;
      
      private var §1!_§:int;
      
      private var §4!&§:int;
      
      public function §>"!§(param1:String)
      {
         this.§'F§ = new Vector.<§+G§>();
         this.§1§ = new Vector.<§-!@§>();
         super();
         this.§#!§ = param1;
         this.§5!?§ = 1;
      }
      
      public static function initialize(param1:String) : §>"!§
      {
         var _loc2_:§>"!§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§+G§ = null;
         var _loc9_:§-!@§ = null;
         var _loc3_:Array = param1.split(§8N§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §>"!§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§"r§);
            _loc5_ = _loc3_[2].split(§"r§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §+G§.initialize(_loc6_))
               {
                  _loc2_.§'F§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §-!@§.initialize(_loc7_))
               {
                  _loc2_.§1§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §if §() : Boolean
      {
         return this.§^!D§;
      }
      
      public function get §;!^§() : String
      {
         return this.§#!§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§5!?§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§5!?§;
      }
      
      protected function get §?!Z§() : int
      {
         return this.§+7§;
      }
      
      public function §3"%§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§^!D§)
         {
            this.§'F§.push(new §+G§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §7!j§(param1:int) : void
      {
         if(!this.§^!D§)
         {
            if(this.§1§.length > 0)
            {
               if(this.§1§[this.§1§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§1§.push(new §-!@§(param1));
         }
      }
      
      public function play() : void
      {
         this.§^!D§ = true;
      }
      
      public function step(param1:§!w§) : void
      {
         var _loc2_:§+G§ = null;
         var _loc3_:§-!@§ = null;
         if(this.§'F§.length > this.§1!_§)
         {
            _loc2_ = this.§'F§[this.§1!_§];
            if(_loc2_.step == this.§?!Z§)
            {
               param1.slingshot.§`"$§(_loc2_.x,_loc2_.y,_loc2_.§ i§,_loc2_.angle);
               ++this.§1!_§;
            }
         }
         if(this.§1§.length > this.§4!&§)
         {
            _loc3_ = this.§1§[this.§4!&§];
            if(_loc3_.step == this.§?!Z§)
            {
               param1.activatePowerup();
               ++this.§4!&§;
            }
         }
         ++this.§+7§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§#!§ + §8N§ + this.§0!i§() + §8N§ + this.§?!@§());
      }
      
      private function §0!i§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§'F§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§'F§.length)
         {
            _loc1_ += §"r§;
            _loc1_ += this.§'F§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §?!@§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§1§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§1§.length)
         {
            _loc1_ += §"r§;
            _loc1_ += this.§1§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
