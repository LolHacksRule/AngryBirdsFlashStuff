package §=?§
{
   import §!X§.§86§;
   import flash.system.Capabilities;
   
   public class §^!M§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §"j§:String;
      
      private var §#_§:int;
      
      private var §0t§:Number;
      
      private var §3-§:Number;
      
      protected var §[K§:Boolean;
      
      protected var §+>§:Vector.<§<Q§>;
      
      protected var §8=§:Vector.<§>!O§>;
      
      private var §'!S§:int;
      
      private var §?!F§:int;
      
      public function §^!M§(param1:String)
      {
         this.§+>§ = new Vector.<§<Q§>();
         this.§8=§ = new Vector.<§>!O§>();
         super();
         this.§"j§ = param1;
         this.§0t§ = 1;
      }
      
      public static function §&O§(param1:String) : §^!M§
      {
         var _loc2_:§^!M§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§<Q§ = null;
         var _loc9_:§>!O§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §^!M§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §<Q§.§&O§(_loc6_))
               {
                  _loc2_.§+>§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §>!O§.§&O§(_loc7_))
               {
                  _loc2_.§8=§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §#I§() : Boolean
      {
         return this.§[K§;
      }
      
      public function get §`4§() : String
      {
         return this.§"j§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§0t§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§0t§;
      }
      
      protected function get currentStep() : int
      {
         return this.§#_§;
      }
      
      public function §7_§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§[K§)
         {
            this.§+>§.push(new §<Q§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §99§(param1:int) : void
      {
         if(!this.§[K§)
         {
            if(this.§8=§.length > 0)
            {
               if(this.§8=§[this.§8=§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§8=§.push(new §>!O§(param1));
         }
      }
      
      public function play() : void
      {
         this.§[K§ = true;
      }
      
      public function step(param1:§86§) : void
      {
         var _loc2_:§<Q§ = null;
         var _loc3_:§>!O§ = null;
         if(this.§+>§.length > this.§'!S§)
         {
            _loc2_ = this.§+>§[this.§'!S§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§9!B§(_loc2_.x,_loc2_.y,_loc2_.§@!F§,_loc2_.angle);
               ++this.§'!S§;
            }
         }
         if(this.§8=§.length > this.§?!F§)
         {
            _loc3_ = this.§8=§[this.§?!F§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§?!F§;
            }
         }
         ++this.§#_§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§"j§ + DELIM + this.§6;§() + DELIM + this.§'r§());
      }
      
      private function §6;§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§+>§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§+>§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§+>§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §'r§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§8=§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§8=§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§8=§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
