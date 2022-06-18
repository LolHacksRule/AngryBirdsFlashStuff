package §7"&§
{
   import §1#W§.§!#&§;
   import §6V§.§&"g§;
   import flash.media.Sound;
   
   public class §8"G§
   {
      
      public static const §^#=§:String = "collision";
      
      public static const §=[§:String = "launch";
      
      public static const SPECIAL:String = "special";
      
      public static const §8!c§:String = "selection";
      
      public static const §%$$§:String = "unselection";
      
      public static const §#"%§:String = "collisionSound";
      
      public static const §?!_§:String = "damageSound";
      
      public static const §9!$§:String = "destroyedSound";
      
      public static const §&z§:String = "rollingSound";
      
      public static const §>"8§:String = "enter_atmosphere";
      
      public static const §8<§:String = "exit_atmosphere";
       
      
      private var §8!_§:§&"g§;
      
      private var §["U§:§&"g§;
      
      private var §2l§:§&"g§;
      
      private var §9B§:§&"g§;
      
      private var §=X§:§&"g§;
      
      public function §8"G§()
      {
         super();
         this.§8!_§ = new §&"g§();
         this.§["U§ = new §&"g§();
         this.§2l§ = new §&"g§();
         this.§9B§ = new §&"g§();
         this.§=X§ = new §&"g§();
      }
      
      public function §]!p§(param1:Object) : void
      {
         this.§8#e§(param1);
         this.§4#§(param1);
         if(param1.audioChannels)
         {
            this.§break§(param1);
         }
         if(param1.sampleSettings)
         {
            this.§#!e§(param1);
         }
         this.§@!4§(param1);
      }
      
      private function §8#e§(param1:Object) : void
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
            this.§8!_§[_loc2_] = _loc3_;
         }
      }
      
      private function §break§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1.audioChannels)
         {
            this.§["U§[_loc2_] = param1.audioChannels[_loc2_];
         }
      }
      
      private function §#!e§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:Sound = null;
         for(_loc2_ in param1.sampleSettings)
         {
            _loc3_ = param1.sampleSettings[_loc2_];
            this.§["U§[_loc2_] = _loc3_.channel.toString();
            if(_loc3_.volume)
            {
               this.§2l§[_loc2_] = parseFloat(_loc3_.volume);
            }
            _loc2_ = this.§<#W§(_loc2_);
            if(_loc4_ = §!#&§.§-#G§(_loc2_,false))
            {
            }
         }
      }
      
      private function §4#§(param1:Object) : void
      {
         var _loc2_:* = null;
         if(!param1.sampleNameMappings)
         {
            return;
         }
         for(_loc2_ in param1.sampleNameMappings)
         {
            this.§9B§[_loc2_] = param1.sampleNameMappings[_loc2_].toString();
         }
      }
      
      protected function §@!4§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         for(_loc4_ in param1.audioChannelSettings)
         {
            _loc2_ = param1.audioChannelSettings[_loc4_].numChannels;
            _loc3_ = param1.audioChannelSettings[_loc4_].volume;
            §!#&§.§!"k§(_loc4_,_loc2_,_loc3_);
            this.§=X§[_loc4_] = _loc3_;
         }
      }
      
      protected function §+"&§(param1:String) : String
      {
         var _loc2_:Vector.<String> = this.§8!_§[param1];
         if(!_loc2_)
         {
            return null;
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      protected function §=#W§(param1:String) : String
      {
         return this.§["U§[param1];
      }
      
      protected function §;[§(param1:String) : Number
      {
         return this.§2l§[param1];
      }
      
      protected function §<#W§(param1:String) : String
      {
         return this.§9B§[param1] || param1;
      }
      
      protected function §9l§(param1:String) : Number
      {
         return this.§=X§[param1];
      }
      
      public function playSound(param1:String, param2:String = null, param3:int = 0, param4:Number = 0) : void
      {
         var _loc5_:String;
         if(!(_loc5_ = this.§+"&§(param1)))
         {
            _loc5_ = param1;
         }
         if(!param2)
         {
            param2 = this.§=#W§(_loc5_);
         }
         var _loc6_:Number = this.§;[§(_loc5_);
         if(isNaN(_loc6_))
         {
            _loc6_ = -1;
         }
         if(!(_loc5_ = this.§<#W§(_loc5_)))
         {
            return;
         }
         param2 = param2 == null ? §!#&§.§>#c§ : param2;
         if(§!#&§.§&#J§(_loc5_))
         {
            §!#&§.§2!A§(_loc5_,§!#&§.§>#c§,param3,_loc6_,param4);
         }
         else
         {
            §!#&§.playSound(_loc5_,param2,param3,_loc6_,param4);
         }
      }
      
      public function §4#J§(param1:String) : void
      {
         var _loc2_:String = this.§+"&§(param1);
         if(!_loc2_)
         {
            _loc2_ = param1;
         }
         var _loc3_:String = this.§=#W§(_loc2_);
         if(_loc3_ == null)
         {
            §!#&§.§4#J§(§!#&§.§>#c§);
         }
         else
         {
            §!#&§.§4#J§(_loc3_);
         }
      }
   }
}
