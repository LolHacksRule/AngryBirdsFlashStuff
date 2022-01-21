package §5!G§
{
   import §1B§.b2Body;
   import §9i§.b2Settings;
   
   public class §"§
   {
      
      public static const §#%§:String = "max";
      
      public static const §]!a§:String = "average";
       
      
      private var §"!J§:Number;
      
      private var §8`§:uint;
      
      private var §?@§:Number;
      
      private var §%8§:Number;
      
      private var §`#§:Vector.<Number>;
      
      private var §4&§:Vector.<Number>;
      
      private var §^!<§:Vector.<Number>;
      
      private var § true§:int = 0;
      
      private var §8!o§:Function;
      
      public function §"§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§`#§ = new Vector.<Number>();
         this.§4&§ = new Vector.<Number>();
         this.§^!<§ = new Vector.<Number>();
         this.§2!3§ = param2;
         this.limitMultiplier = param1;
         this.§8!o§ = this.§7k§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§"!J§ = param1;
         this.§?@§ = b2Settings.b2_linearSleepTolerance * this.§"!J§;
         this.§%8§ = b2Settings.b2_angularSleepTolerance * this.§"!J§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§"!J§;
      }
      
      public function set §2!3§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§8`§ = param1;
         if(this.§8`§ < this.§`#§.length)
         {
            _loc2_ = this.§`#§.length - this.§8`§;
            this.§`#§.splice(0,_loc2_);
            this.§4&§.splice(0,_loc2_);
            this.§^!<§.splice(0,_loc2_);
         }
         else if(this.§8`§ > this.§`#§.length)
         {
            _loc3_ = this.§`#§.length;
            while(_loc3_ < this.§8`§)
            {
               this.§`#§.push(0);
               this.§4&§.push(0);
               this.§^!<§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §2!3§() : uint
      {
         return this.§8`§;
      }
      
      public function §2!P§() : void
      {
         this.§ true§ = this.§ true§ + 1 >= this.§`#§.length ? 0 : int(this.§ true§ + 1);
      }
      
      public function §1m§(param1:b2Body) : void
      {
         this.§`#§[this.§ true§] = param1.GetLinearVelocity().x;
         this.§4&§[this.§ true§] = param1.GetLinearVelocity().y;
         this.§^!<§[this.§ true§] = param1.§`!l§();
      }
      
      public function §-y§() : Boolean
      {
         if(Math.abs(this.§8!o§(this.§`#§)) < this.§?@§ && Math.abs(this.§8!o§(this.§4&§)) < this.§?@§ && Math.abs(this.§8!o§(this.§^!<§)) < this.§%8§)
         {
            return false;
         }
         return true;
      }
      
      public function §#!Q§(param1:String) : void
      {
         switch(param1)
         {
            case §#%§:
               this.§8!o§ = this.§`%§;
               break;
            case §]!a§:
            default:
               this.§8!o§ = this.§7k§;
         }
      }
      
      private function §7k§(param1:Vector.<Number>) : Number
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
      
      private function §`%§(param1:Vector.<Number>) : Number
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
