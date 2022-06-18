package §;z§
{
   import §4!&§.b2Body;
   import §8!%§.b2Settings;
   
   public class §#N§
   {
      
      public static const §#! §:String = "max";
      
      public static const §]! §:String = "average";
       
      
      private var §-Y§:Number;
      
      private var §3D§:uint;
      
      private var §<!#§:Number;
      
      private var §&!K§:Number;
      
      private var §=!?§:Vector.<Number>;
      
      private var §;!&§:Vector.<Number>;
      
      private var §<!,§:Vector.<Number>;
      
      private var §7h§:int = 0;
      
      private var §>m§:Function;
      
      public function §#N§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§=!?§ = new Vector.<Number>();
         this.§;!&§ = new Vector.<Number>();
         this.§<!,§ = new Vector.<Number>();
         this.§1s§ = param2;
         this.limitMultiplier = param1;
         this.§>m§ = this.§8!D§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§-Y§ = param1;
         this.§<!#§ = b2Settings.b2_linearSleepTolerance * this.§-Y§;
         this.§&!K§ = b2Settings.b2_angularSleepTolerance * this.§-Y§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§-Y§;
      }
      
      public function set §1s§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§3D§ = param1;
         if(this.§3D§ < this.§=!?§.length)
         {
            _loc2_ = this.§=!?§.length - this.§3D§;
            this.§=!?§.splice(0,_loc2_);
            this.§;!&§.splice(0,_loc2_);
            this.§<!,§.splice(0,_loc2_);
         }
         else if(this.§3D§ > this.§=!?§.length)
         {
            _loc3_ = this.§=!?§.length;
            while(_loc3_ < this.§3D§)
            {
               this.§=!?§.push(0);
               this.§;!&§.push(0);
               this.§<!,§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §1s§() : uint
      {
         return this.§3D§;
      }
      
      public function § 8§() : void
      {
         this.§7h§ = this.§7h§ + 1 >= this.§=!?§.length ? 0 : int(this.§7h§ + 1);
      }
      
      public function § 4§(param1:b2Body) : void
      {
         this.§=!?§[this.§7h§] = param1.GetLinearVelocity().x;
         this.§;!&§[this.§7h§] = param1.GetLinearVelocity().y;
         this.§<!,§[this.§7h§] = param1.§3!S§();
      }
      
      public function §08§() : Boolean
      {
         if(Math.abs(this.§>m§(this.§=!?§)) < this.§<!#§ && Math.abs(this.§>m§(this.§;!&§)) < this.§<!#§ && Math.abs(this.§>m§(this.§<!,§)) < this.§&!K§)
         {
            return false;
         }
         return true;
      }
      
      public function §%!_§(param1:String) : void
      {
         switch(param1)
         {
            case §#! §:
               this.§>m§ = this.§@§;
               break;
            case §]! §:
            default:
               this.§>m§ = this.§8!D§;
         }
      }
      
      private function §8!D§(param1:Vector.<Number>) : Number
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
      
      private function §@§(param1:Vector.<Number>) : Number
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
