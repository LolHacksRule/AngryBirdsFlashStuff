package §-!E§
{
   import §]A§.§[d§;
   import flash.system.Capabilities;
   
   public class §9"-§
   {
      
      public static const §#!O§:String = "@@";
      
      public static const §;^§:String = "@";
       
      
      private var §7J§:String;
      
      private var §9"&§:int;
      
      private var §!#§:Number;
      
      private var §#"'§:Number;
      
      protected var §^Y§:Boolean;
      
      protected var §07§:Vector.<§]!!§>;
      
      protected var §;1§:Vector.<§+I§>;
      
      private var §>p§:int;
      
      private var §&?§:int;
      
      public function §9"-§(param1:String)
      {
         this.§07§ = new Vector.<§]!!§>();
         this.§;1§ = new Vector.<§+I§>();
         super();
         this.§7J§ = param1;
         this.§!#§ = 1;
      }
      
      public static function initialize(param1:String) : §9"-§
      {
         var _loc2_:§9"-§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§]!!§ = null;
         var _loc9_:§+I§ = null;
         var _loc3_:Array = param1.split(§#!O§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §9"-§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§;^§);
            _loc5_ = _loc3_[2].split(§;^§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §]!!§.initialize(_loc6_))
               {
                  _loc2_.§07§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §+I§.initialize(_loc7_))
               {
                  _loc2_.§;1§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §>K§() : Boolean
      {
         return this.§^Y§;
      }
      
      public function get levelName() : String
      {
         return this.§7J§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§!#§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§!#§;
      }
      
      protected function get §7[§() : int
      {
         return this.§9"&§;
      }
      
      public function §`!<§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§^Y§)
         {
            this.§07§.push(new §]!!§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §+!W§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§^Y§)
         {
            if(this.§;1§.length > 0)
            {
               if(this.§;1§[this.§;1§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§;1§.push(new §+I§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§^Y§ = true;
      }
      
      public function step(param1:§[d§) : void
      {
         var _loc2_:§]!!§ = null;
         var _loc3_:§+I§ = null;
         if(this.§07§.length > this.§>p§)
         {
            _loc2_ = this.§07§[this.§>p§];
            if(_loc2_.step == this.§7[§)
            {
               param1.slingshot.§]!B§(_loc2_.x,_loc2_.y,_loc2_.§&!q§,_loc2_.angle);
               ++this.§>p§;
            }
         }
         if(this.§;1§.length > this.§&?§)
         {
            _loc3_ = this.§;1§[this.§&?§];
            if(_loc3_.step == this.§7[§)
            {
               param1.activateSpecialPower(_loc3_.§6%§,_loc3_.§!!z§);
               ++this.§&?§;
            }
         }
         ++this.§9"&§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§7J§ + §#!O§ + this.§>!l§() + §#!O§ + this.§`!§());
      }
      
      private function §>!l§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§07§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§07§.length)
         {
            _loc1_ += §;^§;
            _loc1_ += this.§07§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §`!§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§;1§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§;1§.length)
         {
            _loc1_ += §;^§;
            _loc1_ += this.§;1§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
