package §;L§
{
   import §&F§.§>!2§;
   import flash.system.Capabilities;
   
   public class §,>§
   {
      
      public static const §@!;§:String = "@@";
      
      public static const §5[§:String = "@";
       
      
      private var §?;§:String;
      
      private var §"!#§:int;
      
      private var §#n§:Number;
      
      private var §]L§:Number;
      
      protected var §,!8§:Boolean;
      
      protected var §-!^§:Vector.<§9-§>;
      
      protected var §=Q§:Vector.<§4V§>;
      
      private var §^!>§:int;
      
      private var §90§:int;
      
      public function §,>§(param1:String)
      {
         this.§-!^§ = new Vector.<§9-§>();
         this.§=Q§ = new Vector.<§4V§>();
         super();
         this.§?;§ = param1;
         this.§#n§ = 1;
      }
      
      public static function §=D§(param1:String) : §,>§
      {
         var _loc2_:§,>§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§9-§ = null;
         var _loc9_:§4V§ = null;
         var _loc3_:Array = param1.split(§@!;§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §,>§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§5[§);
            _loc5_ = _loc3_[2].split(§5[§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §9-§.§=D§(_loc6_))
               {
                  _loc2_.§-!^§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §4V§.§=D§(_loc7_))
               {
                  _loc2_.§=Q§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §?!]§() : Boolean
      {
         return this.§,!8§;
      }
      
      public function get §2G§() : String
      {
         return this.§?;§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§#n§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§#n§;
      }
      
      protected function get §1!_§() : int
      {
         return this.§"!#§;
      }
      
      public function §;H§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§,!8§)
         {
            this.§-!^§.push(new §9-§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §`F§(param1:int) : void
      {
         if(!this.§,!8§)
         {
            if(this.§=Q§.length > 0)
            {
               if(this.§=Q§[this.§=Q§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§=Q§.push(new §4V§(param1));
         }
      }
      
      public function play() : void
      {
         this.§,!8§ = true;
      }
      
      public function step(param1:§>!2§) : void
      {
         var _loc2_:§9-§ = null;
         var _loc3_:§4V§ = null;
         if(this.§-!^§.length > this.§^!>§)
         {
            _loc2_ = this.§-!^§[this.§^!>§];
            if(_loc2_.step == this.§1!_§)
            {
               param1.slingshot.§`H§(_loc2_.x,_loc2_.y,_loc2_.§!!S§,_loc2_.angle);
               ++this.§^!>§;
            }
         }
         if(this.§=Q§.length > this.§90§)
         {
            _loc3_ = this.§=Q§[this.§90§];
            if(_loc3_.step == this.§1!_§)
            {
               param1.activatePowerup();
               ++this.§90§;
            }
         }
         ++this.§"!#§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§?;§ + §@!;§ + this.§-&§() + §@!;§ + this.§!I§());
      }
      
      private function §-&§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§-!^§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!^§.length)
         {
            _loc1_ += §5[§;
            _loc1_ += this.§-!^§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §!I§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§=Q§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§=Q§.length)
         {
            _loc1_ += §5[§;
            _loc1_ += this.§=Q§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
