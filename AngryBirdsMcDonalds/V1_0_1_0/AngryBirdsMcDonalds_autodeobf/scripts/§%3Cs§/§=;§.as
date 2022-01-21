package §<s§
{
   import §@!b§.§@!k§;
   import flash.system.Capabilities;
   
   public class §=;§
   {
      
      public static const §+[§:String = "@@";
      
      public static const §5!8§:String = "@";
       
      
      private var §>2§:String;
      
      private var §5![§:int;
      
      private var §5!h§:Number;
      
      private var §=!<§:Number;
      
      protected var §%b§:Boolean;
      
      protected var §0§:Vector.<§+!F§>;
      
      protected var §]!m§:Vector.<§9!J§>;
      
      private var §&U§:int;
      
      private var §^!D§:int;
      
      public function §=;§(param1:String)
      {
         this.§0§ = new Vector.<§+!F§>();
         this.§]!m§ = new Vector.<§9!J§>();
         super();
         this.§>2§ = param1;
         this.§5!h§ = 1;
      }
      
      public static function initialize(param1:String) : §=;§
      {
         var _loc2_:§=;§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§+!F§ = null;
         var _loc9_:§9!J§ = null;
         var _loc3_:Array = param1.split(§+[§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §=;§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§5!8§);
            _loc5_ = _loc3_[2].split(§5!8§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §+!F§.initialize(_loc6_))
               {
                  _loc2_.§0§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §9!J§.initialize(_loc7_))
               {
                  _loc2_.§]!m§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §=!n§() : Boolean
      {
         return this.§%b§;
      }
      
      public function get levelName() : String
      {
         return this.§>2§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§5!h§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§5!h§;
      }
      
      protected function get §#!C§() : int
      {
         return this.§5![§;
      }
      
      public function §+Y§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§%b§)
         {
            this.§0§.push(new §+!F§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §>s§(param1:int) : void
      {
         if(!this.§%b§)
         {
            if(this.§]!m§.length > 0)
            {
               if(this.§]!m§[this.§]!m§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§]!m§.push(new §9!J§(param1));
         }
      }
      
      public function play() : void
      {
         this.§%b§ = true;
      }
      
      public function step(param1:§@!k§) : void
      {
         var _loc2_:§+!F§ = null;
         var _loc3_:§9!J§ = null;
         if(this.§0§.length > this.§&U§)
         {
            _loc2_ = this.§0§[this.§&U§];
            if(_loc2_.step == this.§#!C§)
            {
               param1.slingshot.§@!M§(_loc2_.x,_loc2_.y,_loc2_.§4!L§,_loc2_.angle);
               ++this.§&U§;
            }
         }
         if(this.§]!m§.length > this.§^!D§)
         {
            _loc3_ = this.§]!m§[this.§^!D§];
            if(_loc3_.step == this.§#!C§)
            {
               param1.activatePowerup();
               ++this.§^!D§;
            }
         }
         ++this.§5![§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§>2§ + §+[§ + this.§ !E§() + §+[§ + this.§`D§());
      }
      
      private function § !E§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§0§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§0§.length)
         {
            _loc1_ += §5!8§;
            _loc1_ += this.§0§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §`D§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§]!m§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!m§.length)
         {
            _loc1_ += §5!8§;
            _loc1_ += this.§]!m§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
