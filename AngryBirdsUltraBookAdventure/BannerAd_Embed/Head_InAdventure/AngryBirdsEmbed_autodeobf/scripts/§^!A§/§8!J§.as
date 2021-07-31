package §^!A§
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §8!J§
   {
      
      public static const §9!=§:String = "max";
      
      public static const §^e§:String = "average";
       
      
      private var §>L§:Number;
      
      private var §2P§:uint;
      
      private var §78§:Number;
      
      private var §94§:Number;
      
      private var §6!%§:Vector.<Number>;
      
      private var §#!8§:Vector.<Number>;
      
      private var §[x§:Vector.<Number>;
      
      private var §=s§:int = 0;
      
      private var §!!$§:Function;
      
      public function §8!J§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§6!%§ = new Vector.<Number>();
         this.§#!8§ = new Vector.<Number>();
         this.§[x§ = new Vector.<Number>();
         this.§`t§ = param2;
         this.limitMultiplier = param1;
         this.§!!$§ = this.§2B§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§>L§ = param1;
         this.§78§ = b2Settings.b2_linearSleepTolerance * this.§>L§;
         this.§94§ = b2Settings.b2_angularSleepTolerance * this.§>L§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§>L§;
      }
      
      public function set §`t§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§2P§ = param1;
         if(this.§2P§ < this.§6!%§.length)
         {
            _loc2_ = this.§6!%§.length - this.§2P§;
            this.§6!%§.splice(0,_loc2_);
            this.§#!8§.splice(0,_loc2_);
            this.§[x§.splice(0,_loc2_);
         }
         else if(this.§2P§ > this.§6!%§.length)
         {
            _loc3_ = this.§6!%§.length;
            while(_loc3_ < this.§2P§)
            {
               this.§6!%§.push(0);
               this.§#!8§.push(0);
               this.§[x§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §`t§() : uint
      {
         return this.§2P§;
      }
      
      public function §^x§() : void
      {
         this.§=s§ = this.§=s§ + 1 >= this.§6!%§.length ? 0 : int(this.§=s§ + 1);
      }
      
      public function get(param1:b2Body) : void
      {
         this.§6!%§[this.§=s§] = param1.GetLinearVelocity().x;
         this.§#!8§[this.§=s§] = param1.GetLinearVelocity().y;
         this.§[x§[this.§=s§] = param1.GetAngularVelocity();
      }
      
      public function §30§() : Boolean
      {
         if(Math.abs(this.§!!$§(this.§6!%§)) < this.§78§ && Math.abs(this.§!!$§(this.§#!8§)) < this.§78§ && Math.abs(this.§!!$§(this.§[x§)) < this.§94§)
         {
            return false;
         }
         return true;
      }
      
      public function §#!-§(param1:String) : void
      {
         switch(param1)
         {
            case §9!=§:
               this.§!!$§ = this.§,!C§;
               break;
            case §^e§:
            default:
               this.§!!$§ = this.§2B§;
         }
      }
      
      private function §2B§(param1:Vector.<Number>) : Number
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
      
      private function §,!C§(param1:Vector.<Number>) : Number
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
