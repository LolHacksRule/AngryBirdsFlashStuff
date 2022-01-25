package §^!$§
{
   import §<!L§.b2Body;
   import §[!$§.b2Settings;
   
   public class §"!%§
   {
      
      public static const §6w§:String = "max";
      
      public static const §,!&§:String = "average";
       
      
      private var §`!P§:Number;
      
      private var §2d§:uint;
      
      private var §^@§:Number;
      
      private var §+!Q§:Number;
      
      private var §,A§:Vector.<Number>;
      
      private var §"z§:Vector.<Number>;
      
      private var §6G§:Vector.<Number>;
      
      private var §1!<§:int = 0;
      
      private var §5!`§:Function;
      
      public function §"!%§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§,A§ = new Vector.<Number>();
         this.§"z§ = new Vector.<Number>();
         this.§6G§ = new Vector.<Number>();
         this.§!!E§ = param2;
         this.limitMultiplier = param1;
         this.§5!`§ = this.§ j§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§`!P§ = param1;
         this.§^@§ = b2Settings.b2_linearSleepTolerance * this.§`!P§;
         this.§+!Q§ = b2Settings.b2_angularSleepTolerance * this.§`!P§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§`!P§;
      }
      
      public function set §!!E§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§2d§ = param1;
         if(this.§2d§ < this.§,A§.length)
         {
            _loc2_ = this.§,A§.length - this.§2d§;
            this.§,A§.splice(0,_loc2_);
            this.§"z§.splice(0,_loc2_);
            this.§6G§.splice(0,_loc2_);
         }
         else if(this.§2d§ > this.§,A§.length)
         {
            _loc3_ = this.§,A§.length;
            while(_loc3_ < this.§2d§)
            {
               this.§,A§.push(0);
               this.§"z§.push(0);
               this.§6G§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §!!E§() : uint
      {
         return this.§2d§;
      }
      
      public function §7!,§() : void
      {
         this.§1!<§ = this.§1!<§ + 1 >= this.§,A§.length ? 0 : int(this.§1!<§ + 1);
      }
      
      public function §93§(param1:b2Body) : void
      {
         this.§,A§[this.§1!<§] = param1.GetLinearVelocity().x;
         this.§"z§[this.§1!<§] = param1.GetLinearVelocity().y;
         this.§6G§[this.§1!<§] = param1.§=!8§();
      }
      
      public function §-L§() : Boolean
      {
         if(Math.abs(this.§5!`§(this.§,A§)) < this.§^@§ && Math.abs(this.§5!`§(this.§"z§)) < this.§^@§ && Math.abs(this.§5!`§(this.§6G§)) < this.§+!Q§)
         {
            return false;
         }
         return true;
      }
      
      public function §8N§(param1:String) : void
      {
         switch(param1)
         {
            case §6w§:
               this.§5!`§ = this.§3!6§;
               break;
            case §,!&§:
            default:
               this.§5!`§ = this.§ j§;
         }
      }
      
      private function § j§(param1:Vector.<Number>) : Number
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
      
      private function §3!6§(param1:Vector.<Number>) : Number
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
