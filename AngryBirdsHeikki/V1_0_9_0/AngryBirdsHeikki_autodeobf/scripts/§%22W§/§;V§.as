package §"W§
{
   import §+&§.b2Settings;
   import §^!Z§.b2Body;
   
   public class §;V§
   {
      
      public static const §?Y§:String = "max";
      
      public static const §8!M§:String = "average";
       
      
      private var §&!5§:Number;
      
      private var §^!Q§:uint;
      
      private var §%P§:Number;
      
      private var § i§:Number;
      
      private var §!!B§:Vector.<Number>;
      
      private var §7a§:Vector.<Number>;
      
      private var §9[§:Vector.<Number>;
      
      private var §8!<§:int = 0;
      
      private var §2!7§:Function;
      
      public function §;V§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§!!B§ = new Vector.<Number>();
         this.§7a§ = new Vector.<Number>();
         this.§9[§ = new Vector.<Number>();
         this.§&0§ = param2;
         this.limitMultiplier = param1;
         this.§2!7§ = this.§]$§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§&!5§ = param1;
         this.§%P§ = b2Settings.b2_linearSleepTolerance * this.§&!5§;
         this.§ i§ = b2Settings.b2_angularSleepTolerance * this.§&!5§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§&!5§;
      }
      
      public function set §&0§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§^!Q§ = param1;
         if(this.§^!Q§ < this.§!!B§.length)
         {
            _loc2_ = this.§!!B§.length - this.§^!Q§;
            this.§!!B§.splice(0,_loc2_);
            this.§7a§.splice(0,_loc2_);
            this.§9[§.splice(0,_loc2_);
         }
         else if(this.§^!Q§ > this.§!!B§.length)
         {
            _loc3_ = this.§!!B§.length;
            while(_loc3_ < this.§^!Q§)
            {
               this.§!!B§.push(0);
               this.§7a§.push(0);
               this.§9[§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §&0§() : uint
      {
         return this.§^!Q§;
      }
      
      public function §1!8§() : void
      {
         this.§8!<§ = this.§8!<§ + 1 >= this.§!!B§.length ? 0 : int(this.§8!<§ + 1);
      }
      
      public function §'0§(param1:b2Body) : void
      {
         this.§!!B§[this.§8!<§] = param1.GetLinearVelocity().x;
         this.§7a§[this.§8!<§] = param1.GetLinearVelocity().y;
         this.§9[§[this.§8!<§] = param1.§87§();
      }
      
      public function §<j§() : Boolean
      {
         if(Math.abs(this.§2!7§(this.§!!B§)) < this.§%P§ && Math.abs(this.§2!7§(this.§7a§)) < this.§%P§ && Math.abs(this.§2!7§(this.§9[§)) < this.§ i§)
         {
            return false;
         }
         return true;
      }
      
      public function §<#§(param1:String) : void
      {
         switch(param1)
         {
            case §?Y§:
               this.§2!7§ = this.§@[§;
               break;
            case §8!M§:
            default:
               this.§2!7§ = this.§]$§;
         }
      }
      
      private function §]$§(param1:Vector.<Number>) : Number
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
      
      private function §@[§(param1:Vector.<Number>) : Number
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
