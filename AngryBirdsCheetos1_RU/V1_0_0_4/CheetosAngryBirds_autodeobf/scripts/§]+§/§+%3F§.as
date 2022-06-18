package §]+§
{
   import §7z§.§]!-§;
   import flash.system.Capabilities;
   
   public class §+?§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §0E§:String;
      
      private var §=>§:int;
      
      private var §9i§:Number;
      
      private var §`Q§:Number;
      
      protected var §'!R§:Boolean;
      
      protected var §7K§:Vector.<§ W§>;
      
      protected var §#$§:Vector.<§2;§>;
      
      private var §?,§:int;
      
      private var §"l§:int;
      
      public function §+?§(param1:String)
      {
         this.§7K§ = new Vector.<§ W§>();
         this.§#$§ = new Vector.<§2;§>();
         super();
         this.§0E§ = param1;
         this.§9i§ = 1;
      }
      
      public static function §7x§(param1:String) : §+?§
      {
         var _loc2_:§+?§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§ W§ = null;
         var _loc9_:§2;§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §+?§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = § W§.§7x§(_loc6_))
               {
                  _loc2_.§7K§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §2;§.§7x§(_loc7_))
               {
                  _loc2_.§#$§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §6F§() : Boolean
      {
         return this.§'!R§;
      }
      
      public function get §%!5§() : String
      {
         return this.§0E§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§9i§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§9i§;
      }
      
      protected function get currentStep() : int
      {
         return this.§=>§;
      }
      
      public function §6!J§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§'!R§)
         {
            this.§7K§.push(new § W§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §+%§(param1:int) : void
      {
         if(!this.§'!R§)
         {
            if(this.§#$§.length > 0)
            {
               if(this.§#$§[this.§#$§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§#$§.push(new §2;§(param1));
         }
      }
      
      public function play() : void
      {
         this.§'!R§ = true;
      }
      
      public function step(param1:§]!-§) : void
      {
         var _loc2_:§ W§ = null;
         var _loc3_:§2;§ = null;
         if(this.§7K§.length > this.§?,§)
         {
            _loc2_ = this.§7K§[this.§?,§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§"!>§(_loc2_.x,_loc2_.y,_loc2_.§5!Z§,_loc2_.angle);
               ++this.§?,§;
            }
         }
         if(this.§#$§.length > this.§"l§)
         {
            _loc3_ = this.§#$§[this.§"l§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§"l§;
            }
         }
         ++this.§=>§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§0E§ + DELIM + this.§<![§() + DELIM + this.§@!S§());
      }
      
      private function §<![§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§7K§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§7K§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§7K§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §@!S§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§#$§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§#$§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§#$§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
