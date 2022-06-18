package §+!"§
{
   import §?$#§.§<d§;
   import flash.system.Capabilities;
   
   public class §-"V§
   {
      
      public static const §+!#§:String = "@@";
      
      public static const §@"?§:String = "@";
       
      
      private var §-n§:String;
      
      private var §>"L§:int;
      
      private var §+#9§:Number;
      
      private var §[#2§:Number;
      
      protected var §>#3§:Boolean;
      
      protected var §3$%§:Vector.<§@!0§>;
      
      protected var § !a§:Vector.<§5#L§>;
      
      private var §9T§:int;
      
      private var § !>§:int;
      
      public function §-"V§(param1:String)
      {
         this.§3$%§ = new Vector.<§@!0§>();
         this.§ !a§ = new Vector.<§5#L§>();
         super();
         this.§-n§ = param1;
         this.§+#9§ = 1;
      }
      
      public static function initialize(param1:String) : §-"V§
      {
         var _loc2_:§-"V§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§@!0§ = null;
         var _loc9_:§5#L§ = null;
         var _loc3_:Array = param1.split(§+!#§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §-"V§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§@"?§);
            _loc5_ = _loc3_[2].split(§@"?§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §@!0§.initialize(_loc6_))
               {
                  _loc2_.§3$%§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §5#L§.initialize(_loc7_))
               {
                  _loc2_.§ !a§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.§>#3§;
      }
      
      public function get §#"F§() : String
      {
         return this.§-n§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§+#9§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§+#9§;
      }
      
      protected function get §^"3§() : int
      {
         return this.§>"L§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§>#3§)
         {
            this.§3$%§.push(new §@!0§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §##r§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§>#3§)
         {
            if(this.§ !a§.length > 0)
            {
               if(this.§ !a§[this.§ !a§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§ !a§.push(new §5#L§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§>#3§ = true;
      }
      
      public function step(param1:§<d§) : void
      {
         var _loc2_:§@!0§ = null;
         var _loc3_:§5#L§ = null;
         if(this.§3$%§.length > this.§9T§)
         {
            _loc2_ = this.§3$%§[this.§9T§];
            if(_loc2_.step == this.§^"3§)
            {
               param1.slingshot.§]#Y§(_loc2_.x,_loc2_.y,_loc2_.§7#`§,_loc2_.angle);
               ++this.§9T§;
            }
         }
         if(this.§ !a§.length > this.§ !>§)
         {
            _loc3_ = this.§ !a§[this.§ !>§];
            if(_loc3_.step == this.§^"3§)
            {
               param1.activateSpecialPower(_loc3_.§#$B§,_loc3_.§5"?§);
               ++this.§ !>§;
            }
         }
         ++this.§>"L§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§-n§ + §+!#§ + this.§&"V§() + §+!#§ + this.§>"R§());
      }
      
      private function §&"V§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§3$%§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§3$%§.length)
         {
            _loc1_ += §@"?§;
            _loc1_ += this.§3$%§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §>"R§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§ !a§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !a§.length)
         {
            _loc1_ += §@"?§;
            _loc1_ += this.§ !a§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
