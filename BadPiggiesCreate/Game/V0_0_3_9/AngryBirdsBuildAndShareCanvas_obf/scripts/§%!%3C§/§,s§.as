package §%!<§
{
   import §=b§.§-!K§;
   import flash.system.Capabilities;
   
   public class §,s§
   {
      
      public static const §0q§:String = "@@";
      
      public static const §"R§:String = "@";
       
      
      private var §]!f§:String;
      
      private var §'Y§:int;
      
      private var §7^§:Number;
      
      private var §7!n§:Number;
      
      protected var §[V§:Boolean;
      
      protected var §#x§:Vector.<§^l§>;
      
      protected var §&X§:Vector.<§4"5§>;
      
      private var §?d§:int;
      
      private var §>!+§:int;
      
      public function §,s§(param1:String)
      {
         this.§#x§ = new Vector.<§^l§>();
         this.§&X§ = new Vector.<§4"5§>();
         super();
         this.§]!f§ = param1;
         this.§7^§ = 1;
      }
      
      public static function initialize(param1:String) : §,s§
      {
         var _loc2_:§,s§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§^l§ = null;
         var _loc9_:§4"5§ = null;
         var _loc3_:Array = param1.split(§0q§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §,s§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§"R§);
            _loc5_ = _loc3_[2].split(§"R§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §^l§.initialize(_loc6_))
               {
                  _loc2_.§#x§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §4"5§.initialize(_loc7_))
               {
                  _loc2_.§&X§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §[r§() : Boolean
      {
         return this.§[V§;
      }
      
      public function get §73§() : String
      {
         return this.§]!f§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§7^§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§7^§;
      }
      
      protected function get §#E§() : int
      {
         return this.§'Y§;
      }
      
      public function §<&§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§[V§)
         {
            this.§#x§.push(new §^l§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §1g§(param1:int) : void
      {
         if(!this.§[V§)
         {
            if(this.§&X§.length > 0)
            {
               if(this.§&X§[this.§&X§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§&X§.push(new §4"5§(param1));
         }
      }
      
      public function play() : void
      {
         this.§[V§ = true;
      }
      
      public function step(param1:§-!K§) : void
      {
         var _loc2_:§^l§ = null;
         var _loc3_:§4"5§ = null;
         if(this.§#x§.length > this.§?d§)
         {
            _loc2_ = this.§#x§[this.§?d§];
            if(_loc2_.step == this.§#E§)
            {
               param1.slingshot.§ A§(_loc2_.x,_loc2_.y,_loc2_.§"U§,_loc2_.angle);
               ++this.§?d§;
            }
         }
         if(this.§&X§.length > this.§>!+§)
         {
            _loc3_ = this.§&X§[this.§>!+§];
            if(_loc3_.step == this.§#E§)
            {
               param1.activatePowerup();
               ++this.§>!+§;
            }
         }
         ++this.§'Y§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§]!f§ + §0q§ + this.§%W§() + §0q§ + this.§!_§());
      }
      
      private function §%W§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§#x§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§#x§.length)
         {
            _loc1_ += §"R§;
            _loc1_ += this.§#x§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §!_§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§&X§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&X§.length)
         {
            _loc1_ += §"R§;
            _loc1_ += this.§&X§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
