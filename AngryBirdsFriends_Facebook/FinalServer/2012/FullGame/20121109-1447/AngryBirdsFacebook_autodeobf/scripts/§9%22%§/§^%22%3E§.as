package §9"%§
{
   import §4!!§.b2Settings;
   import §48§.b2Body;
   
   public class §^">§
   {
      
      public static const §,!'§:String = "max";
      
      public static const §4f§:String = "average";
       
      
      private var §?+§:Number;
      
      private var §!"8§:uint;
      
      private var §6_§:Number;
      
      private var §<![§:Number;
      
      private var §>!U§:Vector.<Number>;
      
      private var §7!K§:Vector.<Number>;
      
      private var §%y§:Vector.<Number>;
      
      private var §&E§:int = 0;
      
      private var §8u§:Function;
      
      public function §^">§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§>!U§ = new Vector.<Number>();
         this.§7!K§ = new Vector.<Number>();
         this.§%y§ = new Vector.<Number>();
         this.§@!U§ = param2;
         this.limitMultiplier = param1;
         this.§8u§ = this.§0"D§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§?+§ = param1;
         this.§6_§ = b2Settings.b2_linearSleepTolerance * this.§?+§;
         this.§<![§ = b2Settings.b2_angularSleepTolerance * this.§?+§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§?+§;
      }
      
      public function set §@!U§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§!"8§ = param1;
         if(this.§!"8§ < this.§>!U§.length)
         {
            _loc2_ = this.§>!U§.length - this.§!"8§;
            this.§>!U§.splice(0,_loc2_);
            this.§7!K§.splice(0,_loc2_);
            this.§%y§.splice(0,_loc2_);
         }
         else if(this.§!"8§ > this.§>!U§.length)
         {
            _loc3_ = this.§>!U§.length;
            while(_loc3_ < this.§!"8§)
            {
               this.§>!U§.push(0);
               this.§7!K§.push(0);
               this.§%y§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §@!U§() : uint
      {
         return this.§!"8§;
      }
      
      public function §'§() : void
      {
         this.§&E§ = this.§&E§ + 1 >= this.§>!U§.length ? 0 : int(this.§&E§ + 1);
      }
      
      public function §^"#§(param1:b2Body) : void
      {
         this.§>!U§[this.§&E§] = param1.GetLinearVelocity().x;
         this.§7!K§[this.§&E§] = param1.GetLinearVelocity().y;
         this.§%y§[this.§&E§] = param1.§0!I§();
      }
      
      public function §]!o§() : Boolean
      {
         if(Math.abs(this.§8u§(this.§>!U§)) < this.§6_§ && Math.abs(this.§8u§(this.§7!K§)) < this.§6_§ && Math.abs(this.§8u§(this.§%y§)) < this.§<![§)
         {
            return false;
         }
         return true;
      }
      
      public function §<!^§(param1:String) : void
      {
         switch(param1)
         {
            case §,!'§:
               this.§8u§ = this.§5!w§;
               break;
            case §4f§:
            default:
               this.§8u§ = this.§0"D§;
         }
      }
      
      private function §0"D§(param1:Vector.<Number>) : Number
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
      
      private function §5!w§(param1:Vector.<Number>) : Number
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
