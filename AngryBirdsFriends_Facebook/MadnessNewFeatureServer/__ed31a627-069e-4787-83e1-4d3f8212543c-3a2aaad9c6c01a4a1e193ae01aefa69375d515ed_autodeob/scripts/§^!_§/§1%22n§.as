package §^!_§
{
   import §>2§.§!6§;
   import flash.system.Capabilities;
   
   public class §1"n§
   {
      
      public static const §>#L§:String = "@@";
      
      public static const §!$=§:String = "@";
       
      
      private var §0#b§:String;
      
      private var §9-§:int;
      
      private var §4"W§:Number;
      
      private var §9"3§:Number;
      
      protected var §%=§:Boolean;
      
      protected var §1"%§:Vector.<§6"h§>;
      
      protected var §!"0§:Vector.<§!8§>;
      
      private var §-"A§:int;
      
      private var §"!M§:int;
      
      public function §1"n§(param1:String)
      {
         this.§1"%§ = new Vector.<§6"h§>();
         this.§!"0§ = new Vector.<§!8§>();
         super();
         this.§0#b§ = param1;
         this.§4"W§ = 1;
      }
      
      public static function initialize(param1:String) : §1"n§
      {
         var _loc2_:§1"n§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§6"h§ = null;
         var _loc9_:§!8§ = null;
         var _loc3_:Array = param1.split(§>#L§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §1"n§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§!$=§);
            _loc5_ = _loc3_[2].split(§!$=§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §6"h§.initialize(_loc6_))
               {
                  _loc2_.§1"%§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §!8§.initialize(_loc7_))
               {
                  _loc2_.§!"0§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.§%=§;
      }
      
      public function get §4"o§() : String
      {
         return this.§0#b§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§4"W§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§4"W§;
      }
      
      protected function get §"!2§() : int
      {
         return this.§9-§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§%=§)
         {
            this.§1"%§.push(new §6"h§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §-"1§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§%=§)
         {
            if(this.§!"0§.length > 0)
            {
               if(this.§!"0§[this.§!"0§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§!"0§.push(new §!8§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§%=§ = true;
      }
      
      public function step(param1:§!6§) : void
      {
         var _loc2_:§6"h§ = null;
         var _loc3_:§!8§ = null;
         if(this.§1"%§.length > this.§-"A§)
         {
            _loc2_ = this.§1"%§[this.§-"A§];
            if(_loc2_.step == this.§"!2§)
            {
               param1.slingshot.§&#p§(_loc2_.x,_loc2_.y,_loc2_.§[!@§,_loc2_.angle);
               ++this.§-"A§;
            }
         }
         if(this.§!"0§.length > this.§"!M§)
         {
            _loc3_ = this.§!"0§[this.§"!M§];
            if(_loc3_.step == this.§"!2§)
            {
               param1.activateSpecialPower(_loc3_.§#";§,_loc3_.§,#C§);
               ++this.§"!M§;
            }
         }
         ++this.§9-§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§0#b§ + §>#L§ + this.§["_§() + §>#L§ + this.§^#3§());
      }
      
      private function §["_§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§1"%§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§1"%§.length)
         {
            _loc1_ += §!$=§;
            _loc1_ += this.§1"%§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §^#3§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§!"0§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§!"0§.length)
         {
            _loc1_ += §!$=§;
            _loc1_ += this.§!"0§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
