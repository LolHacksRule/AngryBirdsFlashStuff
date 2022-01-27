package §'R§
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §<a§
   {
      
      public static const §'w§:String = "max";
      
      public static const §#!B§:String = "average";
       
      
      private var §3!3§:Number;
      
      private var §&!,§:uint;
      
      private var §1!P§:Number;
      
      private var §'!'§:Number;
      
      private var §^v§:Vector.<Number>;
      
      private var §4o§:Vector.<Number>;
      
      private var §`3§:Vector.<Number>;
      
      private var §]v§:int = 0;
      
      private var §-!P§:Function;
      
      public function §<a§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§^v§ = new Vector.<Number>();
         this.§4o§ = new Vector.<Number>();
         this.§`3§ = new Vector.<Number>();
         this.§]y§ = param2;
         this.limitMultiplier = param1;
         this.§-!P§ = this.§?O§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§3!3§ = param1;
         this.§1!P§ = b2Settings.b2_linearSleepTolerance * this.§3!3§;
         this.§'!'§ = b2Settings.b2_angularSleepTolerance * this.§3!3§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§3!3§;
      }
      
      public function set §]y§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§&!,§ = param1;
         if(this.§&!,§ < this.§^v§.length)
         {
            _loc2_ = this.§^v§.length - this.§&!,§;
            this.§^v§.splice(0,_loc2_);
            this.§4o§.splice(0,_loc2_);
            this.§`3§.splice(0,_loc2_);
         }
         else if(this.§&!,§ > this.§^v§.length)
         {
            _loc3_ = this.§^v§.length;
            while(_loc3_ < this.§&!,§)
            {
               this.§^v§.push(0);
               this.§4o§.push(0);
               this.§`3§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §]y§() : uint
      {
         return this.§&!,§;
      }
      
      public function §;K§() : void
      {
         this.§]v§ = this.§]v§ + 1 >= this.§^v§.length ? 0 : int(this.§]v§ + 1);
      }
      
      public function §>k§(param1:b2Body) : void
      {
         this.§^v§[this.§]v§] = param1.GetLinearVelocity().x;
         this.§4o§[this.§]v§] = param1.GetLinearVelocity().y;
         this.§`3§[this.§]v§] = param1.GetAngularVelocity();
      }
      
      public function §+!H§() : Boolean
      {
         if(Math.abs(this.§-!P§(this.§^v§)) < this.§1!P§ && Math.abs(this.§-!P§(this.§4o§)) < this.§1!P§ && Math.abs(this.§-!P§(this.§`3§)) < this.§'!'§)
         {
            return false;
         }
         return true;
      }
      
      public function §5<§(param1:String) : void
      {
         switch(param1)
         {
            case §'w§:
               this.§-!P§ = this.§&F§;
               break;
            case §#!B§:
            default:
               this.§-!P§ = this.§?O§;
         }
      }
      
      private function §?O§(param1:Vector.<Number>) : Number
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
      
      private function §&F§(param1:Vector.<Number>) : Number
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
