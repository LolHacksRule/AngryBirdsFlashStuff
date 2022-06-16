package §5!]§
{
   import §4!<§.§'!S§;
   import flash.system.Capabilities;
   
   public class §%!G§
   {
      
      public static const §!"B§:String = "@@";
      
      public static const §]u§:String = "@";
       
      
      private var §]@§:String;
      
      private var §6!t§:int;
      
      private var §?E§:Number;
      
      private var §"!M§:Number;
      
      protected var §1X§:Boolean;
      
      protected var §?"@§:Vector.<§>!T§>;
      
      protected var §>""§:Vector.<§""!§>;
      
      private var §'!H§:int;
      
      private var §9!&§:int;
      
      public function §%!G§(param1:String)
      {
         this.§?"@§ = new Vector.<§>!T§>();
         this.§>""§ = new Vector.<§""!§>();
         super();
         this.§]@§ = param1;
         this.§?E§ = 1;
      }
      
      public static function initialize(param1:String) : §%!G§
      {
         var _loc2_:§%!G§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§>!T§ = null;
         var _loc9_:§""!§ = null;
         var _loc3_:Array = param1.split(§!"B§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §%!G§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§]u§);
            _loc5_ = _loc3_[2].split(§]u§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §>!T§.initialize(_loc6_))
               {
                  _loc2_.§?"@§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §""!§.initialize(_loc7_))
               {
                  _loc2_.§>""§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §6",§() : Boolean
      {
         return this.§1X§;
      }
      
      public function get §3$§() : String
      {
         return this.§]@§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§?E§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§?E§;
      }
      
      protected function get §%!X§() : int
      {
         return this.§6!t§;
      }
      
      public function §9"+§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§1X§)
         {
            this.§?"@§.push(new §>!T§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §`!H§(param1:int) : void
      {
         if(!this.§1X§)
         {
            if(this.§>""§.length > 0)
            {
               if(this.§>""§[this.§>""§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§>""§.push(new §""!§(param1));
         }
      }
      
      public function play() : void
      {
         this.§1X§ = true;
      }
      
      public function step(param1:§'!S§) : void
      {
         var _loc2_:§>!T§ = null;
         var _loc3_:§""!§ = null;
         if(this.§?"@§.length > this.§'!H§)
         {
            _loc2_ = this.§?"@§[this.§'!H§];
            if(_loc2_.step == this.§%!X§)
            {
               param1.slingshot.§;"4§(_loc2_.x,_loc2_.y,_loc2_.§""%§,_loc2_.angle);
               ++this.§'!H§;
            }
         }
         if(this.§>""§.length > this.§9!&§)
         {
            _loc3_ = this.§>""§[this.§9!&§];
            if(_loc3_.step == this.§%!X§)
            {
               param1.activatePowerup();
               ++this.§9!&§;
            }
         }
         ++this.§6!t§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§]@§ + §!"B§ + this.§4!o§() + §!"B§ + this.§5"J§());
      }
      
      private function §4!o§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§?"@§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§?"@§.length)
         {
            _loc1_ += §]u§;
            _loc1_ += this.§?"@§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §5"J§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§>""§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§>""§.length)
         {
            _loc1_ += §]u§;
            _loc1_ += this.§>""§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
