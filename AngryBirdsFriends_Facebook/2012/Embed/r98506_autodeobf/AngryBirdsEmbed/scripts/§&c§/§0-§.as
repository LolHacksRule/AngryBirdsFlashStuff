package §&c§
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §0-§
   {
      
      public static const §4$§:String = "max";
      
      public static const §3Z§:String = "average";
       
      
      private var §`!#§:Number;
      
      private var §1!#§:uint;
      
      private var §7!>§:Number;
      
      private var §<!I§:Number;
      
      private var §@B§:Vector.<Number>;
      
      private var §%1§:Vector.<Number>;
      
      private var §-j§:Vector.<Number>;
      
      private var §-!$§:int = 0;
      
      private var §+4§:Function;
      
      public function §0-§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§@B§ = new Vector.<Number>();
         this.§%1§ = new Vector.<Number>();
         this.§-j§ = new Vector.<Number>();
         this.§2N§ = param2;
         this.limitMultiplier = param1;
         this.§+4§ = this.§#J§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§`!#§ = param1;
         this.§7!>§ = b2Settings.b2_linearSleepTolerance * this.§`!#§;
         this.§<!I§ = b2Settings.b2_angularSleepTolerance * this.§`!#§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§`!#§;
      }
      
      public function set §2N§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§1!#§ = param1;
         if(this.§1!#§ < this.§@B§.length)
         {
            _loc2_ = this.§@B§.length - this.§1!#§;
            this.§@B§.splice(0,_loc2_);
            this.§%1§.splice(0,_loc2_);
            this.§-j§.splice(0,_loc2_);
         }
         else if(this.§1!#§ > this.§@B§.length)
         {
            _loc3_ = this.§@B§.length;
            while(_loc3_ < this.§1!#§)
            {
               this.§@B§.push(0);
               this.§%1§.push(0);
               this.§-j§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §2N§() : uint
      {
         return this.§1!#§;
      }
      
      public function §`!F§() : void
      {
         this.§-!$§ = this.§-!$§ + 1 >= this.§@B§.length ? 0 : int(this.§-!$§ + 1);
      }
      
      public function §^K§(param1:b2Body) : void
      {
         this.§@B§[this.§-!$§] = param1.GetLinearVelocity().x;
         this.§%1§[this.§-!$§] = param1.GetLinearVelocity().y;
         this.§-j§[this.§-!$§] = param1.GetAngularVelocity();
      }
      
      public function §%r§() : Boolean
      {
         if(Math.abs(this.§+4§(this.§@B§)) < this.§7!>§ && Math.abs(this.§+4§(this.§%1§)) < this.§7!>§ && Math.abs(this.§+4§(this.§-j§)) < this.§<!I§)
         {
            return false;
         }
         return true;
      }
      
      public function §]!&§(param1:String) : void
      {
         switch(param1)
         {
            case §4$§:
               this.§+4§ = this.§`y§;
               break;
            case §3Z§:
            default:
               this.§+4§ = this.§#J§;
         }
      }
      
      private function §#J§(param1:Vector.<Number>) : Number
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
      
      private function §`y§(param1:Vector.<Number>) : Number
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
