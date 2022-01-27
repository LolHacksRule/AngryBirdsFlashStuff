package §,]§
{
   import §>2§.§4h§;
   import flash.system.Capabilities;
   
   public class §6u§
   {
      
      public static const §3$§:String = "@@";
      
      public static const §#G§:String = "@";
       
      
      private var §"!L§:String;
      
      private var §-K§:int;
      
      private var §<H§:Number;
      
      private var §-f§:Number;
      
      protected var §9G§:Boolean;
      
      protected var §3!>§:Vector.<§!!L§>;
      
      protected var §0!6§:Vector.<PowerUp>;
      
      private var §2! §:int;
      
      private var § U§:int;
      
      public function §6u§(param1:String)
      {
         this.§3!>§ = new Vector.<§!!L§>();
         this.§0!6§ = new Vector.<PowerUp>();
         super();
         this.§"!L§ = param1;
         this.§<H§ = 1;
      }
      
      public static function initialize(param1:String) : §6u§
      {
         var _loc2_:§6u§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§!!L§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§3$§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §6u§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§#G§);
            _loc5_ = _loc3_[2].split(§#G§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §!!L§.initialize(_loc6_))
               {
                  _loc2_.§3!>§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§0!6§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §]!6§() : Boolean
      {
         return this.§9G§;
      }
      
      public function get §<L§() : String
      {
         return this.§"!L§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§<H§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§<H§;
      }
      
      protected function get §7!P§() : int
      {
         return this.§-K§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§9G§)
         {
            this.§3!>§.push(new §!!L§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §6!H§(param1:int) : void
      {
         if(!this.§9G§)
         {
            if(this.§0!6§.length > 0)
            {
               if(this.§0!6§[this.§0!6§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§0!6§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§9G§ = true;
      }
      
      public function step(param1:§4h§) : void
      {
         var _loc2_:§!!L§ = null;
         var _loc3_:PowerUp = null;
         if(this.§3!>§.length > this.§2! §)
         {
            _loc2_ = this.§3!>§[this.§2! §];
            if(_loc2_.step == this.§7!P§)
            {
               param1.slingshot.§6!#§(_loc2_.x,_loc2_.y,_loc2_.§5$§,_loc2_.angle);
               ++this.§2! §;
            }
         }
         if(this.§0!6§.length > this.§ U§)
         {
            _loc3_ = this.§0!6§[this.§ U§];
            if(_loc3_.step == this.§7!P§)
            {
               param1.activatePowerup();
               ++this.§ U§;
            }
         }
         ++this.§-K§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§"!L§ + §3$§ + this.§?!2§() + §3$§ + this.§]!J§());
      }
      
      private function §?!2§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§3!>§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§3!>§.length)
         {
            _loc1_ += §#G§;
            _loc1_ += this.§3!>§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §]!J§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§0!6§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§0!6§.length)
         {
            _loc1_ += §#G§;
            _loc1_ += this.§0!6§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
