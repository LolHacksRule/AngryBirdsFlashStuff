package §+!h§
{
   import §9"!§.§9"3§;
   import flash.system.Capabilities;
   
   public class §[!Q§
   {
      
      public static const §[!D§:String = "@@";
      
      public static const §'!h§:String = "@";
       
      
      private var §5o§:String;
      
      private var §9!P§:int;
      
      private var § 1§:Number;
      
      private var §?!x§:Number;
      
      protected var §9!s§:Boolean;
      
      protected var §4!#§:Vector.<§8" §>;
      
      protected var §+!-§:Vector.<§-!g§>;
      
      private var §%W§:int;
      
      private var §-R§:int;
      
      public function §[!Q§(param1:String)
      {
         this.§4!#§ = new Vector.<§8" §>();
         this.§+!-§ = new Vector.<§-!g§>();
         super();
         this.§5o§ = param1;
         this.§ 1§ = 1;
      }
      
      public static function initialize(param1:String) : §[!Q§
      {
         var _loc2_:§[!Q§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§8" § = null;
         var _loc9_:§-!g§ = null;
         var _loc3_:Array = param1.split(§[!D§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §[!Q§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§'!h§);
            _loc5_ = _loc3_[2].split(§'!h§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §8" §.initialize(_loc6_))
               {
                  _loc2_.§4!#§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §-!g§.initialize(_loc7_))
               {
                  _loc2_.§+!-§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §5%§() : Boolean
      {
         return this.§9!s§;
      }
      
      public function get § !K§() : String
      {
         return this.§5o§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§ 1§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§ 1§;
      }
      
      protected function get §;s§() : int
      {
         return this.§9!P§;
      }
      
      public function §^K§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§9!s§)
         {
            this.§4!#§.push(new §8" §(param1,param2,param3,param4,param5));
         }
      }
      
      public function §3d§(param1:int) : void
      {
         if(!this.§9!s§)
         {
            if(this.§+!-§.length > 0)
            {
               if(this.§+!-§[this.§+!-§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§+!-§.push(new §-!g§(param1));
         }
      }
      
      public function play() : void
      {
         this.§9!s§ = true;
      }
      
      public function step(param1:§9"3§) : void
      {
         var _loc2_:§8" § = null;
         var _loc3_:§-!g§ = null;
         if(this.§4!#§.length > this.§%W§)
         {
            _loc2_ = this.§4!#§[this.§%W§];
            if(_loc2_.step == this.§;s§)
            {
               param1.slingshot.§9E§(_loc2_.x,_loc2_.y,_loc2_.§@!T§,_loc2_.angle);
               ++this.§%W§;
            }
         }
         if(this.§+!-§.length > this.§-R§)
         {
            _loc3_ = this.§+!-§[this.§-R§];
            if(_loc3_.step == this.§;s§)
            {
               param1.activatePowerup();
               ++this.§-R§;
            }
         }
         ++this.§9!P§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§5o§ + §[!D§ + this.§;!`§() + §[!D§ + this.§-s§());
      }
      
      private function §;!`§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§4!#§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§4!#§.length)
         {
            _loc1_ += §'!h§;
            _loc1_ += this.§4!#§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §-s§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§+!-§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!-§.length)
         {
            _loc1_ += §'!h§;
            _loc1_ += this.§+!-§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
