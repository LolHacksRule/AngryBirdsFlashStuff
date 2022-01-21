package §%`§
{
   import §3!g§.b2Body;
   import §=!X§.b2Settings;
   
   public class §4!B§
   {
      
      public static const §=@§:String = "max";
      
      public static const §`v§:String = "average";
       
      
      private var §3v§:Number;
      
      private var §3_§:uint;
      
      private var §0§:Number;
      
      private var §%>§:Number;
      
      private var §`!m§:Vector.<Number>;
      
      private var §4v§:Vector.<Number>;
      
      private var §86§:Vector.<Number>;
      
      private var §?3§:int = 0;
      
      private var §!!G§:Function;
      
      public function §4!B§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§`!m§ = new Vector.<Number>();
         this.§4v§ = new Vector.<Number>();
         this.§86§ = new Vector.<Number>();
         this.§!!0§ = param2;
         this.limitMultiplier = param1;
         this.§!!G§ = this.§+h§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§3v§ = param1;
         this.§0§ = b2Settings.b2_linearSleepTolerance * this.§3v§;
         this.§%>§ = b2Settings.b2_angularSleepTolerance * this.§3v§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§3v§;
      }
      
      public function set §!!0§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§3_§ = param1;
         if(this.§3_§ < this.§`!m§.length)
         {
            _loc2_ = this.§`!m§.length - this.§3_§;
            this.§`!m§.splice(0,_loc2_);
            this.§4v§.splice(0,_loc2_);
            this.§86§.splice(0,_loc2_);
         }
         else if(this.§3_§ > this.§`!m§.length)
         {
            _loc3_ = this.§`!m§.length;
            while(_loc3_ < this.§3_§)
            {
               this.§`!m§.push(0);
               this.§4v§.push(0);
               this.§86§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §!!0§() : uint
      {
         return this.§3_§;
      }
      
      public function §-T§() : void
      {
         this.§?3§ = this.§?3§ + 1 >= this.§`!m§.length ? 0 : int(this.§?3§ + 1);
      }
      
      public function §56§(param1:b2Body) : void
      {
         this.§`!m§[this.§?3§] = param1.GetLinearVelocity().x;
         this.§4v§[this.§?3§] = param1.GetLinearVelocity().y;
         this.§86§[this.§?3§] = param1.§"!4§();
      }
      
      public function §8X§() : Boolean
      {
         if(Math.abs(this.§!!G§(this.§`!m§)) < this.§0§ && Math.abs(this.§!!G§(this.§4v§)) < this.§0§ && Math.abs(this.§!!G§(this.§86§)) < this.§%>§)
         {
            return false;
         }
         return true;
      }
      
      public function §`+§(param1:String) : void
      {
         switch(param1)
         {
            case §=@§:
               this.§!!G§ = this.§84§;
               break;
            case §`v§:
            default:
               this.§!!G§ = this.§+h§;
         }
      }
      
      private function §+h§(param1:Vector.<Number>) : Number
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
      
      private function §84§(param1:Vector.<Number>) : Number
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
