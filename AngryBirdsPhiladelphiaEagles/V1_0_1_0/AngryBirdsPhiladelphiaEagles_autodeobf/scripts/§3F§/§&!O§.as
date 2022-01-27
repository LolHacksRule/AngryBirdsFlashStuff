package §3F§
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §&!O§
   {
      
      public static const §+8§:String = "max";
      
      public static const §`R§:String = "average";
       
      
      private var §]X§:Number;
      
      private var §,!'§:uint;
      
      private var §?#§:Number;
      
      private var § Z§:Number;
      
      private var §29§:Vector.<Number>;
      
      private var § +§:Vector.<Number>;
      
      private var §?K§:Vector.<Number>;
      
      private var §]"§:int = 0;
      
      private var §-!+§:Function;
      
      public function §&!O§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§29§ = new Vector.<Number>();
         this.§ +§ = new Vector.<Number>();
         this.§?K§ = new Vector.<Number>();
         this.§3L§ = param2;
         this.limitMultiplier = param1;
         this.§-!+§ = this.§>!3§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§]X§ = param1;
         this.§?#§ = b2Settings.b2_linearSleepTolerance * this.§]X§;
         this.§ Z§ = b2Settings.b2_angularSleepTolerance * this.§]X§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§]X§;
      }
      
      public function set §3L§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§,!'§ = param1;
         if(this.§,!'§ < this.§29§.length)
         {
            _loc2_ = this.§29§.length - this.§,!'§;
            this.§29§.splice(0,_loc2_);
            this.§ +§.splice(0,_loc2_);
            this.§?K§.splice(0,_loc2_);
         }
         else if(this.§,!'§ > this.§29§.length)
         {
            _loc3_ = this.§29§.length;
            while(_loc3_ < this.§,!'§)
            {
               this.§29§.push(0);
               this.§ +§.push(0);
               this.§?K§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §3L§() : uint
      {
         return this.§,!'§;
      }
      
      public function §6>§() : void
      {
         this.§]"§ = this.§]"§ + 1 >= this.§29§.length ? 0 : int(this.§]"§ + 1);
      }
      
      public function §,n§(param1:b2Body) : void
      {
         this.§29§[this.§]"§] = param1.GetLinearVelocity().x;
         this.§ +§[this.§]"§] = param1.GetLinearVelocity().y;
         this.§?K§[this.§]"§] = param1.GetAngularVelocity();
      }
      
      public function §=2§() : Boolean
      {
         if(Math.abs(this.§-!+§(this.§29§)) < this.§?#§ && Math.abs(this.§-!+§(this.§ +§)) < this.§?#§ && Math.abs(this.§-!+§(this.§?K§)) < this.§ Z§)
         {
            return false;
         }
         return true;
      }
      
      public function §6s§(param1:String) : void
      {
         switch(param1)
         {
            case §+8§:
               this.§-!+§ = this.§2+§;
               break;
            case §`R§:
            default:
               this.§-!+§ = this.§>!3§;
         }
      }
      
      private function §>!3§(param1:Vector.<Number>) : Number
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
      
      private function §2+§(param1:Vector.<Number>) : Number
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
