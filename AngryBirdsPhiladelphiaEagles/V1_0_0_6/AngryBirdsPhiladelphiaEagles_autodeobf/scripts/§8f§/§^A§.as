package §8f§
{
   import §4!-§.§%o§;
   import flash.system.Capabilities;
   
   public class §^A§
   {
      
      public static const §;!I§:String = "@@";
      
      public static const §-!=§:String = "@";
       
      
      private var §-S§:String;
      
      private var §>!F§:int;
      
      private var §8!3§:Number;
      
      private var §%i§:Number;
      
      protected var §%x§:Boolean;
      
      protected var §"d§:Vector.<§if§>;
      
      protected var § e§:Vector.<PowerUp>;
      
      private var §3!2§:int;
      
      private var §4!=§:int;
      
      public function §^A§(param1:String)
      {
         this.§"d§ = new Vector.<§if§>();
         this.§ e§ = new Vector.<PowerUp>();
         super();
         this.§-S§ = param1;
         this.§8!3§ = 1;
      }
      
      public static function initialize(param1:String) : §^A§
      {
         var _loc2_:§^A§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§if§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§;!I§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §^A§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§-!=§);
            _loc5_ = _loc3_[2].split(§-!=§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §if§.initialize(_loc6_))
               {
                  _loc2_.§"d§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§ e§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §,J§() : Boolean
      {
         return this.§%x§;
      }
      
      public function get §4R§() : String
      {
         return this.§-S§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§8!3§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§8!3§;
      }
      
      protected function get §12§() : int
      {
         return this.§>!F§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§%x§)
         {
            this.§"d§.push(new §if§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §2;§(param1:int) : void
      {
         if(!this.§%x§)
         {
            if(this.§ e§.length > 0)
            {
               if(this.§ e§[this.§ e§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§ e§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§%x§ = true;
      }
      
      public function step(param1:§%o§) : void
      {
         var _loc2_:§if§ = null;
         var _loc3_:PowerUp = null;
         if(this.§"d§.length > this.§3!2§)
         {
            _loc2_ = this.§"d§[this.§3!2§];
            if(_loc2_.step == this.§12§)
            {
               param1.slingshot.§2!6§(_loc2_.x,_loc2_.y,_loc2_.§<'§,_loc2_.angle);
               ++this.§3!2§;
            }
         }
         if(this.§ e§.length > this.§4!=§)
         {
            _loc3_ = this.§ e§[this.§4!=§];
            if(_loc3_.step == this.§12§)
            {
               param1.activatePowerup();
               ++this.§4!=§;
            }
         }
         ++this.§>!F§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§-S§ + §;!I§ + this.§4Z§() + §;!I§ + this.§7d§());
      }
      
      private function §4Z§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§"d§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§"d§.length)
         {
            _loc1_ += §-!=§;
            _loc1_ += this.§"d§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §7d§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§ e§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§ e§.length)
         {
            _loc1_ += §-!=§;
            _loc1_ += this.§ e§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
