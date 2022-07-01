package § !%§
{
   import §&"&§.§8!"§;
   import §5!k§.§%"§;
   import §7"2§.§!"1§;
   import §7"2§.§&!w§;
   import §]!4§.§+!p§;
   import flash.utils.Dictionary;
   
   public class §^2§ extends §+!p§
   {
      
      public static const XP:String = "XP";
      
      public static const §,2§:String = "coins";
      
      public static const §'!1§:String = "currentBolts";
      
      public static const §4R§:String = "maxBolts";
      
      public static const ISLEVELUP:String = "ISLEVELUP";
      
      public static const OLDXP:String = "OLDXP";
      
      public static const NEWXP:String = "NEWXP";
      
      public static const MINXP:String = "MINXP";
      
      public static const MAXXP:String = "MAXXP";
      
      public static const OLDXPLEVEL:String = "OLDXPLEVEL";
      
      public static const NEWXPLEVEL:String = "NEWXPLEVEL";
      
      public static const § !K§:String = "maxNumPlaceableObjects";
      
      public static const BLOCKSNEW:String = "BLOCKSNEW";
      
      public static const BLOCKSMAX:String = "BLOCKSMAX";
      
      public static const USERNAME:String = "USERNAME";
      
      public static const USERID:String = "USERID";
      
      public static const §4!'§:String = "items";
      
      public static const §<!e§:String = "experienceLevel";
      
      public static const §!!U§:String = "newItems";
       
      
      private var §,!;§:Dictionary;
      
      private var §;!t§:Vector.<Object>;
      
      private var §<!r§:§&!w§;
      
      public function §^2§(param1:String)
      {
         this.§,!;§ = new Dictionary();
         this.§;!t§ = new Vector.<Object>();
         super(param1);
         this.§,!;§[BLOCKSMAX] = 10;
         §8!"§.registerMethod("login",this.§+B§);
         §8!"§.registerMethod("setCoins",this.§;v§);
      }
      
      private function §;v§(param1:int) : void
      {
         this.§,!;§[§,2§] = param1;
         if(this.§<!r§)
         {
            this.§<!r§.dispatchEvent(new §%"§(§%"§.§"!u§));
         }
      }
      
      public function §9e§() : void
      {
         this.§,!;§[§4!'§] = null;
      }
      
      private function §+B§(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         this.§[!A§(_loc2_["user"]);
         this.§[!A§(_loc2_["userProgress"]);
         this.§[!A§(_loc2_["user"]["bolts"]);
         this.§,!;§[§4!'§] = _loc2_.items;
      }
      
      public function §'D§(... rest) : void
      {
         var _loc2_:§!"1§ = null;
         for each(_loc2_ in rest)
         {
            if(_loc2_ as §&!w§ != null)
            {
               this.§<!r§ = _loc2_ as §&!w§;
            }
         }
      }
      
      public function §[!A§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1)
         {
            this.§,!;§[_loc2_] = param1[_loc2_];
         }
         if(this.§<!r§)
         {
            this.§<!r§.dispatchEvent(new §%"§(§%"§.§"!u§));
         }
      }
      
      public function getValue(param1:String) : *
      {
         return this.§,!;§[param1];
      }
      
      public function §`!s§(param1:String) : Boolean
      {
         var _loc2_:* = null;
         if(this.§,!;§[§4!'§] == null)
         {
            return true;
         }
         for(_loc2_ in this.§,!;§[§4!'§])
         {
            if(_loc2_ == param1 && this.§,!;§[§4!'§][_loc2_] != 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §[!1§() : String
      {
         return this.§,!;§[USERID];
      }
      
      public function get §8O§() : String
      {
         return this.§,!;§[USERNAME];
      }
      
      public function get xp() : Number
      {
         return this.§,!;§[XP];
      }
      
      public function get coins() : Number
      {
         return this.§,!;§[§,2§];
      }
      
      public function get blocks() : int
      {
         return this.§,!;§[§ !K§];
      }
      
      public function set blocks(param1:int) : void
      {
         this.§,!;§[§ !K§] = param1;
      }
      
      public function get §`=§() : Vector.<String>
      {
         var _loc2_:* = null;
         if(this.§,!;§[§4!'§] == null)
         {
            return null;
         }
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in this.§,!;§[§4!'§])
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function get bolts() : int
      {
         return this.§,!;§[§'!1§];
      }
      
      public function get §6§() : Boolean
      {
         return this.§,!;§[ISLEVELUP];
      }
      
      public function get maxXp() : int
      {
         return this.§,!;§[MAXXP];
      }
      
      public function get minXp() : int
      {
         return this.§,!;§[MINXP];
      }
      
      public function get oldXp() : int
      {
         return this.§,!;§[OLDXP];
      }
      
      public function get newXp() : int
      {
         return this.§,!;§[NEWXP];
      }
      
      public function get oldXpLevel() : int
      {
         return this.§,!;§[OLDXPLEVEL];
      }
      
      public function get newXpLevel() : int
      {
         return this.§,!;§[NEWXPLEVEL];
      }
      
      public function get boltsMax() : int
      {
         return this.§,!;§[§4R§];
      }
      
      public function get §&N§() : int
      {
         return this.§,!;§[BLOCKSNEW];
      }
      
      public function get §[4§() : int
      {
         return this.§,!;§[BLOCKSMAX];
      }
      
      public function §^!1§() : int
      {
         if(this.newXpLevel > 0)
         {
            return this.newXpLevel;
         }
         return this.§,!;§[§<!e§];
      }
      
      public function get newItems() : Object
      {
         return this.§,!;§[§!!U§];
      }
   }
}
