package §,"N§
{
   import §!"W§.§@!X§;
   import §'"E§.§ N§;
   import §'"E§.§,!j§;
   import §'"E§.§3!e§;
   import §'"E§.§?"y§;
   import §'"E§.§^!2§;
   import §1!i§.§,#_§;
   import §1!i§.§;7§;
   import §6!H§.§,#E§;
   import §6!H§.§8!r§;
   import §6!H§.§9!!§;
   import §7K§.§5#^§;
   import §>@§.§5"H§;
   import flash.events.EventDispatcher;
   
   public class §6"w§ extends EventDispatcher
   {
      
      public static const §1!m§:String = "ExtraBird";
      
      public static const §+!G§:String = "MightyFalcon";
      
      public static const §3"F§:String = "LaserDroid";
      
      public static const § !p§:String = "SaberSling";
      
      public static const §,!4§:String = "ThermalDetonator";
       
      
      protected var §[#I§:§,#E§;
      
      protected var §;!Y§:§,#_§;
      
      protected var §@#@§:String;
      
      protected var §5!`§:Boolean;
      
      public function §6"w§()
      {
         this.§;!Y§ = new §,#_§();
         super();
         this.§;!Y§[§+!G§] = new §;7§();
         this.§;!Y§[§3"F§] = new §;7§();
         this.§;!Y§[§ !p§] = new §;7§();
         this.§;!Y§[§,!4§] = new §;7§();
         this.§;!Y§[§,!4§] = new §;7§();
         var _loc1_:§5"H§ = §4#;§.singleton.§4#,§;
         this.§[#I§ = new §,#E§();
         this.§[#I§.§>"m§(new §8!r§(§3"F§,§,#E§.§00§,§,!j§,_loc1_.getLocalizedString("powerup_" + §3"F§.toLowerCase()),true));
         this.§[#I§.§>"m§(new §8!r§(§ !p§,§,#E§.§00§,§ N§,_loc1_.getLocalizedString("powerup_" + § !p§.toLowerCase()),true));
         this.§[#I§.§>"m§(new §8!r§(§,!4§,§,#E§.§00§,§?"y§,_loc1_.getLocalizedString("powerup_" + §,!4§.toLowerCase()),true));
         this.§[#I§.§>"m§(new §8!r§(§+!G§,§,#E§.§'"d§,§^!2§,_loc1_.getLocalizedString("powerup_" + §+!G§.toLowerCase()),false));
         this.§[#I§.§>"m§(new §8!r§(§1!m§,§,#E§.§%"h§,§3!e§,_loc1_.getLocalizedString("powerup_" + §1!m§.toLowerCase()),false));
         this.§@#@§ = "";
         this.§5!`§ = false;
      }
      
      public function get §4x§() : Boolean
      {
         return this.§5!`§;
      }
      
      public function set §4x§(param1:Boolean) : void
      {
         this.§5!`§ = param1;
         if(this.§5!`§ == false)
         {
            this.§#"0§ = "";
         }
      }
      
      public function get §#"0§() : String
      {
         return this.§@#@§;
      }
      
      public function set §#"0§(param1:String) : void
      {
         this.§@#@§ = param1;
         dispatchEvent(new §@!X§(§@!X§.§;"Z§,this.§@#@§,-1));
      }
      
      public function get §;#?§() : §,#E§
      {
         return this.§[#I§;
      }
      
      public function §8#K§(param1:String) : int
      {
         if(this.§;!Y§[param1] == null)
         {
            return 0;
         }
         return §;7§(this.§;!Y§[param1]).getValue();
      }
      
      public function §#!+§(param1:String, param2:int) : void
      {
         if(this.§;!Y§[param1] == undefined)
         {
            this.§;!Y§[param1] = new §;7§();
         }
         var _loc3_:§;7§ = §;7§(this.§;!Y§[param1]);
         var _loc4_:int = _loc3_.getValue();
         if(param2 > _loc4_ && this.§5!`§)
         {
            this.§#"0§ = param1;
         }
         if(_loc4_ != param2)
         {
            §;7§(this.§;!Y§[param1]).§3"Q§(param2);
            dispatchEvent(new §@!X§(§@!X§.§1c§,param1,param2));
         }
      }
      
      public function § #D§(param1:String) : Boolean
      {
         var _loc2_:§9!!§ = §@#B§(§4#;§.singleton.dataModel).§4"Z§.§"!B§(param1);
         var _loc3_:int = -1;
         if(_loc2_)
         {
            _loc3_ = _loc2_.daysLeft;
         }
         if(_loc3_ >= 0)
         {
            return true;
         }
         return false;
      }
      
      public function §0"[§(param1:String) : void
      {
         var _loc2_:§;7§ = §;7§(this.§;!Y§[param1]);
         var _loc3_:int = _loc2_.getValue();
         var _loc4_:Boolean;
         if(!(_loc4_ = this.§ #D§(param1)))
         {
            if(_loc3_ <= 0)
            {
               throw new Error("Can\'t user powerup " + param1 + ", user doesn\'t have any left.");
            }
            this.§#!+§(param1,_loc3_ - 1);
         }
      }
      
      public function update(param1:Vector.<§5#^§>) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§#!+§(param1[_loc2_].id,param1[_loc2_].count);
            _loc2_++;
         }
      }
   }
}
