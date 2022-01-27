package §`4§
{
   import §"§.§;!E§;
   import flash.system.Capabilities;
   
   public class §>K§
   {
      
      public static const §&"b§:String = "@@";
      
      public static const §&!D§:String = "@";
       
      
      private var §>!,§:String;
      
      private var §=!A§:int;
      
      private var §&"'§:Number;
      
      private var §3!f§:Number;
      
      protected var §!!>§:Boolean;
      
      protected var §9"_§:Vector.<§=?§>;
      
      protected var §%!F§:Vector.<§2"%§>;
      
      private var §;M§:int;
      
      private var §3"u§:int;
      
      public function §>K§(param1:String)
      {
         this.§9"_§ = new Vector.<§=?§>();
         this.§%!F§ = new Vector.<§2"%§>();
         super();
         this.§>!,§ = param1;
         this.§&"'§ = 1;
      }
      
      public static function initialize(param1:String) : §>K§
      {
         var _loc2_:§>K§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§=?§ = null;
         var _loc9_:§2"%§ = null;
         var _loc3_:Array = param1.split(§&"b§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §>K§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§&!D§);
            _loc5_ = _loc3_[2].split(§&!D§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §=?§.initialize(_loc6_))
               {
                  _loc2_.§9"_§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §2"%§.initialize(_loc7_))
               {
                  _loc2_.§%!F§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §["z§() : Boolean
      {
         return this.§!!>§;
      }
      
      public function get §#9§() : String
      {
         return this.§>!,§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§&"'§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§&"'§;
      }
      
      protected function get §&[§() : int
      {
         return this.§=!A§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§!!>§)
         {
            this.§9"_§.push(new §=?§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §!!0§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§!!>§)
         {
            if(this.§%!F§.length > 0)
            {
               if(this.§%!F§[this.§%!F§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§%!F§.push(new §2"%§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§!!>§ = true;
      }
      
      public function step(param1:§;!E§) : void
      {
         var _loc2_:§=?§ = null;
         var _loc3_:§2"%§ = null;
         if(this.§9"_§.length > this.§;M§)
         {
            _loc2_ = this.§9"_§[this.§;M§];
            if(_loc2_.step == this.§&[§)
            {
               param1.slingshot.§]"8§(_loc2_.x,_loc2_.y,_loc2_.§`"C§,_loc2_.angle);
               ++this.§;M§;
            }
         }
         if(this.§%!F§.length > this.§3"u§)
         {
            _loc3_ = this.§%!F§[this.§3"u§];
            if(_loc3_.step == this.§&[§)
            {
               param1.activateSpecialPower(_loc3_.§?n§,_loc3_.§[O§);
               ++this.§3"u§;
            }
         }
         ++this.§=!A§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§>!,§ + §&"b§ + this.§1#,§() + §&"b§ + this.§0#!§());
      }
      
      private function §1#,§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§9"_§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§9"_§.length)
         {
            _loc1_ += §&!D§;
            _loc1_ += this.§9"_§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §0#!§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§%!F§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!F§.length)
         {
            _loc1_ += §&!D§;
            _loc1_ += this.§%!F§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
