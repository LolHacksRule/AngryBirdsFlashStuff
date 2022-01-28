package §&!P§
{
   import §"J§.b2Body;
   import §<";§.b2Settings;
   
   public class §6!^§
   {
      
      public static const §&!0§:String = "max";
      
      public static const §`5§:String = "average";
       
      
      private var §`!d§:Number;
      
      private var §]!s§:uint;
      
      private var §33§:Number;
      
      private var §@T§:Number;
      
      private var §#!-§:Vector.<Number>;
      
      private var §6?§:Vector.<Number>;
      
      private var §%!X§:Vector.<Number>;
      
      private var §&"%§:int = 0;
      
      private var §"!y§:Function;
      
      public function §6!^§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§#!-§ = new Vector.<Number>();
         this.§6?§ = new Vector.<Number>();
         this.§%!X§ = new Vector.<Number>();
         this.§8z§ = param2;
         this.limitMultiplier = param1;
         this.§"!y§ = this.§'!4§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§`!d§ = param1;
         this.§33§ = b2Settings.b2_linearSleepTolerance * this.§`!d§;
         this.§@T§ = b2Settings.b2_angularSleepTolerance * this.§`!d§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§`!d§;
      }
      
      public function set §8z§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§]!s§ = param1;
         if(this.§]!s§ < this.§#!-§.length)
         {
            _loc2_ = this.§#!-§.length - this.§]!s§;
            this.§#!-§.splice(0,_loc2_);
            this.§6?§.splice(0,_loc2_);
            this.§%!X§.splice(0,_loc2_);
         }
         else if(this.§]!s§ > this.§#!-§.length)
         {
            _loc3_ = this.§#!-§.length;
            while(_loc3_ < this.§]!s§)
            {
               this.§#!-§.push(0);
               this.§6?§.push(0);
               this.§%!X§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §8z§() : uint
      {
         return this.§]!s§;
      }
      
      public function §=!'§() : void
      {
         this.§&"%§ = this.§&"%§ + 1 >= this.§#!-§.length ? 0 : int(this.§&"%§ + 1);
      }
      
      public function §5F§(param1:b2Body) : void
      {
         this.§#!-§[this.§&"%§] = param1.GetLinearVelocity().x;
         this.§6?§[this.§&"%§] = param1.GetLinearVelocity().y;
         this.§%!X§[this.§&"%§] = param1.§[A§();
      }
      
      public function §7!]§() : Boolean
      {
         if(Math.abs(this.§"!y§(this.§#!-§)) < this.§33§ && Math.abs(this.§"!y§(this.§6?§)) < this.§33§ && Math.abs(this.§"!y§(this.§%!X§)) < this.§@T§)
         {
            return false;
         }
         return true;
      }
      
      public function §%!U§(param1:String) : void
      {
         switch(param1)
         {
            case §&!0§:
               this.§"!y§ = this.§`!`§;
               break;
            case §`5§:
            default:
               this.§"!y§ = this.§'!4§;
         }
      }
      
      private function §'!4§(param1:Vector.<Number>) : Number
      {
         var _loc2_:Number = 0;
         var _loc3_:int = param1.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ += param1[_loc3_];
            _loc3_--;
         }
         return _loc2_ / param1.length;
      }
      
      private function §`!`§(param1:Vector.<Number>) : Number
      {
         var _loc2_:Number = 0;
         var _loc3_:int = param1.length - 1;
         while(_loc3_ >= 0)
         {
            if(param1[_loc3_] > _loc2_)
            {
               _loc2_ = param1[_loc3_];
            }
            _loc3_--;
         }
         return _loc2_;
      }
   }
}
