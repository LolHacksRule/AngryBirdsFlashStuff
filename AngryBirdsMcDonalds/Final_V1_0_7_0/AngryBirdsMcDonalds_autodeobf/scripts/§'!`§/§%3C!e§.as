package §'!`§
{
   import §-0§.b2Body;
   import §@g§.b2Settings;
   
   public class §<!e§
   {
      
      public static const §^T§:String = "max";
      
      public static const §@!L§:String = "average";
       
      
      private var § !V§:Number;
      
      private var §9!]§:uint;
      
      private var §<,§:Number;
      
      private var §<!?§:Number;
      
      private var §8l§:Vector.<Number>;
      
      private var §4u§:Vector.<Number>;
      
      private var §4R§:Vector.<Number>;
      
      private var §!!C§:int = 0;
      
      private var §9!P§:Function;
      
      public function §<!e§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§8l§ = new Vector.<Number>();
         this.§4u§ = new Vector.<Number>();
         this.§4R§ = new Vector.<Number>();
         this.§4+§ = param2;
         this.limitMultiplier = param1;
         this.§9!P§ = this.§^E§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§ !V§ = param1;
         this.§<,§ = b2Settings.b2_linearSleepTolerance * this.§ !V§;
         this.§<!?§ = b2Settings.b2_angularSleepTolerance * this.§ !V§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§ !V§;
      }
      
      public function set §4+§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§9!]§ = param1;
         if(this.§9!]§ < this.§8l§.length)
         {
            _loc2_ = this.§8l§.length - this.§9!]§;
            this.§8l§.splice(0,_loc2_);
            this.§4u§.splice(0,_loc2_);
            this.§4R§.splice(0,_loc2_);
         }
         else if(this.§9!]§ > this.§8l§.length)
         {
            _loc3_ = this.§8l§.length;
            while(_loc3_ < this.§9!]§)
            {
               this.§8l§.push(0);
               this.§4u§.push(0);
               this.§4R§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §4+§() : uint
      {
         return this.§9!]§;
      }
      
      public function §#9§() : void
      {
         this.§!!C§ = this.§!!C§ + 1 >= this.§8l§.length ? 0 : int(this.§!!C§ + 1);
      }
      
      public function §2f§(param1:b2Body) : void
      {
         this.§8l§[this.§!!C§] = param1.GetLinearVelocity().x;
         this.§4u§[this.§!!C§] = param1.GetLinearVelocity().y;
         this.§4R§[this.§!!C§] = param1.§^!&§();
      }
      
      public function §[!2§() : Boolean
      {
         if(Math.abs(this.§9!P§(this.§8l§)) < this.§<,§ && Math.abs(this.§9!P§(this.§4u§)) < this.§<,§ && Math.abs(this.§9!P§(this.§4R§)) < this.§<!?§)
         {
            return false;
         }
         return true;
      }
      
      public function §1v§(param1:String) : void
      {
         switch(param1)
         {
            case §^T§:
               this.§9!P§ = this.§@!Z§;
               break;
            case §@!L§:
            default:
               this.§9!P§ = this.§^E§;
         }
      }
      
      private function §^E§(param1:Vector.<Number>) : Number
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
      
      private function §@!Z§(param1:Vector.<Number>) : Number
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
