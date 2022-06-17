package §["9§
{
   import § !D§.§'"u§;
   import flash.system.Capabilities;
   
   public class §,2§
   {
      
      public static const §4R§:String = "@@";
      
      public static const §&$?§:String = "@";
       
      
      private var §?g§:String;
      
      private var §^#6§:int;
      
      private var §1!Z§:Number;
      
      private var §7#U§:Number;
      
      protected var §]4§:Boolean;
      
      protected var §2$C§:Vector.<§&#7§>;
      
      protected var §?"W§:Vector.<§2!v§>;
      
      private var §<Y§:int;
      
      private var §,#p§:int;
      
      public function §,2§(param1:String)
      {
         this.§2$C§ = new Vector.<§&#7§>();
         this.§?"W§ = new Vector.<§2!v§>();
         super();
         this.§?g§ = param1;
         this.§1!Z§ = 1;
      }
      
      public static function initialize(param1:String) : §,2§
      {
         var _loc2_:§,2§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§&#7§ = null;
         var _loc9_:§2!v§ = null;
         var _loc3_:Array = param1.split(§4R§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §,2§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§&$?§);
            _loc5_ = _loc3_[2].split(§&$?§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §&#7§.initialize(_loc6_))
               {
                  _loc2_.§2$C§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §2!v§.initialize(_loc7_))
               {
                  _loc2_.§?"W§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.§]4§;
      }
      
      public function get §`$2§() : String
      {
         return this.§?g§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§1!Z§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§1!Z§;
      }
      
      protected function get §3!k§() : int
      {
         return this.§^#6§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§]4§)
         {
            this.§2$C§.push(new §&#7§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §[$0§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§]4§)
         {
            if(this.§?"W§.length > 0)
            {
               if(this.§?"W§[this.§?"W§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§?"W§.push(new §2!v§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§]4§ = true;
      }
      
      public function step(param1:§'"u§) : void
      {
         var _loc2_:§&#7§ = null;
         var _loc3_:§2!v§ = null;
         if(this.§2$C§.length > this.§<Y§)
         {
            _loc2_ = this.§2$C§[this.§<Y§];
            if(_loc2_.step == this.§3!k§)
            {
               param1.slingshot.§<1§(_loc2_.x,_loc2_.y,_loc2_.§#"3§,_loc2_.angle);
               ++this.§<Y§;
            }
         }
         if(this.§?"W§.length > this.§,#p§)
         {
            _loc3_ = this.§?"W§[this.§,#p§];
            if(_loc3_.step == this.§3!k§)
            {
               param1.activateSpecialPower(_loc3_.§#" §,_loc3_.§%-§);
               ++this.§,#p§;
            }
         }
         ++this.§^#6§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§?g§ + §4R§ + this.§6#H§() + §4R§ + this.§>#T§());
      }
      
      private function §6#H§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§2$C§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§2$C§.length)
         {
            _loc1_ += §&$?§;
            _loc1_ += this.§2$C§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §>#T§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§?"W§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§?"W§.length)
         {
            _loc1_ += §&$?§;
            _loc1_ += this.§?"W§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
