package §#g§
{
   import §+d§.§2!g§;
   import §`"1§.§=Q§;
   import flash.media.Sound;
   
   public class §?B§
   {
      
      public static const §-@§:String = "collision";
      
      public static const §%!r§:String = "launch";
      
      public static const §@!x§:String = "special";
      
      public static const §%"L§:String = "selection";
      
      public static const §[!y§:String = "unselection";
      
      public static const §!9§:String = "collisionSound";
      
      public static const §];§:String = "damageSound";
      
      public static const §<!_§:String = "destroyedSound";
      
      public static const §#!F§:String = "rollingSound";
      
      public static const §'!]§:String = "enter_atmosphere";
      
      public static const §<"y§:String = "exit_atmosphere";
       
      
      private var §8"7§:§2!g§;
      
      private var §>!A§:§2!g§;
      
      private var §9#!§:§2!g§;
      
      private var §@!l§:§2!g§;
      
      private var §@"n§:§2!g§;
      
      public function §?B§()
      {
         super();
         this.§8"7§ = new §2!g§();
         this.§>!A§ = new §2!g§();
         this.§9#!§ = new §2!g§();
         this.§@!l§ = new §2!g§();
         this.§@"n§ = new §2!g§();
      }
      
      public function §<!$§(param1:Object) : void
      {
         this.§3#5§(param1);
         this.§2"8§(param1);
         if(param1.audioChannels)
         {
            this.§@!k§(param1);
         }
         if(param1.sampleSettings)
         {
            this.§8L§(param1);
         }
         this.§break§(param1);
      }
      
      private function §3#5§(param1:Object) : void
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
            this.§8"7§[_loc2_] = _loc3_;
         }
      }
      
      private function §@!k§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1.audioChannels)
         {
            this.§>!A§[_loc2_] = param1.audioChannels[_loc2_];
         }
      }
      
      private function §8L§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:Sound = null;
         for(_loc2_ in param1.sampleSettings)
         {
            _loc3_ = param1.sampleSettings[_loc2_];
            this.§>!A§[_loc2_] = _loc3_.channel.toString();
            if(_loc3_.volume)
            {
               this.§9#!§[_loc2_] = parseFloat(_loc3_.volume);
            }
            _loc2_ = this.§9!U§(_loc2_);
            if(_loc4_ = §=Q§.§-#,§(_loc2_,false))
            {
            }
         }
      }
      
      private function §2"8§(param1:Object) : void
      {
         var _loc2_:* = null;
         if(!param1.sampleNameMappings)
         {
            return;
         }
         for(_loc2_ in param1.sampleNameMappings)
         {
            this.§@!l§[_loc2_] = param1.sampleNameMappings[_loc2_].toString();
         }
      }
      
      protected function §break§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         for(_loc4_ in param1.audioChannelSettings)
         {
            _loc2_ = param1.audioChannelSettings[_loc4_].numChannels;
            _loc3_ = param1.audioChannelSettings[_loc4_].volume;
            §=Q§.§`"u§(_loc4_,_loc2_,_loc3_);
            this.§@"n§[_loc4_] = _loc3_;
         }
      }
      
      protected function §[<§(param1:String) : String
      {
         var _loc2_:Vector.<String> = this.§8"7§[param1];
         if(!_loc2_)
         {
            return null;
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      protected function §`!z§(param1:String) : String
      {
         return this.§>!A§[param1];
      }
      
      protected function §1m§(param1:String) : Number
      {
         return this.§9#!§[param1];
      }
      
      protected function §9!U§(param1:String) : String
      {
         return this.§@!l§[param1] || param1;
      }
      
      protected function §9o§(param1:String) : Number
      {
         return this.§@"n§[param1];
      }
      
      public function §`!A§(param1:String, param2:int = 0, param3:Number = 0) : void
      {
         var _loc4_:String;
         if(!(_loc4_ = this.§[<§(param1)))
         {
            _loc4_ = param1;
         }
         var _loc5_:String = this.§`!z§(_loc4_);
         var _loc6_:Number = this.§1m§(_loc4_);
         if(isNaN(_loc6_))
         {
            _loc6_ = -1;
         }
         _loc4_ = this.§9!U§(_loc4_);
         if(_loc5_ == null)
         {
            §=Q§.§`!A§(_loc4_,§=Q§.§@"=§,param2,_loc6_);
         }
         else
         {
            §=Q§.§`!A§(_loc4_,_loc5_,param2,_loc6_,param3);
         }
      }
      
      public function §&"=§(param1:String) : void
      {
         var _loc2_:String = this.§[<§(param1);
         if(!_loc2_)
         {
            _loc2_ = param1;
         }
         var _loc3_:String = this.§`!z§(_loc2_);
         if(_loc3_ == null)
         {
            §=Q§.§&"=§(§=Q§.§@"=§);
         }
         else
         {
            §=Q§.§&"=§(_loc3_);
         }
      }
   }
}
