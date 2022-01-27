package §1!#§
{
   public class §<t§
   {
      
      public static const §#V§:String = "linear";
      
      public static const §7c§:String = "sine_in";
      
      public static const §]q§:String = "sine_out";
      
      public static const §=!&§:String = "quad_out";
      
      public static const §6!E§:String = "quad_in";
      
      public static const §?!;§:String = "bounce_out";
      
      public static const §?6§:String = "bounce_in";
      
      public static const §32§:String = "circular_out";
      
      public static const §74§:String = "circular_in";
      
      private static var §2x§:§<t§;
       
      
      protected var §`5§:Vector.<§+!7§>;
      
      protected var §16§:Boolean;
      
      protected var §4Z§:Boolean = true;
      
      public function §<t§()
      {
         this.§`5§ = new Vector.<§+!7§>();
         super();
      }
      
      public static function get §4J§() : §<t§
      {
         if(!§2x§)
         {
            §2x§ = new §<t§();
         }
         return §2x§;
      }
      
      public function set native(param1:Boolean) : void
      {
         this.§4Z§ = param1;
      }
      
      public function §[!8§() : void
      {
         var _loc2_:§+!7§ = null;
         var _loc1_:int = this.§`5§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§`5§[_loc1_];
            if(_loc2_.§@3§)
            {
               this.§`5§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §#q§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §+!7§
      {
         var _loc6_:§'o§;
         (_loc6_ = new §'o§(param1,param2,param3,param4,param5)).native = this.§4Z§;
         this.§`5§.push(_loc6_);
         return _loc6_;
      }
      
      public function §;!0§(... rest) : §+!7§
      {
         var _loc2_:§0&§ = null;
         var _loc3_:§finally§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§`5§.indexOf(_loc2_);
            this.§`5§.splice(_loc4_,1);
         }
         _loc3_ = new §finally§(rest,true);
         _loc3_.native = this.§4Z§;
         this.§`5§.push(_loc3_);
         return _loc3_;
      }
      
      public function §-J§(... rest) : §+!7§
      {
         var _loc2_:§0&§ = null;
         var _loc3_:§finally§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§`5§.indexOf(_loc2_);
            this.§`5§.splice(_loc4_,1);
         }
         _loc3_ = new §finally§(rest,false);
         _loc3_.native = this.§4Z§;
         this.§`5§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§16§ = true;
      }
      
      public function resume() : void
      {
         this.§16§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§+!7§ = null;
         if(this.§16§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§`5§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§`5§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§`5§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
