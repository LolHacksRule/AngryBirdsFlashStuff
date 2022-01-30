package §="§
{
   import §!S§.b2Settings;
   import §`]§.b2Body;
   
   public class §%C§
   {
      
      public static const §@B§:String = "max";
      
      public static const §%!,§:String = "average";
       
      
      private var §2D§:Number;
      
      private var §2!z§:uint;
      
      private var §,E§:Number;
      
      private var §%!p§:Number;
      
      private var §%!#§:Vector.<Number>;
      
      private var §[!o§:Vector.<Number>;
      
      private var §@p§:Vector.<Number>;
      
      private var §^!L§:int = 0;
      
      private var §&y§:Function;
      
      public function §%C§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§%!#§ = new Vector.<Number>();
         this.§[!o§ = new Vector.<Number>();
         this.§@p§ = new Vector.<Number>();
         this.§ !-§ = param2;
         this.limitMultiplier = param1;
         this.§&y§ = this.§&!K§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§2D§ = param1;
         this.§,E§ = b2Settings.b2_linearSleepTolerance * this.§2D§;
         this.§%!p§ = b2Settings.b2_angularSleepTolerance * this.§2D§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§2D§;
      }
      
      public function set § !-§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§2!z§ = param1;
         if(this.§2!z§ < this.§%!#§.length)
         {
            _loc2_ = this.§%!#§.length - this.§2!z§;
            this.§%!#§.splice(0,_loc2_);
            this.§[!o§.splice(0,_loc2_);
            this.§@p§.splice(0,_loc2_);
         }
         else if(this.§2!z§ > this.§%!#§.length)
         {
            _loc3_ = this.§%!#§.length;
            while(_loc3_ < this.§2!z§)
            {
               this.§%!#§.push(0);
               this.§[!o§.push(0);
               this.§@p§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get § !-§() : uint
      {
         return this.§2!z§;
      }
      
      public function §="2§() : void
      {
         this.§^!L§ = this.§^!L§ + 1 >= this.§%!#§.length ? 0 : int(this.§^!L§ + 1);
      }
      
      public function §9B§(param1:b2Body) : void
      {
         this.§%!#§[this.§^!L§] = param1.GetLinearVelocity().x;
         this.§[!o§[this.§^!L§] = param1.GetLinearVelocity().y;
         this.§@p§[this.§^!L§] = param1.§8"+§();
      }
      
      public function §2b§() : Boolean
      {
         if(Math.abs(this.§&y§(this.§%!#§)) < this.§,E§ && Math.abs(this.§&y§(this.§[!o§)) < this.§,E§ && Math.abs(this.§&y§(this.§@p§)) < this.§%!p§)
         {
            return false;
         }
         return true;
      }
      
      public function §^!O§(param1:String) : void
      {
         switch(param1)
         {
            case §@B§:
               this.§&y§ = this.§2Z§;
               break;
            case §%!,§:
            default:
               this.§&y§ = this.§&!K§;
         }
      }
      
      private function §&!K§(param1:Vector.<Number>) : Number
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
      
      private function §2Z§(param1:Vector.<Number>) : Number
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
