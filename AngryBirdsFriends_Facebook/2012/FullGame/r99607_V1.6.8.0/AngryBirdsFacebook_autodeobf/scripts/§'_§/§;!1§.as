package §'_§
{
   import § !k§.b2Body;
   import §in§.b2Settings;
   
   public class §;!1§
   {
      
      public static const §#U§:String = "max";
      
      public static const §@!x§:String = "average";
       
      
      private var §9"2§:Number;
      
      private var §-!9§:uint;
      
      private var §9"9§:Number;
      
      private var §!"?§:Number;
      
      private var §`!y§:Vector.<Number>;
      
      private var §;S§:Vector.<Number>;
      
      private var §6!k§:Vector.<Number>;
      
      private var §'^§:int = 0;
      
      private var §;!=§:Function;
      
      public function §;!1§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§`!y§ = new Vector.<Number>();
         this.§;S§ = new Vector.<Number>();
         this.§6!k§ = new Vector.<Number>();
         this.§?6§ = param2;
         this.limitMultiplier = param1;
         this.§;!=§ = this.§!U§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§9"2§ = param1;
         this.§9"9§ = b2Settings.b2_linearSleepTolerance * this.§9"2§;
         this.§!"?§ = b2Settings.b2_angularSleepTolerance * this.§9"2§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§9"2§;
      }
      
      public function set §?6§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§-!9§ = param1;
         if(this.§-!9§ < this.§`!y§.length)
         {
            _loc2_ = this.§`!y§.length - this.§-!9§;
            this.§`!y§.splice(0,_loc2_);
            this.§;S§.splice(0,_loc2_);
            this.§6!k§.splice(0,_loc2_);
         }
         else if(this.§-!9§ > this.§`!y§.length)
         {
            _loc3_ = this.§`!y§.length;
            while(_loc3_ < this.§-!9§)
            {
               this.§`!y§.push(0);
               this.§;S§.push(0);
               this.§6!k§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §?6§() : uint
      {
         return this.§-!9§;
      }
      
      public function § g§() : void
      {
         this.§'^§ = this.§'^§ + 1 >= this.§`!y§.length ? 0 : int(this.§'^§ + 1);
      }
      
      public function §3D§(param1:b2Body) : void
      {
         this.§`!y§[this.§'^§] = param1.GetLinearVelocity().x;
         this.§;S§[this.§'^§] = param1.GetLinearVelocity().y;
         this.§6!k§[this.§'^§] = param1.§[R§();
      }
      
      public function §;"&§() : Boolean
      {
         if(Math.abs(this.§;!=§(this.§`!y§)) < this.§9"9§ && Math.abs(this.§;!=§(this.§;S§)) < this.§9"9§ && Math.abs(this.§;!=§(this.§6!k§)) < this.§!"?§)
         {
            return false;
         }
         return true;
      }
      
      public function §+m§(param1:String) : void
      {
         switch(param1)
         {
            case §#U§:
               this.§;!=§ = this.§["7§;
               break;
            case §@!x§:
            default:
               this.§;!=§ = this.§!U§;
         }
      }
      
      private function §!U§(param1:Vector.<Number>) : Number
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
      
      private function §["7§(param1:Vector.<Number>) : Number
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
