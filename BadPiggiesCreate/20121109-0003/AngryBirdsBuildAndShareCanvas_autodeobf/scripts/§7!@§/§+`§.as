package §7!@§
{
   import §"_§.§^!J§;
   import §'j§.§##§;
   import §05§.§?s§;
   import §1" §.§#!j§;
   import §1" §.§%&§;
   import §1" §.§4!x§;
   import §1" §.§@"?§;
   import §6]§.§,"0§;
   import flash.utils.Dictionary;
   
   public class §+`§ extends §##§
   {
      
      public static const XP:String = "XP";
      
      public static const COINS:String = "coins";
      
      public static const BOLTS:String = "currentBolts";
      
      public static const §2!$§:String = "maxBolts";
      
      public static const ISLEVELUP:String = "ISLEVELUP";
      
      public static const OLDXP:String = "OLDXP";
      
      public static const NEWXP:String = "NEWXP";
      
      public static const MINXP:String = "MINXP";
      
      public static const MAXXP:String = "MAXXP";
      
      public static const OLDXPLEVEL:String = "OLDXPLEVEL";
      
      public static const NEWXPLEVEL:String = "NEWXPLEVEL";
      
      public static const BLOCKS:String = "maxNumPlaceableObjects";
      
      public static const §'b§:String = "maxOldBlocks";
      
      public static const §3!r§:String = "maxNewBlocks";
      
      public static const USERNAME:String = "USERNAME";
      
      public static const USERID:String = "USERID";
      
      public static const §2!k§:String = "items";
      
      public static const §%U§:String = "experienceLevel";
      
      public static const §-!l§:String = "newItems";
      
      public static const §0j§:Object = "completedQuests";
      
      public static const §3%§:Object = "sandboxAvailable";
      
      public static const §]!P§:String = "oldCoins";
      
      public static const §4!=§:String = "newCoins";
      
      public static const §^!p§:String = "newBolts";
      
      private static var §<"!§:Class = §?s§;
       
      
      private var §`!?§:Dictionary;
      
      private var §+B§:Vector.<Object>;
      
      private var §87§:§%&§;
      
      public function §+`§(param1:String)
      {
         this.§`!?§ = new Dictionary();
         this.§+B§ = new Vector.<Object>();
         super(param1);
         this.§`!?§[§3!r§] = 1000;
         this.§`!?§[BLOCKS] = 1000;
         this.§`!?§[§'b§] = 1000;
         this.§`!?§[MAXXP] = 1000;
         §,"0§.log("Server root:" + param1);
         §<"!§["registerMethod"]("login",this.§-!>§);
         §<"!§["registerMethod"]("onSetBolts",this.onSetBolts);
         §<"!§["registerMethod"]("onSetCoins",this.onSetCoins);
         §<"!§["registerMethod"]("onSetBlocks",this.onSetBlocks);
      }
      
      public function onSetBolts(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         if(!this.§null §(_loc2_))
         {
            this.§`!?§[§2!$§] = _loc2_.bolts["maxBolts"];
            this.§`!?§[BOLTS] = _loc2_.bolts["currentBolts"];
            if(this.§87§)
            {
               this.§87§.dispatchEvent(new §^!J§(§^!J§.§[!H§));
            }
         }
      }
      
      private function onSetBlocks(param1:String) : void
      {
         var _loc3_:Number = NaN;
         var _loc2_:Object = JSON.parse(param1);
         if(!this.§null §(_loc2_))
         {
            _loc3_ = this.§`!?§[BLOCKS];
            this.§`!?§[§3!r§] = _loc2_.block;
            this.§`!?§[BLOCKS] = _loc2_.block - (_loc2_.block - §#!j§.§[E§.§0"!§.§=!I§());
            this.§`!?§[§'b§] = this.§`!?§[BLOCKS];
            if(this.§87§)
            {
               this.§87§.dispatchEvent(new §^!J§(§^!J§.§[!H§));
            }
         }
      }
      
      private function §null §(param1:Object) : Boolean
      {
         var _loc2_:String = null;
         if(param1 && param1.error && param1.error === true)
         {
            _loc2_ = !!param1.message ? param1.message : "An error occured.";
            §@"?§.showError(_loc2_);
            return true;
         }
         return false;
      }
      
      public function onSetCoins(param1:int) : void
      {
         this.§`!?§[COINS] = param1;
         if(this.§87§)
         {
            this.§87§.dispatchEvent(new §^!J§(§^!J§.§[!H§));
         }
      }
      
      public function §break§() : void
      {
         this.§`!?§[§2!k§] = null;
      }
      
      private function §-!>§(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         this.§#H§(_loc2_["user"]);
         this.§#H§(_loc2_["userProgress"]);
         this.§#H§(_loc2_["user"]["bolts"]);
         this.§`!?§[§2!k§] = _loc2_.items;
      }
      
      public function §!!F§(... rest) : void
      {
         var _loc2_:§4!x§ = null;
         for each(_loc2_ in rest)
         {
            if(_loc2_ as §%&§ != null)
            {
               this.§87§ = _loc2_ as §%&§;
            }
         }
      }
      
      public function §#H§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1)
         {
            this.§`!?§[_loc2_] = param1[_loc2_];
            if(_loc2_ == BLOCKS)
            {
               this.§`!?§[§3!r§] = param1[_loc2_];
            }
         }
         if(this.§87§)
         {
            this.§87§.dispatchEvent(new §^!J§(§^!J§.§[!H§));
         }
      }
      
      public function getValue(param1:String) : *
      {
         return this.§`!?§[param1];
      }
      
      public function §&"4§(param1:String) : Boolean
      {
         var _loc2_:* = null;
         if(this.§`!?§[§2!k§] == null)
         {
            return true;
         }
         for(_loc2_ in this.§`!?§[§2!k§])
         {
            if(_loc2_ == param1 && this.§`!?§[§2!k§][_loc2_] != 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §for §() : String
      {
         return this.§`!?§[USERID];
      }
      
      public function get §'!;§() : String
      {
         return this.§`!?§[USERNAME];
      }
      
      public function get xp() : Number
      {
         return this.§`!?§[XP];
      }
      
      public function get coins() : Number
      {
         return this.§`!?§[COINS];
      }
      
      public function get oldCoins() : Number
      {
         return this.§`!?§[§]!P§];
      }
      
      public function get newCoins() : Number
      {
         return this.§`!?§[§4!=§];
      }
      
      public function get newBolts() : Number
      {
         return this.§`!?§[§^!p§];
      }
      
      public function get blocks() : int
      {
         return this.§`!?§[BLOCKS];
      }
      
      public function set blocks(param1:int) : void
      {
         this.§`!?§[BLOCKS] = param1;
      }
      
      public function get §^1§() : Vector.<String>
      {
         var _loc2_:* = null;
         if(this.§`!?§[§2!k§] == null)
         {
            return null;
         }
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in this.§`!?§[§2!k§])
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function get bolts() : int
      {
         return this.§`!?§[BOLTS];
      }
      
      public function get §&3§() : Boolean
      {
         return this.§`!?§[ISLEVELUP];
      }
      
      public function get maxXp() : int
      {
         return this.§`!?§[MAXXP];
      }
      
      public function get minXp() : int
      {
         return this.§`!?§[MINXP];
      }
      
      public function get oldXp() : int
      {
         return this.§`!?§[OLDXP];
      }
      
      public function get newXp() : int
      {
         return this.§`!?§[NEWXP];
      }
      
      public function get oldXpLevel() : int
      {
         return this.§`!?§[OLDXPLEVEL];
      }
      
      public function get newXpLevel() : int
      {
         return this.§`!?§[NEWXPLEVEL];
      }
      
      public function get boltsMax() : int
      {
         return this.§`!?§[§2!$§];
      }
      
      public function get §<R§() : int
      {
         return this.§`!?§[§'b§];
      }
      
      public function get §#!r§() : int
      {
         return this.§`!?§[§3!r§];
      }
      
      public function §]!T§() : int
      {
         if(this.newXpLevel > 0)
         {
            return this.newXpLevel;
         }
         return this.§`!?§[§%U§];
      }
      
      public function get newItems() : Object
      {
         return this.§`!?§[§-!l§];
      }
      
      public function get completedQuests() : Vector.<Object>
      {
         if(this.§`!?§[§0j§] == null)
         {
            this.§`!?§[§0j§] = new Vector.<Object>();
         }
         return this.§`!?§[§0j§];
      }
      
      public function §7"8§(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(this.§`!?§[§0j§] == null)
         {
            this.§`!?§[§0j§] = new Vector.<Object>();
         }
         for each(_loc2_ in this.§`!?§[§0j§])
         {
            if(_loc2_.id == param1.id)
            {
               return;
            }
         }
         this.§`!?§[§0j§].push(param1);
      }
      
      public function get sandboxAvailable() : Boolean
      {
         return this.§`!?§[§3%§];
      }
      
      public function set sandboxAvailable(param1:Boolean) : void
      {
         this.§`!?§[§3%§] = param1;
      }
   }
}
