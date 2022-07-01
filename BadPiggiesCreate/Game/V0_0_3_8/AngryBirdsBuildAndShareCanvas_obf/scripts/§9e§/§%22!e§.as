package §9e§
{
   import §!!T§.§"!S§;
   import §,m§.§[n§;
   import §]!b§.§0!'§;
   import §]!b§.§9h§;
   import §]-§.§=!$§;
   import flash.utils.Dictionary;
   
   public class §"!e§ extends §=!$§
   {
      
      public static const XP:String = "XP";
      
      public static const §8" §:String = "coins";
      
      public static const §^o§:String = "currentBolts";
      
      public static const §!!c§:String = "maxBolts";
      
      public static const ISLEVELUP:String = "ISLEVELUP";
      
      public static const OLDXP:String = "OLDXP";
      
      public static const NEWXP:String = "NEWXP";
      
      public static const MINXP:String = "MINXP";
      
      public static const MAXXP:String = "MAXXP";
      
      public static const OLDXPLEVEL:String = "OLDXPLEVEL";
      
      public static const NEWXPLEVEL:String = "NEWXPLEVEL";
      
      public static const §]z§:String = "maxNumPlaceableObjects";
      
      public static const BLOCKSNEW:String = "BLOCKSNEW";
      
      public static const BLOCKSMAX:String = "BLOCKSMAX";
      
      public static const USERNAME:String = "USERNAME";
      
      public static const USERID:String = "USERID";
      
      public static const §[8§:String = "items";
      
      public static const §[I§:String = "experienceLevel";
      
      public static const §7!w§:String = "newItems";
       
      
      private var §!o§:Dictionary;
      
      private var §6!Q§:Vector.<Object>;
      
      private var §"!d§:§0!'§;
      
      public function §"!e§(param1:String)
      {
         this.§!o§ = new Dictionary();
         this.§6!Q§ = new Vector.<Object>();
         super(param1);
         this.§!o§[BLOCKSMAX] = 10;
         §"!S§.registerMethod("login",this.§+!m§);
         §"!S§.registerMethod("setCoins",this.§7!T§);
      }
      
      private function §7!T§(param1:int) : void
      {
         this.§!o§[§8" §] = param1;
         if(this.§"!d§)
         {
            this.§"!d§.dispatchEvent(new §[n§(§[n§.§&V§));
         }
      }
      
      public function §'O§() : void
      {
         this.§!o§[§[8§] = null;
      }
      
      private function §+!m§(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         this.§[!K§(_loc2_["user"]);
         this.§[!K§(_loc2_["userProgress"]);
         this.§[!K§(_loc2_["user"]["bolts"]);
         this.§!o§[§[8§] = _loc2_.items;
      }
      
      public function §<!3§(... rest) : void
      {
         var _loc2_:§9h§ = null;
         for each(_loc2_ in rest)
         {
            if(_loc2_ as §0!'§ != null)
            {
               this.§"!d§ = _loc2_ as §0!'§;
            }
         }
      }
      
      public function §[!K§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1)
         {
            this.§!o§[_loc2_] = param1[_loc2_];
         }
         if(this.§"!d§)
         {
            this.§"!d§.dispatchEvent(new §[n§(§[n§.§&V§));
         }
      }
      
      public function getValue(param1:String) : *
      {
         return this.§!o§[param1];
      }
      
      public function §`B§(param1:String) : Boolean
      {
         var _loc2_:* = null;
         if(this.§!o§[§[8§] == null)
         {
            return true;
         }
         for(_loc2_ in this.§!o§[§[8§])
         {
            if(_loc2_ == param1 && this.§!o§[§[8§][_loc2_] != 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §`b§() : String
      {
         return this.§!o§[USERID];
      }
      
      public function get §^E§() : String
      {
         return this.§!o§[USERNAME];
      }
      
      public function get xp() : Number
      {
         return this.§!o§[XP];
      }
      
      public function get coins() : Number
      {
         return this.§!o§[§8" §];
      }
      
      public function get blocks() : int
      {
         return this.§!o§[§]z§];
      }
      
      public function set blocks(param1:int) : void
      {
         this.§!o§[§]z§] = param1;
      }
      
      public function get §4!-§() : Vector.<String>
      {
         var _loc2_:* = null;
         if(this.§!o§[§[8§] == null)
         {
            return null;
         }
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in this.§!o§[§[8§])
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function get bolts() : int
      {
         return this.§!o§[§^o§];
      }
      
      public function get §?W§() : Boolean
      {
         return this.§!o§[ISLEVELUP];
      }
      
      public function get maxXp() : int
      {
         return this.§!o§[MAXXP];
      }
      
      public function get minXp() : int
      {
         return this.§!o§[MINXP];
      }
      
      public function get oldXp() : int
      {
         return this.§!o§[OLDXP];
      }
      
      public function get newXp() : int
      {
         return this.§!o§[NEWXP];
      }
      
      public function get oldXpLevel() : int
      {
         return this.§!o§[OLDXPLEVEL];
      }
      
      public function get newXpLevel() : int
      {
         return this.§!o§[NEWXPLEVEL];
      }
      
      public function get boltsMax() : int
      {
         return this.§!o§[§!!c§];
      }
      
      public function get §]!a§() : int
      {
         return this.§!o§[BLOCKSNEW];
      }
      
      public function get §8"3§() : int
      {
         return this.§!o§[BLOCKSMAX];
      }
      
      public function §0!C§() : int
      {
         if(this.newXpLevel > 0)
         {
            return this.newXpLevel;
         }
         return this.§!o§[§[I§];
      }
      
      public function get newItems() : Object
      {
         return this.§!o§[§7!w§];
      }
   }
}
