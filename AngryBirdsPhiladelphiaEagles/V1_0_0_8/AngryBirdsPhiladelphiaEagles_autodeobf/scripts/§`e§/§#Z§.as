package §`e§
{
   import §,T§.§[-§;
   import flash.system.Capabilities;
   
   public class §#Z§
   {
      
      public static const §0'§:String = "@@";
      
      public static const §5;§:String = "@";
       
      
      private var §;l§:String;
      
      private var §6!=§:int;
      
      private var §2!P§:Number;
      
      private var §`!3§:Number;
      
      protected var §'!E§:Boolean;
      
      protected var §&!$§:Vector.<§^!&§>;
      
      protected var §]! §:Vector.<PowerUp>;
      
      private var §>!H§:int;
      
      private var §<!4§:int;
      
      public function §#Z§(param1:String)
      {
         this.§&!$§ = new Vector.<§^!&§>();
         this.§]! § = new Vector.<PowerUp>();
         super();
         this.§;l§ = param1;
         this.§2!P§ = 1;
      }
      
      public static function initialize(param1:String) : §#Z§
      {
         var _loc2_:§#Z§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§^!&§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§0'§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §#Z§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§5;§);
            _loc5_ = _loc3_[2].split(§5;§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §^!&§.initialize(_loc6_))
               {
                  _loc2_.§&!$§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§]! §.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §;7§() : Boolean
      {
         return this.§'!E§;
      }
      
      public function get §'!O§() : String
      {
         return this.§;l§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§2!P§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§2!P§;
      }
      
      protected function get §73§() : int
      {
         return this.§6!=§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§'!E§)
         {
            this.§&!$§.push(new §^!&§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §2P§(param1:int) : void
      {
         if(!this.§'!E§)
         {
            if(this.§]! §.length > 0)
            {
               if(this.§]! §[this.§]! §.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§]! §.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§'!E§ = true;
      }
      
      public function step(param1:§[-§) : void
      {
         var _loc2_:§^!&§ = null;
         var _loc3_:PowerUp = null;
         if(this.§&!$§.length > this.§>!H§)
         {
            _loc2_ = this.§&!$§[this.§>!H§];
            if(_loc2_.step == this.§73§)
            {
               param1.slingshot.§4!;§(_loc2_.x,_loc2_.y,_loc2_.§3s§,_loc2_.angle);
               ++this.§>!H§;
            }
         }
         if(this.§]! §.length > this.§<!4§)
         {
            _loc3_ = this.§]! §[this.§<!4§];
            if(_loc3_.step == this.§73§)
            {
               param1.activatePowerup();
               ++this.§<!4§;
            }
         }
         ++this.§6!=§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§;l§ + §0'§ + this.§7A§() + §0'§ + this.§,e§());
      }
      
      private function §7A§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§&!$§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!$§.length)
         {
            _loc1_ += §5;§;
            _loc1_ += this.§&!$§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §,e§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§]! §.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§]! §.length)
         {
            _loc1_ += §5;§;
            _loc1_ += this.§]! §[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
