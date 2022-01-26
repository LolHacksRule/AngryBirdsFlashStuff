package §+N§
{
   public class §!j§
   {
      
      public static const §9X§:String = "linear";
      
      public static const §@J§:String = "sine_in";
      
      public static const §;L§:String = "sine_out";
      
      public static const §?!F§:String = "quad_out";
      
      public static const §<z§:String = "quad_in";
      
      public static const §5!?§:String = "bounce_out";
      
      public static const §&q§:String = "bounce_in";
      
      public static const §9!0§:String = "circular_out";
      
      public static const §5_§:String = "circular_in";
      
      private static var §<J§:§!j§;
       
      
      private var §`Q§:Vector.<§=!<§>;
      
      private var §2A§:Boolean;
      
      private var §]C§:Boolean = true;
      
      public function §!j§()
      {
         this.§`Q§ = new Vector.<§=!<§>();
         super();
      }
      
      public static function get §5!B§() : §!j§
      {
         if(!§<J§)
         {
            §<J§ = new §!j§();
         }
         return §<J§;
      }
      
      public function set §5@§(param1:Boolean) : void
      {
         this.§]C§ = param1;
      }
      
      public function §52§() : void
      {
         var _loc2_:§=!<§ = null;
         var _loc1_:int = this.§`Q§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§`Q§[_loc1_];
            if(_loc2_.§&l§)
            {
               this.§`Q§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §+I§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §]G§
      {
         var _loc6_:§,5§;
         (_loc6_ = new §,5§(param1,param2,param3,param4,param5)).§5@§ = this.§]C§;
         this.§`Q§.push(_loc6_);
         return _loc6_;
      }
      
      public function §!a§(... rest) : §]G§
      {
         var _loc2_:§!!!§ = null;
         var _loc3_:§7v§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§`Q§.indexOf(_loc2_);
            this.§`Q§.splice(_loc4_,1);
         }
         _loc3_ = new §7v§(rest,true);
         _loc3_.§5@§ = this.§]C§;
         this.§`Q§.push(_loc3_);
         return _loc3_;
      }
      
      public function §=!E§(... rest) : §]G§
      {
         var _loc2_:§!!!§ = null;
         var _loc3_:§7v§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§`Q§.indexOf(_loc2_);
            this.§`Q§.splice(_loc4_,1);
         }
         _loc3_ = new §7v§(rest,false);
         _loc3_.§5@§ = this.§]C§;
         this.§`Q§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§2A§ = true;
      }
      
      public function resume() : void
      {
         this.§2A§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§=!<§ = null;
         if(this.§2A§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§`Q§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§`Q§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§`Q§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
