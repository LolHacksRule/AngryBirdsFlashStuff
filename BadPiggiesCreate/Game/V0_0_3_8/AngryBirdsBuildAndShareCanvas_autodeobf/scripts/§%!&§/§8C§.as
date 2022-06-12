package §%!&§
{
   import §8,§.b2Settings;
   import §?!E§.b2Body;
   
   public class §8C§
   {
      
      public static const §#!e§:String = "max";
      
      public static const §9_§:String = "average";
       
      
      private var §-!@§:Number;
      
      private var §#9§:uint;
      
      private var §4!Y§:Number;
      
      private var §`!X§:Number;
      
      private var §`O§:Vector.<Number>;
      
      private var §"L§:Vector.<Number>;
      
      private var §`!p§:Vector.<Number>;
      
      private var §'$§:int = 0;
      
      private var §2!e§:Function;
      
      public function §8C§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§`O§ = new Vector.<Number>();
         this.§"L§ = new Vector.<Number>();
         this.§`!p§ = new Vector.<Number>();
         this.§@9§ = param2;
         this.limitMultiplier = param1;
         this.§2!e§ = this.§0y§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§-!@§ = param1;
         this.§4!Y§ = b2Settings.b2_linearSleepTolerance * this.§-!@§;
         this.§`!X§ = b2Settings.b2_angularSleepTolerance * this.§-!@§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§-!@§;
      }
      
      public function set §@9§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§#9§ = param1;
         if(this.§#9§ < this.§`O§.length)
         {
            _loc2_ = this.§`O§.length - this.§#9§;
            this.§`O§.splice(0,_loc2_);
            this.§"L§.splice(0,_loc2_);
            this.§`!p§.splice(0,_loc2_);
         }
         else if(this.§#9§ > this.§`O§.length)
         {
            _loc3_ = this.§`O§.length;
            while(_loc3_ < this.§#9§)
            {
               this.§`O§.push(0);
               this.§"L§.push(0);
               this.§`!p§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §@9§() : uint
      {
         return this.§#9§;
      }
      
      public function §!&§() : void
      {
         this.§'$§ = this.§'$§ + 1 >= this.§`O§.length ? 0 : int(this.§'$§ + 1);
      }
      
      public function §9!q§(param1:b2Body) : void
      {
         this.§`O§[this.§'$§] = param1.GetLinearVelocity().x;
         this.§"L§[this.§'$§] = param1.GetLinearVelocity().y;
         this.§`!p§[this.§'$§] = param1.§4Z§();
      }
      
      public function §1H§() : Boolean
      {
         if(Math.abs(this.§2!e§(this.§`O§)) < this.§4!Y§ && Math.abs(this.§2!e§(this.§"L§)) < this.§4!Y§ && Math.abs(this.§2!e§(this.§`!p§)) < this.§`!X§)
         {
            return false;
         }
         return true;
      }
      
      public function §]c§(param1:String) : void
      {
         switch(param1)
         {
            case §#!e§:
               this.§2!e§ = this.§8P§;
               break;
            case §9_§:
            default:
               this.§2!e§ = this.§0y§;
         }
      }
      
      private function §0y§(param1:Vector.<Number>) : Number
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
      
      private function §8P§(param1:Vector.<Number>) : Number
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
