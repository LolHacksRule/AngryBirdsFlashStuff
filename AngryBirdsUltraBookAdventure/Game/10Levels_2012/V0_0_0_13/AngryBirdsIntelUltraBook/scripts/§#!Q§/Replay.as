package §#!Q§
{
   import §2!H§.LevelMain;
   import flash.system.Capabilities;
   
   public class Replay
   {
      
      public static const §4V§:String = "@@";
      
      public static const §;'§:String = "@";
       
      
      private var §#!?§:String;
      
      private var §1#§:int;
      
      private var §8%§:Number;
      
      private var §2+§:Number;
      
      protected var §;!Y§:Boolean;
      
      protected var §-8§:Vector.<Shot>;
      
      protected var mPowerUps:Vector.<§,h§>;
      
      private var §?!Q§:int;
      
      private var §<!E§:int;
      
      public function Replay(param1:String)
      {
         this.§-8§ = new Vector.<Shot>();
         this.mPowerUps = new Vector.<§,h§>();
         super();
         this.§#!?§ = param1;
         this.§8%§ = 1;
      }
      
      public static function initialize(param1:String) : Replay
      {
         var _loc2_:Replay = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Shot = null;
         var _loc9_:§,h§ = null;
         var _loc3_:Array = param1.split(§4V§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new Replay(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§;'§);
            _loc5_ = _loc3_[2].split(§;'§);
            for each(_loc6_ in _loc4_)
            {
               _loc8_ = Shot.initialize(_loc6_);
               if(_loc8_)
               {
                  _loc2_.§-8§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               _loc9_ = §,h§.initialize(_loc7_);
               if(_loc9_)
               {
                  _loc2_.mPowerUps.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get § O§() : Boolean
      {
         return this.§;!Y§;
      }
      
      public function get levelName() : String
      {
         return this.§#!?§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§8%§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§8%§;
      }
      
      protected function get §">§() : int
      {
         return this.§1#§;
      }
      
      public function § a§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§;!Y§)
         {
            this.§-8§.push(new Shot(param1,param2,param3,param4,param5));
         }
      }
      
      public function §6t§(param1:int) : void
      {
         if(!this.§;!Y§)
         {
            if(this.mPowerUps.length > 0)
            {
               if(this.mPowerUps[this.mPowerUps.length - 1].step == param1)
               {
                  return;
               }
            }
            this.mPowerUps.push(new §,h§(param1));
         }
      }
      
      public function play() : void
      {
         this.§;!Y§ = true;
      }
      
      public function step(param1:LevelMain) : void
      {
         var _loc2_:Shot = null;
         var _loc3_:§,h§ = null;
         if(this.§-8§.length > this.§?!Q§)
         {
            _loc2_ = this.§-8§[this.§?!Q§];
            if(_loc2_.step == this.§">§)
            {
               param1.slingshot.§-O§(_loc2_.x,_loc2_.y,_loc2_.power,_loc2_.angle);
               ++this.§?!Q§;
            }
         }
         if(this.mPowerUps.length > this.§<!E§)
         {
            _loc3_ = this.mPowerUps[this.§<!E§];
            if(_loc3_.step == this.§">§)
            {
               param1.activatePowerup();
               ++this.§<!E§;
            }
         }
         ++this.§1#§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§#!?§ + §4V§ + this.§6!U§() + §4V§ + this.§%!D§());
      }
      
      private function §6!U§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§-8§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§-8§.length)
         {
            _loc1_ += §;'§;
            _loc1_ += this.§-8§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §%!D§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.mPowerUps.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.mPowerUps.length)
         {
            _loc1_ += §;'§;
            _loc1_ += this.mPowerUps[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
