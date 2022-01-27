package §`"8§
{
   import §'+§.§="B§;
   import §1!o§.§#"y§;
   import §7A§.§5"2§;
   import §7A§.§<1§;
   import §;q§.§1"k§;
   import §@b§.§&M§;
   import §@b§.§1"0§;
   import §@b§.§`"5§;
   import §^"H§.§""J§;
   import §^"H§.§-"9§;
   import §^"H§.§>c§;
   import §^"H§.§?'§;
   import §^"H§.§]F§;
   import flash.events.EventDispatcher;
   
   public class §#f§ extends EventDispatcher
   {
      
      public static const §]"i§:String = "ExtraBird";
      
      public static const §"X§:String = "MightyFalcon";
      
      public static const §]Z§:String = "LaserDroid";
      
      public static const §0"v§:String = "SaberSling";
      
      public static const §!"L§:String = "ThermalDetonator";
       
      
      protected var §4" §:§&M§;
      
      protected var §%">§:§5"2§;
      
      protected var §^V§:String;
      
      protected var §3!U§:Boolean;
      
      public function §#f§()
      {
         this.§%">§ = new §5"2§();
         super();
         this.§%">§[§"X§] = new §<1§();
         this.§%">§[§]Z§] = new §<1§();
         this.§%">§[§0"v§] = new §<1§();
         this.§%">§[§!"L§] = new §<1§();
         this.§%">§[§!"L§] = new §<1§();
         var _loc1_:§="B§ = §;"@§.singleton.§!# §;
         this.§4" § = new §&M§();
         this.§4" §.§9;§(new §1"0§(§]Z§,§&M§.§4!F§,§>c§,_loc1_.getLocalizedString("powerup_" + §]Z§.toLowerCase()),true));
         this.§4" §.§9;§(new §1"0§(§0"v§,§&M§.§4!F§,§-"9§,_loc1_.getLocalizedString("powerup_" + §0"v§.toLowerCase()),true));
         this.§4" §.§9;§(new §1"0§(§!"L§,§&M§.§4!F§,§]F§,_loc1_.getLocalizedString("powerup_" + §!"L§.toLowerCase()),true));
         this.§4" §.§9;§(new §1"0§(§"X§,§&M§.§0!f§,§?'§,_loc1_.getLocalizedString("powerup_" + §"X§.toLowerCase()),false));
         this.§4" §.§9;§(new §1"0§(§]"i§,§&M§.§5"z§,§""J§,_loc1_.getLocalizedString("powerup_" + §]"i§.toLowerCase()),false));
         this.§^V§ = "";
         this.§3!U§ = false;
      }
      
      public function get §7#'§() : Boolean
      {
         return this.§3!U§;
      }
      
      public function set §7#'§(param1:Boolean) : void
      {
         this.§3!U§ = param1;
         if(this.§3!U§ == false)
         {
            this.§^Z§ = "";
         }
      }
      
      public function get §^Z§() : String
      {
         return this.§^V§;
      }
      
      public function set §^Z§(param1:String) : void
      {
         this.§^V§ = param1;
         dispatchEvent(new §#"y§(§#"y§.§!!Q§,this.§^V§,-1));
      }
      
      public function get §[!D§() : §&M§
      {
         return this.§4" §;
      }
      
      public function §"!V§(param1:String) : int
      {
         if(this.§%">§[param1] == null)
         {
            return 0;
         }
         return §<1§(this.§%">§[param1]).getValue();
      }
      
      public function §""e§(param1:String, param2:int) : void
      {
         if(this.§%">§[param1] == undefined)
         {
            this.§%">§[param1] = new §<1§();
         }
         var _loc3_:§<1§ = §<1§(this.§%">§[param1]);
         var _loc4_:int = _loc3_.getValue();
         if(param2 > _loc4_ && this.§3!U§)
         {
            this.§^Z§ = param1;
         }
         if(_loc4_ != param2)
         {
            §<1§(this.§%">§[param1]).§6!b§(param2);
            dispatchEvent(new §#"y§(§#"y§.§4f§,param1,param2));
         }
      }
      
      public function §="&§(param1:String) : Boolean
      {
         var _loc2_:§`"5§ = §-!w§(§;"@§.singleton.dataModel).§?v§.§@!P§(param1);
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
      
      public function §8"E§(param1:String) : void
      {
         var _loc2_:§<1§ = §<1§(this.§%">§[param1]);
         var _loc3_:int = _loc2_.getValue();
         var _loc4_:Boolean;
         if(!(_loc4_ = this.§="&§(param1)))
         {
            if(_loc3_ <= 0)
            {
               throw new Error("Can\'t user powerup " + param1 + ", user doesn\'t have any left.");
            }
            this.§""e§(param1,_loc3_ - 1);
         }
      }
      
      public function update(param1:Vector.<§1"k§>) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§""e§(param1[_loc2_].id,param1[_loc2_].count);
            _loc2_++;
         }
      }
   }
}
