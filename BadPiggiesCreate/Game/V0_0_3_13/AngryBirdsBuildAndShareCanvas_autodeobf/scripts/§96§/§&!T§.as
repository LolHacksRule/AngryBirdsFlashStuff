package §96§
{
   import §8!E§.§?!X§;
   import flash.system.Capabilities;
   
   public class §&!T§
   {
      
      public static const § !m§:String = "@@";
      
      public static const §?!m§:String = "@";
       
      
      private var §0W§:String;
      
      private var §8,§:int;
      
      private var §,"8§:Number;
      
      private var §[!#§:Number;
      
      protected var §[N§:Boolean;
      
      protected var §do §:Vector.<§1r§>;
      
      protected var §8!>§:Vector.<§]]§>;
      
      private var §0!M§:int;
      
      private var §'"1§:int;
      
      public function §&!T§(param1:String)
      {
         this.§do § = new Vector.<§1r§>();
         this.§8!>§ = new Vector.<§]]§>();
         super();
         this.§0W§ = param1;
         this.§,"8§ = 1;
      }
      
      public static function initialize(param1:String) : §&!T§
      {
         var _loc2_:§&!T§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§1r§ = null;
         var _loc9_:§]]§ = null;
         var _loc3_:Array = param1.split(§ !m§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §&!T§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§?!m§);
            _loc5_ = _loc3_[2].split(§?!m§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §1r§.initialize(_loc6_))
               {
                  _loc2_.§do §.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §]]§.initialize(_loc7_))
               {
                  _loc2_.§8!>§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §9!8§() : Boolean
      {
         return this.§[N§;
      }
      
      public function get §!8§() : String
      {
         return this.§0W§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§,"8§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§,"8§;
      }
      
      protected function get §"!v§() : int
      {
         return this.§8,§;
      }
      
      public function §^2§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§[N§)
         {
            this.§do §.push(new §1r§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §;!>§(param1:int) : void
      {
         if(!this.§[N§)
         {
            if(this.§8!>§.length > 0)
            {
               if(this.§8!>§[this.§8!>§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§8!>§.push(new §]]§(param1));
         }
      }
      
      public function play() : void
      {
         this.§[N§ = true;
      }
      
      public function step(param1:§?!X§) : void
      {
         var _loc2_:§1r§ = null;
         var _loc3_:§]]§ = null;
         if(this.§do §.length > this.§0!M§)
         {
            _loc2_ = this.§do §[this.§0!M§];
            if(_loc2_.step == this.§"!v§)
            {
               param1.slingshot.§%T§(_loc2_.x,_loc2_.y,_loc2_.§7!b§,_loc2_.angle);
               ++this.§0!M§;
            }
         }
         if(this.§8!>§.length > this.§'"1§)
         {
            _loc3_ = this.§8!>§[this.§'"1§];
            if(_loc3_.step == this.§"!v§)
            {
               param1.activatePowerup();
               ++this.§'"1§;
            }
         }
         ++this.§8,§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§0W§ + § !m§ + this.§"X§() + § !m§ + this.§-"?§());
      }
      
      private function §"X§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§do §.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§do §.length)
         {
            _loc1_ += §?!m§;
            _loc1_ += this.§do §[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §-"?§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§8!>§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§8!>§.length)
         {
            _loc1_ += §?!m§;
            _loc1_ += this.§8!>§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
