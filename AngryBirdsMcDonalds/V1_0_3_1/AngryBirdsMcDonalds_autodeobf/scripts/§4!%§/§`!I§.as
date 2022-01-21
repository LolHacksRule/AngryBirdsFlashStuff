package §4!%§
{
   import §3!@§.§ s§;
   import flash.system.Capabilities;
   
   public class §`!I§
   {
      
      public static const §`!!§:String = "@@";
      
      public static const §%1§:String = "@";
       
      
      private var §=!@§:String;
      
      private var §3l§:int;
      
      private var §[A§:Number;
      
      private var §6!S§:Number;
      
      protected var §'$§:Boolean;
      
      protected var §6h§:Vector.<§&,§>;
      
      protected var §0w§:Vector.<§'&§>;
      
      private var §+!A§:int;
      
      private var §]s§:int;
      
      public function §`!I§(param1:String)
      {
         this.§6h§ = new Vector.<§&,§>();
         this.§0w§ = new Vector.<§'&§>();
         super();
         this.§=!@§ = param1;
         this.§[A§ = 1;
      }
      
      public static function initialize(param1:String) : §`!I§
      {
         var _loc2_:§`!I§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§&,§ = null;
         var _loc9_:§'&§ = null;
         var _loc3_:Array = param1.split(§`!!§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §`!I§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§%1§);
            _loc5_ = _loc3_[2].split(§%1§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §&,§.initialize(_loc6_))
               {
                  _loc2_.§6h§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §'&§.initialize(_loc7_))
               {
                  _loc2_.§0w§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §8!N§() : Boolean
      {
         return this.§'$§;
      }
      
      public function get levelName() : String
      {
         return this.§=!@§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§[A§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§[A§;
      }
      
      protected function get §@+§() : int
      {
         return this.§3l§;
      }
      
      public function §89§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§'$§)
         {
            this.§6h§.push(new §&,§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §;!,§(param1:int) : void
      {
         if(!this.§'$§)
         {
            if(this.§0w§.length > 0)
            {
               if(this.§0w§[this.§0w§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§0w§.push(new §'&§(param1));
         }
      }
      
      public function play() : void
      {
         this.§'$§ = true;
      }
      
      public function step(param1:§ s§) : void
      {
         var _loc2_:§&,§ = null;
         var _loc3_:§'&§ = null;
         if(this.§6h§.length > this.§+!A§)
         {
            _loc2_ = this.§6h§[this.§+!A§];
            if(_loc2_.step == this.§@+§)
            {
               param1.slingshot.§-]§(_loc2_.x,_loc2_.y,_loc2_.§=!i§,_loc2_.angle);
               ++this.§+!A§;
            }
         }
         if(this.§0w§.length > this.§]s§)
         {
            _loc3_ = this.§0w§[this.§]s§];
            if(_loc3_.step == this.§@+§)
            {
               param1.activatePowerup();
               ++this.§]s§;
            }
         }
         ++this.§3l§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§=!@§ + §`!!§ + this.§&!m§() + §`!!§ + this.§5w§());
      }
      
      private function §&!m§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§6h§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§6h§.length)
         {
            _loc1_ += §%1§;
            _loc1_ += this.§6h§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §5w§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§0w§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§0w§.length)
         {
            _loc1_ += §%1§;
            _loc1_ += this.§0w§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
