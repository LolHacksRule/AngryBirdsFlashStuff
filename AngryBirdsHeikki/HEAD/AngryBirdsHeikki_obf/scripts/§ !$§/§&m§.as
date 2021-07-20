package § !$§
{
   import §+d§.b2Body;
   import §6%§.b2Settings;
   
   public class §&m§
   {
      
      public static const §`!<§:String = "max";
      
      public static const §&I§:String = "average";
       
      
      private var §1!h§:Number;
      
      private var §^2§:uint;
      
      private var §,S§:Number;
      
      private var §+j§:Number;
      
      private var §<k§:Vector.<Number>;
      
      private var §,T§:Vector.<Number>;
      
      private var §[d§:Vector.<Number>;
      
      private var §]!P§:int = 0;
      
      private var §6F§:Function;
      
      public function §&m§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§<k§ = new Vector.<Number>();
         this.§,T§ = new Vector.<Number>();
         this.§[d§ = new Vector.<Number>();
         this.§@! § = param2;
         this.limitMultiplier = param1;
         this.§6F§ = this.§%!A§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§1!h§ = param1;
         this.§,S§ = b2Settings.b2_linearSleepTolerance * this.§1!h§;
         this.§+j§ = b2Settings.b2_angularSleepTolerance * this.§1!h§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§1!h§;
      }
      
      public function set §@! §(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§^2§ = param1;
         if(this.§^2§ < this.§<k§.length)
         {
            _loc2_ = this.§<k§.length - this.§^2§;
            this.§<k§.splice(0,_loc2_);
            this.§,T§.splice(0,_loc2_);
            this.§[d§.splice(0,_loc2_);
         }
         else if(this.§^2§ > this.§<k§.length)
         {
            _loc3_ = this.§<k§.length;
            while(_loc3_ < this.§^2§)
            {
               this.§<k§.push(0);
               this.§,T§.push(0);
               this.§[d§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §@! §() : uint
      {
         return this.§^2§;
      }
      
      public function §-p§() : void
      {
         this.§]!P§ = this.§]!P§ + 1 >= this.§<k§.length ? 0 : int(this.§]!P§ + 1);
      }
      
      public function §2]§(param1:b2Body) : void
      {
         this.§<k§[this.§]!P§] = param1.GetLinearVelocity().x;
         this.§,T§[this.§]!P§] = param1.GetLinearVelocity().y;
         this.§[d§[this.§]!P§] = param1.§&2§();
      }
      
      public function §2!%§() : Boolean
      {
         if(Math.abs(this.§6F§(this.§<k§)) < this.§,S§ && Math.abs(this.§6F§(this.§,T§)) < this.§,S§ && Math.abs(this.§6F§(this.§[d§)) < this.§+j§)
         {
            return false;
         }
         return true;
      }
      
      public function §]c§(param1:String) : void
      {
         switch(param1)
         {
            case §`!<§:
               this.§6F§ = this.§ !X§;
               break;
            case §&I§:
            default:
               this.§6F§ = this.§%!A§;
         }
      }
      
      private function §%!A§(param1:Vector.<Number>) : Number
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
      
      private function § !X§(param1:Vector.<Number>) : Number
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
