package §7N§
{
   import § e§.§4!j§;
   import §#!p§.§]!"§;
   import §&C§.§6!;§;
   import §8!-§.Item;
   import §9&§.§7!O§;
   import §;^§.§8"=§;
   import §<!<§.§%!#§;
   import §>y§.§,B§;
   import §>y§.§`"2§;
   import §]!F§.§"!j§;
   import §`"5§.§&!`§;
   import §`"5§.§?Q§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §43§
   {
      
      public static var §,!l§:§"!j§;
      
      private static var §-!C§:StatePopupManager;
      
      public static var §1!@§:Object;
      
      public static var §[!d§:Popup;
      
      public static var §3!"§:Boolean;
      
      private static var §!B§:Number;
      
      private static var §,e§:Number;
      
      private static var §"&§:MovieClip;
      
      private static var §-M§:Vector.<Popup> = new Vector.<Popup>();
       
      
      public function §43§()
      {
         super();
      }
      
      public static function §&U§() : Boolean
      {
         return §[!d§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§,!l§)
         {
            return;
         }
         §-!C§ = new StatePopupManager();
         §,!l§ = new §8"=§(§-!C§);
         §,!l§.init(<xml></xml>,new MovieClip());
         §,!l§.activateView();
         param1.addChild(§,!l§.§7!>§.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§,!l§)
         {
            §,!l§.viewWidth = param1;
            §,!l§.viewHeight = param2;
         }
         §!B§ = param1;
         §,e§ = param2;
      }
      
      public static function §-U§(param1:Item) : void
      {
         §7"0§(new §@7§(§,!l§,§-!C§,param1));
      }
      
      public static function §"!G§() : void
      {
         §7"0§(new §@!,§(§,!l§,§-!C§));
      }
      
      public static function §;!9§(param1:String = null, param2:Boolean = false) : void
      {
         §7"0§(new §]!"§(§,!l§,§-!C§,param1,param2));
      }
      
      public static function §%>§(param1:Object) : void
      {
         §7"0§(new §8!J§(§,!l§,§-!C§,param1));
      }
      
      public static function §'! §() : void
      {
         §7"0§(new §>!=§(§,!l§,§-!C§),false,true);
      }
      
      public static function §"" §() : void
      {
         §7"0§(new §#! §(§,!l§,§-!C§));
      }
      
      public static function §`!N§() : void
      {
         §7"0§(new §9!4§(§,!l§,§-!C§));
      }
      
      public static function §;§(param1:Boolean = false, param2:Boolean = true) : void
      {
         §7"0§(new §7!O§(§,!l§,§-!C§,param1),param2);
      }
      
      public static function §9C§(param1:Boolean = true) : void
      {
         var _loc2_:§?Q§ = new §?Q§(§,!l§,§-!C§);
         §7"0§(_loc2_,param1);
         _loc2_.mClip.addEventListener(§2$§.§"!H§,§"J§);
      }
      
      private static function §"J§(param1:§2$§) : void
      {
         if(§1!@§)
         {
            §3!"§ = true;
            §!!A§(§1!@§,false);
            §1!@§ = null;
         }
      }
      
      public static function §!!A§(param1:Object, param2:Boolean = true) : void
      {
         var _loc3_:§&!`§ = new §&!`§(§,!l§,§-!C§,param1);
         §7"0§(_loc3_,param2);
         _loc3_.mClip.addEventListener(§2$§.§"!H§,§0!L§);
      }
      
      private static function §0!L§(param1:§2$§) : void
      {
         if(§3!"§)
         {
            §3!"§ = false;
            §9C§(false);
         }
      }
      
      public static function §]O§() : void
      {
         §7"0§(new §6!;§(§,!l§,§-!C§));
      }
      
      public static function §2!I§() : void
      {
         §7"0§(new §4!j§(§,!l§,§-!C§));
      }
      
      public static function §4V§() : void
      {
         §7"0§(new §`"2§(§,!l§,§-!C§));
      }
      
      public static function §6A§() : void
      {
         §7"0§(new §,B§(§,!l§,§-!C§));
      }
      
      public static function §24§() : void
      {
         §7"0§(new §]0§(§,!l§,§-!C§));
      }
      
      public static function §5"'§() : void
      {
         §7"0§(new §%m§(§,!l§,§-!C§),true,true);
      }
      
      public static function §7`§(param1:String) : void
      {
         §7"0§(new §0D§(§,!l§,§-!C§,param1));
      }
      
      public static function §`!2§() : void
      {
         §7"0§(new §@!R§(§,!l§,§-!C§));
      }
      
      public static function §![§(param1:String) : void
      {
         var _loc2_:§87§ = new §87§(§,!l§,§-!C§,param1);
         §7"0§(_loc2_,true,true);
      }
      
      public static function §2C§() : §+"@§
      {
         var _loc1_:§+"@§ = new §+"@§(§,!l§,§-!C§);
         §7"0§(_loc1_);
         return _loc1_;
      }
      
      public static function § "6§(param1:String = null) : void
      {
         try
         {
            §7"0§(new §]@§(§,!l§,§-!C§,param1 || §]@§.§2"9§));
            if(param1 == §]@§.§76§)
            {
               §%!#§.§@A§();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function § !_§() : void
      {
         §7"0§(new §#1§(§,!l§,§-!C§));
      }
      
      public static function §>!m§() : void
      {
         §7"0§(new §?4§(§,!l§,§-!C§));
      }
      
      public static function §4!3§() : void
      {
         try
         {
            §7"0§(new §!1§(§,!l§,§-!C§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §?!S§() : void
      {
         try
         {
            §7"0§(new §^!_§(§,!l§,§-!C§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §[-§() : void
      {
         §7"0§(new §!N§(§,!l§,§-!C§));
      }
      
      public static function §!R§(param1:String, param2:String, param3:int, param4:String) : void
      {
         §7"0§(new §>C§(§,!l§,§-!C§,param1,param2,param3,param4));
      }
      
      private static function §7"0§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         if(§[!d§ && !param3)
         {
            if(param1.§3!l§ != Popup.§1!L§)
            {
               §-M§.push(param1);
               return;
            }
            §-M§ = new Vector.<Popup>();
            §[!d§.deActivate();
         }
         §[!d§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§2$§.§"!H§,§0=§);
         setViewSize(§!B§,§,e§);
      }
      
      private static function §0=§(param1:§2$§) : void
      {
         if(param1.§>"7§ == §[!d§)
         {
            §[!d§ = null;
         }
         if(§-M§.length > 0)
         {
            §7"0§(§-M§.shift(),false);
         }
      }
   }
}
