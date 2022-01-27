package §8x§
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §!h§
   {
      
      public static const §0b§:String = "max";
      
      public static const §!!I§:String = "average";
       
      
      private var §;_§:Number;
      
      private var §4]§:uint;
      
      private var §'&§:Number;
      
      private var §'!$§:Number;
      
      private var §for §:Vector.<Number>;
      
      private var §]5§:Vector.<Number>;
      
      private var §0!P§:Vector.<Number>;
      
      private var §6!B§:int = 0;
      
      private var §^U§:Function;
      
      public function §!h§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§for § = new Vector.<Number>();
         this.§]5§ = new Vector.<Number>();
         this.§0!P§ = new Vector.<Number>();
         this.§6A§ = param2;
         this.limitMultiplier = param1;
         this.§^U§ = this.§-W§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§;_§ = param1;
         this.§'&§ = b2Settings.b2_linearSleepTolerance * this.§;_§;
         this.§'!$§ = b2Settings.b2_angularSleepTolerance * this.§;_§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§;_§;
      }
      
      public function set §6A§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§4]§ = param1;
         if(this.§4]§ < this.§for §.length)
         {
            _loc2_ = this.§for §.length - this.§4]§;
            this.§for §.splice(0,_loc2_);
            this.§]5§.splice(0,_loc2_);
            this.§0!P§.splice(0,_loc2_);
         }
         else if(this.§4]§ > this.§for §.length)
         {
            _loc3_ = this.§for §.length;
            while(_loc3_ < this.§4]§)
            {
               this.§for §.push(0);
               this.§]5§.push(0);
               this.§0!P§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §6A§() : uint
      {
         return this.§4]§;
      }
      
      public function §`'§() : void
      {
         this.§6!B§ = this.§6!B§ + 1 >= this.§for §.length ? 0 : int(this.§6!B§ + 1);
      }
      
      public function §'6§(param1:b2Body) : void
      {
         this.§for §[this.§6!B§] = param1.GetLinearVelocity().x;
         this.§]5§[this.§6!B§] = param1.GetLinearVelocity().y;
         this.§0!P§[this.§6!B§] = param1.GetAngularVelocity();
      }
      
      public function §<T§() : Boolean
      {
         if(Math.abs(this.§^U§(this.§for §)) < this.§'&§ && Math.abs(this.§^U§(this.§]5§)) < this.§'&§ && Math.abs(this.§^U§(this.§0!P§)) < this.§'!$§)
         {
            return false;
         }
         return true;
      }
      
      public function §4!M§(param1:String) : void
      {
         switch(param1)
         {
            case §0b§:
               this.§^U§ = this.§3L§;
               break;
            case §!!I§:
            default:
               this.§^U§ = this.§-W§;
         }
      }
      
      private function §-W§(param1:Vector.<Number>) : Number
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
      
      private function §3L§(param1:Vector.<Number>) : Number
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
