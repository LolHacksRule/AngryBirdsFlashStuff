package § q§
{
   import §9s§.§^9§;
   import flash.system.Capabilities;
   
   public class §"w§
   {
      
      public static const § !B§:String = "@@";
      
      public static const §?4§:String = "@";
       
      
      private var §#I§:String;
      
      private var §2U§:int;
      
      private var §^§:Number;
      
      private var §%A§:Number;
      
      protected var §!_§:Boolean;
      
      protected var §!a§:Vector.<§<!&§>;
      
      protected var §^H§:Vector.<PowerUp>;
      
      private var §#u§:int;
      
      private var §3!=§:int;
      
      public function §"w§(param1:String)
      {
         this.§!a§ = new Vector.<§<!&§>();
         this.§^H§ = new Vector.<PowerUp>();
         super();
         this.§#I§ = param1;
         this.§^§ = 1;
      }
      
      public static function initialize(param1:String) : §"w§
      {
         var _loc2_:§"w§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§<!&§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§ !B§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §"w§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§?4§);
            _loc5_ = _loc3_[2].split(§?4§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §<!&§.initialize(_loc6_))
               {
                  _loc2_.§!a§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§^H§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §50§() : Boolean
      {
         return this.§!_§;
      }
      
      public function get §else §() : String
      {
         return this.§#I§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§^§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§^§;
      }
      
      protected function get §82§() : int
      {
         return this.§2U§;
      }
      
      public function §5,§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§!_§)
         {
            this.§!a§.push(new §<!&§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §0Y§(param1:int) : void
      {
         if(!this.§!_§)
         {
            if(this.§^H§.length > 0)
            {
               if(this.§^H§[this.§^H§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§^H§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§!_§ = true;
      }
      
      public function step(param1:§^9§) : void
      {
         var _loc2_:§<!&§ = null;
         var _loc3_:PowerUp = null;
         if(this.§!a§.length > this.§#u§)
         {
            _loc2_ = this.§!a§[this.§#u§];
            if(_loc2_.step == this.§82§)
            {
               param1.slingshot.§+A§(_loc2_.x,_loc2_.y,_loc2_.§@x§,_loc2_.angle);
               ++this.§#u§;
            }
         }
         if(this.§^H§.length > this.§3!=§)
         {
            _loc3_ = this.§^H§[this.§3!=§];
            if(_loc3_.step == this.§82§)
            {
               param1.activatePowerup();
               ++this.§3!=§;
            }
         }
         ++this.§2U§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§#I§ + § !B§ + this.§&g§() + § !B§ + this.§1!D§());
      }
      
      private function §&g§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§!a§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§!a§.length)
         {
            _loc1_ += §?4§;
            _loc1_ += this.§!a§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §1!D§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§^H§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§^H§.length)
         {
            _loc1_ += §?4§;
            _loc1_ += this.§^H§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
