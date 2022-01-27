package §-!b§
{
   import §]!@§.LevelMain;
   import flash.system.Capabilities;
   
   public class Replay
   {
      
      public static const §'L§:String = "@@";
      
      public static const §37§:String = "@";
       
      
      private var §7a§:String;
      
      private var §5!C§:int;
      
      private var §-]§:Number;
      
      private var §28§:Number;
      
      protected var §?v§:Boolean;
      
      protected var §]h§:Vector.<Shot>;
      
      protected var mPowerUps:Vector.<§->§>;
      
      private var §;c§:int;
      
      private var §,!D§:int;
      
      public function Replay(param1:String)
      {
         this.§]h§ = new Vector.<Shot>();
         this.mPowerUps = new Vector.<§->§>();
         super();
         this.§7a§ = param1;
         this.§-]§ = 1;
      }
      
      public static function initialize(param1:String) : Replay
      {
         var _loc2_:Replay = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Shot = null;
         var _loc9_:§->§ = null;
         var _loc3_:Array = param1.split(§'L§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new Replay(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§37§);
            _loc5_ = _loc3_[2].split(§37§);
            for each(_loc6_ in _loc4_)
            {
               _loc8_ = Shot.initialize(_loc6_);
               if(_loc8_)
               {
                  _loc2_.§]h§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               _loc9_ = §->§.initialize(_loc7_);
               if(_loc9_)
               {
                  _loc2_.mPowerUps.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §?§() : Boolean
      {
         return this.§?v§;
      }
      
      public function get levelName() : String
      {
         return this.§7a§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§-]§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§-]§;
      }
      
      protected function get §8!?§() : int
      {
         return this.§5!C§;
      }
      
      public function §!!E§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§?v§)
         {
            this.§]h§.push(new Shot(param1,param2,param3,param4,param5));
         }
      }
      
      public function §+!-§(param1:int) : void
      {
         if(!this.§?v§)
         {
            if(this.mPowerUps.length > 0)
            {
               if(this.mPowerUps[this.mPowerUps.length - 1].step == param1)
               {
                  return;
               }
            }
            this.mPowerUps.push(new §->§(param1));
         }
      }
      
      public function play() : void
      {
         this.§?v§ = true;
      }
      
      public function step(param1:LevelMain) : void
      {
         var _loc2_:Shot = null;
         var _loc3_:§->§ = null;
         if(this.§]h§.length > this.§;c§)
         {
            _loc2_ = this.§]h§[this.§;c§];
            if(_loc2_.step == this.§8!?§)
            {
               param1.slingshot.§+!Q§(_loc2_.x,_loc2_.y,_loc2_.power,_loc2_.angle);
               ++this.§;c§;
            }
         }
         if(this.mPowerUps.length > this.§,!D§)
         {
            _loc3_ = this.mPowerUps[this.§,!D§];
            if(_loc3_.step == this.§8!?§)
            {
               param1.activatePowerup();
               ++this.§,!D§;
            }
         }
         ++this.§5!C§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§7a§ + §'L§ + this.§2O§() + §'L§ + this.§4!>§());
      }
      
      private function §2O§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§]h§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§]h§.length)
         {
            _loc1_ += §37§;
            _loc1_ += this.§]h§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §4!>§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.mPowerUps.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.mPowerUps.length)
         {
            _loc1_ += §37§;
            _loc1_ += this.mPowerUps[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
