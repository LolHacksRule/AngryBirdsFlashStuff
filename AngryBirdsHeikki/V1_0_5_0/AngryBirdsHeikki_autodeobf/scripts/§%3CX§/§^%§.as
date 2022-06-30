package §<X§
{
   import §+D§.§5!P§;
   import flash.system.Capabilities;
   
   public class §^%§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §^>§:String;
      
      private var §1B§:int;
      
      private var §#!N§:Number;
      
      private var §9E§:Number;
      
      protected var §&!^§:Boolean;
      
      protected var §9!c§:Vector.<§#D§>;
      
      protected var §1!C§:Vector.<§!4§>;
      
      private var §87§:int;
      
      private var §[`§:int;
      
      public function §^%§(param1:String)
      {
         this.§9!c§ = new Vector.<§#D§>();
         this.§1!C§ = new Vector.<§!4§>();
         super();
         this.§^>§ = param1;
         this.§#!N§ = 1;
      }
      
      public static function initialize(param1:String) : §^%§
      {
         var _loc2_:§^%§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§#D§ = null;
         var _loc9_:§!4§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §^%§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §#D§.initialize(_loc6_))
               {
                  _loc2_.§9!c§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §!4§.initialize(_loc7_))
               {
                  _loc2_.§1!C§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §;!V§() : Boolean
      {
         return this.§&!^§;
      }
      
      public function get levelName() : String
      {
         return this.§^>§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§#!N§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§#!N§;
      }
      
      protected function get currentStep() : int
      {
         return this.§1B§;
      }
      
      public function §1#§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§&!^§)
         {
            this.§9!c§.push(new §#D§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §1h§(param1:int) : void
      {
         if(!this.§&!^§)
         {
            if(this.§1!C§.length > 0)
            {
               if(this.§1!C§[this.§1!C§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§1!C§.push(new §!4§(param1));
         }
      }
      
      public function play() : void
      {
         this.§&!^§ = true;
      }
      
      public function step(param1:§5!P§) : void
      {
         var _loc2_:§#D§ = null;
         var _loc3_:§!4§ = null;
         if(this.§9!c§.length > this.§87§)
         {
            _loc2_ = this.§9!c§[this.§87§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§0!T§(_loc2_.x,_loc2_.y,_loc2_.§+N§,_loc2_.angle);
               ++this.§87§;
            }
         }
         if(this.§1!C§.length > this.§[`§)
         {
            _loc3_ = this.§1!C§[this.§[`§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§[`§;
            }
         }
         ++this.§1B§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§^>§ + DELIM + this.§0!!§() + DELIM + this.§2U§());
      }
      
      private function §0!!§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§9!c§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!c§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§9!c§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §2U§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§1!C§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§1!C§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§1!C§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
