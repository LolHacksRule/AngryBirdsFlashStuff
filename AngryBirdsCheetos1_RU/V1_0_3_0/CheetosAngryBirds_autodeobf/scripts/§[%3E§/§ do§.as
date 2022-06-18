package §[>§
{
   import §#,§.b2Settings;
   import §4]§.b2Body;
   
   public class § do§
   {
      
      public static const §,e§:String = "max";
      
      public static const §,!C§:String = "average";
       
      
      private var § N§:Number;
      
      private var §2F§:uint;
      
      private var §+!3§:Number;
      
      private var § !;§:Number;
      
      private var §08§:Vector.<Number>;
      
      private var § E§:Vector.<Number>;
      
      private var §8N§:Vector.<Number>;
      
      private var §;[§:int = 0;
      
      private var §@8§:Function;
      
      public function § do§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§08§ = new Vector.<Number>();
         this.§ E§ = new Vector.<Number>();
         this.§8N§ = new Vector.<Number>();
         this.§>!;§ = param2;
         this.limitMultiplier = param1;
         this.§@8§ = this.§=s§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§ N§ = param1;
         this.§+!3§ = b2Settings.b2_linearSleepTolerance * this.§ N§;
         this.§ !;§ = b2Settings.b2_angularSleepTolerance * this.§ N§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§ N§;
      }
      
      public function set §>!;§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§2F§ = param1;
         if(this.§2F§ < this.§08§.length)
         {
            _loc2_ = this.§08§.length - this.§2F§;
            this.§08§.splice(0,_loc2_);
            this.§ E§.splice(0,_loc2_);
            this.§8N§.splice(0,_loc2_);
         }
         else if(this.§2F§ > this.§08§.length)
         {
            _loc3_ = this.§08§.length;
            while(_loc3_ < this.§2F§)
            {
               this.§08§.push(0);
               this.§ E§.push(0);
               this.§8N§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §>!;§() : uint
      {
         return this.§2F§;
      }
      
      public function §%!B§() : void
      {
         this.§;[§ = this.§;[§ + 1 >= this.§08§.length ? 0 : int(this.§;[§ + 1);
      }
      
      public function §7x§(param1:b2Body) : void
      {
         this.§08§[this.§;[§] = param1.GetLinearVelocity().x;
         this.§ E§[this.§;[§] = param1.GetLinearVelocity().y;
         this.§8N§[this.§;[§] = param1.§5W§();
      }
      
      public function §^m§() : Boolean
      {
         if(Math.abs(this.§@8§(this.§08§)) < this.§+!3§ && Math.abs(this.§@8§(this.§ E§)) < this.§+!3§ && Math.abs(this.§@8§(this.§8N§)) < this.§ !;§)
         {
            return false;
         }
         return true;
      }
      
      public function §0i§(param1:String) : void
      {
         switch(param1)
         {
            case §,e§:
               this.§@8§ = this.§7!Q§;
               break;
            case §,!C§:
            default:
               this.§@8§ = this.§=s§;
         }
      }
      
      private function §=s§(param1:Vector.<Number>) : Number
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
      
      private function §7!Q§(param1:Vector.<Number>) : Number
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
