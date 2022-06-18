package §6[§
{
   public class §;q§
   {
      
      public static const §throw§:String = "linear";
      
      public static const §8S§:String = "sine_in";
      
      public static const §6! §:String = "sine_out";
      
      public static const §-'§:String = "quad_out";
      
      public static const §5Z§:String = "quad_in";
      
      public static const §3I§:String = "bounce_out";
      
      public static const §]! §:String = "bounce_in";
      
      public static const §<!0§:String = "circular_out";
      
      public static const §]`§:String = "circular_in";
      
      private static var §0S§:§;q§;
       
      
      private var §0!E§:Vector.<§5!1§>;
      
      private var § !9§:Boolean;
      
      private var §<! §:Boolean = true;
      
      public function §;q§()
      {
         this.§0!E§ = new Vector.<§5!1§>();
         super();
      }
      
      public static function get §9r§() : §;q§
      {
         if(!§0S§)
         {
            §0S§ = new §;q§();
         }
         return §0S§;
      }
      
      public function set §%h§(param1:Boolean) : void
      {
         this.§<! § = param1;
      }
      
      public function §<!'§() : void
      {
         var _loc2_:§5!1§ = null;
         var _loc1_:int = this.§0!E§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0!E§[_loc1_];
            if(_loc2_.§]!&§)
            {
               this.§0!E§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §%!#§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §`!-§
      {
         var _loc6_:§]#§;
         (_loc6_ = new §]#§(param1,param2,param3,param4,param5)).§%h§ = this.§<! §;
         this.§0!E§.push(_loc6_);
         return _loc6_;
      }
      
      public function §6&§(... rest) : §`!-§
      {
         var _loc2_:§&=§ = null;
         var _loc3_:§-!5§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§0!E§.indexOf(_loc2_);
            this.§0!E§.splice(_loc4_,1);
         }
         _loc3_ = new §-!5§(rest,true);
         _loc3_.§%h§ = this.§<! §;
         this.§0!E§.push(_loc3_);
         return _loc3_;
      }
      
      public function §7!=§(... rest) : §`!-§
      {
         var _loc2_:§&=§ = null;
         var _loc3_:§-!5§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§0!E§.indexOf(_loc2_);
            this.§0!E§.splice(_loc4_,1);
         }
         _loc3_ = new §-!5§(rest,false);
         _loc3_.§%h§ = this.§<! §;
         this.§0!E§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§ !9§ = true;
      }
      
      public function resume() : void
      {
         this.§ !9§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§5!1§ = null;
         if(this.§ !9§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§0!E§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§0!E§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§0!E§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
