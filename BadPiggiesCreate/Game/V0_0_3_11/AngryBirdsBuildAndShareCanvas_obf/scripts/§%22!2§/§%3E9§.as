package §"!2§
{
   import §,Q§.§="2§;
   import §2!5§.§4!]§;
   import §2!5§.§7[§;
   import §7c§.§@<§;
   import §;!§.§?!]§;
   import flash.utils.Dictionary;
   
   public class §>9§ extends §@<§
   {
      
      public static const XP:String = "XP";
      
      public static const §^"2§:String = "coins";
      
      public static const §7R§:String = "currentBolts";
      
      public static const §%!0§:String = "maxBolts";
      
      public static const ISLEVELUP:String = "ISLEVELUP";
      
      public static const OLDXP:String = "OLDXP";
      
      public static const NEWXP:String = "NEWXP";
      
      public static const MINXP:String = "MINXP";
      
      public static const MAXXP:String = "MAXXP";
      
      public static const OLDXPLEVEL:String = "OLDXPLEVEL";
      
      public static const NEWXPLEVEL:String = "NEWXPLEVEL";
      
      public static const §0"!§:String = "maxNumPlaceableObjects";
      
      public static const BLOCKSNEW:String = "BLOCKSNEW";
      
      public static const BLOCKSMAX:String = "BLOCKSMAX";
      
      public static const USERNAME:String = "USERNAME";
      
      public static const USERID:String = "USERID";
      
      public static const §?A§:String = "items";
      
      public static const §=!H§:String = "experienceLevel";
      
      public static const §?!U§:String = "newItems";
       
      
      private var §,4§:Dictionary;
      
      private var §<!j§:Vector.<Object>;
      
      private var §7]§:§7[§;
      
      public function §>9§(param1:String)
      {
         this.§,4§ = new Dictionary();
         this.§<!j§ = new Vector.<Object>();
         super(param1);
         this.§,4§[BLOCKSMAX] = 10;
         this.§,4§[§0"!§] = 10;
         this.§,4§[BLOCKSNEW] = 10;
         §="2§.registerMethod("login",this.§5!^§);
         §="2§.registerMethod("setCoins",this.§^!"§);
      }
      
      private function §^!"§(param1:int) : void
      {
         this.§,4§[§^"2§] = param1;
         if(this.§7]§)
         {
            this.§7]§.dispatchEvent(new §?!]§(§?!]§.§;"!§));
         }
      }
      
      public function §98§() : void
      {
         this.§,4§[§?A§] = null;
      }
      
      private function §5!^§(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         this.§<""§(_loc2_["user"]);
         this.§<""§(_loc2_["userProgress"]);
         this.§<""§(_loc2_["user"]["bolts"]);
         this.§,4§[§?A§] = _loc2_.items;
      }
      
      public function §2!>§(... rest) : void
      {
         var _loc2_:§4!]§ = null;
         for each(_loc2_ in rest)
         {
            if(_loc2_ as §7[§ != null)
            {
               this.§7]§ = _loc2_ as §7[§;
            }
         }
      }
      
      public function §<""§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1)
         {
            this.§,4§[_loc2_] = param1[_loc2_];
         }
         if(this.§7]§)
         {
            this.§7]§.dispatchEvent(new §?!]§(§?!]§.§;"!§));
         }
      }
      
      public function getValue(param1:String) : *
      {
         return this.§,4§[param1];
      }
      
      public function §5j§(param1:String) : Boolean
      {
         var _loc2_:* = null;
         if(this.§,4§[§?A§] == null)
         {
            return true;
         }
         for(_loc2_ in this.§,4§[§?A§])
         {
            if(_loc2_ == param1 && this.§,4§[§?A§][_loc2_] != 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §<2§() : String
      {
         return this.§,4§[USERID];
      }
      
      public function get §[!J§() : String
      {
         return this.§,4§[USERNAME];
      }
      
      public function get xp() : Number
      {
         return this.§,4§[XP];
      }
      
      public function get coins() : Number
      {
         return this.§,4§[§^"2§];
      }
      
      public function get blocks() : int
      {
         return this.§,4§[§0"!§];
      }
      
      public function set blocks(param1:int) : void
      {
         this.§,4§[§0"!§] = param1;
      }
      
      public function get §]F§() : Vector.<String>
      {
         var _loc2_:* = null;
         if(this.§,4§[§?A§] == null)
         {
            return null;
         }
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in this.§,4§[§?A§])
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function get bolts() : int
      {
         return this.§,4§[§7R§];
      }
      
      public function get §0l§() : Boolean
      {
         return this.§,4§[ISLEVELUP];
      }
      
      public function get maxXp() : int
      {
         return this.§,4§[MAXXP];
      }
      
      public function get minXp() : int
      {
         return this.§,4§[MINXP];
      }
      
      public function get oldXp() : int
      {
         return this.§,4§[OLDXP];
      }
      
      public function get newXp() : int
      {
         return this.§,4§[NEWXP];
      }
      
      public function get oldXpLevel() : int
      {
         return this.§,4§[OLDXPLEVEL];
      }
      
      public function get newXpLevel() : int
      {
         return this.§,4§[NEWXPLEVEL];
      }
      
      public function get boltsMax() : int
      {
         return this.§,4§[§%!0§];
      }
      
      public function get §=!S§() : int
      {
         return this.§,4§[BLOCKSNEW];
      }
      
      public function get §1!m§() : int
      {
         return this.§,4§[BLOCKSMAX];
      }
      
      public function §]!F§() : int
      {
         if(this.newXpLevel > 0)
         {
            return this.newXpLevel;
         }
         return this.§,4§[§=!H§];
      }
      
      public function get newItems() : Object
      {
         return this.§,4§[§?!U§];
      }
   }
}
