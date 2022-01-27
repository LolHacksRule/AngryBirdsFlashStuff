package §@!M§
{
   public class §5!&§
   {
      
      public static const §9!>§:String = "linear";
      
      public static const §<G§:String = "sine_in";
      
      public static const §<!C§:String = "sine_out";
      
      public static const §-y§:String = "quad_out";
      
      public static const §97§:String = "quad_in";
      
      public static const §3!K§:String = "bounce_out";
      
      public static const § <§:String = "bounce_in";
      
      public static const §&[§:String = "circular_out";
      
      public static const §"f§:String = "circular_in";
      
      private static var §+x§:§5!&§;
       
      
      private var §!b§:Vector.<§"!C§>;
      
      private var §^%§:Boolean;
      
      private var §^4§:Boolean = true;
      
      public function §5!&§()
      {
         this.§!b§ = new Vector.<§"!C§>();
         super();
      }
      
      public static function get §@!&§() : §5!&§
      {
         if(!§+x§)
         {
            §+x§ = new §5!&§();
         }
         return §+x§;
      }
      
      public function set § !E§(param1:Boolean) : void
      {
         this.§^4§ = param1;
      }
      
      public function § '§() : void
      {
         var _loc2_:§"!C§ = null;
         var _loc1_:int = this.§!b§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!b§[_loc1_];
            if(_loc2_.§2]§)
            {
               this.§!b§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §9!4§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §"!C§
      {
         var _loc6_:§;P§;
         (_loc6_ = new §;P§(param1,param2,param3,param4,param5)).§ !E§ = this.§^4§;
         this.§!b§.push(_loc6_);
         return _loc6_;
      }
      
      public function §?!D§(... rest) : §"!C§
      {
         var _loc2_:§#^§ = null;
         var _loc3_:§6!O§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§!b§.indexOf(_loc2_);
            this.§!b§.splice(_loc4_,1);
         }
         _loc3_ = new §6!O§(rest,true);
         _loc3_.§ !E§ = this.§^4§;
         this.§!b§.push(_loc3_);
         return _loc3_;
      }
      
      public function §%!7§(... rest) : §"!C§
      {
         var _loc2_:§#^§ = null;
         var _loc3_:§6!O§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§!b§.indexOf(_loc2_);
            this.§!b§.splice(_loc4_,1);
         }
         _loc3_ = new §6!O§(rest,false);
         _loc3_.§ !E§ = this.§^4§;
         this.§!b§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§^%§ = true;
      }
      
      public function resume() : void
      {
         this.§^%§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§"!C§ = null;
         if(this.§^%§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§!b§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§!b§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§!b§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
