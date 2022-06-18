package §3D§
{
   import §;'§.§?!D§;
   import flash.system.Capabilities;
   
   public class §+_§
   {
      
      public static const §"!4§:String = "@@";
      
      public static const §^^§:String = "@";
       
      
      private var §'!!§:String;
      
      private var §<k§:int;
      
      private var §`a§:Number;
      
      private var § in§:Number;
      
      protected var §0#§:Boolean;
      
      protected var §2p§:Vector.<§[H§>;
      
      protected var §0O§:Vector.<PowerUp>;
      
      private var §#!J§:int;
      
      private var §-[§:int;
      
      public function §+_§(param1:String)
      {
         this.§2p§ = new Vector.<§[H§>();
         this.§0O§ = new Vector.<PowerUp>();
         super();
         this.§'!!§ = param1;
         this.§`a§ = 1;
      }
      
      public static function initialize(param1:String) : §+_§
      {
         var _loc2_:§+_§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§[H§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§"!4§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §+_§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§^^§);
            _loc5_ = _loc3_[2].split(§^^§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §[H§.initialize(_loc6_))
               {
                  _loc2_.§2p§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§0O§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §8f§() : Boolean
      {
         return this.§0#§;
      }
      
      public function get §^!,§() : String
      {
         return this.§'!!§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§`a§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§`a§;
      }
      
      protected function get §@e§() : int
      {
         return this.§<k§;
      }
      
      public function §5o§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§0#§)
         {
            this.§2p§.push(new §[H§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §&c§(param1:int) : void
      {
         if(!this.§0#§)
         {
            if(this.§0O§.length > 0)
            {
               if(this.§0O§[this.§0O§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§0O§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§0#§ = true;
      }
      
      public function step(param1:§?!D§) : void
      {
         var _loc2_:§[H§ = null;
         var _loc3_:PowerUp = null;
         if(this.§2p§.length > this.§#!J§)
         {
            _loc2_ = this.§2p§[this.§#!J§];
            if(_loc2_.step == this.§@e§)
            {
               param1.slingshot.§2,§(_loc2_.x,_loc2_.y,_loc2_.§null§,_loc2_.angle);
               ++this.§#!J§;
            }
         }
         if(this.§0O§.length > this.§-[§)
         {
            _loc3_ = this.§0O§[this.§-[§];
            if(_loc3_.step == this.§@e§)
            {
               param1.activatePowerup();
               ++this.§-[§;
            }
         }
         ++this.§<k§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§'!!§ + §"!4§ + this.§3T§() + §"!4§ + this.§^E§());
      }
      
      private function §3T§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§2p§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§2p§.length)
         {
            _loc1_ += §^^§;
            _loc1_ += this.§2p§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §^E§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§0O§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§0O§.length)
         {
            _loc1_ += §^^§;
            _loc1_ += this.§0O§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
