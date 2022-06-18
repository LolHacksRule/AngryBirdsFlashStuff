package §?!8§
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §4#§
   {
      
      public static const §!a§:String = "max";
      
      public static const §23§:String = "average";
       
      
      private var §7!J§:Number;
      
      private var §8!J§:uint;
      
      private var § t§:Number;
      
      private var §%!A§:Number;
      
      private var §8!=§:Vector.<Number>;
      
      private var §5! §:Vector.<Number>;
      
      private var §4l§:Vector.<Number>;
      
      private var §4-§:int = 0;
      
      private var §<q§:Function;
      
      public function §4#§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§8!=§ = new Vector.<Number>();
         this.§5! § = new Vector.<Number>();
         this.§4l§ = new Vector.<Number>();
         this.§3!@§ = param2;
         this.limitMultiplier = param1;
         this.§<q§ = this.§'C§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§7!J§ = param1;
         this.§ t§ = b2Settings.b2_linearSleepTolerance * this.§7!J§;
         this.§%!A§ = b2Settings.b2_angularSleepTolerance * this.§7!J§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§7!J§;
      }
      
      public function set §3!@§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§8!J§ = param1;
         if(this.§8!J§ < this.§8!=§.length)
         {
            _loc2_ = this.§8!=§.length - this.§8!J§;
            this.§8!=§.splice(0,_loc2_);
            this.§5! §.splice(0,_loc2_);
            this.§4l§.splice(0,_loc2_);
         }
         else if(this.§8!J§ > this.§8!=§.length)
         {
            _loc3_ = this.§8!=§.length;
            while(_loc3_ < this.§8!J§)
            {
               this.§8!=§.push(0);
               this.§5! §.push(0);
               this.§4l§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §3!@§() : uint
      {
         return this.§8!J§;
      }
      
      public function §,!G§() : void
      {
         this.§4-§ = this.§4-§ + 1 >= this.§8!=§.length ? 0 : int(this.§4-§ + 1);
      }
      
      public function §[7§(param1:b2Body) : void
      {
         this.§8!=§[this.§4-§] = param1.GetLinearVelocity().x;
         this.§5! §[this.§4-§] = param1.GetLinearVelocity().y;
         this.§4l§[this.§4-§] = param1.GetAngularVelocity();
      }
      
      public function §%2§() : Boolean
      {
         if(Math.abs(this.§<q§(this.§8!=§)) < this.§ t§ && Math.abs(this.§<q§(this.§5! §)) < this.§ t§ && Math.abs(this.§<q§(this.§4l§)) < this.§%!A§)
         {
            return false;
         }
         return true;
      }
      
      public function §9!5§(param1:String) : void
      {
         switch(param1)
         {
            case §!a§:
               this.§<q§ = this.§1Y§;
               break;
            case §23§:
            default:
               this.§<q§ = this.§'C§;
         }
      }
      
      private function §'C§(param1:Vector.<Number>) : Number
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
      
      private function §1Y§(param1:Vector.<Number>) : Number
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
