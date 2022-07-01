package §+!o§
{
   import §+S§.b2Body;
   import §=o§.b2Settings;
   
   public class §<P§
   {
      
      public static const §;E§:String = "max";
      
      public static const §0!1§:String = "average";
       
      
      private var §-!y§:Number;
      
      private var §&!?§:uint;
      
      private var §1!H§:Number;
      
      private var §^!b§:Number;
      
      private var §%r§:Vector.<Number>;
      
      private var §=w§:Vector.<Number>;
      
      private var §9?§:Vector.<Number>;
      
      private var §=!v§:int = 0;
      
      private var §&!Q§:Function;
      
      public function §<P§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§%r§ = new Vector.<Number>();
         this.§=w§ = new Vector.<Number>();
         this.§9?§ = new Vector.<Number>();
         this.§?8§ = param2;
         this.limitMultiplier = param1;
         this.§&!Q§ = this.§3" §;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§-!y§ = param1;
         this.§1!H§ = b2Settings.b2_linearSleepTolerance * this.§-!y§;
         this.§^!b§ = b2Settings.b2_angularSleepTolerance * this.§-!y§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§-!y§;
      }
      
      public function set §?8§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§&!?§ = param1;
         if(this.§&!?§ < this.§%r§.length)
         {
            _loc2_ = this.§%r§.length - this.§&!?§;
            this.§%r§.splice(0,_loc2_);
            this.§=w§.splice(0,_loc2_);
            this.§9?§.splice(0,_loc2_);
         }
         else if(this.§&!?§ > this.§%r§.length)
         {
            _loc3_ = this.§%r§.length;
            while(_loc3_ < this.§&!?§)
            {
               this.§%r§.push(0);
               this.§=w§.push(0);
               this.§9?§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §?8§() : uint
      {
         return this.§&!?§;
      }
      
      public function §>Q§() : void
      {
         this.§=!v§ = this.§=!v§ + 1 >= this.§%r§.length ? 0 : int(this.§=!v§ + 1);
      }
      
      public function §,!d§(param1:b2Body) : void
      {
         this.§%r§[this.§=!v§] = param1.GetLinearVelocity().x;
         this.§=w§[this.§=!v§] = param1.GetLinearVelocity().y;
         this.§9?§[this.§=!v§] = param1.§7"<§();
      }
      
      public function §6!'§() : Boolean
      {
         if(Math.abs(this.§&!Q§(this.§%r§)) < this.§1!H§ && Math.abs(this.§&!Q§(this.§=w§)) < this.§1!H§ && Math.abs(this.§&!Q§(this.§9?§)) < this.§^!b§)
         {
            return false;
         }
         return true;
      }
      
      public function §+m§(param1:String) : void
      {
         switch(param1)
         {
            case §;E§:
               this.§&!Q§ = this.§`!$§;
               break;
            case §0!1§:
            default:
               this.§&!Q§ = this.§3" §;
         }
      }
      
      private function §3" §(param1:Vector.<Number>) : Number
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
      
      private function §`!$§(param1:Vector.<Number>) : Number
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
