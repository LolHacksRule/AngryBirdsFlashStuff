package §+"T§
{
   import §@0§.§%!q§;
   import flash.system.Capabilities;
   
   public class §6$%§
   {
      
      public static const § "M§:String = "@@";
      
      public static const §%#K§:String = "@";
       
      
      private var §9#K§:String;
      
      private var §5"B§:int;
      
      private var §6$<§:Number;
      
      private var §'"1§:Number;
      
      protected var §#"@§:Boolean;
      
      protected var §]4§:Vector.<§^!F§>;
      
      protected var §0!#§:Vector.<§`"=§>;
      
      private var §`$#§:int;
      
      private var §>"a§:int;
      
      public function §6$%§(param1:String)
      {
         this.§]4§ = new Vector.<§^!F§>();
         this.§0!#§ = new Vector.<§`"=§>();
         super();
         this.§9#K§ = param1;
         this.§6$<§ = 1;
      }
      
      public static function initialize(param1:String) : §6$%§
      {
         var _loc2_:§6$%§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§^!F§ = null;
         var _loc9_:§`"=§ = null;
         var _loc3_:Array = param1.split(§ "M§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §6$%§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§%#K§);
            _loc5_ = _loc3_[2].split(§%#K§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §^!F§.initialize(_loc6_))
               {
                  _loc2_.§]4§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §`"=§.initialize(_loc7_))
               {
                  _loc2_.§0!#§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.§#"@§;
      }
      
      public function get §?#P§() : String
      {
         return this.§9#K§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§6$<§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§6$<§;
      }
      
      protected function get §71§() : int
      {
         return this.§5"B§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§#"@§)
         {
            this.§]4§.push(new §^!F§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §`$6§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§#"@§)
         {
            if(this.§0!#§.length > 0)
            {
               if(this.§0!#§[this.§0!#§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§0!#§.push(new §`"=§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§#"@§ = true;
      }
      
      public function step(param1:§%!q§) : void
      {
         var _loc2_:§^!F§ = null;
         var _loc3_:§`"=§ = null;
         if(this.§]4§.length > this.§`$#§)
         {
            _loc2_ = this.§]4§[this.§`$#§];
            if(_loc2_.step == this.§71§)
            {
               param1.slingshot.§+$<§(_loc2_.x,_loc2_.y,_loc2_.§4#`§,_loc2_.angle);
               ++this.§`$#§;
            }
         }
         if(this.§0!#§.length > this.§>"a§)
         {
            _loc3_ = this.§0!#§[this.§>"a§];
            if(_loc3_.step == this.§71§)
            {
               param1.activateSpecialPower(_loc3_.§&#d§,_loc3_.§]q§);
               ++this.§>"a§;
            }
         }
         ++this.§5"B§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§9#K§ + § "M§ + this.§<#P§() + § "M§ + this.§4"f§());
      }
      
      private function §<#P§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§]4§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§]4§.length)
         {
            _loc1_ += §%#K§;
            _loc1_ += this.§]4§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §4"f§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§0!#§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§0!#§.length)
         {
            _loc1_ += §%#K§;
            _loc1_ += this.§0!#§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
