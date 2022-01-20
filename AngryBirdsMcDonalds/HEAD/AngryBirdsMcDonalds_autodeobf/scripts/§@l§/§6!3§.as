package §@l§
{
   import § !J§.§%M§;
   import flash.system.Capabilities;
   
   public class §6!3§
   {
      
      public static const §5A§:String = "@@";
      
      public static const §'!2§:String = "@";
       
      
      private var §&X§:String;
      
      private var §%B§:int;
      
      private var §7l§:Number;
      
      private var §@!M§:Number;
      
      protected var §+o§:Boolean;
      
      protected var §<§:Vector.<§[!^§>;
      
      protected var native:Vector.<§'D§>;
      
      private var §>!7§:int;
      
      private var §'v§:int;
      
      public function §6!3§(param1:String)
      {
         this.§<§ = new Vector.<§[!^§>();
         this.native = new Vector.<§'D§>();
         super();
         this.§&X§ = param1;
         this.§7l§ = 1;
      }
      
      public static function initialize(param1:String) : §6!3§
      {
         var _loc2_:§6!3§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§[!^§ = null;
         var _loc9_:§'D§ = null;
         var _loc3_:Array = param1.split(§5A§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §6!3§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§'!2§);
            _loc5_ = _loc3_[2].split(§'!2§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §[!^§.initialize(_loc6_))
               {
                  _loc2_.§<§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §'D§.initialize(_loc7_))
               {
                  _loc2_.native.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §&!H§() : Boolean
      {
         return this.§+o§;
      }
      
      public function get levelName() : String
      {
         return this.§&X§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§7l§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§7l§;
      }
      
      protected function get §<p§() : int
      {
         return this.§%B§;
      }
      
      public function §@!q§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§+o§)
         {
            this.§<§.push(new §[!^§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §-?§(param1:int) : void
      {
         if(!this.§+o§)
         {
            if(this.native.length > 0)
            {
               if(this.native[this.native.length - 1].step == param1)
               {
                  return;
               }
            }
            this.native.push(new §'D§(param1));
         }
      }
      
      public function play() : void
      {
         this.§+o§ = true;
      }
      
      public function step(param1:§%M§) : void
      {
         var _loc2_:§[!^§ = null;
         var _loc3_:§'D§ = null;
         if(this.§<§.length > this.§>!7§)
         {
            _loc2_ = this.§<§[this.§>!7§];
            if(_loc2_.step == this.§<p§)
            {
               param1.slingshot.§!!P§(_loc2_.x,_loc2_.y,_loc2_.§3!4§,_loc2_.angle);
               ++this.§>!7§;
            }
         }
         if(this.native.length > this.§'v§)
         {
            _loc3_ = this.native[this.§'v§];
            if(_loc3_.step == this.§<p§)
            {
               param1.activatePowerup();
               ++this.§'v§;
            }
         }
         ++this.§%B§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§&X§ + §5A§ + this.§^H§() + §5A§ + this.§#!W§());
      }
      
      private function §^H§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§<§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§<§.length)
         {
            _loc1_ += §'!2§;
            _loc1_ += this.§<§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §#!W§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.native.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.native.length)
         {
            _loc1_ += §'!2§;
            _loc1_ += this.native[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
