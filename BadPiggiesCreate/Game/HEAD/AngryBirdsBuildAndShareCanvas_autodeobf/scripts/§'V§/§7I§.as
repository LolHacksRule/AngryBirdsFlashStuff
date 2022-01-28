package §'V§
{
   import § A§.*;
   
   public class §7I§
   {
      
      public static const §,S§:Function = §&"@§.easeIn;
      
      public static const §[!M§:Function = §,c§.easeIn;
      
      public static const §#"0§:Function = §,c§.easeOut;
      
      public static const §7L§:Function = §@!t§.easeOut;
      
      public static const §%"'§:Function = §@!t§.easeIn;
      
      public static const §;!C§:Function = §;%§.easeOut;
      
      public static const §'!!§:Function = §;%§.easeIn;
      
      public static const §@!!§:Function = §%"!§.easeOut;
      
      public static const §="!§:Function = §%"!§.easeIn;
      
      private static var §+!u§:§7I§;
       
      
      protected var §4@§:Vector.<§%!"§>;
      
      protected var §`!-§:Boolean;
      
      protected var §!!p§:Boolean = true;
      
      public function §7I§()
      {
         this.§4@§ = new Vector.<§%!"§>();
         super();
      }
      
      public static function get §[E§() : §7I§
      {
         if(!§+!u§)
         {
            §+!u§ = new §7I§();
         }
         return §+!u§;
      }
      
      public function set §?p§(param1:Boolean) : void
      {
         this.§!!p§ = param1;
      }
      
      public function §^!=§() : void
      {
         var _loc2_:§%!"§ = null;
         var _loc1_:int = this.§4@§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4@§[_loc1_];
            if(_loc2_.§5"6§)
            {
               this.§4@§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function § ";§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §%!"§
      {
         param5 = param5 || §&"@§.easeIn;
         var _loc6_:§[!c§;
         (_loc6_ = new §[!c§(param1,param2,param3,param4,param5)).§?p§ = this.§!!p§;
         this.§4@§.push(_loc6_);
         return _loc6_;
      }
      
      public function §]g§(... rest) : §%!"§
      {
         var _loc2_:§8a§ = null;
         var _loc3_:static = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§4@§.indexOf(_loc2_);
            this.§4@§.splice(_loc4_,1);
         }
         _loc3_ = new static(rest,true);
         _loc3_.§?p§ = this.§!!p§;
         this.§4@§.push(_loc3_);
         return _loc3_;
      }
      
      public function §5!@§(... rest) : §%!"§
      {
         var _loc2_:§8a§ = null;
         var _loc3_:static = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§4@§.indexOf(_loc2_);
            this.§4@§.splice(_loc4_,1);
         }
         _loc3_ = new static(rest,false);
         _loc3_.§?p§ = this.§!!p§;
         this.§4@§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§`!-§ = true;
      }
      
      public function resume() : void
      {
         this.§`!-§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§%!"§ = null;
         if(this.§`!-§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§4@§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§4@§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§4@§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
