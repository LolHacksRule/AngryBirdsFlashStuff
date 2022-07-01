package §-!H§
{
   import § ^§.§-!"§;
   import § ^§.§2";§;
   import § ^§.§>M§;
   import §#!8§.§&!'§;
   import §&W§.§7L§;
   import §1d§.§'!t§;
   import §7!g§.§0!q§;
   import flash.utils.Dictionary;
   
   public class §0!]§ extends §'!t§
   {
      
      public static const XP:String = "XP";
      
      public static const COINS:String = "coins";
      
      public static const BOLTS:String = "currentBolts";
      
      public static const §%"§:String = "maxBolts";
      
      public static const ISLEVELUP:String = "ISLEVELUP";
      
      public static const OLDXP:String = "OLDXP";
      
      public static const NEWXP:String = "NEWXP";
      
      public static const MINXP:String = "MINXP";
      
      public static const MAXXP:String = "MAXXP";
      
      public static const OLDXPLEVEL:String = "OLDXPLEVEL";
      
      public static const NEWXPLEVEL:String = "NEWXPLEVEL";
      
      public static const BLOCKS:String = "maxNumPlaceableObjects";
      
      public static const §;"?§:String = "maxOldBlocks";
      
      public static const §&"#§:String = "maxNewBlocks";
      
      public static const USERNAME:String = "USERNAME";
      
      public static const USERID:String = "USERID";
      
      public static const §%"8§:String = "items";
      
      public static const §-!i§:String = "experienceLevel";
      
      public static const §<!o§:String = "newItems";
      
      public static const §;o§:Object = "completedQuests";
      
      public static const §,>§:Object = "sandboxAvailable";
      
      public static const §2!§:String = "oldCoins";
      
      public static const §&z§:String = "newCoins";
      
      public static const §"r§:String = "newBolts";
      
      private static var §3!d§:Class = §&!'§;
       
      
      private var §,i§:Dictionary;
      
      private var §<i§:Vector.<Object>;
      
      private var §4&§:§2";§;
      
      public function §0!]§(param1:String)
      {
         this.§,i§ = new Dictionary();
         this.§<i§ = new Vector.<Object>();
         super(param1);
         this.§,i§[§&"#§] = 10;
         this.§,i§[BLOCKS] = 10;
         this.§,i§[§;"?§] = 10;
         this.§,i§[MAXXP] = 100;
         §7L§.log("Server root:" + param1);
         §3!d§["registerMethod"]("login",this.§+"#§);
         §3!d§["registerMethod"]("onSetBolts",this.onSetBolts);
         §3!d§["registerMethod"]("onSetCoins",this.onSetCoins);
         §3!d§["registerMethod"]("onSetBlocks",this.onSetBlocks);
      }
      
      public function onSetBolts(param1:Object) : void
      {
         if(!this.§7!7§(param1))
         {
            this.§,i§[§%"§] = param1.maxBolts;
            this.§,i§[BOLTS] = param1.currentBolts;
            if(this.§4&§)
            {
               this.§4&§.dispatchEvent(new §0!q§(§0!q§.§]3§));
            }
         }
      }
      
      private function onSetBlocks(param1:int) : void
      {
         this.§,i§[§&"#§] = param1 + this.§,i§[§&"#§];
         this.§,i§[BLOCKS] = param1 + this.§,i§[BLOCKS];
         this.§,i§[§;"?§] = this.§,i§[BLOCKS];
         if(this.§4&§)
         {
            this.§4&§.dispatchEvent(new §0!q§(§0!q§.§]3§));
         }
      }
      
      private function §7!7§(param1:Object) : Boolean
      {
         var _loc2_:String = null;
         if(param1 && param1.error && param1.error === true)
         {
            _loc2_ = !!param1.message ? param1.message : "An error occured.";
            §>M§.showError(_loc2_);
            return true;
         }
         return false;
      }
      
      public function onSetCoins(param1:int) : void
      {
         this.§,i§[COINS] = param1;
         if(this.§4&§)
         {
            this.§4&§.dispatchEvent(new §0!q§(§0!q§.§]3§));
         }
      }
      
      public function §8!Y§() : void
      {
         this.§,i§[§%"8§] = null;
      }
      
      private function §+"#§(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         this.§&Y§(_loc2_["user"]);
         this.§&Y§(_loc2_["userProgress"]);
         this.§&Y§(_loc2_["user"]["bolts"]);
         this.§,i§[§%"8§] = _loc2_.items;
      }
      
      public function §;!6§(... rest) : void
      {
         var _loc2_:§-!"§ = null;
         for each(_loc2_ in rest)
         {
            if(_loc2_ as §2";§ != null)
            {
               this.§4&§ = _loc2_ as §2";§;
            }
         }
      }
      
      public function §&Y§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1)
         {
            this.§,i§[_loc2_] = param1[_loc2_];
         }
         if(this.§4&§)
         {
            this.§4&§.dispatchEvent(new §0!q§(§0!q§.§]3§));
         }
      }
      
      public function getValue(param1:String) : *
      {
         return this.§,i§[param1];
      }
      
      public function §<!=§(param1:String) : Boolean
      {
         var _loc2_:* = null;
         if(this.§,i§[§%"8§] == null)
         {
            return true;
         }
         for(_loc2_ in this.§,i§[§%"8§])
         {
            if(_loc2_ == param1 && this.§,i§[§%"8§][_loc2_] != 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §;!9§() : String
      {
         return this.§,i§[USERID];
      }
      
      public function get §;!Z§() : String
      {
         return this.§,i§[USERNAME];
      }
      
      public function get xp() : Number
      {
         return this.§,i§[XP];
      }
      
      public function get coins() : Number
      {
         return this.§,i§[COINS];
      }
      
      public function get oldCoins() : Number
      {
         return this.§,i§[§2!§];
      }
      
      public function get newCoins() : Number
      {
         return this.§,i§[§&z§];
      }
      
      public function get newBolts() : Number
      {
         return this.§,i§[§"r§];
      }
      
      public function get blocks() : int
      {
         return this.§,i§[BLOCKS];
      }
      
      public function set blocks(param1:int) : void
      {
         this.§,i§[BLOCKS] = param1;
      }
      
      public function get §<!§() : Vector.<String>
      {
         var _loc2_:* = null;
         if(this.§,i§[§%"8§] == null)
         {
            return null;
         }
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in this.§,i§[§%"8§])
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function get bolts() : int
      {
         return this.§,i§[BOLTS];
      }
      
      public function get §5!d§() : Boolean
      {
         return this.§,i§[ISLEVELUP];
      }
      
      public function get maxXp() : int
      {
         return this.§,i§[MAXXP];
      }
      
      public function get minXp() : int
      {
         return this.§,i§[MINXP];
      }
      
      public function get oldXp() : int
      {
         return this.§,i§[OLDXP];
      }
      
      public function get newXp() : int
      {
         return this.§,i§[NEWXP];
      }
      
      public function get oldXpLevel() : int
      {
         return this.§,i§[OLDXPLEVEL];
      }
      
      public function get newXpLevel() : int
      {
         return this.§,i§[NEWXPLEVEL];
      }
      
      public function get boltsMax() : int
      {
         return this.§,i§[§%"§];
      }
      
      public function get §2!T§() : int
      {
         return this.§,i§[§;"?§];
      }
      
      public function get §<`§() : int
      {
         return this.§,i§[§&"#§];
      }
      
      public function §<"4§() : int
      {
         if(this.newXpLevel > 0)
         {
            return this.newXpLevel;
         }
         return this.§,i§[§-!i§];
      }
      
      public function get newItems() : Object
      {
         return this.§,i§[§<!o§];
      }
      
      public function get completedQuests() : Vector.<Object>
      {
         if(this.§,i§[§;o§] == null)
         {
            this.§,i§[§;o§] = new Vector.<Object>();
         }
         return this.§,i§[§;o§];
      }
      
      public function §8"9§(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(this.§,i§[§;o§] == null)
         {
            this.§,i§[§;o§] = new Vector.<Object>();
         }
         for each(_loc2_ in this.§,i§[§;o§])
         {
            if(_loc2_.id == param1.id)
            {
               return;
            }
         }
         this.§,i§[§;o§].push(param1);
      }
      
      public function get sandboxAvailable() : Boolean
      {
         return this.§,i§[§,>§];
      }
      
      public function set sandboxAvailable(param1:Boolean) : void
      {
         this.§,i§[§,>§] = param1;
      }
   }
}
