package §8!O§
{
   import §[B§.§"d§;
   import flash.system.Capabilities;
   
   public class §'!§
   {
      
      public static const §;P§:String = "@@";
      
      public static const §1!=§:String = "@";
       
      
      private var §-z§:String;
      
      private var §2J§:int;
      
      private var §"Y§:Number;
      
      private var §&!w§:Number;
      
      protected var § use§:Boolean;
      
      protected var §^!?§:Vector.<§ !8§>;
      
      protected var §%!S§:Vector.<§&c§>;
      
      private var §#!J§:int;
      
      private var § !Z§:int;
      
      public function §'!§(param1:String)
      {
         this.§^!?§ = new Vector.<§ !8§>();
         this.§%!S§ = new Vector.<§&c§>();
         super();
         this.§-z§ = param1;
         this.§"Y§ = 1;
      }
      
      public static function initialize(param1:String) : §'!§
      {
         var _loc2_:§'!§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§ !8§ = null;
         var _loc9_:§&c§ = null;
         var _loc3_:Array = param1.split(§;P§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §'!§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§1!=§);
            _loc5_ = _loc3_[2].split(§1!=§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = § !8§.initialize(_loc6_))
               {
                  _loc2_.§^!?§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §&c§.initialize(_loc7_))
               {
                  _loc2_.§%!S§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §2"'§() : Boolean
      {
         return this.§ use§;
      }
      
      public function get §=Z§() : String
      {
         return this.§-z§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§"Y§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§"Y§;
      }
      
      protected function get §2!N§() : int
      {
         return this.§2J§;
      }
      
      public function §=""§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§ use§)
         {
            this.§^!?§.push(new § !8§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §3"3§(param1:int) : void
      {
         if(!this.§ use§)
         {
            if(this.§%!S§.length > 0)
            {
               if(this.§%!S§[this.§%!S§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§%!S§.push(new §&c§(param1));
         }
      }
      
      public function play() : void
      {
         this.§ use§ = true;
      }
      
      public function step(param1:§"d§) : void
      {
         var _loc2_:§ !8§ = null;
         var _loc3_:§&c§ = null;
         if(this.§^!?§.length > this.§#!J§)
         {
            _loc2_ = this.§^!?§[this.§#!J§];
            if(_loc2_.step == this.§2!N§)
            {
               param1.slingshot.§4n§(_loc2_.x,_loc2_.y,_loc2_.§;l§,_loc2_.angle);
               ++this.§#!J§;
            }
         }
         if(this.§%!S§.length > this.§ !Z§)
         {
            _loc3_ = this.§%!S§[this.§ !Z§];
            if(_loc3_.step == this.§2!N§)
            {
               param1.activatePowerup();
               ++this.§ !Z§;
            }
         }
         ++this.§2J§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§-z§ + §;P§ + this.§<!M§() + §;P§ + this.§!"§());
      }
      
      private function §<!M§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§^!?§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!?§.length)
         {
            _loc1_ += §1!=§;
            _loc1_ += this.§^!?§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §!"§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§%!S§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!S§.length)
         {
            _loc1_ += §1!=§;
            _loc1_ += this.§%!S§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
