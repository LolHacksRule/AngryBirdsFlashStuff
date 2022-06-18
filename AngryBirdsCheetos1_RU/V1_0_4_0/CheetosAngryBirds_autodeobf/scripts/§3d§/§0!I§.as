package §3d§
{
   import §4! §.b2Settings;
   import §9t§.b2Body;
   
   public class §0!I§
   {
      
      public static const §>!'§:String = "max";
      
      public static const §9l§:String = "average";
       
      
      private var §9L§:Number;
      
      private var §7!?§:uint;
      
      private var §@c§:Number;
      
      private var §[g§:Number;
      
      private var §"!"§:Vector.<Number>;
      
      private var §7L§:Vector.<Number>;
      
      private var §>!E§:Vector.<Number>;
      
      private var §4R§:int = 0;
      
      private var §%k§:Function;
      
      public function §0!I§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§"!"§ = new Vector.<Number>();
         this.§7L§ = new Vector.<Number>();
         this.§>!E§ = new Vector.<Number>();
         this.§7o§ = param2;
         this.limitMultiplier = param1;
         this.§%k§ = this.§]9§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§9L§ = param1;
         this.§@c§ = b2Settings.b2_linearSleepTolerance * this.§9L§;
         this.§[g§ = b2Settings.b2_angularSleepTolerance * this.§9L§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§9L§;
      }
      
      public function set §7o§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§7!?§ = param1;
         if(this.§7!?§ < this.§"!"§.length)
         {
            _loc2_ = this.§"!"§.length - this.§7!?§;
            this.§"!"§.splice(0,_loc2_);
            this.§7L§.splice(0,_loc2_);
            this.§>!E§.splice(0,_loc2_);
         }
         else if(this.§7!?§ > this.§"!"§.length)
         {
            _loc3_ = this.§"!"§.length;
            while(_loc3_ < this.§7!?§)
            {
               this.§"!"§.push(0);
               this.§7L§.push(0);
               this.§>!E§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §7o§() : uint
      {
         return this.§7!?§;
      }
      
      public function § v§() : void
      {
         this.§4R§ = this.§4R§ + 1 >= this.§"!"§.length ? 0 : int(this.§4R§ + 1);
      }
      
      public function §<S§(param1:b2Body) : void
      {
         this.§"!"§[this.§4R§] = param1.GetLinearVelocity().x;
         this.§7L§[this.§4R§] = param1.GetLinearVelocity().y;
         this.§>!E§[this.§4R§] = param1.§]@§();
      }
      
      public function §[[§() : Boolean
      {
         if(Math.abs(this.§%k§(this.§"!"§)) < this.§@c§ && Math.abs(this.§%k§(this.§7L§)) < this.§@c§ && Math.abs(this.§%k§(this.§>!E§)) < this.§[g§)
         {
            return false;
         }
         return true;
      }
      
      public function §<!3§(param1:String) : void
      {
         switch(param1)
         {
            case §>!'§:
               this.§%k§ = this.§3s§;
               break;
            case §9l§:
            default:
               this.§%k§ = this.§]9§;
         }
      }
      
      private function §]9§(param1:Vector.<Number>) : Number
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
      
      private function §3s§(param1:Vector.<Number>) : Number
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
