package §&!8§
{
   import § o§.b2Body;
   import §"0§.b2Settings;
   
   public class §?!G§
   {
      
      public static const §1X§:String = "max";
      
      public static const §4a§:String = "average";
       
      
      private var §5!&§:Number;
      
      private var §6m§:uint;
      
      private var §4!§:Number;
      
      private var § d§:Number;
      
      private var §%!f§:Vector.<Number>;
      
      private var §!q§:Vector.<Number>;
      
      private var §9!_§:Vector.<Number>;
      
      private var §9!c§:int = 0;
      
      private var §,P§:Function;
      
      public function §?!G§(param1:Number = 5, param2:uint = 10)
      {
         super();
         this.§%!f§ = new Vector.<Number>();
         this.§!q§ = new Vector.<Number>();
         this.§9!_§ = new Vector.<Number>();
         this.§=V§ = param2;
         this.limitMultiplier = param1;
         this.§,P§ = this.§9!B§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         this.§5!&§ = param1;
         this.§4!§ = b2Settings.b2_linearSleepTolerance * this.§5!&§;
         this.§ d§ = b2Settings.b2_angularSleepTolerance * this.§5!&§;
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§5!&§;
      }
      
      public function set §=V§(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         this.§6m§ = param1;
         if(this.§6m§ < this.§%!f§.length)
         {
            _loc2_ = this.§%!f§.length - this.§6m§;
            this.§%!f§.splice(0,_loc2_);
            this.§!q§.splice(0,_loc2_);
            this.§9!_§.splice(0,_loc2_);
         }
         else if(this.§6m§ > this.§%!f§.length)
         {
            _loc3_ = this.§%!f§.length;
            while(_loc3_ < this.§6m§)
            {
               this.§%!f§.push(0);
               this.§!q§.push(0);
               this.§9!_§.push(0);
               _loc3_++;
            }
         }
      }
      
      public function get §=V§() : uint
      {
         return this.§6m§;
      }
      
      public function §^!@§() : void
      {
         this.§9!c§ = this.§9!c§ + 1 >= this.§%!f§.length ? 0 : int(this.§9!c§ + 1);
      }
      
      public function §`t§(param1:b2Body) : void
      {
         this.§%!f§[this.§9!c§] = param1.GetLinearVelocity().x;
         this.§!q§[this.§9!c§] = param1.GetLinearVelocity().y;
         this.§9!_§[this.§9!c§] = param1.§[H§();
      }
      
      public function §;Q§() : Boolean
      {
         if(Math.abs(this.§,P§(this.§%!f§)) < this.§4!§ && Math.abs(this.§,P§(this.§!q§)) < this.§4!§ && Math.abs(this.§,P§(this.§9!_§)) < this.§ d§)
         {
            return false;
         }
         return true;
      }
      
      public function §#5§(param1:String) : void
      {
         switch(param1)
         {
            case §1X§:
               this.§,P§ = this.§^!'§;
               break;
            case §4a§:
            default:
               this.§,P§ = this.§9!B§;
         }
      }
      
      private function §9!B§(param1:Vector.<Number>) : Number
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
      
      private function §^!'§(param1:Vector.<Number>) : Number
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
