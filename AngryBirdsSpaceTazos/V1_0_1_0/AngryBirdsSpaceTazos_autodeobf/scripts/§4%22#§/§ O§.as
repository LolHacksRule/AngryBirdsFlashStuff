package §4"#§
{
   import §'4§.§^g§;
   import flash.system.Capabilities;
   
   public class § O§
   {
      
      public static const §"1§:String = "@@";
      
      public static const §>e§:String = "@";
       
      
      private var §'!D§:String;
      
      private var §"!M§:int;
      
      private var §^§:Number;
      
      private var §;"!§:Number;
      
      protected var §"! §:Boolean;
      
      protected var §9!§:Vector.<§&@§>;
      
      protected var §6?§:Vector.<§`,§>;
      
      private var §-"3§:int;
      
      private var §4"D§:int;
      
      public function § O§(param1:String)
      {
         this.§9!§ = new Vector.<§&@§>();
         this.§6?§ = new Vector.<§`,§>();
         super();
         this.§'!D§ = param1;
         this.§^§ = 1;
      }
      
      public static function initialize(param1:String) : § O§
      {
         var _loc2_:§ O§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§&@§ = null;
         var _loc9_:§`,§ = null;
         var _loc3_:Array = param1.split(§"1§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new § O§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§>e§);
            _loc5_ = _loc3_[2].split(§>e§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §&@§.initialize(_loc6_))
               {
                  _loc2_.§9!§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §`,§.initialize(_loc7_))
               {
                  _loc2_.§6?§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §9"%§() : Boolean
      {
         return this.§"! §;
      }
      
      public function get levelName() : String
      {
         return this.§'!D§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§^§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§^§;
      }
      
      protected function get §`!8§() : int
      {
         return this.§"!M§;
      }
      
      public function §3!<§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§"! §)
         {
            this.§9!§.push(new §&@§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §;L§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§"! §)
         {
            if(this.§6?§.length > 0)
            {
               if(this.§6?§[this.§6?§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§6?§.push(new §`,§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§"! § = true;
      }
      
      public function step(param1:§^g§) : void
      {
         var _loc2_:§&@§ = null;
         var _loc3_:§`,§ = null;
         if(this.§9!§.length > this.§-"3§)
         {
            _loc2_ = this.§9!§[this.§-"3§];
            if(_loc2_.step == this.§`!8§)
            {
               param1.slingshot.§'!n§(_loc2_.x,_loc2_.y,_loc2_.§#!x§,_loc2_.angle);
               ++this.§-"3§;
            }
         }
         if(this.§6?§.length > this.§4"D§)
         {
            _loc3_ = this.§6?§[this.§4"D§];
            if(_loc3_.step == this.§`!8§)
            {
               param1.activateSpecialPower(_loc3_.§&[§,_loc3_.§-P§);
               ++this.§4"D§;
            }
         }
         ++this.§"!M§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§'!D§ + §"1§ + this.§>!z§() + §"1§ + this.§-5§());
      }
      
      private function §>!z§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§9!§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!§.length)
         {
            _loc1_ += §>e§;
            _loc1_ += this.§9!§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §-5§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§6?§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§6?§.length)
         {
            _loc1_ += §>e§;
            _loc1_ += this.§6?§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
