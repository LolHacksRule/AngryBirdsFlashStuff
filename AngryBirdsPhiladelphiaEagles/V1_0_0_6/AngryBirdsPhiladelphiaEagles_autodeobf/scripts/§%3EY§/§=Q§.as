package §>Y§
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §=Q§
   {
      
      public static const §<R§:String = "max";
      
      public static const §<O§:String = "average";
       
      
      private var §^T§:Number;
      
      private var §1!L§:uint;
      
      private var §"!$§:Number;
      
      private var §79§:Number;
      
      private var §`!#§:Vector.<Number>;
      
      private var §=v§:Vector.<Number>;
      
      private var §1A§:Vector.<Number>;
      
      private var §&G§:int = 0;
      
      private var §-!2§:Function;
      
      public function §=Q§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§`!#§ = new Vector.<Number>();
         this.§=v§ = new Vector.<Number>();
         this.§1A§ = new Vector.<Number>();
         this.§[!J§ = param2;
         this.limitMultiplier = param1;
         this.§-!2§ = this.§+!&§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§^T§ = param1;
         this.§"!$§ = b2Settings.b2_linearSleepTolerance * this.§^T§;
         this.§79§ = b2Settings.b2_angularSleepTolerance * this.§^T§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§^T§;
      }
      
      public function set §[!J§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§1!L§ = param1;
         if(this.§1!L§ < this.§`!#§.length)
         {
            _loc2_ = this.§`!#§.length - this.§1!L§;
            this.§`!#§.splice(0,_loc2_);
            this.§=v§.splice(0,_loc2_);
            this.§1A§.splice(0,_loc2_);
         }
         else if(this.§1!L§ > this.§`!#§.length)
         {
            _loc3_ = this.§`!#§.length;
            while(_loc3_ < this.§1!L§)
            {
               this.§`!#§.push(0);
               this.§=v§.push(0);
               this.§1A§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §[!J§() : uint
      {
         return this.§1!L§;
      }
      
      public function §,!M§() : void
      {
         this.§&G§ = this.§&G§ + 1 >= this.§`!#§.length ? 0 : int(this.§&G§ + 1);
      }
      
      public function §6!'§(param1:b2Body) : void
      {
         this.§`!#§[this.§&G§] = param1.GetLinearVelocity().x;
         this.§=v§[this.§&G§] = param1.GetLinearVelocity().y;
         this.§1A§[this.§&G§] = param1.GetAngularVelocity();
      }
      
      public function §1#§() : Boolean
      {
         if(Math.abs(this.§-!2§(this.§`!#§)) < this.§"!$§ && Math.abs(this.§-!2§(this.§=v§)) < this.§"!$§ && Math.abs(this.§-!2§(this.§1A§)) < this.§79§)
         {
            return false;
         }
         return true;
      }
      
      public function §+M§(param1:String) : void
      {
         switch(param1)
         {
            case §<R§:
               this.§-!2§ = this.§!O§;
               break;
            case §<O§:
            default:
               this.§-!2§ = this.§+!&§;
         }
      }
      
      private function §+!&§(param1:Vector.<Number>) : Number
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
      
      private function §!O§(param1:Vector.<Number>) : Number
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
