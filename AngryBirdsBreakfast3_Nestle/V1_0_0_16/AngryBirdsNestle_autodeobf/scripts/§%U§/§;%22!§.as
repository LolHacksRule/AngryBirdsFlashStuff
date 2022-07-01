package §%U§
{
   import §@V§.§#=§;
   import flash.system.Capabilities;
   
   public class §;"!§
   {
      
      public static const §`!e§:String = "@@";
      
      public static const §%!P§:String = "@";
       
      
      private var §?!!§:String;
      
      private var §4" §:int;
      
      private var §6J§:Number;
      
      private var §'0§:Number;
      
      protected var §^!U§:Boolean;
      
      protected var §]j§:Vector.<§ C§>;
      
      protected var §-`§:Vector.<§]!a§>;
      
      private var §%!b§:int;
      
      private var §4b§:int;
      
      public function §;"!§(param1:String)
      {
         this.§]j§ = new Vector.<§ C§>();
         this.§-`§ = new Vector.<§]!a§>();
         super();
         this.§?!!§ = param1;
         this.§6J§ = 1;
      }
      
      public static function initialize(param1:String) : §;"!§
      {
         var _loc2_:§;"!§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§ C§ = null;
         var _loc9_:§]!a§ = null;
         var _loc3_:Array = param1.split(§`!e§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §;"!§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§%!P§);
            _loc5_ = _loc3_[2].split(§%!P§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = § C§.initialize(_loc6_))
               {
                  _loc2_.§]j§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §]!a§.initialize(_loc7_))
               {
                  _loc2_.§-`§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §2x§() : Boolean
      {
         return this.§^!U§;
      }
      
      public function get levelName() : String
      {
         return this.§?!!§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§6J§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§6J§;
      }
      
      protected function get §-!G§() : int
      {
         return this.§4" §;
      }
      
      public function §?!k§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§^!U§)
         {
            this.§]j§.push(new § C§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §6%§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§^!U§)
         {
            if(this.§-`§.length > 0)
            {
               if(this.§-`§[this.§-`§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§-`§.push(new §]!a§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§^!U§ = true;
      }
      
      public function step(param1:§#=§) : void
      {
         var _loc2_:§ C§ = null;
         var _loc3_:§]!a§ = null;
         if(this.§]j§.length > this.§%!b§)
         {
            _loc2_ = this.§]j§[this.§%!b§];
            if(_loc2_.step == this.§-!G§)
            {
               param1.slingshot.§8S§(_loc2_.x,_loc2_.y,_loc2_.§""§,_loc2_.angle);
               ++this.§%!b§;
            }
         }
         if(this.§-`§.length > this.§4b§)
         {
            _loc3_ = this.§-`§[this.§4b§];
            if(_loc3_.step == this.§-!G§)
            {
               param1.activateSpecialPower(_loc3_.§="§,_loc3_.§]!8§);
               ++this.§4b§;
            }
         }
         ++this.§4" §;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§?!!§ + §`!e§ + this.§;!S§() + §`!e§ + this.§&!#§());
      }
      
      private function §;!S§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§]j§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§]j§.length)
         {
            _loc1_ += §%!P§;
            _loc1_ += this.§]j§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §&!#§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§-`§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§-`§.length)
         {
            _loc1_ += §%!P§;
            _loc1_ += this.§-`§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
