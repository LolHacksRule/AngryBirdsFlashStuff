package §'N§
{
   import §3v§.§1a§;
   import com.rovio.assets.§''§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §^]§
   {
      
      private static var §+!E§:Boolean = true;
      
      private static const §;J§:int = 128;
      
      private static var §2<§:int;
      
      private static var §=J§:Dictionary;
      
      private static var §`g§:Dictionary;
      
      public static const §@j§:String = "Default_Channel";
      
      public static const §@a§:Boolean = false;
      
      private static var §7t§:Boolean = true;
       
      
      public function §^]§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §7t§ = param1;
      }
      
      public static function init() : void
      {
         §=J§ = new Dictionary();
         §`g§ = new Dictionary();
         §2<§ = 0;
         §#r§(§@j§,4,1);
      }
      
      public static function §#r§(param1:String, param2:int, param3:Number) : void
      {
         if(§?V§(param1) != null)
         {
            return;
         }
         if(§2<§ >= §;J§)
         {
            if(§@a§)
            {
               §1a§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §;J§ + " reserved");
            }
            return;
         }
         if(§2<§ + param2 >= §;J§)
         {
            param2 = §;J§ - §2<§;
         }
         var _loc4_:§7u§ = new §7u§(param1,param2,param3);
         if(!§+!E§)
         {
            _loc4_.§7!9§();
         }
         §=J§[param1.toLowerCase()] = _loc4_;
         §2<§ += param2;
      }
      
      public static function §?V§(param1:String) : §7u§
      {
         return §=J§[param1.toLowerCase()];
      }
      
      public static function §9a§(param1:Boolean) : void
      {
         var _loc2_:§7u§ = null;
         if(param1 == §+!E§)
         {
            return;
         }
         §+!E§ = param1;
         for each(_loc2_ in §=J§)
         {
            if(§+!E§)
            {
               _loc2_.§<!1§();
            }
            else
            {
               _loc2_.§7!9§();
            }
         }
      }
      
      public static function §@n§() : void
      {
         var _loc1_:§7u§ = null;
         for each(_loc1_ in §=J§)
         {
            _loc1_.§@n§();
         }
      }
      
      public static function §[!-§() : Boolean
      {
         return §+!E§;
      }
      
      public static function §1g§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §=x§
      {
         var _loc8_:Class = null;
         if(!§7t§)
         {
            return null;
         }
         var _loc6_:§7u§;
         if(!(_loc6_ = §?V§(param2)))
         {
            if(§@a§)
            {
               §1a§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc6_.§9;§())
         {
            if(§@a§)
            {
               §1a§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §`g§[param1]) == null)
         {
            if(!(_loc8_ = §''§.§-C§(param1,false) as Class))
            {
               §1a§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §`g§[param1] = _loc7_;
         }
         return _loc6_.§1g§(_loc7_,param3,param4,param5);
      }
      
      public static function § _§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§7u§ = §?V§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§@n§();
         }
      }
      
      public static function §%!G§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§@a§)
            {
               §1a§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §^]§.§1g§(param1,param2);
      }
   }
}
