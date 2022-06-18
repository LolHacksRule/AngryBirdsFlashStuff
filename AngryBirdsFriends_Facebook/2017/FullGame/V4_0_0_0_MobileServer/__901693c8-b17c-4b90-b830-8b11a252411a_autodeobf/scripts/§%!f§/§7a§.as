package §%!f§
{
   import §+!C§.§!!S§;
   import flash.system.Capabilities;
   
   public class §7a§
   {
      
      public static const §5!+§:String = "@@";
      
      public static const §]d§:String = "@";
       
      
      private var §0T§:String;
      
      private var §]!d§:int;
      
      private var §+!,§:Number;
      
      private var §#"^§:Number;
      
      protected var §3"t§:Boolean;
      
      protected var §%"3§:Vector.<§="E§>;
      
      protected var §throw§:Vector.<§!!J§>;
      
      private var §'!M§:int;
      
      private var §?#8§:int;
      
      public function §7a§(param1:String)
      {
         this.§%"3§ = new Vector.<§="E§>();
         this.§throw§ = new Vector.<§!!J§>();
         super();
         this.§0T§ = param1;
         this.§+!,§ = 1;
      }
      
      public static function initialize(param1:String) : §7a§
      {
         var _loc2_:§7a§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§="E§ = null;
         var _loc9_:§!!J§ = null;
         var _loc3_:Array = param1.split(§5!+§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §7a§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§]d§);
            _loc5_ = _loc3_[2].split(§]d§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §="E§.initialize(_loc6_))
               {
                  _loc2_.§%"3§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §!!J§.initialize(_loc7_))
               {
                  _loc2_.§throw§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.§3"t§;
      }
      
      public function get §0g§() : String
      {
         return this.§0T§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§+!,§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§+!,§;
      }
      
      protected function get §`#r§() : int
      {
         return this.§]!d§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§3"t§)
         {
            this.§%"3§.push(new §="E§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §6%§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§3"t§)
         {
            if(this.§throw§.length > 0)
            {
               if(this.§throw§[this.§throw§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§throw§.push(new §!!J§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§3"t§ = true;
      }
      
      public function step(param1:§!!S§) : void
      {
         var _loc2_:§="E§ = null;
         var _loc3_:§!!J§ = null;
         if(this.§%"3§.length > this.§'!M§)
         {
            _loc2_ = this.§%"3§[this.§'!M§];
            if(_loc2_.step == this.§`#r§)
            {
               param1.slingshot.§ !4§(_loc2_.x,_loc2_.y,_loc2_.§ Z§,_loc2_.angle);
               ++this.§'!M§;
            }
         }
         if(this.§throw§.length > this.§?#8§)
         {
            _loc3_ = this.§throw§[this.§?#8§];
            if(_loc3_.step == this.§`#r§)
            {
               param1.activateSpecialPower(_loc3_.§1!J§,_loc3_.§^",§);
               ++this.§?#8§;
            }
         }
         ++this.§]!d§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§0T§ + §5!+§ + this.§2">§() + §5!+§ + this.§+!6§());
      }
      
      private function §2">§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§%"3§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§%"3§.length)
         {
            _loc1_ += §]d§;
            _loc1_ += this.§%"3§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §+!6§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§throw§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§throw§.length)
         {
            _loc1_ += §]d§;
            _loc1_ += this.§throw§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
