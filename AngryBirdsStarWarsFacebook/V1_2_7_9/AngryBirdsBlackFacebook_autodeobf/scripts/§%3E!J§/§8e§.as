package §>!J§
{
   import §5!q§.§3"X§;
   import flash.system.Capabilities;
   
   public class §8e§
   {
      
      public static const §""[§:String = "@@";
      
      public static const § g§:String = "@";
       
      
      private var §3"F§:String;
      
      private var §=j§:int;
      
      private var §`w§:Number;
      
      private var §'"E§:Number;
      
      protected var §?!R§:Boolean;
      
      protected var §<!v§:Vector.<§<"i§>;
      
      protected var §0!P§:Vector.<§;!X§>;
      
      private var §#U§:int;
      
      private var §8!S§:int;
      
      public function §8e§(param1:String)
      {
         this.§<!v§ = new Vector.<§<"i§>();
         this.§0!P§ = new Vector.<§;!X§>();
         super();
         this.§3"F§ = param1;
         this.§`w§ = 1;
      }
      
      public static function initialize(param1:String) : §8e§
      {
         var _loc2_:§8e§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§<"i§ = null;
         var _loc9_:§;!X§ = null;
         var _loc3_:Array = param1.split(§""[§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §8e§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§ g§);
            _loc5_ = _loc3_[2].split(§ g§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §<"i§.initialize(_loc6_))
               {
                  _loc2_.§<!v§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §;!X§.initialize(_loc7_))
               {
                  _loc2_.§0!P§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §^"h§() : Boolean
      {
         return this.§?!R§;
      }
      
      public function get §,#%§() : String
      {
         return this.§3"F§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§`w§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§`w§;
      }
      
      protected function get §`"+§() : int
      {
         return this.§=j§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§?!R§)
         {
            this.§<!v§.push(new §<"i§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §6" §(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§?!R§)
         {
            if(this.§0!P§.length > 0)
            {
               if(this.§0!P§[this.§0!P§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§0!P§.push(new §;!X§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§?!R§ = true;
      }
      
      public function step(param1:§3"X§) : void
      {
         var _loc2_:§<"i§ = null;
         var _loc3_:§;!X§ = null;
         if(this.§<!v§.length > this.§#U§)
         {
            _loc2_ = this.§<!v§[this.§#U§];
            if(_loc2_.step == this.§`"+§)
            {
               param1.slingshot.§+!-§(_loc2_.x,_loc2_.y,_loc2_.§ 9§,_loc2_.angle);
               ++this.§#U§;
            }
         }
         if(this.§0!P§.length > this.§8!S§)
         {
            _loc3_ = this.§0!P§[this.§8!S§];
            if(_loc3_.step == this.§`"+§)
            {
               param1.activateSpecialPower(_loc3_.§!"1§,_loc3_.§?!u§);
               ++this.§8!S§;
            }
         }
         ++this.§=j§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§3"F§ + §""[§ + this.§`"O§() + §""[§ + this.§]!u§());
      }
      
      private function §`"O§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§<!v§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!v§.length)
         {
            _loc1_ += § g§;
            _loc1_ += this.§<!v§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §]!u§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§0!P§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§0!P§.length)
         {
            _loc1_ += § g§;
            _loc1_ += this.§0!P§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
