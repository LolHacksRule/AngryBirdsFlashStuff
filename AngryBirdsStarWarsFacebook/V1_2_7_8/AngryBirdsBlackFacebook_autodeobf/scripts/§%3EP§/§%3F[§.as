package §>P§
{
   import §,"v§.§@§;
   import §7A§.§5"2§;
   import flash.media.Sound;
   
   public class §?[§
   {
      
      public static const §[h§:String = "collision";
      
      public static const §?!d§:String = "launch";
      
      public static const §]"<§:String = "special";
      
      public static const §1#6§:String = "selection";
      
      public static const §1"Q§:String = "unselection";
      
      public static const §^!T§:String = "collisionSound";
      
      public static const §]"e§:String = "damageSound";
      
      public static const §2S§:String = "destroyedSound";
      
      public static const §]!E§:String = "rollingSound";
      
      public static const §^r§:String = "enter_atmosphere";
      
      public static const §%##§:String = "exit_atmosphere";
       
      
      private var §,"[§:§5"2§;
      
      private var §'"q§:§5"2§;
      
      private var §8!R§:§5"2§;
      
      private var set:§5"2§;
      
      private var §"#2§:§5"2§;
      
      public function §?[§()
      {
         super();
         this.§,"[§ = new §5"2§();
         this.§'"q§ = new §5"2§();
         this.§8!R§ = new §5"2§();
         this.set = new §5"2§();
         this.§"#2§ = new §5"2§();
      }
      
      public function §0!O§(param1:Object) : void
      {
         this.§ !B§(param1);
         this.§&!=§(param1);
         if(param1.audioChannels)
         {
            this.§<+§(param1);
         }
         if(param1.sampleSettings)
         {
            this.§+"Q§(param1);
         }
         this.§!H§(param1);
      }
      
      private function § !B§(param1:Object) : void
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
            this.§,"[§[_loc2_] = _loc3_;
         }
      }
      
      private function §<+§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1.audioChannels)
         {
            this.§'"q§[_loc2_] = param1.audioChannels[_loc2_];
         }
      }
      
      private function §+"Q§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:Sound = null;
         for(_loc2_ in param1.sampleSettings)
         {
            _loc3_ = param1.sampleSettings[_loc2_];
            this.§'"q§[_loc2_] = _loc3_.channel.toString();
            if(_loc3_.volume)
            {
               this.§8!R§[_loc2_] = parseFloat(_loc3_.volume);
            }
            _loc2_ = this.§?">§(_loc2_);
            if(_loc4_ = §@§.§+!B§(_loc2_,false))
            {
            }
         }
      }
      
      private function §&!=§(param1:Object) : void
      {
         var _loc2_:* = null;
         if(!param1.sampleNameMappings)
         {
            return;
         }
         for(_loc2_ in param1.sampleNameMappings)
         {
            this.set[_loc2_] = param1.sampleNameMappings[_loc2_].toString();
         }
      }
      
      protected function §!H§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         for(_loc4_ in param1.audioChannelSettings)
         {
            _loc2_ = param1.audioChannelSettings[_loc4_].numChannels;
            _loc3_ = param1.audioChannelSettings[_loc4_].volume;
            §@§.§"#'§(_loc4_,_loc2_,_loc3_);
            this.§"#2§[_loc4_] = _loc3_;
         }
      }
      
      protected function §`"g§(param1:String) : String
      {
         var _loc2_:Vector.<String> = this.§,"[§[param1];
         if(!_loc2_)
         {
            return null;
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      protected function §[#1§(param1:String) : String
      {
         return this.§'"q§[param1];
      }
      
      protected function §#!6§(param1:String) : Number
      {
         return this.§8!R§[param1];
      }
      
      protected function §?">§(param1:String) : String
      {
         return this.set[param1] || param1;
      }
      
      protected function §"U§(param1:String) : Number
      {
         return this.§"#2§[param1];
      }
      
      public function §=Y§(param1:String, param2:int = 0, param3:Number = 0) : void
      {
         var _loc4_:String;
         if(!(_loc4_ = this.§`"g§(param1)))
         {
            _loc4_ = param1;
         }
         var _loc5_:String = this.§[#1§(_loc4_);
         var _loc6_:Number = this.§#!6§(_loc4_);
         if(isNaN(_loc6_))
         {
            _loc6_ = -1;
         }
         _loc4_ = this.§?">§(_loc4_);
         if(_loc5_ == null)
         {
            §@§.§=Y§(_loc4_,§@§.§<"5§,param2,_loc6_);
         }
         else
         {
            §@§.§=Y§(_loc4_,_loc5_,param2,_loc6_,param3);
         }
      }
      
      public function §@!D§(param1:String) : void
      {
         var _loc2_:String = this.§`"g§(param1);
         if(!_loc2_)
         {
            _loc2_ = param1;
         }
         var _loc3_:String = this.§[#1§(_loc2_);
         if(_loc3_ == null)
         {
            §@§.§@!D§(§@§.§<"5§);
         }
         else
         {
            §@§.§@!D§(_loc3_);
         }
      }
   }
}
