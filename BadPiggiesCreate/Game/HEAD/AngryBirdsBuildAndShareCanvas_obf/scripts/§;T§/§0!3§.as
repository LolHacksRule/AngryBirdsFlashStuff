package §;T§
{
   import §%!0§.§,4§;
   import flash.system.Capabilities;
   
   public class §0!3§
   {
      
      public static const §9P§:String = "@@";
      
      public static const §`!H§:String = "@";
       
      
      private var §?]§:String;
      
      private var §5!J§:int;
      
      private var §?!B§:Number;
      
      private var §9R§:Number;
      
      protected var §-"§:Boolean;
      
      protected var §5"-§:Vector.<§%!-§>;
      
      protected var §%!w§:Vector.<§,i§>;
      
      private var §8!2§:int;
      
      private var §@?§:int;
      
      public function §0!3§(param1:String)
      {
         this.§5"-§ = new Vector.<§%!-§>();
         this.§%!w§ = new Vector.<§,i§>();
         super();
         this.§?]§ = param1;
         this.§?!B§ = 1;
      }
      
      public static function initialize(param1:String) : §0!3§
      {
         var _loc2_:§0!3§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§%!-§ = null;
         var _loc9_:§,i§ = null;
         var _loc3_:Array = param1.split(§9P§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §0!3§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§`!H§);
            _loc5_ = _loc3_[2].split(§`!H§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §%!-§.initialize(_loc6_))
               {
                  _loc2_.§5"-§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §,i§.initialize(_loc7_))
               {
                  _loc2_.§%!w§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §4C§() : Boolean
      {
         return this.§-"§;
      }
      
      public function get §%!d§() : String
      {
         return this.§?]§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§?!B§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§?!B§;
      }
      
      protected function get §4"'§() : int
      {
         return this.§5!J§;
      }
      
      public function §59§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§-"§)
         {
            this.§5"-§.push(new §%!-§(param1,param2,param3,param4,param5));
         }
      }
      
      public function § Z§(param1:int) : void
      {
         if(!this.§-"§)
         {
            if(this.§%!w§.length > 0)
            {
               if(this.§%!w§[this.§%!w§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§%!w§.push(new §,i§(param1));
         }
      }
      
      public function play() : void
      {
         this.§-"§ = true;
      }
      
      public function step(param1:§,4§) : void
      {
         var _loc2_:§%!-§ = null;
         var _loc3_:§,i§ = null;
         if(this.§5"-§.length > this.§8!2§)
         {
            _loc2_ = this.§5"-§[this.§8!2§];
            if(_loc2_.step == this.§4"'§)
            {
               param1.slingshot.§'q§(_loc2_.x,_loc2_.y,_loc2_.§0!d§,_loc2_.angle);
               ++this.§8!2§;
            }
         }
         if(this.§%!w§.length > this.§@?§)
         {
            _loc3_ = this.§%!w§[this.§@?§];
            if(_loc3_.step == this.§4"'§)
            {
               param1.activatePowerup();
               ++this.§@?§;
            }
         }
         ++this.§5!J§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§?]§ + §9P§ + this.§8S§() + §9P§ + this.§2b§());
      }
      
      private function §8S§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§5"-§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§5"-§.length)
         {
            _loc1_ += §`!H§;
            _loc1_ += this.§5"-§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §2b§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§%!w§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!w§.length)
         {
            _loc1_ += §`!H§;
            _loc1_ += this.§%!w§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
