package §>";§
{
   import §"p§.§@8§;
   import §,!x§.§ !a§;
   import §,!x§.§!U§;
   import §,!x§.§]!'§;
   import §-=§.§0"9§;
   import §9a§.§-!d§;
   import §=e§.§1!@§;
   import flash.utils.Dictionary;
   
   public class §#§ extends §-!d§
   {
      
      public static const XP:String = "XP";
      
      public static const COINS:String = "coins";
      
      public static const BOLTS:String = "currentBolts";
      
      public static const §&W§:String = "maxBolts";
      
      public static const ISLEVELUP:String = "ISLEVELUP";
      
      public static const OLDXP:String = "OLDXP";
      
      public static const NEWXP:String = "NEWXP";
      
      public static const MINXP:String = "MINXP";
      
      public static const MAXXP:String = "MAXXP";
      
      public static const OLDXPLEVEL:String = "OLDXPLEVEL";
      
      public static const NEWXPLEVEL:String = "NEWXPLEVEL";
      
      public static const BLOCKS:String = "maxNumPlaceableObjects";
      
      public static const BLOCKSNEW:String = "BLOCKSNEW";
      
      public static const BLOCKSMAX:String = "BLOCKSMAX";
      
      public static const USERNAME:String = "USERNAME";
      
      public static const USERID:String = "USERID";
      
      public static const §6u§:String = "items";
      
      public static const §[!5§:String = "experienceLevel";
      
      public static const §`w§:String = "newItems";
      
      public static const §"I§:Object = "completedQuests";
      
      public static const §?z§:Object = "sandboxAvailable";
      
      public static const §@!U§:String = "oldCoins";
      
      public static const §=#§:String = "newCoins";
      
      public static const §40§:String = "newBolts";
      
      private static var §?!B§:Class = §1!@§;
       
      
      private var § A§:Dictionary;
      
      private var §2U§:Vector.<Object>;
      
      private var §72§:§!U§;
      
      public function §#§(param1:String)
      {
         this.§ A§ = new Dictionary();
         this.§2U§ = new Vector.<Object>();
         super(param1);
         this.§ A§[BLOCKSMAX] = 10;
         this.§ A§[BLOCKS] = 10;
         this.§ A§[BLOCKSNEW] = 10;
         this.§ A§[MAXXP] = 100;
         §@8§.log("Server root:" + param1);
         §?!B§["registerMethod"]("login",this.§1!h§);
         §?!B§["registerMethod"]("onSetBolts",this.onSetBolts);
         §?!B§["registerMethod"]("onSetCoins",this.onSetCoins);
         §?!B§["registerMethod"]("onSetBlocks",this.onSetBlocks);
      }
      
      public function onSetBolts(param1:Object) : void
      {
         if(!this.§<!6§(param1))
         {
            this.§ A§[§&W§] = param1.maxBolts;
            this.§ A§[BOLTS] = param1.currentBolts;
            if(this.§72§)
            {
               this.§72§.dispatchEvent(new §0"9§(§0"9§.§[!M§));
            }
         }
      }
      
      private function onSetBlocks(param1:int) : void
      {
         this.§ A§[BLOCKS] = param1;
         this.§ A§[BLOCKSMAX] = param1;
         if(this.§72§)
         {
            this.§72§.dispatchEvent(new §0"9§(§0"9§.§[!M§));
         }
      }
      
      private function §<!6§(param1:Object) : Boolean
      {
         var _loc2_:String = null;
         if(param1 && param1.error && param1.error === true)
         {
            _loc2_ = !!param1.message ? param1.message : "An error occured.";
            § !a§.showError(_loc2_);
            return true;
         }
         return false;
      }
      
      public function onSetCoins(param1:int) : void
      {
         this.§ A§[COINS] = param1;
         if(this.§72§)
         {
            this.§72§.dispatchEvent(new §0"9§(§0"9§.§[!M§));
         }
      }
      
      public function §1,§() : void
      {
         this.§ A§[§6u§] = null;
      }
      
      private function §1!h§(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         this.§3!e§(_loc2_["user"]);
         this.§3!e§(_loc2_["userProgress"]);
         this.§3!e§(_loc2_["user"]["bolts"]);
         this.§ A§[§6u§] = _loc2_.items;
      }
      
      public function §3m§(... rest) : void
      {
         var _loc2_:§]!'§ = null;
         for each(_loc2_ in rest)
         {
            if(_loc2_ as §!U§ != null)
            {
               this.§72§ = _loc2_ as §!U§;
            }
         }
      }
      
      public function §3!e§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1)
         {
            this.§ A§[_loc2_] = param1[_loc2_];
         }
         if(this.§72§)
         {
            this.§72§.dispatchEvent(new §0"9§(§0"9§.§[!M§));
         }
      }
      
      public function getValue(param1:String) : *
      {
         return this.§ A§[param1];
      }
      
      public function § "1§(param1:String) : Boolean
      {
         var _loc2_:* = null;
         if(this.§ A§[§6u§] == null)
         {
            return true;
         }
         for(_loc2_ in this.§ A§[§6u§])
         {
            if(_loc2_ == param1 && this.§ A§[§6u§][_loc2_] != 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §2O§() : String
      {
         return this.§ A§[USERID];
      }
      
      public function get §00§() : String
      {
         return this.§ A§[USERNAME];
      }
      
      public function get xp() : Number
      {
         return this.§ A§[XP];
      }
      
      public function get coins() : Number
      {
         return this.§ A§[COINS];
      }
      
      public function get oldCoins() : Number
      {
         return this.§ A§[§@!U§];
      }
      
      public function get newCoins() : Number
      {
         return this.§ A§[§=#§];
      }
      
      public function get newBolts() : Number
      {
         return this.§ A§[§40§];
      }
      
      public function get blocks() : int
      {
         return this.§ A§[BLOCKS];
      }
      
      public function set blocks(param1:int) : void
      {
         this.§ A§[BLOCKS] = param1;
      }
      
      public function get §;!O§() : Vector.<String>
      {
         var _loc2_:* = null;
         if(this.§ A§[§6u§] == null)
         {
            return null;
         }
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in this.§ A§[§6u§])
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function get bolts() : int
      {
         return this.§ A§[BOLTS];
      }
      
      public function get §^!B§() : Boolean
      {
         return this.§ A§[ISLEVELUP];
      }
      
      public function get maxXp() : int
      {
         return this.§ A§[MAXXP];
      }
      
      public function get minXp() : int
      {
         return this.§ A§[MINXP];
      }
      
      public function get oldXp() : int
      {
         return this.§ A§[OLDXP];
      }
      
      public function get newXp() : int
      {
         return this.§ A§[NEWXP];
      }
      
      public function get oldXpLevel() : int
      {
         return this.§ A§[OLDXPLEVEL];
      }
      
      public function get newXpLevel() : int
      {
         return this.§ A§[NEWXPLEVEL];
      }
      
      public function get boltsMax() : int
      {
         return this.§ A§[§&W§];
      }
      
      public function get §'b§() : int
      {
         return this.§ A§[BLOCKSNEW];
      }
      
      public function get §5"#§() : int
      {
         return this.§ A§[BLOCKSMAX];
      }
      
      public function §#]§() : int
      {
         if(this.newXpLevel > 0)
         {
            return this.newXpLevel;
         }
         return this.§ A§[§[!5§];
      }
      
      public function get newItems() : Object
      {
         return this.§ A§[§`w§];
      }
      
      public function get completedQuests() : Vector.<Object>
      {
         if(this.§ A§[§"I§] == null)
         {
            this.§ A§[§"I§] = new Vector.<Object>();
         }
         return this.§ A§[§"I§];
      }
      
      public function §-![§(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(this.§ A§[§"I§] == null)
         {
            this.§ A§[§"I§] = new Vector.<Object>();
         }
         for each(_loc2_ in this.§ A§[§"I§])
         {
            if(_loc2_.id == param1.id)
            {
               return;
            }
         }
         this.§ A§[§"I§].push(param1);
      }
      
      public function get sandboxAvailable() : Boolean
      {
         return this.§ A§[§?z§];
      }
      
      public function set sandboxAvailable(param1:Boolean) : void
      {
         this.§ A§[§?z§] = param1;
      }
   }
}
