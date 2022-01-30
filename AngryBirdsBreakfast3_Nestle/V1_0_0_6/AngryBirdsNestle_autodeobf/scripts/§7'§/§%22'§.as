package §7'§
{
   import §]k§.§<S§;
   import flash.system.Capabilities;
   
   public class §"'§
   {
      
      public static const §1!"§:String = "@@";
      
      public static const §'!-§:String = "@";
       
      
      private var §=!h§:String;
      
      private var §<!,§:int;
      
      private var §;!3§:Number;
      
      private var §"3§:Number;
      
      protected var §?G§:Boolean;
      
      protected var §0N§:Vector.<§7"-§>;
      
      protected var §@!#§:Vector.<§5L§>;
      
      private var §?![§:int;
      
      private var §5"2§:int;
      
      public function §"'§(param1:String)
      {
         this.§0N§ = new Vector.<§7"-§>();
         this.§@!#§ = new Vector.<§5L§>();
         super();
         this.§=!h§ = param1;
         this.§;!3§ = 1;
      }
      
      public static function initialize(param1:String) : §"'§
      {
         var _loc2_:§"'§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§7"-§ = null;
         var _loc9_:§5L§ = null;
         var _loc3_:Array = param1.split(§1!"§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §"'§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§'!-§);
            _loc5_ = _loc3_[2].split(§'!-§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §7"-§.initialize(_loc6_))
               {
                  _loc2_.§0N§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §5L§.initialize(_loc7_))
               {
                  _loc2_.§@!#§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §35§() : Boolean
      {
         return this.§?G§;
      }
      
      public function get levelName() : String
      {
         return this.§=!h§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§;!3§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§;!3§;
      }
      
      protected function get §%u§() : int
      {
         return this.§<!,§;
      }
      
      public function §8G§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§?G§)
         {
            this.§0N§.push(new §7"-§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §5J§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§?G§)
         {
            if(this.§@!#§.length > 0)
            {
               if(this.§@!#§[this.§@!#§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§@!#§.push(new §5L§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§?G§ = true;
      }
      
      public function step(param1:§<S§) : void
      {
         var _loc2_:§7"-§ = null;
         var _loc3_:§5L§ = null;
         if(this.§0N§.length > this.§?![§)
         {
            _loc2_ = this.§0N§[this.§?![§];
            if(_loc2_.step == this.§%u§)
            {
               param1.slingshot.§ +§(_loc2_.x,_loc2_.y,_loc2_.§,]§,_loc2_.angle);
               ++this.§?![§;
            }
         }
         if(this.§@!#§.length > this.§5"2§)
         {
            _loc3_ = this.§@!#§[this.§5"2§];
            if(_loc3_.step == this.§%u§)
            {
               param1.activateSpecialPower(_loc3_.§>!#§,_loc3_.§6D§);
               ++this.§5"2§;
            }
         }
         ++this.§<!,§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§=!h§ + §1!"§ + this.§<!`§() + §1!"§ + this.§-![§());
      }
      
      private function §<!`§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§0N§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§0N§.length)
         {
            _loc1_ += §'!-§;
            _loc1_ += this.§0N§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §-![§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§@!#§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!#§.length)
         {
            _loc1_ += §'!-§;
            _loc1_ += this.§@!#§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
