package § T§
{
   import §"v§.b2Settings;
   import §&i§.b2Body;
   
   public class § s§
   {
      
      public static const §0X§:String = "max";
      
      public static const §%!@§:String = "average";
       
      
      private var §2]§:Number;
      
      private var §;![§:uint;
      
      private var §1F§:Number;
      
      private var §4!5§:Number;
      
      private var §[E§:Vector.<Number>;
      
      private var §",§:Vector.<Number>;
      
      private var §4-§:Vector.<Number>;
      
      private var §6@§:int = 0;
      
      private var §]t§:Function;
      
      public function § s§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§[E§ = new Vector.<Number>();
         this.§",§ = new Vector.<Number>();
         this.§4-§ = new Vector.<Number>();
         this.§@!4§ = param2;
         this.limitMultiplier = param1;
         this.§]t§ = this.§'!B§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§2]§ = param1;
         this.§1F§ = b2Settings.b2_linearSleepTolerance * this.§2]§;
         this.§4!5§ = b2Settings.b2_angularSleepTolerance * this.§2]§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§2]§;
      }
      
      public function set §@!4§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§;![§ = param1;
         if(this.§;![§ < this.§[E§.length)
         {
            _loc2_ = this.§[E§.length - this.§;![§;
            this.§[E§.splice(0,_loc2_);
            this.§",§.splice(0,_loc2_);
            this.§4-§.splice(0,_loc2_);
         }
         else if(this.§;![§ > this.§[E§.length)
         {
            _loc3_ = this.§[E§.length;
            while(_loc3_ < this.§;![§)
            {
               this.§[E§.push(0);
               this.§",§.push(0);
               this.§4-§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §@!4§() : uint
      {
         return this.§;![§;
      }
      
      public function §@6§() : void
      {
         this.§6@§ = this.§6@§ + 1 >= this.§[E§.length ? 0 : int(this.§6@§ + 1);
      }
      
      public function §]!%§(param1:b2Body) : void
      {
         this.§[E§[this.§6@§] = param1.GetLinearVelocity().x;
         this.§",§[this.§6@§] = param1.GetLinearVelocity().y;
         this.§4-§[this.§6@§] = param1.§^!G§();
      }
      
      public function §=!W§() : Boolean
      {
         if(Math.abs(this.§]t§(this.§[E§)) < this.§1F§ && Math.abs(this.§]t§(this.§",§)) < this.§1F§ && Math.abs(this.§]t§(this.§4-§)) < this.§4!5§)
         {
            return false;
         }
         return true;
      }
      
      public function §1^§(param1:String) : void
      {
         switch(param1)
         {
            case §0X§:
               this.§]t§ = this.§53§;
               break;
            case §%!@§:
            default:
               this.§]t§ = this.§'!B§;
         }
      }
      
      private function §'!B§(param1:Vector.<Number>) : Number
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
      
      private function §53§(param1:Vector.<Number>) : Number
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
