package §3>§
{
   import §3R§.§1!R§;
   import flash.system.Capabilities;
   
   public class §8!6§
   {
      
      public static const §=!>§:String = "@@";
      
      public static const §<U§:String = "@";
       
      
      private var §2D§:String;
      
      private var §+D§:int;
      
      private var §3!^§:Number;
      
      private var §+!a§:Number;
      
      protected var § !S§:Boolean;
      
      protected var §"p§:Vector.<§7&§>;
      
      protected var §#!P§:Vector.<§0!J§>;
      
      private var §9!k§:int;
      
      private var § "&§:int;
      
      public function §8!6§(param1:String)
      {
         this.§"p§ = new Vector.<§7&§>();
         this.§#!P§ = new Vector.<§0!J§>();
         super();
         this.§2D§ = param1;
         this.§3!^§ = 1;
      }
      
      public static function initialize(param1:String) : §8!6§
      {
         var _loc2_:§8!6§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§7&§ = null;
         var _loc9_:§0!J§ = null;
         var _loc3_:Array = param1.split(§=!>§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §8!6§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§<U§);
            _loc5_ = _loc3_[2].split(§<U§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §7&§.initialize(_loc6_))
               {
                  _loc2_.§"p§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §0!J§.initialize(_loc7_))
               {
                  _loc2_.§#!P§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §]X§() : Boolean
      {
         return this.§ !S§;
      }
      
      public function get levelName() : String
      {
         return this.§2D§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§3!^§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§3!^§;
      }
      
      protected function get §4s§() : int
      {
         return this.§+D§;
      }
      
      public function §`3§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§ !S§)
         {
            this.§"p§.push(new §7&§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §<!2§(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.§ !S§)
         {
            if(this.§#!P§.length > 0)
            {
               if(this.§#!P§[this.§#!P§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§#!P§.push(new §0!J§(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.§ !S§ = true;
      }
      
      public function step(param1:§1!R§) : void
      {
         var _loc2_:§7&§ = null;
         var _loc3_:§0!J§ = null;
         if(this.§"p§.length > this.§9!k§)
         {
            _loc2_ = this.§"p§[this.§9!k§];
            if(_loc2_.step == this.§4s§)
            {
               param1.slingshot.§<"0§(_loc2_.x,_loc2_.y,_loc2_.§9!Q§,_loc2_.angle);
               ++this.§9!k§;
            }
         }
         if(this.§#!P§.length > this.§ "&§)
         {
            _loc3_ = this.§#!P§[this.§ "&§];
            if(_loc3_.step == this.§4s§)
            {
               param1.activateSpecialPower(_loc3_.§-g§,_loc3_.§&!R§);
               ++this.§ "&§;
            }
         }
         ++this.§+D§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§2D§ + §=!>§ + this.§,!d§() + §=!>§ + this.§5!q§());
      }
      
      private function §,!d§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§"p§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§"p§.length)
         {
            _loc1_ += §<U§;
            _loc1_ += this.§"p§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §5!q§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§#!P§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!P§.length)
         {
            _loc1_ += §<U§;
            _loc1_ += this.§#!P§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
