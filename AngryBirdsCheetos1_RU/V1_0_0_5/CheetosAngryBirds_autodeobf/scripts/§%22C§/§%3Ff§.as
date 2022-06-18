package §"C§
{
   import § !5§.b2Settings;
   import §[W§.b2Body;
   
   public class §?f§
   {
      
      public static const §"b§:String = "max";
      
      public static const §%!8§:String = "average";
       
      
      private var §3!_§:Number;
      
      private var §`-§:uint;
      
      private var §4A§:Number;
      
      private var §-'§:Number;
      
      private var §@1§:Vector.<Number>;
      
      private var §^!-§:Vector.<Number>;
      
      private var §'L§:Vector.<Number>;
      
      private var §1!G§:int = 0;
      
      private var §>!#§:Function;
      
      public function §?f§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§@1§ = new Vector.<Number>();
         this.§^!-§ = new Vector.<Number>();
         this.§'L§ = new Vector.<Number>();
         this.§+%§ = param2;
         this.limitMultiplier = param1;
         this.§>!#§ = this.§8%§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§3!_§ = param1;
         this.§4A§ = b2Settings.b2_linearSleepTolerance * this.§3!_§;
         this.§-'§ = b2Settings.b2_angularSleepTolerance * this.§3!_§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§3!_§;
      }
      
      public function set §+%§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§`-§ = param1;
         if(this.§`-§ < this.§@1§.length)
         {
            _loc2_ = this.§@1§.length - this.§`-§;
            this.§@1§.splice(0,_loc2_);
            this.§^!-§.splice(0,_loc2_);
            this.§'L§.splice(0,_loc2_);
         }
         else if(this.§`-§ > this.§@1§.length)
         {
            _loc3_ = this.§@1§.length;
            while(_loc3_ < this.§`-§)
            {
               this.§@1§.push(0);
               this.§^!-§.push(0);
               this.§'L§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §+%§() : uint
      {
         return this.§`-§;
      }
      
      public function §+L§() : void
      {
         this.§1!G§ = this.§1!G§ + 1 >= this.§@1§.length ? 0 : int(this.§1!G§ + 1);
      }
      
      public function §5I§(param1:b2Body) : void
      {
         this.§@1§[this.§1!G§] = param1.GetLinearVelocity().x;
         this.§^!-§[this.§1!G§] = param1.GetLinearVelocity().y;
         this.§'L§[this.§1!G§] = param1.§"h§();
      }
      
      public function §"!!§() : Boolean
      {
         if(Math.abs(this.§>!#§(this.§@1§)) < this.§4A§ && Math.abs(this.§>!#§(this.§^!-§)) < this.§4A§ && Math.abs(this.§>!#§(this.§'L§)) < this.§-'§)
         {
            return false;
         }
         return true;
      }
      
      public function §`p§(param1:String) : void
      {
         switch(param1)
         {
            case §"b§:
               this.§>!#§ = this.§0!Y§;
               break;
            case §%!8§:
            default:
               this.§>!#§ = this.§8%§;
         }
      }
      
      private function §8%§(param1:Vector.<Number>) : Number
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
      
      private function §0!Y§(param1:Vector.<Number>) : Number
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
