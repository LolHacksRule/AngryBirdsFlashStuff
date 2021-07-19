package §-!&§
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §^U§
   {
      
      public static const §`!7§:String = "max";
      
      public static const §&3§:String = "average";
       
      
      private var §<h§:Number;
      
      private var §8!1§:uint;
      
      private var §,!>§:Number;
      
      private var §?X§:Number;
      
      private var §2`§:Vector.<Number>;
      
      private var §]"§:Vector.<Number>;
      
      private var §45§:Vector.<Number>;
      
      private var §2j§:int = 0;
      
      private var §#!4§:Function;
      
      public function §^U§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§2`§ = new Vector.<Number>();
         this.§]"§ = new Vector.<Number>();
         this.§45§ = new Vector.<Number>();
         this.§7!G§ = param2;
         this.limitMultiplier = param1;
         this.§#!4§ = this.§]@§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§<h§ = param1;
         this.§,!>§ = b2Settings.b2_linearSleepTolerance * this.§<h§;
         this.§?X§ = b2Settings.b2_angularSleepTolerance * this.§<h§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§<h§;
      }
      
      public function set §7!G§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§8!1§ = param1;
         if(this.§8!1§ < this.§2`§.length)
         {
            _loc2_ = this.§2`§.length - this.§8!1§;
            this.§2`§.splice(0,_loc2_);
            this.§]"§.splice(0,_loc2_);
            this.§45§.splice(0,_loc2_);
         }
         else if(this.§8!1§ > this.§2`§.length)
         {
            _loc3_ = this.§2`§.length;
            while(_loc3_ < this.§8!1§)
            {
               this.§2`§.push(0);
               this.§]"§.push(0);
               this.§45§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §7!G§() : uint
      {
         return this.§8!1§;
      }
      
      public function §9!G§() : void
      {
         this.§2j§ = this.§2j§ + 1 >= this.§2`§.length ? 0 : int(this.§2j§ + 1);
      }
      
      public function §-5§(param1:b2Body) : void
      {
         this.§2`§[this.§2j§] = param1.GetLinearVelocity().x;
         this.§]"§[this.§2j§] = param1.GetLinearVelocity().y;
         this.§45§[this.§2j§] = param1.GetAngularVelocity();
      }
      
      public function §0n§() : Boolean
      {
         if(Math.abs(this.§#!4§(this.§2`§)) < this.§,!>§ && Math.abs(this.§#!4§(this.§]"§)) < this.§,!>§ && Math.abs(this.§#!4§(this.§45§)) < this.§?X§)
         {
            return false;
         }
         return true;
      }
      
      public function §,n§(param1:String) : void
      {
         switch(param1)
         {
            case §`!7§:
               this.§#!4§ = this.§=q§;
               break;
            case §&3§:
            default:
               this.§#!4§ = this.§]@§;
         }
      }
      
      private function §]@§(param1:Vector.<Number>) : Number
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
      
      private function §=q§(param1:Vector.<Number>) : Number
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
