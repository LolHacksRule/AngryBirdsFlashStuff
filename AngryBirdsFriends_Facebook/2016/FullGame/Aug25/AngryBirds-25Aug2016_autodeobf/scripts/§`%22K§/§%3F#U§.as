package §`"K§
{
   import §52§.§#!,§;
   import flash.system.Capabilities;
   
   public class §?#U§
   {
      
      public static const §6$%§:String = "@@";
      
      public static const §06§:String = "@";
       
      
      private var §67§:String;
      
      private var §%#-§:int;
      
      private var §%Y§:Number;
      
      private var §-_§:Number;
      
      protected var §^" §:Boolean;
      
      protected var §]$,§:Vector.<§'#T§>;
      
      protected var §#$#§:Vector.<§7"e§>;
      
      private var §1!G§:int;
      
      private var §7"3§:int;
      
      public function §?#U§(param1:String)
      {
         this.§]$,§ = new Vector.<§'#T§>();
         this.§#$#§ = new Vector.<§7"e§>();
         super();
         this.§67§ = param1;
         this.§%Y§ = 1;
      }
      
      public static function initialize(param1:String) : §?#U§
      {
         var _loc2_:§?#U§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§'#T§ = null;
         var _loc9_:§7"e§ = null;
         var _loc3_:Array = param1.split(§6$%§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §?#U§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§06§);
            _loc5_ = _loc3_[2].split(§06§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §'#T§.initialize(_loc6_))
               {
                  _loc2_.§]$,§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §7"e§.initialize(_loc7_))
               {
                  _loc2_.§#$#§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.§^" §;
      }
      
      public function get §8l§() : String
      {
         return this.§67§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§%Y§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§%Y§;
      }
      
      protected function get §?#E§() : int
      {
         return this.§%#-§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§^" §)
         {
            this.§]$,§.push(new §'#T§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §>#5§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§^" §)
         {
            if(this.§#$#§.length > 0)
            {
               if(this.§#$#§[this.§#$#§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§#$#§.push(new §7"e§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§^" § = true;
      }
      
      public function step(param1:§#!,§) : void
      {
         var _loc2_:§'#T§ = null;
         var _loc3_:§7"e§ = null;
         if(this.§]$,§.length > this.§1!G§)
         {
            _loc2_ = this.§]$,§[this.§1!G§];
            if(_loc2_.step == this.§?#E§)
            {
               param1.slingshot.§`9§(_loc2_.x,_loc2_.y,_loc2_.§?#i§,_loc2_.angle);
               ++this.§1!G§;
            }
         }
         if(this.§#$#§.length > this.§7"3§)
         {
            _loc3_ = this.§#$#§[this.§7"3§];
            if(_loc3_.step == this.§?#E§)
            {
               param1.activateSpecialPower(_loc3_.§-!z§,_loc3_.§0$&§);
               ++this.§7"3§;
            }
         }
         ++this.§%#-§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§67§ + §6$%§ + this.§0">§() + §6$%§ + this.§<#S§());
      }
      
      private function §0">§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§]$,§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§]$,§.length)
         {
            _loc1_ += §06§;
            _loc1_ += this.§]$,§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §<#S§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§#$#§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§#$#§.length)
         {
            _loc1_ += §06§;
            _loc1_ += this.§#$#§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
