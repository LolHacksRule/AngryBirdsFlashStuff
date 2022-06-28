package §5!k§
{
   import §2_§.§'u§;
   import flash.system.Capabilities;
   
   public class §+!n§
   {
      
      public static const §`-§:String = "@@";
      
      public static const §25§:String = "@";
       
      
      private var §,3§:String;
      
      private var §&F§:int;
      
      private var §&!&§:Number;
      
      private var §[f§:Number;
      
      protected var §>!'§:Boolean;
      
      protected var §+!7§:Vector.<§try §>;
      
      protected var §!&§:Vector.<§6!a§>;
      
      private var §0!N§:int;
      
      private var §9G§:int;
      
      public function §+!n§(param1:String)
      {
         this.§+!7§ = new Vector.<§try §>();
         this.§!&§ = new Vector.<§6!a§>();
         super();
         this.§,3§ = param1;
         this.§&!&§ = 1;
      }
      
      public static function initialize(param1:String) : §+!n§
      {
         var _loc2_:§+!n§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§try § = null;
         var _loc9_:§6!a§ = null;
         var _loc3_:Array = param1.split(§`-§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §+!n§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§25§);
            _loc5_ = _loc3_[2].split(§25§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §try §.initialize(_loc6_))
               {
                  _loc2_.§+!7§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §6!a§.initialize(_loc7_))
               {
                  _loc2_.§!&§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §;,§() : Boolean
      {
         return this.§>!'§;
      }
      
      public function get §?]§() : String
      {
         return this.§,3§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§&!&§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§&!&§;
      }
      
      protected function get §"!$§() : int
      {
         return this.§&F§;
      }
      
      public function §^!x§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§>!'§)
         {
            this.§+!7§.push(new §try §(param1,param2,param3,param4,param5));
         }
      }
      
      public function §7!x§(param1:int) : void
      {
         if(!this.§>!'§)
         {
            if(this.§!&§.length > 0)
            {
               if(this.§!&§[this.§!&§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§!&§.push(new §6!a§(param1));
         }
      }
      
      public function play() : void
      {
         this.§>!'§ = true;
      }
      
      public function step(param1:§'u§) : void
      {
         var _loc2_:§try § = null;
         var _loc3_:§6!a§ = null;
         if(this.§+!7§.length > this.§0!N§)
         {
            _loc2_ = this.§+!7§[this.§0!N§];
            if(_loc2_.step == this.§"!$§)
            {
               param1.slingshot.§2!A§(_loc2_.x,_loc2_.y,_loc2_.§@!e§,_loc2_.angle);
               ++this.§0!N§;
            }
         }
         if(this.§!&§.length > this.§9G§)
         {
            _loc3_ = this.§!&§[this.§9G§];
            if(_loc3_.step == this.§"!$§)
            {
               param1.activatePowerup();
               ++this.§9G§;
            }
         }
         ++this.§&F§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§,3§ + §`-§ + this.§>[§() + §`-§ + this.§<[§());
      }
      
      private function §>[§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§+!7§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!7§.length)
         {
            _loc1_ += §25§;
            _loc1_ += this.§+!7§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §<[§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§!&§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§!&§.length)
         {
            _loc1_ += §25§;
            _loc1_ += this.§!&§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
