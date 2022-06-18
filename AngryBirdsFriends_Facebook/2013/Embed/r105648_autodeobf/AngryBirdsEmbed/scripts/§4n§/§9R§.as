package §4n§
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §9R§
   {
      
      public static const §1!@§:String = "max";
      
      public static const §1r§:String = "average";
       
      
      private var §#Y§:Number;
      
      private var §<C§:uint;
      
      private var §-J§:Number;
      
      private var §true§:Number;
      
      private var §>!#§:Vector.<Number>;
      
      private var §7y§:Vector.<Number>;
      
      private var §1!-§:Vector.<Number>;
      
      private var §5q§:int = 0;
      
      private var §?^§:Function;
      
      public function §9R§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§>!#§ = new Vector.<Number>();
         this.§7y§ = new Vector.<Number>();
         this.§1!-§ = new Vector.<Number>();
         this.§=;§ = param2;
         this.limitMultiplier = param1;
         this.§?^§ = this.§ !4§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§#Y§ = param1;
         this.§-J§ = b2Settings.b2_linearSleepTolerance * this.§#Y§;
         this.§true§ = b2Settings.b2_angularSleepTolerance * this.§#Y§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§#Y§;
      }
      
      public function set §=;§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§<C§ = param1;
         if(this.§<C§ < this.§>!#§.length)
         {
            _loc2_ = this.§>!#§.length - this.§<C§;
            this.§>!#§.splice(0,_loc2_);
            this.§7y§.splice(0,_loc2_);
            this.§1!-§.splice(0,_loc2_);
         }
         else if(this.§<C§ > this.§>!#§.length)
         {
            _loc3_ = this.§>!#§.length;
            while(_loc3_ < this.§<C§)
            {
               this.§>!#§.push(0);
               this.§7y§.push(0);
               this.§1!-§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §=;§() : uint
      {
         return this.§<C§;
      }
      
      public function §!P§() : void
      {
         this.§5q§ = this.§5q§ + 1 >= this.§>!#§.length ? 0 : int(this.§5q§ + 1);
      }
      
      public function §%!K§(param1:b2Body) : void
      {
         this.§>!#§[this.§5q§] = param1.GetLinearVelocity().x;
         this.§7y§[this.§5q§] = param1.GetLinearVelocity().y;
         this.§1!-§[this.§5q§] = param1.GetAngularVelocity();
      }
      
      public function §1Z§() : Boolean
      {
         if(Math.abs(this.§?^§(this.§>!#§)) < this.§-J§ && Math.abs(this.§?^§(this.§7y§)) < this.§-J§ && Math.abs(this.§?^§(this.§1!-§)) < this.§true§)
         {
            return false;
         }
         return true;
      }
      
      public function §9L§(param1:String) : void
      {
         switch(param1)
         {
            case §1!@§:
               this.§?^§ = this.§6j§;
               break;
            case §1r§:
            default:
               this.§?^§ = this.§ !4§;
         }
      }
      
      private function § !4§(param1:Vector.<Number>) : Number
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
      
      private function §6j§(param1:Vector.<Number>) : Number
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
