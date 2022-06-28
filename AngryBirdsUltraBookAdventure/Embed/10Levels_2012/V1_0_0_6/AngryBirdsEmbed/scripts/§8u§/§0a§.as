package §8u§
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §0a§
   {
      
      public static const §1t§:String = "max";
      
      public static const §^o§:String = "average";
       
      
      private var §#!A§:Number;
      
      private var §2!!§:uint;
      
      private var § !3§:Number;
      
      private var §%<§:Number;
      
      private var §^!3§:Vector.<Number>;
      
      private var §'! §:Vector.<Number>;
      
      private var §`>§:Vector.<Number>;
      
      private var §0N§:int = 0;
      
      private var §]!-§:Function;
      
      public function §0a§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§^!3§ = new Vector.<Number>();
         this.§'! § = new Vector.<Number>();
         this.§`>§ = new Vector.<Number>();
         this.§ w§ = param2;
         this.limitMultiplier = param1;
         this.§]!-§ = this.§@2§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§#!A§ = param1;
         this.§ !3§ = b2Settings.b2_linearSleepTolerance * this.§#!A§;
         this.§%<§ = b2Settings.b2_angularSleepTolerance * this.§#!A§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§#!A§;
      }
      
      public function set § w§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§2!!§ = param1;
         if(this.§2!!§ < this.§^!3§.length)
         {
            _loc2_ = this.§^!3§.length - this.§2!!§;
            this.§^!3§.splice(0,_loc2_);
            this.§'! §.splice(0,_loc2_);
            this.§`>§.splice(0,_loc2_);
         }
         else if(this.§2!!§ > this.§^!3§.length)
         {
            _loc3_ = this.§^!3§.length;
            while(_loc3_ < this.§2!!§)
            {
               this.§^!3§.push(0);
               this.§'! §.push(0);
               this.§`>§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get § w§() : uint
      {
         return this.§2!!§;
      }
      
      public function §-O§() : void
      {
         this.§0N§ = this.§0N§ + 1 >= this.§^!3§.length ? 0 : int(this.§0N§ + 1);
      }
      
      public function §[!>§(param1:b2Body) : void
      {
         this.§^!3§[this.§0N§] = param1.GetLinearVelocity().x;
         this.§'! §[this.§0N§] = param1.GetLinearVelocity().y;
         this.§`>§[this.§0N§] = param1.GetAngularVelocity();
      }
      
      public function §#[§() : Boolean
      {
         if(Math.abs(this.§]!-§(this.§^!3§)) < this.§ !3§ && Math.abs(this.§]!-§(this.§'! §)) < this.§ !3§ && Math.abs(this.§]!-§(this.§`>§)) < this.§%<§)
         {
            return false;
         }
         return true;
      }
      
      public function §!s§(param1:String) : void
      {
         switch(param1)
         {
            case §1t§:
               this.§]!-§ = this.§0!3§;
               break;
            case §^o§:
            default:
               this.§]!-§ = this.§@2§;
         }
      }
      
      private function §@2§(param1:Vector.<Number>) : Number
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
      
      private function §0!3§(param1:Vector.<Number>) : Number
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
