package §;Q§
{
   import §#g§.§8§;
   import flash.system.Capabilities;
   
   public class §9>§
   {
      
      public static const §;#n§:String = "@@";
      
      public static const §!"h§:String = "@";
       
      
      private var §@!]§:String;
      
      private var §6#s§:int;
      
      private var §#"2§:Number;
      
      private var §'"w§:Number;
      
      protected var §9"T§:Boolean;
      
      protected var §"#%§:Vector.<§-!G§>;
      
      protected var §'#G§:Vector.<§!#?§>;
      
      private var §?Z§:int;
      
      private var §!#7§:int;
      
      public function §9>§(param1:String)
      {
         this.§"#%§ = new Vector.<§-!G§>();
         this.§'#G§ = new Vector.<§!#?§>();
         super();
         this.§@!]§ = param1;
         this.§#"2§ = 1;
      }
      
      public static function initialize(param1:String) : §9>§
      {
         var _loc2_:§9>§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§-!G§ = null;
         var _loc9_:§!#?§ = null;
         var _loc3_:Array = param1.split(§;#n§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §9>§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§!"h§);
            _loc5_ = _loc3_[2].split(§!"h§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §-!G§.initialize(_loc6_))
               {
                  _loc2_.§"#%§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §!#?§.initialize(_loc7_))
               {
                  _loc2_.§'#G§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.§9"T§;
      }
      
      public function get §1#8§() : String
      {
         return this.§@!]§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§#"2§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§#"2§;
      }
      
      protected function get §4$2§() : int
      {
         return this.§6#s§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§9"T§)
         {
            this.§"#%§.push(new §-!G§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §5#h§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§9"T§)
         {
            if(this.§'#G§.length > 0)
            {
               if(this.§'#G§[this.§'#G§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§'#G§.push(new §!#?§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§9"T§ = true;
      }
      
      public function step(param1:§8#3§) : void
      {
         var _loc2_:§-!G§ = null;
         var _loc3_:§!#?§ = null;
         if(this.§"#%§.length > this.§?Z§)
         {
            _loc2_ = this.§"#%§[this.§?Z§];
            if(_loc2_.step == this.§4$2§)
            {
               param1.slingshot.§8"<§(_loc2_.x,_loc2_.y,_loc2_.§8!V§,_loc2_.angle);
               ++this.§?Z§;
            }
         }
         if(this.§'#G§.length > this.§!#7§)
         {
            _loc3_ = this.§'#G§[this.§!#7§];
            if(_loc3_.step == this.§4$2§)
            {
               param1.activateSpecialPower(_loc3_.§1!Z§,_loc3_.§>!e§);
               ++this.§!#7§;
            }
         }
         ++this.§6#s§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§@!]§ + §;#n§ + this.§>#<§() + §;#n§ + this.§<#!§());
      }
      
      private function §>#<§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§"#%§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§"#%§.length)
         {
            _loc1_ += §!"h§;
            _loc1_ += this.§"#%§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §<#!§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§'#G§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§'#G§.length)
         {
            _loc1_ += §!"h§;
            _loc1_ += this.§'#G§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
