package §^!y§
{
   import §%_§.§4m§;
   import §'i§.§5A§;
   import §'i§.§6-§;
   import §'i§.§8p§;
   import §62§.§9o§;
   import §=!M§.§9!P§;
   import §`!y§.§,!u§;
   import flash.utils.Dictionary;
   
   public class §'"#§ extends §,!u§
   {
      
      public static const XP:String = "XP";
      
      public static const COINS:String = "coins";
      
      public static const BOLTS:String = "currentBolts";
      
      public static const §"2§:String = "maxBolts";
      
      public static const ISLEVELUP:String = "ISLEVELUP";
      
      public static const OLDXP:String = "OLDXP";
      
      public static const NEWXP:String = "NEWXP";
      
      public static const MINXP:String = "MINXP";
      
      public static const MAXXP:String = "MAXXP";
      
      public static const OLDXPLEVEL:String = "OLDXPLEVEL";
      
      public static const NEWXPLEVEL:String = "NEWXPLEVEL";
      
      public static const BLOCKS:String = "maxNumPlaceableObjects";
      
      public static const §>m§:String = "maxOldBlocks";
      
      public static const §<I§:String = "maxNewBlocks";
      
      public static const USERNAME:String = "USERNAME";
      
      public static const USERID:String = "USERID";
      
      public static const §5!5§:String = "items";
      
      public static const §3!;§:String = "experienceLevel";
      
      public static const §[",§:String = "newItems";
      
      public static const §%!<§:Object = "completedQuests";
      
      public static const §`!Q§:Object = "sandboxAvailable";
      
      public static const §0v§:String = "oldCoins";
      
      public static const §&"7§:String = "newCoins";
      
      public static const §?c§:String = "newBolts";
      
      private static var §extends§:Class = §4m§;
       
      
      private var §"!k§:Dictionary;
      
      private var §5!Y§:Vector.<Object>;
      
      private var §8!`§:§5A§;
      
      public function §'"#§(param1:String)
      {
         this.§"!k§ = new Dictionary();
         this.§5!Y§ = new Vector.<Object>();
         super(param1);
         this.§"!k§[§<I§] = 10;
         this.§"!k§[BLOCKS] = 10;
         this.§"!k§[§>m§] = 10;
         this.§"!k§[MAXXP] = 100;
         §9!P§.log("Server root:" + param1);
         §extends§["registerMethod"]("login",this.§ else§);
         §extends§["registerMethod"]("onSetBolts",this.onSetBolts);
         §extends§["registerMethod"]("onSetCoins",this.onSetCoins);
         §extends§["registerMethod"]("onSetBlocks",this.onSetBlocks);
      }
      
      public function onSetBolts(param1:Object) : void
      {
         if(!this.§0!r§(param1))
         {
            this.§"!k§[§"2§] = param1.maxBolts;
            this.§"!k§[BOLTS] = param1.currentBolts;
            if(this.§8!`§)
            {
               this.§8!`§.dispatchEvent(new §9o§(§9o§.§,0§));
            }
         }
      }
      
      private function onSetBlocks(param1:int) : void
      {
         this.§"!k§[§<I§] = param1 + this.§"!k§[§<I§];
         this.§"!k§[BLOCKS] = param1 + this.§"!k§[BLOCKS];
         this.§"!k§[§>m§] = this.§"!k§[BLOCKS];
         if(this.§8!`§)
         {
            this.§8!`§.dispatchEvent(new §9o§(§9o§.§,0§));
         }
      }
      
      private function §0!r§(param1:Object) : Boolean
      {
         var _loc2_:String = null;
         if(param1 && param1.error && param1.error === true)
         {
            _loc2_ = !!param1.message ? param1.message : "An error occured.";
            §6-§.showError(_loc2_);
            return true;
         }
         return false;
      }
      
      public function onSetCoins(param1:int) : void
      {
         this.§"!k§[COINS] = param1;
         if(this.§8!`§)
         {
            this.§8!`§.dispatchEvent(new §9o§(§9o§.§,0§));
         }
      }
      
      public function §[!y§() : void
      {
         this.§"!k§[§5!5§] = null;
      }
      
      private function § else§(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         this.§5u§(_loc2_["user"]);
         this.§5u§(_loc2_["userProgress"]);
         this.§5u§(_loc2_["user"]["bolts"]);
         this.§"!k§[§5!5§] = _loc2_.items;
      }
      
      public function §>!D§(... rest) : void
      {
         var _loc2_:§8p§ = null;
         for each(_loc2_ in rest)
         {
            if(_loc2_ as §5A§ != null)
            {
               this.§8!`§ = _loc2_ as §5A§;
            }
         }
      }
      
      public function §5u§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1)
         {
            this.§"!k§[_loc2_] = param1[_loc2_];
         }
         if(this.§8!`§)
         {
            this.§8!`§.dispatchEvent(new §9o§(§9o§.§,0§));
         }
      }
      
      public function getValue(param1:String) : *
      {
         return this.§"!k§[param1];
      }
      
      public function §?Z§(param1:String) : Boolean
      {
         var _loc2_:* = null;
         if(this.§"!k§[§5!5§] == null)
         {
            return true;
         }
         for(_loc2_ in this.§"!k§[§5!5§])
         {
            if(_loc2_ == param1 && this.§"!k§[§5!5§][_loc2_] != 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §!R§() : String
      {
         return this.§"!k§[USERID];
      }
      
      public function get §=a§() : String
      {
         return this.§"!k§[USERNAME];
      }
      
      public function get xp() : Number
      {
         return this.§"!k§[XP];
      }
      
      public function get coins() : Number
      {
         return this.§"!k§[COINS];
      }
      
      public function get oldCoins() : Number
      {
         return this.§"!k§[§0v§];
      }
      
      public function get newCoins() : Number
      {
         return this.§"!k§[§&"7§];
      }
      
      public function get newBolts() : Number
      {
         return this.§"!k§[§?c§];
      }
      
      public function get blocks() : int
      {
         return this.§"!k§[BLOCKS];
      }
      
      public function set blocks(param1:int) : void
      {
         this.§"!k§[BLOCKS] = param1;
      }
      
      public function get §]!s§() : Vector.<String>
      {
         var _loc2_:* = null;
         if(this.§"!k§[§5!5§] == null)
         {
            return null;
         }
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in this.§"!k§[§5!5§])
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function get bolts() : int
      {
         return this.§"!k§[BOLTS];
      }
      
      public function get §[!W§() : Boolean
      {
         return this.§"!k§[ISLEVELUP];
      }
      
      public function get maxXp() : int
      {
         return this.§"!k§[MAXXP];
      }
      
      public function get minXp() : int
      {
         return this.§"!k§[MINXP];
      }
      
      public function get oldXp() : int
      {
         return this.§"!k§[OLDXP];
      }
      
      public function get newXp() : int
      {
         return this.§"!k§[NEWXP];
      }
      
      public function get oldXpLevel() : int
      {
         return this.§"!k§[OLDXPLEVEL];
      }
      
      public function get newXpLevel() : int
      {
         return this.§"!k§[NEWXPLEVEL];
      }
      
      public function get boltsMax() : int
      {
         return this.§"!k§[§"2§];
      }
      
      public function get §=!Q§() : int
      {
         return this.§"!k§[§>m§];
      }
      
      public function get §!T§() : int
      {
         return this.§"!k§[§<I§];
      }
      
      public function §'L§() : int
      {
         if(this.newXpLevel > 0)
         {
            return this.newXpLevel;
         }
         return this.§"!k§[§3!;§];
      }
      
      public function get newItems() : Object
      {
         return this.§"!k§[§[",§];
      }
      
      public function get completedQuests() : Vector.<Object>
      {
         if(this.§"!k§[§%!<§] == null)
         {
            this.§"!k§[§%!<§] = new Vector.<Object>();
         }
         return this.§"!k§[§%!<§];
      }
      
      public function §^e§(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(this.§"!k§[§%!<§] == null)
         {
            this.§"!k§[§%!<§] = new Vector.<Object>();
         }
         for each(_loc2_ in this.§"!k§[§%!<§])
         {
            if(_loc2_.id == param1.id)
            {
               return;
            }
         }
         this.§"!k§[§%!<§].push(param1);
      }
      
      public function get sandboxAvailable() : Boolean
      {
         return this.§"!k§[§`!Q§];
      }
      
      public function set sandboxAvailable(param1:Boolean) : void
      {
         this.§"!k§[§`!Q§] = param1;
      }
   }
}
