package §7";§
{
   import §?!<§.§'!1§;
   import flash.system.Capabilities;
   
   public class §9![§
   {
      
      public static const §-!P§:String = "@@";
      
      public static const §+"?§:String = "@";
       
      
      private var §<!P§:String;
      
      private var §&k§:int;
      
      private var §&w§:Number;
      
      private var §&!5§:Number;
      
      protected var §4"?§:Boolean;
      
      protected var §%x§:Vector.<§"",§>;
      
      protected var §4o§:Vector.<§=!1§>;
      
      private var §#!N§:int;
      
      private var § x§:int;
      
      public function §9![§(param1:String)
      {
         this.§%x§ = new Vector.<§"",§>();
         this.§4o§ = new Vector.<§=!1§>();
         super();
         this.§<!P§ = param1;
         this.§&w§ = 1;
      }
      
      public static function initialize(param1:String) : §9![§
      {
         var _loc2_:§9![§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§"",§ = null;
         var _loc9_:§=!1§ = null;
         var _loc3_:Array = param1.split(§-!P§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §9![§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§+"?§);
            _loc5_ = _loc3_[2].split(§+"?§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §"",§.initialize(_loc6_))
               {
                  _loc2_.§%x§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §=!1§.initialize(_loc7_))
               {
                  _loc2_.§4o§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §`]§() : Boolean
      {
         return this.§4"?§;
      }
      
      public function get levelName() : String
      {
         return this.§<!P§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§&w§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§&w§;
      }
      
      protected function get §8!R§() : int
      {
         return this.§&k§;
      }
      
      public function §#n§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§4"?§)
         {
            this.§%x§.push(new §"",§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §?!I§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§4"?§)
         {
            if(this.§4o§.length > 0)
            {
               if(this.§4o§[this.§4o§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§4o§.push(new §=!1§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§4"?§ = true;
      }
      
      public function step(param1:§'!1§) : void
      {
         var _loc2_:§"",§ = null;
         var _loc3_:§=!1§ = null;
         if(this.§%x§.length > this.§#!N§)
         {
            _loc2_ = this.§%x§[this.§#!N§];
            if(_loc2_.step == this.§8!R§)
            {
               param1.slingshot.§[!N§(_loc2_.x,_loc2_.y,_loc2_.§^1§,_loc2_.angle);
               ++this.§#!N§;
            }
         }
         if(this.§4o§.length > this.§ x§)
         {
            _loc3_ = this.§4o§[this.§ x§];
            if(_loc3_.step == this.§8!R§)
            {
               param1.activateSpecialPower(_loc3_.§-!Z§,_loc3_.§,!,§);
               ++this.§ x§;
            }
         }
         ++this.§&k§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§<!P§ + §-!P§ + this.§7!q§() + §-!P§ + this.§^!r§());
      }
      
      private function §7!q§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§%x§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§%x§.length)
         {
            _loc1_ += §+"?§;
            _loc1_ += this.§%x§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §^!r§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§4o§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§4o§.length)
         {
            _loc1_ += §+"?§;
            _loc1_ += this.§4o§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
