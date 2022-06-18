package §]!D§
{
   import §'!3§.b2Settings;
   import §?0§.b2Body;
   
   public class §'!F§
   {
      
      public static const §3@§:String = "max";
      
      public static const §?4§:String = "average";
       
      
      private var §;§:Number;
      
      private var §^9§:uint;
      
      private var §"!R§:Number;
      
      private var §&!V§:Number;
      
      private var § in§:Vector.<Number>;
      
      private var §@o§:Vector.<Number>;
      
      private var §>R§:Vector.<Number>;
      
      private var §=L§:int = 0;
      
      private var §>@§:Function;
      
      public function §'!F§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§ in§ = new Vector.<Number>();
         this.§@o§ = new Vector.<Number>();
         this.§>R§ = new Vector.<Number>();
         this.§;,§ = param2;
         this.limitMultiplier = param1;
         this.§>@§ = this.§^R§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§;§ = param1;
         this.§"!R§ = b2Settings.b2_linearSleepTolerance * this.§;§;
         this.§&!V§ = b2Settings.b2_angularSleepTolerance * this.§;§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§;§;
      }
      
      public function set §;,§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§^9§ = param1;
         if(this.§^9§ < this.§ in§.length)
         {
            _loc2_ = this.§ in§.length - this.§^9§;
            this.§ in§.splice(0,_loc2_);
            this.§@o§.splice(0,_loc2_);
            this.§>R§.splice(0,_loc2_);
         }
         else if(this.§^9§ > this.§ in§.length)
         {
            _loc3_ = this.§ in§.length;
            while(_loc3_ < this.§^9§)
            {
               this.§ in§.push(0);
               this.§@o§.push(0);
               this.§>R§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §;,§() : uint
      {
         return this.§^9§;
      }
      
      public function §@s§() : void
      {
         this.§=L§ = this.§=L§ + 1 >= this.§ in§.length ? 0 : int(this.§=L§ + 1);
      }
      
      public function §,!$§(param1:b2Body) : void
      {
         this.§ in§[this.§=L§] = param1.GetLinearVelocity().x;
         this.§@o§[this.§=L§] = param1.GetLinearVelocity().y;
         this.§>R§[this.§=L§] = param1.§,!D§();
      }
      
      public function §56§() : Boolean
      {
         if(Math.abs(this.§>@§(this.§ in§)) < this.§"!R§ && Math.abs(this.§>@§(this.§@o§)) < this.§"!R§ && Math.abs(this.§>@§(this.§>R§)) < this.§&!V§)
         {
            return false;
         }
         return true;
      }
      
      public function §2! §(param1:String) : void
      {
         switch(param1)
         {
            case §3@§:
               this.§>@§ = this.§,!^§;
               break;
            case §?4§:
            default:
               this.§>@§ = this.§^R§;
         }
      }
      
      private function §^R§(param1:Vector.<Number>) : Number
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
      
      private function §,!^§(param1:Vector.<Number>) : Number
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
