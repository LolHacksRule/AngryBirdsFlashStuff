package §%Q§
{
   import §"o§.§ M§;
   import flash.system.Capabilities;
   
   public class §%#§
   {
      
      public static const §[Q§:String = "@@";
      
      public static const §@!3§:String = "@";
       
      
      private var §"g§:String;
      
      private var §>k§:int;
      
      private var §&!A§:Number;
      
      private var §`+§:Number;
      
      protected var §,M§:Boolean;
      
      protected var §`!!§:Vector.<§;V§>;
      
      protected var §5G§:Vector.<PowerUp>;
      
      private var §5!"§:int;
      
      private var §=6§:int;
      
      public function §%#§(param1:String)
      {
         this.§`!!§ = new Vector.<§;V§>();
         this.§5G§ = new Vector.<PowerUp>();
         super();
         this.§"g§ = param1;
         this.§&!A§ = 1;
      }
      
      public static function initialize(param1:String) : §%#§
      {
         var _loc2_:§%#§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§;V§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§[Q§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §%#§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§@!3§);
            _loc5_ = _loc3_[2].split(§@!3§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §;V§.initialize(_loc6_))
               {
                  _loc2_.§`!!§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§5G§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §'!,§() : Boolean
      {
         return this.§,M§;
      }
      
      public function get § w§() : String
      {
         return this.§"g§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§&!A§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§&!A§;
      }
      
      protected function get §=!0§() : int
      {
         return this.§>k§;
      }
      
      public function §"i§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§,M§)
         {
            this.§`!!§.push(new §;V§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §with§(param1:int) : void
      {
         if(!this.§,M§)
         {
            if(this.§5G§.length > 0)
            {
               if(this.§5G§[this.§5G§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§5G§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§,M§ = true;
      }
      
      public function step(param1:§ M§) : void
      {
         var _loc2_:§;V§ = null;
         var _loc3_:PowerUp = null;
         if(this.§`!!§.length > this.§5!"§)
         {
            _loc2_ = this.§`!!§[this.§5!"§];
            if(_loc2_.step == this.§=!0§)
            {
               param1.slingshot.§0M§(_loc2_.x,_loc2_.y,_loc2_.§;_§,_loc2_.angle);
               ++this.§5!"§;
            }
         }
         if(this.§5G§.length > this.§=6§)
         {
            _loc3_ = this.§5G§[this.§=6§];
            if(_loc3_.step == this.§=!0§)
            {
               param1.activatePowerup();
               ++this.§=6§;
            }
         }
         ++this.§>k§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§"g§ + §[Q§ + this.§03§() + §[Q§ + this.§ get§());
      }
      
      private function §03§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§`!!§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!!§.length)
         {
            _loc1_ += §@!3§;
            _loc1_ += this.§`!!§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function § get§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§5G§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§5G§.length)
         {
            _loc1_ += §@!3§;
            _loc1_ += this.§5G§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
