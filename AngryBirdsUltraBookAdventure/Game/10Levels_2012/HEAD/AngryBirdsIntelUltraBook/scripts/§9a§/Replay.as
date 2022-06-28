package §9a§
{
   import §?A§.LevelMain;
   import flash.system.Capabilities;
   
   public class Replay
   {
      
      public static const §1q§:String = "@@";
      
      public static const §[!E§:String = "@";
       
      
      private var §4!9§:String;
      
      private var §>!e§:int;
      
      private var §<,§:Number;
      
      private var §>2§:Number;
      
      protected var §67§:Boolean;
      
      protected var §;!^§:Vector.<Shot>;
      
      protected var mPowerUps:Vector.<§1^§>;
      
      private var §[E§:int;
      
      private var §`m§:int;
      
      public function Replay(param1:String)
      {
         this.§;!^§ = new Vector.<Shot>();
         this.mPowerUps = new Vector.<§1^§>();
         super();
         this.§4!9§ = param1;
         this.§<,§ = 1;
      }
      
      public static function initialize(param1:String) : Replay
      {
         var _loc2_:Replay = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Shot = null;
         var _loc9_:§1^§ = null;
         var _loc3_:Array = param1.split(§1q§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new Replay(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§[!E§);
            _loc5_ = _loc3_[2].split(§[!E§);
            for each(_loc6_ in _loc4_)
            {
               _loc8_ = Shot.initialize(_loc6_);
               if(_loc8_)
               {
                  _loc2_.§;!^§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               _loc9_ = §1^§.initialize(_loc7_);
               if(_loc9_)
               {
                  _loc2_.mPowerUps.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §9X§() : Boolean
      {
         return this.§67§;
      }
      
      public function get levelName() : String
      {
         return this.§4!9§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§<,§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§<,§;
      }
      
      protected function get §,6§() : int
      {
         return this.§>!e§;
      }
      
      public function §]!O§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§67§)
         {
            this.§;!^§.push(new Shot(param1,param2,param3,param4,param5));
         }
      }
      
      public function §0!L§(param1:int) : void
      {
         if(!this.§67§)
         {
            if(this.mPowerUps.length > 0)
            {
               if(this.mPowerUps[this.mPowerUps.length - 1].step == param1)
               {
                  return;
               }
            }
            this.mPowerUps.push(new §1^§(param1));
         }
      }
      
      public function play() : void
      {
         this.§67§ = true;
      }
      
      public function step(param1:LevelMain) : void
      {
         var _loc2_:Shot = null;
         var _loc3_:§1^§ = null;
         if(this.§;!^§.length > this.§[E§)
         {
            _loc2_ = this.§;!^§[this.§[E§];
            if(_loc2_.step == this.§,6§)
            {
               param1.slingshot.§-!+§(_loc2_.x,_loc2_.y,_loc2_.power,_loc2_.angle);
               ++this.§[E§;
            }
         }
         if(this.mPowerUps.length > this.§`m§)
         {
            _loc3_ = this.mPowerUps[this.§`m§];
            if(_loc3_.step == this.§,6§)
            {
               param1.activatePowerup();
               ++this.§`m§;
            }
         }
         ++this.§>!e§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§4!9§ + §1q§ + this.§6!"§() + §1q§ + this.§>>§());
      }
      
      private function §6!"§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§;!^§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§;!^§.length)
         {
            _loc1_ += §[!E§;
            _loc1_ += this.§;!^§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §>>§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.mPowerUps.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.mPowerUps.length)
         {
            _loc1_ += §[!E§;
            _loc1_ += this.mPowerUps[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
