package §!Z§
{
   import §6A§.§ !§;
   import flash.system.Capabilities;
   
   public class §11§
   {
      
      public static const §9Z§:String = "@@";
      
      public static const §,L§:String = "@";
       
      
      private var §'!E§:String;
      
      private var §"!N§:int;
      
      private var §5!G§:Number;
      
      private var §^f§:Number;
      
      protected var §>!?§:Boolean;
      
      protected var §%!M§:Vector.<§^!H§>;
      
      protected var §4C§:Vector.<PowerUp>;
      
      private var §6p§:int;
      
      private var §8!'§:int;
      
      public function §11§(param1:String)
      {
         this.§%!M§ = new Vector.<§^!H§>();
         this.§4C§ = new Vector.<PowerUp>();
         super();
         this.§'!E§ = param1;
         this.§5!G§ = 1;
      }
      
      public static function initialize(param1:String) : §11§
      {
         var _loc2_:§11§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§^!H§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§9Z§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §11§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§,L§);
            _loc5_ = _loc3_[2].split(§,L§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §^!H§.initialize(_loc6_))
               {
                  _loc2_.§%!M§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§4C§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §]n§() : Boolean
      {
         return this.§>!?§;
      }
      
      public function get §4B§() : String
      {
         return this.§'!E§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§5!G§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§5!G§;
      }
      
      protected function get §9p§() : int
      {
         return this.§"!N§;
      }
      
      public function §>!A§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§>!?§)
         {
            this.§%!M§.push(new §^!H§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §<e§(param1:int) : void
      {
         if(!this.§>!?§)
         {
            if(this.§4C§.length > 0)
            {
               if(this.§4C§[this.§4C§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§4C§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§>!?§ = true;
      }
      
      public function step(param1:§ !§) : void
      {
         var _loc2_:§^!H§ = null;
         var _loc3_:PowerUp = null;
         if(this.§%!M§.length > this.§6p§)
         {
            _loc2_ = this.§%!M§[this.§6p§];
            if(_loc2_.step == this.§9p§)
            {
               param1.slingshot.§-R§(_loc2_.x,_loc2_.y,_loc2_.§;,§,_loc2_.angle);
               ++this.§6p§;
            }
         }
         if(this.§4C§.length > this.§8!'§)
         {
            _loc3_ = this.§4C§[this.§8!'§];
            if(_loc3_.step == this.§9p§)
            {
               param1.activatePowerup();
               ++this.§8!'§;
            }
         }
         ++this.§"!N§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§'!E§ + §9Z§ + this.§%G§() + §9Z§ + this.§0$§());
      }
      
      private function §%G§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§%!M§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!M§.length)
         {
            _loc1_ += §,L§;
            _loc1_ += this.§%!M§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §0$§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§4C§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§4C§.length)
         {
            _loc1_ += §,L§;
            _loc1_ += this.§4C§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
