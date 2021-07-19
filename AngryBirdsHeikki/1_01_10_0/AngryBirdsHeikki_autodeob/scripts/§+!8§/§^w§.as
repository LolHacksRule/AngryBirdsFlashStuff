package §+!8§
{
   import §3!R§.b2Body;
   import §^P§.b2Settings;
   
   public class §^w§
   {
      
      public static const §&!!§:String = "max";
      
      public static const §,"§:String = "average";
       
      
      private var §+! §:Number;
      
      private var §`p§:uint;
      
      private var §;G§:Number;
      
      private var §?!C§:Number;
      
      private var §9!?§:Vector.<Number>;
      
      private var §+-§:Vector.<Number>;
      
      private var §5T§:Vector.<Number>;
      
      private var §3!W§:int = 0;
      
      private var §&!N§:Function;
      
      public function §^w§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§9!?§ = new Vector.<Number>();
         this.§+-§ = new Vector.<Number>();
         this.§5T§ = new Vector.<Number>();
         this.§!!>§ = param2;
         this.limitMultiplier = param1;
         this.§&!N§ = this.§9_§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§+! § = param1;
         this.§;G§ = b2Settings.b2_linearSleepTolerance * this.§+! §;
         this.§?!C§ = b2Settings.b2_angularSleepTolerance * this.§+! §;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§+! §;
      }
      
      public function set §!!>§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§`p§ = param1;
         if(this.§`p§ < this.§9!?§.length)
         {
            _loc2_ = this.§9!?§.length - this.§`p§;
            this.§9!?§.splice(0,_loc2_);
            this.§+-§.splice(0,_loc2_);
            this.§5T§.splice(0,_loc2_);
         }
         else if(this.§`p§ > this.§9!?§.length)
         {
            _loc3_ = this.§9!?§.length;
            while(_loc3_ < this.§`p§)
            {
               this.§9!?§.push(0);
               this.§+-§.push(0);
               this.§5T§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §!!>§() : uint
      {
         return this.§`p§;
      }
      
      public function §;B§() : void
      {
         this.§3!W§ = this.§3!W§ + 1 >= this.§9!?§.length ? 0 : int(this.§3!W§ + 1);
      }
      
      public function § !U§(param1:b2Body) : void
      {
         this.§9!?§[this.§3!W§] = param1.GetLinearVelocity().x;
         this.§+-§[this.§3!W§] = param1.GetLinearVelocity().y;
         this.§5T§[this.§3!W§] = param1.§4^§();
      }
      
      public function §<!=§() : Boolean
      {
         if(Math.abs(this.§&!N§(this.§9!?§)) < this.§;G§ && Math.abs(this.§&!N§(this.§+-§)) < this.§;G§ && Math.abs(this.§&!N§(this.§5T§)) < this.§?!C§)
         {
            return false;
         }
         return true;
      }
      
      public function §8i§(param1:String) : void
      {
         switch(param1)
         {
            case §&!!§:
               this.§&!N§ = this.§3!T§;
               break;
            case §,"§:
            default:
               this.§&!N§ = this.§9_§;
         }
      }
      
      private function §9_§(param1:Vector.<Number>) : Number
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
      
      private function §3!T§(param1:Vector.<Number>) : Number
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
