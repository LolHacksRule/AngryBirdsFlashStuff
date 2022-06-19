package §<a§
{
   import §,§.§ p§;
   import flash.system.Capabilities;
   
   public class §2!P§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §>c§:String;
      
      private var §"M§:int;
      
      private var §@c§:Number;
      
      private var §#!c§:Number;
      
      protected var §8!7§:Boolean;
      
      protected var §#§:Vector.<§"G§>;
      
      protected var §,F§:Vector.<§#C§>;
      
      private var §3R§:int;
      
      private var §"i§:int;
      
      public function §2!P§(param1:String)
      {
         this.§#§ = new Vector.<§"G§>();
         this.§,F§ = new Vector.<§#C§>();
         super();
         this.§>c§ = param1;
         this.§@c§ = 1;
      }
      
      public static function §,a§(param1:String) : §2!P§
      {
         var _loc2_:§2!P§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§"G§ = null;
         var _loc9_:§#C§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §2!P§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §"G§.§,a§(_loc6_))
               {
                  _loc2_.§#§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §#C§.§,a§(_loc7_))
               {
                  _loc2_.§,F§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §`!N§() : Boolean
      {
         return this.§8!7§;
      }
      
      public function get levelName() : String
      {
         return this.§>c§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§@c§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§@c§;
      }
      
      protected function get currentStep() : int
      {
         return this.§"M§;
      }
      
      public function §1!f§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§8!7§)
         {
            this.§#§.push(new §"G§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §;!2§(param1:int) : void
      {
         if(!this.§8!7§)
         {
            if(this.§,F§.length > 0)
            {
               if(this.§,F§[this.§,F§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§,F§.push(new §#C§(param1));
         }
      }
      
      public function play() : void
      {
         this.§8!7§ = true;
      }
      
      public function step(param1:§ p§) : void
      {
         var _loc2_:§"G§ = null;
         var _loc3_:§#C§ = null;
         if(this.§#§.length > this.§3R§)
         {
            _loc2_ = this.§#§[this.§3R§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§7+§(_loc2_.x,_loc2_.y,_loc2_.§0f§,_loc2_.angle);
               ++this.§3R§;
            }
         }
         if(this.§,F§.length > this.§"i§)
         {
            _loc3_ = this.§,F§[this.§"i§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§"i§;
            }
         }
         ++this.§"M§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§>c§ + DELIM + this.§!$§() + DELIM + this.§8p§());
      }
      
      private function §!$§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§#§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§#§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§#§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §8p§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§,F§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§,F§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§,F§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
