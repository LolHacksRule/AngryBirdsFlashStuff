package §'!s§
{
   import § each§.§4y§;
   import § each§.§>v§;
   import §!"D§.§6!X§;
   import §!"D§.§@!!§;
   import §!K§.Item;
   import §#^§.§7!A§;
   import §'K§.§"!=§;
   import §'K§.§#!8§;
   import §1p§.§,O§;
   import §1r§.§,!L§;
   import §6c§.§use§;
   import §<a§.§+!B§;
   import §@">§.§%!0§;
   import §]P§.§0!3§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §%?§
   {
      
      public static var §1>§:§7!A§;
      
      private static var §4%§:StatePopupManager;
      
      public static var §#!p§:Object;
      
      public static var §!N§:Popup;
      
      public static var §?"6§:Boolean;
      
      private static var §]!k§:Number;
      
      private static var §<"&§:Number;
      
      private static var §5"+§:MovieClip;
      
      private static var §?§:Vector.<Popup> = new Vector.<Popup>();
       
      
      public function §%?§()
      {
         super();
      }
      
      public static function §0!f§() : Boolean
      {
         return §!N§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§1>§)
         {
            return;
         }
         §4%§ = new StatePopupManager();
         §1>§ = new §,!L§(§4%§);
         §1>§.init(<xml></xml>,new MovieClip());
         §1>§.activateView();
         param1.addChild(§1>§.§%4§.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§1>§)
         {
            §1>§.viewWidth = param1;
            §1>§.viewHeight = param2;
         }
         §]!k§ = param1;
         §<"&§ = param2;
      }
      
      public static function §&'§(param1:Item) : void
      {
         §2l§(new §6!Z§(§1>§,§4%§,param1));
      }
      
      public static function § !p§() : void
      {
         §2l§(new §8"@§(§1>§,§4%§));
      }
      
      public static function §9$§(param1:String = null) : void
      {
         §2l§(new §%!0§(§1>§,§4%§,param1,true));
      }
      
      public static function §`B§(param1:Object) : void
      {
         §2l§(new §^""§(§1>§,§4%§,param1));
      }
      
      public static function §-'§() : void
      {
         §2l§(new §70§(§1>§,§4%§),false,true);
      }
      
      public static function §=#§() : void
      {
         §2l§(new §5I§(§1>§,§4%§));
      }
      
      public static function §-!?§() : void
      {
         §2l§(new §[K§(§1>§,§4%§));
      }
      
      public static function §?@§(param1:Boolean = false, param2:Boolean = true) : void
      {
         §2l§(new §,O§(§1>§,§4%§,param1),param2);
      }
      
      public static function §#"9§(param1:Boolean = true) : void
      {
         var _loc2_:§>v§ = new §>v§(§1>§,§4%§);
         §2l§(_loc2_,param1);
         _loc2_.mClip.addEventListener(§%Z§.§&I§,§7!N§);
      }
      
      private static function §7!N§(param1:§%Z§) : void
      {
         if(§#!p§)
         {
            §?"6§ = true;
            §6!x§(§#!p§,false);
            §#!p§ = null;
         }
      }
      
      public static function § ]§(param1:String) : void
      {
         §+!B§.§2!D§(param1);
         var _loc2_:§6!X§ = new §6!X§(§1>§,§4%§);
         §2l§(_loc2_);
      }
      
      public static function §8"5§() : void
      {
         var _loc1_:§@!!§ = new §@!!§(§1>§,§4%§);
         §2l§(_loc1_);
      }
      
      public static function §6!x§(param1:Object, param2:Boolean = true) : void
      {
         var _loc3_:§4y§ = new §4y§(§1>§,§4%§,param1);
         §2l§(_loc3_,param2);
         _loc3_.mClip.addEventListener(§%Z§.§&I§,§8j§);
      }
      
      private static function §8j§(param1:§%Z§) : void
      {
         if(§?"6§)
         {
            §?"6§ = false;
            §#"9§(false);
         }
      }
      
      public static function §5!M§() : void
      {
         §2l§(new §use§(§1>§,§4%§));
      }
      
      public static function §&6§() : void
      {
         §2l§(new §0!3§(§1>§,§4%§));
      }
      
      public static function §!,§() : void
      {
         §2l§(new §"!=§(§1>§,§4%§));
      }
      
      public static function §&S§() : void
      {
         §2l§(new §#!8§(§1>§,§4%§));
      }
      
      public static function §"!#§() : void
      {
         §2l§(new §0!F§(§1>§,§4%§));
      }
      
      public static function §6!?§() : void
      {
         §2l§(new §18§(§1>§,§4%§),true,true);
      }
      
      public static function §'"%§(param1:String) : void
      {
         §2l§(new §'",§(§1>§,§4%§,param1));
      }
      
      public static function §case §() : void
      {
         §2l§(new § -§(§1>§,§4%§));
      }
      
      public static function §]"B§(param1:String) : void
      {
         var _loc2_:§;!q§ = new §;!q§(§1>§,§4%§,param1);
         §2l§(_loc2_,true,true);
      }
      
      public static function §@-§() : §"!§
      {
         var _loc1_:§"!§ = new §"!§(§1>§,§4%§);
         §2l§(_loc1_);
         return _loc1_;
      }
      
      public static function §6!7§(param1:String = null) : void
      {
         try
         {
            §2l§(new §-d§(§1>§,§4%§,param1 || §-d§.§+""§));
            if(param1 == §-d§.§]x§)
            {
               §+!B§.§?!a§();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §`!6§() : void
      {
         §2l§(new §0!<§(§1>§,§4%§));
      }
      
      public static function §6F§() : void
      {
         §2l§(new §^3§(§1>§,§4%§));
      }
      
      public static function §&B§() : void
      {
         try
         {
            §2l§(new §`!w§(§1>§,§4%§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §4!>§() : void
      {
         try
         {
            §2l§(new native(§1>§,§4%§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §[x§() : void
      {
         §2l§(new §'!Y§(§1>§,§4%§));
      }
      
      public static function §"!C§(param1:String, param2:String, param3:int, param4:String) : void
      {
         §2l§(new §&-§(§1>§,§4%§,param1,param2,param3,param4));
      }
      
      private static function §2l§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         if(§!N§ && !param3)
         {
            if(param1.§]"5§ != Popup.§97§)
            {
               §?§.push(param1);
               return;
            }
            §?§ = new Vector.<Popup>();
            §!N§.deActivate();
         }
         §!N§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§%Z§.§&I§,§7!w§);
         setViewSize(§]!k§,§<"&§);
      }
      
      private static function §7!w§(param1:§%Z§) : void
      {
         if(param1.§<!a§ == §!N§)
         {
            §!N§ = null;
         }
         if(§?§.length > 0)
         {
            §2l§(§?§.shift(),false);
         }
      }
   }
}
