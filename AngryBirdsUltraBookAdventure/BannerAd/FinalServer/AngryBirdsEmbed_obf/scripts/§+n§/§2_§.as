package §+n§
{
   import §?b§.§7!,§;
   import flash.system.Capabilities;
   
   public class §2_§
   {
      
      public static const §@!=§:String = "@@";
      
      public static const §6,§:String = "@";
       
      
      private var §;!4§:String;
      
      private var §8r§:int;
      
      private var §6;§:Number;
      
      private var §3j§:Number;
      
      protected var §>M§:Boolean;
      
      protected var §`S§:Vector.<§+-§>;
      
      protected var §],§:Vector.<PowerUp>;
      
      private var §4!C§:int;
      
      private var §6g§:int;
      
      public function §2_§(param1:String)
      {
         this.§`S§ = new Vector.<§+-§>();
         this.§],§ = new Vector.<PowerUp>();
         super();
         this.§;!4§ = param1;
         this.§6;§ = 1;
      }
      
      public static function initialize(param1:String) : §2_§
      {
         var _loc2_:§2_§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§+-§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§@!=§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §2_§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§6,§);
            _loc5_ = _loc3_[2].split(§6,§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §+-§.initialize(_loc6_))
               {
                  _loc2_.§`S§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§],§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §^[§() : Boolean
      {
         return this.§>M§;
      }
      
      public function get §]!B§() : String
      {
         return this.§;!4§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§6;§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§6;§;
      }
      
      protected function get §'U§() : int
      {
         return this.§8r§;
      }
      
      public function §6U§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§>M§)
         {
            this.§`S§.push(new §+-§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §]o§(param1:int) : void
      {
         if(!this.§>M§)
         {
            if(this.§],§.length > 0)
            {
               if(this.§],§[this.§],§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§],§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§>M§ = true;
      }
      
      public function step(param1:§7!,§) : void
      {
         var _loc2_:§+-§ = null;
         var _loc3_:PowerUp = null;
         if(this.§`S§.length > this.§4!C§)
         {
            _loc2_ = this.§`S§[this.§4!C§];
            if(_loc2_.step == this.§'U§)
            {
               param1.slingshot.§'P§(_loc2_.x,_loc2_.y,_loc2_.§'!F§,_loc2_.angle);
               ++this.§4!C§;
            }
         }
         if(this.§],§.length > this.§6g§)
         {
            _loc3_ = this.§],§[this.§6g§];
            if(_loc3_.step == this.§'U§)
            {
               param1.activatePowerup();
               ++this.§6g§;
            }
         }
         ++this.§8r§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§;!4§ + §@!=§ + this.§2!?§() + §@!=§ + this.§29§());
      }
      
      private function §2!?§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§`S§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§`S§.length)
         {
            _loc1_ += §6,§;
            _loc1_ += this.§`S§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §29§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§],§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§],§.length)
         {
            _loc1_ += §6,§;
            _loc1_ += this.§],§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
