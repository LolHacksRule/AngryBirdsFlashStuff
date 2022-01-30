package §1!p§
{
   import §!q§.§2j§;
   import §!q§.§5$§;
   import §3;§.§7!k§;
   import §8!s§.§+?§;
   import §8"'§.§?!`§;
   import flash.utils.Dictionary;
   
   public class §`!#§ extends §+?§
   {
      
      public static const XP:String = "XP";
      
      public static const §%?§:String = "coins";
      
      public static const §8i§:String = "currentBolts";
      
      public static const §[!v§:String = "maxBolts";
      
      public static const ISLEVELUP:String = "ISLEVELUP";
      
      public static const OLDXP:String = "OLDXP";
      
      public static const NEWXP:String = "NEWXP";
      
      public static const MINXP:String = "MINXP";
      
      public static const MAXXP:String = "MAXXP";
      
      public static const OLDXPLEVEL:String = "OLDXPLEVEL";
      
      public static const NEWXPLEVEL:String = "NEWXPLEVEL";
      
      public static const §"!]§:String = "maxNumPlaceableObjects";
      
      public static const BLOCKSNEW:String = "BLOCKSNEW";
      
      public static const BLOCKSMAX:String = "BLOCKSMAX";
      
      public static const USERNAME:String = "USERNAME";
      
      public static const USERID:String = "USERID";
      
      public static const §`!M§:String = "items";
      
      public static const §2!U§:String = "experienceLevel";
      
      public static const §7z§:String = "newItems";
       
      
      private var §-!+§:Dictionary;
      
      private var §[!<§:Vector.<Object>;
      
      private var §1L§:§5$§;
      
      public function §`!#§(param1:String)
      {
         this.§-!+§ = new Dictionary();
         this.§[!<§ = new Vector.<Object>();
         super(param1);
         this.§-!+§[BLOCKSMAX] = 10;
         this.§-!+§[§"!]§] = 10;
         this.§-!+§[BLOCKSNEW] = 10;
         §?!`§.registerMethod("login",this.§9"6§);
         §?!`§.registerMethod("setCoins",this.§?!d§);
      }
      
      private function §?!d§(param1:int) : void
      {
         this.§-!+§[§%?§] = param1;
         if(this.§1L§)
         {
            this.§1L§.dispatchEvent(new §7!k§(§7!k§.§6!^§));
         }
      }
      
      public function §!g§() : void
      {
         this.§-!+§[§`!M§] = null;
      }
      
      private function §9"6§(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         this.§,X§(_loc2_["user"]);
         this.§,X§(_loc2_["userProgress"]);
         this.§,X§(_loc2_["user"]["bolts"]);
         this.§-!+§[§`!M§] = _loc2_.items;
      }
      
      public function §8P§(... rest) : void
      {
         var _loc2_:§2j§ = null;
         for each(_loc2_ in rest)
         {
            if(_loc2_ as §5$§ != null)
            {
               this.§1L§ = _loc2_ as §5$§;
            }
         }
      }
      
      public function §,X§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1)
         {
            this.§-!+§[_loc2_] = param1[_loc2_];
         }
         if(this.§1L§)
         {
            this.§1L§.dispatchEvent(new §7!k§(§7!k§.§6!^§));
         }
      }
      
      public function getValue(param1:String) : *
      {
         return this.§-!+§[param1];
      }
      
      public function §^S§(param1:String) : Boolean
      {
         var _loc2_:* = null;
         if(this.§-!+§[§`!M§] == null)
         {
            return true;
         }
         for(_loc2_ in this.§-!+§[§`!M§])
         {
            if(_loc2_ == param1 && this.§-!+§[§`!M§][_loc2_] != 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §%&§() : String
      {
         return this.§-!+§[USERID];
      }
      
      public function get §;c§() : String
      {
         return this.§-!+§[USERNAME];
      }
      
      public function get xp() : Number
      {
         return this.§-!+§[XP];
      }
      
      public function get coins() : Number
      {
         return this.§-!+§[§%?§];
      }
      
      public function get blocks() : int
      {
         return this.§-!+§[§"!]§];
      }
      
      public function set blocks(param1:int) : void
      {
         this.§-!+§[§"!]§] = param1;
      }
      
      public function get §=!k§() : Vector.<String>
      {
         var _loc2_:* = null;
         if(this.§-!+§[§`!M§] == null)
         {
            return null;
         }
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in this.§-!+§[§`!M§])
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function get bolts() : int
      {
         return this.§-!+§[§8i§];
      }
      
      public function get §;!A§() : Boolean
      {
         return this.§-!+§[ISLEVELUP];
      }
      
      public function get maxXp() : int
      {
         return this.§-!+§[MAXXP];
      }
      
      public function get minXp() : int
      {
         return this.§-!+§[MINXP];
      }
      
      public function get oldXp() : int
      {
         return this.§-!+§[OLDXP];
      }
      
      public function get newXp() : int
      {
         return this.§-!+§[NEWXP];
      }
      
      public function get oldXpLevel() : int
      {
         return this.§-!+§[OLDXPLEVEL];
      }
      
      public function get newXpLevel() : int
      {
         return this.§-!+§[NEWXPLEVEL];
      }
      
      public function get boltsMax() : int
      {
         return this.§-!+§[§[!v§];
      }
      
      public function get §#!n§() : int
      {
         return this.§-!+§[BLOCKSNEW];
      }
      
      public function get §+y§() : int
      {
         return this.§-!+§[BLOCKSMAX];
      }
      
      public function §8j§() : int
      {
         if(this.newXpLevel > 0)
         {
            return this.newXpLevel;
         }
         return this.§-!+§[§2!U§];
      }
      
      public function get newItems() : Object
      {
         return this.§-!+§[§7z§];
      }
   }
}
