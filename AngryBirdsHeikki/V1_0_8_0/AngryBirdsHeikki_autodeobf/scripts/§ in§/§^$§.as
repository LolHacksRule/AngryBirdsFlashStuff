package § in§
{
   import §2z§.§2!U§;
   import flash.system.Capabilities;
   
   public class §^$§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §6!C§:String;
      
      private var §]a§:int;
      
      private var §[!R§:Number;
      
      private var §[E§:Number;
      
      protected var §%!!§:Boolean;
      
      protected var §2$§:Vector.<§;!<§>;
      
      protected var §'!&§:Vector.<§=!K§>;
      
      private var §=$§:int;
      
      private var §7C§:int;
      
      public function §^$§(param1:String)
      {
         this.§2$§ = new Vector.<§;!<§>();
         this.§'!&§ = new Vector.<§=!K§>();
         super();
         this.§6!C§ = param1;
         this.§[!R§ = 1;
      }
      
      public static function initialize(param1:String) : §^$§
      {
         var _loc2_:§^$§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§;!<§ = null;
         var _loc9_:§=!K§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §^$§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §;!<§.initialize(_loc6_))
               {
                  _loc2_.§2$§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §=!K§.initialize(_loc7_))
               {
                  _loc2_.§'!&§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §6!W§() : Boolean
      {
         return this.§%!!§;
      }
      
      public function get levelName() : String
      {
         return this.§6!C§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§[!R§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§[!R§;
      }
      
      protected function get currentStep() : int
      {
         return this.§]a§;
      }
      
      public function §5V§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§%!!§)
         {
            this.§2$§.push(new §;!<§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §#!F§(param1:int) : void
      {
         if(!this.§%!!§)
         {
            if(this.§'!&§.length > 0)
            {
               if(this.§'!&§[this.§'!&§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§'!&§.push(new §=!K§(param1));
         }
      }
      
      public function play() : void
      {
         this.§%!!§ = true;
      }
      
      public function step(param1:§2!U§) : void
      {
         var _loc2_:§;!<§ = null;
         var _loc3_:§=!K§ = null;
         if(this.§2$§.length > this.§=$§)
         {
            _loc2_ = this.§2$§[this.§=$§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§'K§(_loc2_.x,_loc2_.y,_loc2_.§`?§,_loc2_.angle);
               ++this.§=$§;
            }
         }
         if(this.§'!&§.length > this.§7C§)
         {
            _loc3_ = this.§'!&§[this.§7C§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§7C§;
            }
         }
         ++this.§]a§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§6!C§ + DELIM + this.§+n§() + DELIM + this.§^A§());
      }
      
      private function §+n§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§2$§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§2$§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§2$§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §^A§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§'!&§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§'!&§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§'!&§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
