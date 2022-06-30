package §`+§
{
   import §^!7§.§^A§;
   import flash.system.Capabilities;
   
   public class §>!&§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §&p§:String;
      
      private var §@!c§:int;
      
      private var §%S§:Number;
      
      private var §-9§:Number;
      
      protected var §7b§:Boolean;
      
      protected var § in§:Vector.<§ !]§>;
      
      protected var §;§:Vector.<§5_§>;
      
      private var §41§:int;
      
      private var §=p§:int;
      
      public function §>!&§(param1:String)
      {
         this.§ in§ = new Vector.<§ !]§>();
         this.§;§ = new Vector.<§5_§>();
         super();
         this.§&p§ = param1;
         this.§%S§ = 1;
      }
      
      public static function initialize(param1:String) : §>!&§
      {
         var _loc2_:§>!&§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§ !]§ = null;
         var _loc9_:§5_§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §>!&§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = § !]§.initialize(_loc6_))
               {
                  _loc2_.§ in§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §5_§.initialize(_loc7_))
               {
                  _loc2_.§;§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §2Z§() : Boolean
      {
         return this.§7b§;
      }
      
      public function get levelName() : String
      {
         return this.§&p§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§%S§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§%S§;
      }
      
      protected function get currentStep() : int
      {
         return this.§@!c§;
      }
      
      public function §&`§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§7b§)
         {
            this.§ in§.push(new § !]§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §>S§(param1:int) : void
      {
         if(!this.§7b§)
         {
            if(this.§;§.length > 0)
            {
               if(this.§;§[this.§;§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§;§.push(new §5_§(param1));
         }
      }
      
      public function play() : void
      {
         this.§7b§ = true;
      }
      
      public function step(param1:§^A§) : void
      {
         var _loc2_:§ !]§ = null;
         var _loc3_:§5_§ = null;
         if(this.§ in§.length > this.§41§)
         {
            _loc2_ = this.§ in§[this.§41§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§]!9§(_loc2_.x,_loc2_.y,_loc2_.§[5§,_loc2_.angle);
               ++this.§41§;
            }
         }
         if(this.§;§.length > this.§=p§)
         {
            _loc3_ = this.§;§[this.§=p§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§=p§;
            }
         }
         ++this.§@!c§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§&p§ + DELIM + this.§]w§() + DELIM + this.§!Y§());
      }
      
      private function §]w§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§ in§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§ in§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§ in§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §!Y§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§;§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§;§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§;§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
