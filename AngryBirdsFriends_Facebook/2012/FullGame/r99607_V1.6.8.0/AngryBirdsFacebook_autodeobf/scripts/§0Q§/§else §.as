package §0Q§
{
   import §3,§.§[!;§;
   import flash.system.Capabilities;
   
   public class §else §
   {
      
      public static const §]"9§:String = "@@";
      
      public static const §`!G§:String = "@";
       
      
      private var §'!H§:String;
      
      private var §+"?§:int;
      
      private var §0!A§:Number;
      
      private var §]!B§:Number;
      
      protected var §'o§:Boolean;
      
      protected var §96§:Vector.<§@K§>;
      
      protected var §[8§:Vector.<§=d§>;
      
      private var §'q§:int;
      
      private var §;!4§:int;
      
      public function §else §(param1:String)
      {
         this.§96§ = new Vector.<§@K§>();
         this.§[8§ = new Vector.<§=d§>();
         super();
         this.§'!H§ = param1;
         this.§0!A§ = 1;
      }
      
      public static function initialize(param1:String) : §else §
      {
         var _loc2_:§else § = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§@K§ = null;
         var _loc9_:§=d§ = null;
         var _loc3_:Array = param1.split(§]"9§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §else §(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§`!G§);
            _loc5_ = _loc3_[2].split(§`!G§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §@K§.initialize(_loc6_))
               {
                  _loc2_.§96§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §=d§.initialize(_loc7_))
               {
                  _loc2_.§[8§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §^^§() : Boolean
      {
         return this.§'o§;
      }
      
      public function get §^"2§() : String
      {
         return this.§'!H§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§0!A§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§0!A§;
      }
      
      protected function get §3!o§() : int
      {
         return this.§+"?§;
      }
      
      public function §#!4§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§'o§)
         {
            this.§96§.push(new §@K§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §1"A§(param1:int) : void
      {
         if(!this.§'o§)
         {
            if(this.§[8§.length > 0)
            {
               if(this.§[8§[this.§[8§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§[8§.push(new §=d§(param1));
         }
      }
      
      public function play() : void
      {
         this.§'o§ = true;
      }
      
      public function step(param1:§[!;§) : void
      {
         var _loc2_:§@K§ = null;
         var _loc3_:§=d§ = null;
         if(this.§96§.length > this.§'q§)
         {
            _loc2_ = this.§96§[this.§'q§];
            if(_loc2_.step == this.§3!o§)
            {
               param1.slingshot.§!c§(_loc2_.x,_loc2_.y,_loc2_.§^!v§,_loc2_.angle);
               ++this.§'q§;
            }
         }
         if(this.§[8§.length > this.§;!4§)
         {
            _loc3_ = this.§[8§[this.§;!4§];
            if(_loc3_.step == this.§3!o§)
            {
               param1.activatePowerup();
               ++this.§;!4§;
            }
         }
         ++this.§+"?§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§'!H§ + §]"9§ + this.§`Q§() + §]"9§ + this.§'!9§());
      }
      
      private function §`Q§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§96§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§96§.length)
         {
            _loc1_ += §`!G§;
            _loc1_ += this.§96§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §'!9§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§[8§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§[8§.length)
         {
            _loc1_ += §`!G§;
            _loc1_ += this.§[8§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
