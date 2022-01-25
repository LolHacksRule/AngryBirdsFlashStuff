package §-!V§
{
   import § 2§.§=+§;
   import flash.system.Capabilities;
   
   public class §9!<§
   {
      
      public static const §1#§:String = "@@";
      
      public static const §'"!§:String = "@";
       
      
      private var §1!B§:String;
      
      private var § !u§:int;
      
      private var §<L§:Number;
      
      private var §"!<§:Number;
      
      protected var §=!1§:Boolean;
      
      protected var §%!o§:Vector.<§=!i§>;
      
      protected var §7" §:Vector.<§#"-§>;
      
      private var §?3§:int;
      
      private var §%$§:int;
      
      public function §9!<§(param1:String)
      {
         this.§%!o§ = new Vector.<§=!i§>();
         this.§7" § = new Vector.<§#"-§>();
         super();
         this.§1!B§ = param1;
         this.§<L§ = 1;
      }
      
      public static function initialize(param1:String) : §9!<§
      {
         var _loc2_:§9!<§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§=!i§ = null;
         var _loc9_:§#"-§ = null;
         var _loc3_:Array = param1.split(§1#§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §9!<§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§'"!§);
            _loc5_ = _loc3_[2].split(§'"!§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §=!i§.initialize(_loc6_))
               {
                  _loc2_.§%!o§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §#"-§.initialize(_loc7_))
               {
                  _loc2_.§7" §.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §@t§() : Boolean
      {
         return this.§=!1§;
      }
      
      public function get levelName() : String
      {
         return this.§1!B§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§<L§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§<L§;
      }
      
      protected function get §[p§() : int
      {
         return this.§ !u§;
      }
      
      public function §!_§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§=!1§)
         {
            this.§%!o§.push(new §=!i§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §<!T§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§=!1§)
         {
            if(this.§7" §.length > 0)
            {
               if(this.§7" §[this.§7" §.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§7" §.push(new §#"-§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§=!1§ = true;
      }
      
      public function step(param1:§=+§) : void
      {
         var _loc2_:§=!i§ = null;
         var _loc3_:§#"-§ = null;
         if(this.§%!o§.length > this.§?3§)
         {
            _loc2_ = this.§%!o§[this.§?3§];
            if(_loc2_.step == this.§[p§)
            {
               param1.slingshot.§'B§(_loc2_.x,_loc2_.y,_loc2_.§-"2§,_loc2_.angle);
               ++this.§?3§;
            }
         }
         if(this.§7" §.length > this.§%$§)
         {
            _loc3_ = this.§7" §[this.§%$§];
            if(_loc3_.step == this.§[p§)
            {
               param1.activateSpecialPower(_loc3_.§-!e§,_loc3_.§]"'§);
               ++this.§%$§;
            }
         }
         ++this.§ !u§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§1!B§ + §1#§ + this.§0E§() + §1#§ + this.§ !A§());
      }
      
      private function §0E§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§%!o§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!o§.length)
         {
            _loc1_ += §'"!§;
            _loc1_ += this.§%!o§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function § !A§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§7" §.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§7" §.length)
         {
            _loc1_ += §'"!§;
            _loc1_ += this.§7" §[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
