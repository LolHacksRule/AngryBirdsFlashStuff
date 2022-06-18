package §0!G§
{
   import §9!?§.§^]§;
   import flash.system.Capabilities;
   
   public class §6V§
   {
      
      public static const §3l§:String = "@@";
      
      public static const §9#§:String = "@";
       
      
      private var §&v§:String;
      
      private var §,`§:int;
      
      private var §<w§:Number;
      
      private var §`!,§:Number;
      
      protected var §0!+§:Boolean;
      
      protected var §,C§:Vector.<§<!"§>;
      
      protected var §5&§:Vector.<PowerUp>;
      
      private var §#<§:int;
      
      private var §@J§:int;
      
      public function §6V§(param1:String)
      {
         this.§,C§ = new Vector.<§<!"§>();
         this.§5&§ = new Vector.<PowerUp>();
         super();
         this.§&v§ = param1;
         this.§<w§ = 1;
      }
      
      public static function initialize(param1:String) : §6V§
      {
         var _loc2_:§6V§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§<!"§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§3l§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §6V§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§9#§);
            _loc5_ = _loc3_[2].split(§9#§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §<!"§.initialize(_loc6_))
               {
                  _loc2_.§,C§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§5&§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §,N§() : Boolean
      {
         return this.§0!+§;
      }
      
      public function get §9m§() : String
      {
         return this.§&v§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§<w§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§<w§;
      }
      
      protected function get §5!?§() : int
      {
         return this.§,`§;
      }
      
      public function §<p§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§0!+§)
         {
            this.§,C§.push(new §<!"§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §9!<§(param1:int) : void
      {
         if(!this.§0!+§)
         {
            if(this.§5&§.length > 0)
            {
               if(this.§5&§[this.§5&§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§5&§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§0!+§ = true;
      }
      
      public function step(param1:§^]§) : void
      {
         var _loc2_:§<!"§ = null;
         var _loc3_:PowerUp = null;
         if(this.§,C§.length > this.§#<§)
         {
            _loc2_ = this.§,C§[this.§#<§];
            if(_loc2_.step == this.§5!?§)
            {
               param1.slingshot.§"E§(_loc2_.x,_loc2_.y,_loc2_.§;#§,_loc2_.angle);
               ++this.§#<§;
            }
         }
         if(this.§5&§.length > this.§@J§)
         {
            _loc3_ = this.§5&§[this.§@J§];
            if(_loc3_.step == this.§5!?§)
            {
               param1.activatePowerup();
               ++this.§@J§;
            }
         }
         ++this.§,`§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§&v§ + §3l§ + this.§]!2§() + §3l§ + this.§do §());
      }
      
      private function §]!2§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§,C§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§,C§.length)
         {
            _loc1_ += §9#§;
            _loc1_ += this.§,C§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §do §() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§5&§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§5&§.length)
         {
            _loc1_ += §9#§;
            _loc1_ += this.§5&§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
