package §;n§
{
   import §@"1§.§"h§;
   import flash.system.Capabilities;
   
   public class §?L§
   {
      
      public static const §^!f§:String = "@@";
      
      public static const §?!S§:String = "@";
       
      
      private var §1!,§:String;
      
      private var §4a§:int;
      
      private var §0!c§:Number;
      
      private var §1!C§:Number;
      
      protected var §%W§:Boolean;
      
      protected var §-5§:Vector.<§`r§>;
      
      protected var §&!,§:Vector.<§^h§>;
      
      private var §%d§:int;
      
      private var §0X§:int;
      
      public function §?L§(param1:String)
      {
         this.§-5§ = new Vector.<§`r§>();
         this.§&!,§ = new Vector.<§^h§>();
         super();
         this.§1!,§ = param1;
         this.§0!c§ = 1;
      }
      
      public static function initialize(param1:String) : §?L§
      {
         var _loc2_:§?L§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§`r§ = null;
         var _loc9_:§^h§ = null;
         var _loc3_:Array = param1.split(§^!f§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §?L§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§?!S§);
            _loc5_ = _loc3_[2].split(§?!S§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §`r§.initialize(_loc6_))
               {
                  _loc2_.§-5§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §^h§.initialize(_loc7_))
               {
                  _loc2_.§&!,§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §?G§() : Boolean
      {
         return this.§%W§;
      }
      
      public function get levelName() : String
      {
         return this.§1!,§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§0!c§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§0!c§;
      }
      
      protected function get §3!"§() : int
      {
         return this.§4a§;
      }
      
      public function §4!Q§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§%W§)
         {
            this.§-5§.push(new §`r§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §;"!§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§%W§)
         {
            if(this.§&!,§.length > 0)
            {
               if(this.§&!,§[this.§&!,§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§&!,§.push(new §^h§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§%W§ = true;
      }
      
      public function step(param1:§"h§) : void
      {
         var _loc2_:§`r§ = null;
         var _loc3_:§^h§ = null;
         if(this.§-5§.length > this.§%d§)
         {
            _loc2_ = this.§-5§[this.§%d§];
            if(_loc2_.step == this.§3!"§)
            {
               param1.slingshot.§0!3§(_loc2_.x,_loc2_.y,_loc2_.§'-§,_loc2_.angle);
               ++this.§%d§;
            }
         }
         if(this.§&!,§.length > this.§0X§)
         {
            _loc3_ = this.§&!,§[this.§0X§];
            if(_loc3_.step == this.§3!"§)
            {
               param1.activateSpecialPower(_loc3_.§@!a§,_loc3_.§7<§);
               ++this.§0X§;
            }
         }
         ++this.§4a§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§1!,§ + §^!f§ + this.§2!,§() + §^!f§ + this.§&!n§());
      }
      
      private function §2!,§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§-5§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§-5§.length)
         {
            _loc1_ += §?!S§;
            _loc1_ += this.§-5§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §&!n§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§&!,§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!,§.length)
         {
            _loc1_ += §?!S§;
            _loc1_ += this.§&!,§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
