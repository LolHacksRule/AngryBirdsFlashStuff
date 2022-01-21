package §1!U§
{
   import §'a§.§0!f§;
   import flash.system.Capabilities;
   
   public class §6R§
   {
      
      public static const §=!4§:String = "@@";
      
      public static const §70§:String = "@";
       
      
      private var §9M§:String;
      
      private var §'!l§:int;
      
      private var §default§:Number;
      
      private var §6g§:Number;
      
      protected var §7=§:Boolean;
      
      protected var §2u§:Vector.<§2Z§>;
      
      protected var §`m§:Vector.<§3P§>;
      
      private var §<!8§:int;
      
      private var §9!§:int;
      
      public function §6R§(param1:String)
      {
         this.§2u§ = new Vector.<§2Z§>();
         this.§`m§ = new Vector.<§3P§>();
         super();
         this.§9M§ = param1;
         this.§default§ = 1;
      }
      
      public static function initialize(param1:String) : §6R§
      {
         var _loc2_:§6R§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§2Z§ = null;
         var _loc9_:§3P§ = null;
         var _loc3_:Array = param1.split(§=!4§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §6R§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§70§);
            _loc5_ = _loc3_[2].split(§70§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §2Z§.initialize(_loc6_))
               {
                  _loc2_.§2u§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §3P§.initialize(_loc7_))
               {
                  _loc2_.§`m§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §['§() : Boolean
      {
         return this.§7=§;
      }
      
      public function get levelName() : String
      {
         return this.§9M§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§default§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§default§;
      }
      
      protected function get §5J§() : int
      {
         return this.§'!l§;
      }
      
      public function § !o§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§7=§)
         {
            this.§2u§.push(new §2Z§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §?!a§(param1:int) : void
      {
         if(!this.§7=§)
         {
            if(this.§`m§.length > 0)
            {
               if(this.§`m§[this.§`m§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§`m§.push(new §3P§(param1));
         }
      }
      
      public function play() : void
      {
         this.§7=§ = true;
      }
      
      public function step(param1:§0!f§) : void
      {
         var _loc2_:§2Z§ = null;
         var _loc3_:§3P§ = null;
         if(this.§2u§.length > this.§<!8§)
         {
            _loc2_ = this.§2u§[this.§<!8§];
            if(_loc2_.step == this.§5J§)
            {
               param1.slingshot.§'!>§(_loc2_.x,_loc2_.y,_loc2_.§-n§,_loc2_.angle);
               ++this.§<!8§;
            }
         }
         if(this.§`m§.length > this.§9!§)
         {
            _loc3_ = this.§`m§[this.§9!§];
            if(_loc3_.step == this.§5J§)
            {
               param1.activatePowerup();
               ++this.§9!§;
            }
         }
         ++this.§'!l§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§9M§ + §=!4§ + this.§&!p§() + §=!4§ + this.§9$§());
      }
      
      private function §&!p§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§2u§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§2u§.length)
         {
            _loc1_ += §70§;
            _loc1_ += this.§2u§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §9$§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§`m§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§`m§.length)
         {
            _loc1_ += §70§;
            _loc1_ += this.§`m§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
