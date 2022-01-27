package §0=§
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §[!%§
   {
      
      public static const §1B§:String = "max";
      
      public static const §1M§:String = "average";
       
      
      private var § 7§:Number;
      
      private var §4d§:uint;
      
      private var §3!=§:Number;
      
      private var §,a§:Number;
      
      private var §7!E§:Vector.<Number>;
      
      private var §5X§:Vector.<Number>;
      
      private var §2g§:Vector.<Number>;
      
      private var §7p§:int = 0;
      
      private var §4!@§:Function;
      
      public function §[!%§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§7!E§ = new Vector.<Number>();
         this.§5X§ = new Vector.<Number>();
         this.§2g§ = new Vector.<Number>();
         this.§#!-§ = param2;
         this.limitMultiplier = param1;
         this.§4!@§ = this.§%I§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§ 7§ = param1;
         this.§3!=§ = b2Settings.b2_linearSleepTolerance * this.§ 7§;
         this.§,a§ = b2Settings.b2_angularSleepTolerance * this.§ 7§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§ 7§;
      }
      
      public function set §#!-§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§4d§ = param1;
         if(this.§4d§ < this.§7!E§.length)
         {
            _loc2_ = this.§7!E§.length - this.§4d§;
            this.§7!E§.splice(0,_loc2_);
            this.§5X§.splice(0,_loc2_);
            this.§2g§.splice(0,_loc2_);
         }
         else if(this.§4d§ > this.§7!E§.length)
         {
            _loc3_ = this.§7!E§.length;
            while(_loc3_ < this.§4d§)
            {
               this.§7!E§.push(0);
               this.§5X§.push(0);
               this.§2g§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §#!-§() : uint
      {
         return this.§4d§;
      }
      
      public function §#n§() : void
      {
         this.§7p§ = this.§7p§ + 1 >= this.§7!E§.length ? 0 : int(this.§7p§ + 1);
      }
      
      public function §-C§(param1:b2Body) : void
      {
         this.§7!E§[this.§7p§] = param1.GetLinearVelocity().x;
         this.§5X§[this.§7p§] = param1.GetLinearVelocity().y;
         this.§2g§[this.§7p§] = param1.GetAngularVelocity();
      }
      
      public function §-!O§() : Boolean
      {
         if(Math.abs(this.§4!@§(this.§7!E§)) < this.§3!=§ && Math.abs(this.§4!@§(this.§5X§)) < this.§3!=§ && Math.abs(this.§4!@§(this.§2g§)) < this.§,a§)
         {
            return false;
         }
         return true;
      }
      
      public function §=!9§(param1:String) : void
      {
         switch(param1)
         {
            case §1B§:
               this.§4!@§ = this.§3-§;
               break;
            case §1M§:
            default:
               this.§4!@§ = this.§%I§;
         }
      }
      
      private function §%I§(param1:Vector.<Number>) : Number
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
      
      private function §3-§(param1:Vector.<Number>) : Number
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
