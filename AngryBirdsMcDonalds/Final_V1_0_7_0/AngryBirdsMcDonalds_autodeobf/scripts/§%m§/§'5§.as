package §%m§
{
   import §55§.§>![§;
   import flash.system.Capabilities;
   
   public class §'5§
   {
      
      public static const §#E§:String = "@@";
      
      public static const §%!d§:String = "@";
       
      
      private var §#4§:String;
      
      private var §3!Y§:int;
      
      private var § !6§:Number;
      
      private var §&! §:Number;
      
      protected var §%!g§:Boolean;
      
      protected var §8T§:Vector.<§1k§>;
      
      protected var §,1§:Vector.<§<I§>;
      
      private var §#!p§:int;
      
      private var §8`§:int;
      
      public function §'5§(param1:String)
      {
         this.§8T§ = new Vector.<§1k§>();
         this.§,1§ = new Vector.<§<I§>();
         super();
         this.§#4§ = param1;
         this.§ !6§ = 1;
      }
      
      public static function initialize(param1:String) : §'5§
      {
         var _loc2_:§'5§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§1k§ = null;
         var _loc9_:§<I§ = null;
         var _loc3_:Array = param1.split(§#E§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §'5§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§%!d§);
            _loc5_ = _loc3_[2].split(§%!d§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §1k§.initialize(_loc6_))
               {
                  _loc2_.§8T§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §<I§.initialize(_loc7_))
               {
                  _loc2_.§,1§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §4!V§() : Boolean
      {
         return this.§%!g§;
      }
      
      public function get levelName() : String
      {
         return this.§#4§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§ !6§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§ !6§;
      }
      
      protected function get § d§() : int
      {
         return this.§3!Y§;
      }
      
      public function §3!M§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§%!g§)
         {
            this.§8T§.push(new §1k§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §5!9§(param1:int) : void
      {
         if(!this.§%!g§)
         {
            if(this.§,1§.length > 0)
            {
               if(this.§,1§[this.§,1§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§,1§.push(new §<I§(param1));
         }
      }
      
      public function play() : void
      {
         this.§%!g§ = true;
      }
      
      public function step(param1:§>![§) : void
      {
         var _loc2_:§1k§ = null;
         var _loc3_:§<I§ = null;
         if(this.§8T§.length > this.§#!p§)
         {
            _loc2_ = this.§8T§[this.§#!p§];
            if(_loc2_.step == this.§ d§)
            {
               param1.slingshot.§ u§(_loc2_.x,_loc2_.y,_loc2_.override,_loc2_.angle);
               ++this.§#!p§;
            }
         }
         if(this.§,1§.length > this.§8`§)
         {
            _loc3_ = this.§,1§[this.§8`§];
            if(_loc3_.step == this.§ d§)
            {
               param1.activatePowerup();
               ++this.§8`§;
            }
         }
         ++this.§3!Y§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§#4§ + §#E§ + this.§ !P§() + §#E§ + this.§2!X§());
      }
      
      private function § !P§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§8T§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§8T§.length)
         {
            _loc1_ += §%!d§;
            _loc1_ += this.§8T§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §2!X§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§,1§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§,1§.length)
         {
            _loc1_ += §%!d§;
            _loc1_ += this.§,1§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
