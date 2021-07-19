package §-n§
{
   import §@L§.§?!'§;
   import flash.system.Capabilities;
   
   public class §=!S§
   {
      
      public static const §4!@§:String = "@@";
      
      public static const §-!#§:String = "@";
       
      
      private var §&M§:String;
      
      private var §%!`§:int;
      
      private var §>3§:Number;
      
      private var §?W§:Number;
      
      protected var §;'§:Boolean;
      
      protected var §?p§:Vector.<§!!Q§>;
      
      protected var §^d§:Vector.<§,0§>;
      
      private var §!!L§:int;
      
      private var §!K§:int;
      
      public function §=!S§(param1:String)
      {
         this.§?p§ = new Vector.<§!!Q§>();
         this.§^d§ = new Vector.<§,0§>();
         super();
         this.§&M§ = param1;
         this.§>3§ = 1;
      }
      
      public static function initialize(param1:String) : §=!S§
      {
         var _loc2_:§=!S§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§!!Q§ = null;
         var _loc9_:§,0§ = null;
         var _loc3_:Array = param1.split(§4!@§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §=!S§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§-!#§);
            _loc5_ = _loc3_[2].split(§-!#§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §!!Q§.initialize(_loc6_))
               {
                  _loc2_.§?p§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §,0§.initialize(_loc7_))
               {
                  _loc2_.§^d§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §,!V§() : Boolean
      {
         return this.§;'§;
      }
      
      public function get § !q§() : String
      {
         return this.§&M§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§>3§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§>3§;
      }
      
      protected function get §]!§() : int
      {
         return this.§%!`§;
      }
      
      public function §&H§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§;'§)
         {
            this.§?p§.push(new §!!Q§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §@3§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§;'§)
         {
            if(this.§^d§.length > 0)
            {
               if(this.§^d§[this.§^d§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§^d§.push(new §,0§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§;'§ = true;
      }
      
      public function step(param1:§?!'§) : void
      {
         var _loc2_:§!!Q§ = null;
         var _loc3_:§,0§ = null;
         if(this.§?p§.length > this.§!!L§)
         {
            _loc2_ = this.§?p§[this.§!!L§];
            if(_loc2_.step == this.§]!§)
            {
               param1.slingshot.§4C§(_loc2_.x,_loc2_.y,_loc2_.§^!#§,_loc2_.angle);
               ++this.§!!L§;
            }
         }
         if(this.§^d§.length > this.§!K§)
         {
            _loc3_ = this.§^d§[this.§!K§];
            if(_loc3_.step == this.§]!§)
            {
               param1.activateSpecialPower(_loc3_.§%H§,_loc3_.§,!2§);
               ++this.§!K§;
            }
         }
         ++this.§%!`§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§&M§ + §4!@§ + this.§3!!§() + §4!@§ + this.§^L§());
      }
      
      private function §3!!§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§?p§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§?p§.length)
         {
            _loc1_ += §-!#§;
            _loc1_ += this.§?p§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §^L§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§^d§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§^d§.length)
         {
            _loc1_ += §-!#§;
            _loc1_ += this.§^d§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
