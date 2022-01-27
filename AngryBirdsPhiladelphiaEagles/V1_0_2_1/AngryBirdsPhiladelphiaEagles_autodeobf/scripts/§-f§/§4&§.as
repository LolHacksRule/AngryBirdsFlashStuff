package §-f§
{
   import §%"§.§ do§;
   import flash.system.Capabilities;
   
   public class §4&§
   {
      
      public static const §-x§:String = "@@";
      
      public static const §4J§:String = "@";
       
      
      private var §3_§:String;
      
      private var §[Z§:int;
      
      private var §1!@§:Number;
      
      private var §'z§:Number;
      
      protected var §2V§:Boolean;
      
      protected var §=_§:Vector.<§&n§>;
      
      protected var §#!6§:Vector.<PowerUp>;
      
      private var §=>§:int;
      
      private var §-!=§:int;
      
      public function §4&§(param1:String)
      {
         this.§=_§ = new Vector.<§&n§>();
         this.§#!6§ = new Vector.<PowerUp>();
         super();
         this.§3_§ = param1;
         this.§1!@§ = 1;
      }
      
      public static function initialize(param1:String) : §4&§
      {
         var _loc2_:§4&§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§&n§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§-x§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §4&§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§4J§);
            _loc5_ = _loc3_[2].split(§4J§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §&n§.initialize(_loc6_))
               {
                  _loc2_.§=_§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§#!6§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §6-§() : Boolean
      {
         return this.§2V§;
      }
      
      public function get §%!&§() : String
      {
         return this.§3_§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§1!@§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§1!@§;
      }
      
      protected function get §5-§() : int
      {
         return this.§[Z§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§2V§)
         {
            this.§=_§.push(new §&n§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §`D§(param1:int) : void
      {
         if(!this.§2V§)
         {
            if(this.§#!6§.length > 0)
            {
               if(this.§#!6§[this.§#!6§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§#!6§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§2V§ = true;
      }
      
      public function step(param1:§ do§) : void
      {
         var _loc2_:§&n§ = null;
         var _loc3_:PowerUp = null;
         if(this.§=_§.length > this.§=>§)
         {
            _loc2_ = this.§=_§[this.§=>§];
            if(_loc2_.step == this.§5-§)
            {
               param1.slingshot.§^!-§(_loc2_.x,_loc2_.y,_loc2_.§0%§,_loc2_.angle);
               ++this.§=>§;
            }
         }
         if(this.§#!6§.length > this.§-!=§)
         {
            _loc3_ = this.§#!6§[this.§-!=§];
            if(_loc3_.step == this.§5-§)
            {
               param1.activatePowerup();
               ++this.§-!=§;
            }
         }
         ++this.§[Z§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§3_§ + §-x§ + this.§4V§() + §-x§ + this.§!!,§());
      }
      
      private function §4V§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§=_§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§=_§.length)
         {
            _loc1_ += §4J§;
            _loc1_ += this.§=_§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §!!,§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§#!6§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!6§.length)
         {
            _loc1_ += §4J§;
            _loc1_ += this.§#!6§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
