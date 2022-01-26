package §"o§
{
   import §[x§.§2^§;
   import flash.system.Capabilities;
   
   public class §9!#§
   {
      
      public static const §0!A§:String = "@@";
      
      public static const §6C§:String = "@";
       
      
      private var §8h§:String;
      
      private var §@"§:int;
      
      private var §?!A§:Number;
      
      private var § !A§:Number;
      
      protected var §^o§:Boolean;
      
      protected var §1i§:Vector.<§>V§>;
      
      protected var §%m§:Vector.<PowerUp>;
      
      private var § !0§:int;
      
      private var §+!7§:int;
      
      public function §9!#§(param1:String)
      {
         this.§1i§ = new Vector.<§>V§>();
         this.§%m§ = new Vector.<PowerUp>();
         super();
         this.§8h§ = param1;
         this.§?!A§ = 1;
      }
      
      public static function initialize(param1:String) : §9!#§
      {
         var _loc2_:§9!#§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§>V§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§0!A§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §9!#§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§6C§);
            _loc5_ = _loc3_[2].split(§6C§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §>V§.initialize(_loc6_))
               {
                  _loc2_.§1i§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§%m§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §%!'§() : Boolean
      {
         return this.§^o§;
      }
      
      public function get §"8§() : String
      {
         return this.§8h§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§?!A§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§?!A§;
      }
      
      protected function get §-p§() : int
      {
         return this.§@"§;
      }
      
      public function §,0§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§^o§)
         {
            this.§1i§.push(new §>V§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §7'§(param1:int) : void
      {
         if(!this.§^o§)
         {
            if(this.§%m§.length > 0)
            {
               if(this.§%m§[this.§%m§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§%m§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§^o§ = true;
      }
      
      public function step(param1:§2^§) : void
      {
         var _loc2_:§>V§ = null;
         var _loc3_:PowerUp = null;
         if(this.§1i§.length > this.§ !0§)
         {
            _loc2_ = this.§1i§[this.§ !0§];
            if(_loc2_.step == this.§-p§)
            {
               param1.slingshot.§5%§(_loc2_.x,_loc2_.y,_loc2_.§^,§,_loc2_.angle);
               ++this.§ !0§;
            }
         }
         if(this.§%m§.length > this.§+!7§)
         {
            _loc3_ = this.§%m§[this.§+!7§];
            if(_loc3_.step == this.§-p§)
            {
               param1.activatePowerup();
               ++this.§+!7§;
            }
         }
         ++this.§@"§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§8h§ + §0!A§ + this.§[a§() + §0!A§ + this.§`Q§());
      }
      
      private function §[a§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§1i§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§1i§.length)
         {
            _loc1_ += §6C§;
            _loc1_ += this.§1i§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §`Q§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§%m§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§%m§.length)
         {
            _loc1_ += §6C§;
            _loc1_ += this.§%m§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
