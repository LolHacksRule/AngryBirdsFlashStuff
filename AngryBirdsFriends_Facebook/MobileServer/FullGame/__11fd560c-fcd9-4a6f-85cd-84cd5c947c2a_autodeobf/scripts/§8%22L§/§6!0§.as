package §8"L§
{
   import §@!M§.§!"p§;
   import §`7§.§0t§;
   import flash.media.Sound;
   
   public class §6!0§
   {
      
      public static const §%>§:String = "collision";
      
      public static const §""2§:String = "launch";
      
      public static const SPECIAL:String = "special";
      
      public static const §,#C§:String = "selection";
      
      public static const §6!7§:String = "unselection";
      
      public static const §3#e§:String = "collisionSound";
      
      public static const §?![§:String = "damageSound";
      
      public static const §1#U§:String = "destroyedSound";
      
      public static const §+`§:String = "rollingSound";
      
      public static const §1[§:String = "enter_atmosphere";
      
      public static const §&#I§:String = "exit_atmosphere";
       
      
      private var §1!X§:§0t§;
      
      private var §`!X§:§0t§;
      
      private var §3!F§:§0t§;
      
      private var §9!G§:§0t§;
      
      private var §1"7§:§0t§;
      
      public function §6!0§()
      {
         super();
         this.§1!X§ = new §0t§();
         this.§`!X§ = new §0t§();
         this.§3!F§ = new §0t§();
         this.§9!G§ = new §0t§();
         this.§1"7§ = new §0t§();
      }
      
      public function §0"V§(param1:Object) : void
      {
         this.§-#7§(param1);
         this.§,$-§(param1);
         if(param1.audioChannels)
         {
            this.§-"#§(param1);
         }
         if(param1.sampleSettings)
         {
            this.§ !§(param1);
         }
         this.§>$&§(param1);
      }
      
      private function §-#7§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Vector.<String> = null;
         var _loc4_:String = null;
         for(_loc2_ in param1.audioGroups)
         {
            _loc3_ = new Vector.<String>();
            for each(_loc4_ in param1.audioGroups[_loc2_])
            {
               _loc3_.push(_loc4_);
            }
            this.§1!X§[_loc2_] = _loc3_;
         }
      }
      
      private function §-"#§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1.audioChannels)
         {
            this.§`!X§[_loc2_] = param1.audioChannels[_loc2_];
         }
      }
      
      private function § !§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:Sound = null;
         for(_loc2_ in param1.sampleSettings)
         {
            _loc3_ = param1.sampleSettings[_loc2_];
            this.§`!X§[_loc2_] = _loc3_.channel.toString();
            if(_loc3_.volume)
            {
               this.§3!F§[_loc2_] = parseFloat(_loc3_.volume);
            }
            _loc2_ = this.§@"[§(_loc2_);
            if(_loc4_ = §!"p§.§-!w§(_loc2_,false))
            {
            }
         }
      }
      
      private function §,$-§(param1:Object) : void
      {
         var _loc2_:* = null;
         if(!param1.sampleNameMappings)
         {
            return;
         }
         for(_loc2_ in param1.sampleNameMappings)
         {
            this.§9!G§[_loc2_] = param1.sampleNameMappings[_loc2_].toString();
         }
      }
      
      protected function §>$&§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         for(_loc4_ in param1.audioChannelSettings)
         {
            _loc2_ = param1.audioChannelSettings[_loc4_].numChannels;
            _loc3_ = param1.audioChannelSettings[_loc4_].volume;
            §!"p§.§5#4§(_loc4_,_loc2_,_loc3_);
            this.§1"7§[_loc4_] = _loc3_;
         }
      }
      
      protected function §,#-§(param1:String) : String
      {
         var _loc2_:Vector.<String> = this.§1!X§[param1];
         if(!_loc2_)
         {
            return null;
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      protected function §'"g§(param1:String) : String
      {
         return this.§`!X§[param1];
      }
      
      protected function §1$>§(param1:String) : Number
      {
         return this.§3!F§[param1];
      }
      
      protected function §@"[§(param1:String) : String
      {
         return this.§9!G§[param1] || param1;
      }
      
      protected function §,=§(param1:String) : Number
      {
         return this.§1"7§[param1];
      }
      
      public function playSound(param1:String, param2:String = null, param3:int = 0, param4:Number = 0) : void
      {
         var _loc5_:String;
         if(!(_loc5_ = this.§,#-§(param1)))
         {
            _loc5_ = param1;
         }
         if(!param2)
         {
            param2 = this.§'"g§(_loc5_);
         }
         var _loc6_:Number = this.§1$>§(_loc5_);
         if(isNaN(_loc6_))
         {
            _loc6_ = -1;
         }
         if(!(_loc5_ = this.§@"[§(_loc5_)))
         {
            return;
         }
         param2 = param2 == null ? §!"p§.§^#@§ : param2;
         if(§!"p§.§4#3§(_loc5_))
         {
            §!"p§.§%!R§(_loc5_,§!"p§.§^#@§,param3,_loc6_,param4);
         }
         else
         {
            §!"p§.playSound(_loc5_,param2,param3,_loc6_,param4);
         }
      }
      
      public function §5#u§(param1:String) : void
      {
         var _loc2_:String = this.§,#-§(param1);
         if(!_loc2_)
         {
            _loc2_ = param1;
         }
         var _loc3_:String = this.§'"g§(_loc2_);
         if(_loc3_ == null)
         {
            §!"p§.§5#u§(§!"p§.§^#@§);
         }
         else
         {
            §!"p§.§5#u§(_loc3_);
         }
      }
   }
}
