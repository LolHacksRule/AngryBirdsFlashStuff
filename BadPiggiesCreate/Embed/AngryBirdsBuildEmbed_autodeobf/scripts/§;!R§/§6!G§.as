package §;!R§
{
   import §<!<§.§7E§;
   import flash.system.Capabilities;
   
   public class §6!G§
   {
      
      public static const §9![§:String = "@@";
      
      public static const §3$§:String = "@";
       
      
      private var §-6§:String;
      
      private var §[`§:int;
      
      private var § 2§:Number;
      
      private var §8!N§:Number;
      
      protected var §`!q§:Boolean;
      
      protected var §&!-§:Vector.<§5+§>;
      
      protected var §@<§:Vector.<PowerUp>;
      
      private var §-!l§:int;
      
      private var §`-§:int;
      
      public function §6!G§(param1:String)
      {
         this.§&!-§ = new Vector.<§5+§>();
         this.§@<§ = new Vector.<PowerUp>();
         super();
         this.§-6§ = param1;
         this.§ 2§ = 1;
      }
      
      public static function initialize(param1:String) : §6!G§
      {
         var _loc2_:§6!G§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§5+§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§9![§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §6!G§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§3$§);
            _loc5_ = _loc3_[2].split(§3$§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §5+§.initialize(_loc6_))
               {
                  _loc2_.§&!-§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§@<§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §6e§() : Boolean
      {
         return this.§`!q§;
      }
      
      public function get §'!#§() : String
      {
         return this.§-6§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§ 2§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§ 2§;
      }
      
      protected function get §`V§() : int
      {
         return this.§[`§;
      }
      
      public function §3!i§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§`!q§)
         {
            this.§&!-§.push(new §5+§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §=!`§(param1:int) : void
      {
         if(!this.§`!q§)
         {
            if(this.§@<§.length > 0)
            {
               if(this.§@<§[this.§@<§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§@<§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§`!q§ = true;
      }
      
      public function step(param1:§7E§) : void
      {
         var _loc2_:§5+§ = null;
         var _loc3_:PowerUp = null;
         if(this.§&!-§.length > this.§-!l§)
         {
            _loc2_ = this.§&!-§[this.§-!l§];
            if(_loc2_.step == this.§`V§)
            {
               param1.slingshot.§2!I§(_loc2_.x,_loc2_.y,_loc2_.§,!c§,_loc2_.angle);
               ++this.§-!l§;
            }
         }
         if(this.§@<§.length > this.§`-§)
         {
            _loc3_ = this.§@<§[this.§`-§];
            if(_loc3_.step == this.§`V§)
            {
               param1.activatePowerup();
               ++this.§`-§;
            }
         }
         ++this.§[`§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§-6§ + §9![§ + this.§,!m§() + §9![§ + this.§"&§());
      }
      
      private function §,!m§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§&!-§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!-§.length)
         {
            _loc1_ += §3$§;
            _loc1_ += this.§&!-§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §"&§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§@<§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§@<§.length)
         {
            _loc1_ += §3$§;
            _loc1_ += this.§@<§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
