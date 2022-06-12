package §5!Y§
{
   import § 7§.§ else§;
   import §&r§.§'"L§;
   import §-!?§.§<!g§;
   import §4y§.Item;
   import §5!&§.§+"@§;
   import §59§.§<"9§;
   import §6!N§.§%! §;
   import §9@§.§4d§;
   import §9@§.§@q§;
   import §<"F§.§"i§;
   import §<"F§.§0"W§;
   import §@!"§.§?l§;
   import §["6§.§ var§;
   import §["6§.§5"L§;
   import §^!o§.§'s§;
   import §^!o§.§1! §;
   import §^!o§.§^"$§;
   import §^"F§.§8!§;
   import §`!6§.§+"O§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §9"6§
   {
      
      public static var §!6§:§`_§;
      
      private static var §1!,§:StatePopupManager;
      
      public static var §@"$§:Popup;
      
      public static var §=!I§:Boolean;
      
      private static var §'"$§:Number;
      
      private static var §&g§:Number;
      
      private static var § 1§:MovieClip;
      
      private static var §3"V§:Vector.<Popup> = new Vector.<Popup>();
      
      private static var §]"I§:Vector.<Popup> = new Vector.<Popup>();
       
      
      public function §9"6§()
      {
         super();
      }
      
      public static function §,2§() : Boolean
      {
         return §@"$§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§!6§)
         {
            return;
         }
         §1!,§ = new StatePopupManager();
         §!6§ = new §+"O§(§1!,§);
         §!6§.init(<xml></xml>,new MovieClip());
         §!6§.activateView();
         param1.addChild(§!6§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§!6§)
         {
            §!6§.viewWidth = param1;
            §!6§.viewHeight = param2;
         }
         §'"$§ = param1;
         §&g§ = param2;
      }
      
      public static function §;!w§(param1:String = "") : void
      {
         §="4§(new §<"9§(§!6§,§1!,§,param1));
      }
      
      public static function §3b§(param1:Item) : void
      {
         §="4§(new §-E§(§!6§,§1!,§,param1));
      }
      
      public static function §<h§(param1:String = null) : void
      {
         §="4§(new §+"@§(§!6§,§1!,§,param1,true));
      }
      
      public static function §'!b§(param1:Object) : void
      {
         §="4§(new §1H§(§!6§,§1!,§,param1));
      }
      
      public static function §2!U§(param1:Boolean = false) : void
      {
         §="4§(new §"i§(§!6§,§1!,§,param1));
      }
      
      public static function §?B§() : void
      {
         §="4§(new §0"W§(§!6§,§1!,§),true,true);
      }
      
      public static function §^!J§(param1:Boolean = false) : void
      {
         §="4§(new §5!-§(§!6§,§1!,§,param1));
      }
      
      public static function §'0§() : void
      {
         §="4§(new §6y§(§!6§,§1!,§));
      }
      
      public static function §7"@§() : void
      {
         §="4§(new §[!9§(§!6§,§1!,§),true,true);
      }
      
      public static function §7![§() : void
      {
         §="4§(new §4"O§(§!6§,§1!,§),false,true);
      }
      
      public static function §;!J§(param1:String = "") : void
      {
         §="4§(new §^"$§(§!6§,§1!,§,param1,null),false,true);
      }
      
      public static function §?"F§(param1:String = "Get your free coins!") : void
      {
         §="4§(new §1! §(§!6§,§1!,§,param1),false,true);
      }
      
      public static function §[?§() : void
      {
         §="4§(new §'s§(§!6§,§1!,§));
      }
      
      public static function §?"J§() : void
      {
         §="4§(new §!E§(§!6§,§1!,§));
      }
      
      public static function §#z§() : void
      {
         §="4§(new §+L§(§!6§,§1!,§));
      }
      
      public static function §8+§(param1:Boolean = false, param2:Boolean = true) : void
      {
         §="4§(new § else§(§!6§,§1!,§,param1),param2);
      }
      
      public static function §1!q§() : void
      {
         §="4§(new §'"L§(§!6§,§1!,§));
      }
      
      public static function §'?§() : void
      {
         §="4§(new §<!g§(§!6§,§1!,§));
      }
      
      public static function §["#§(param1:Boolean) : void
      {
         §="4§(new § var§(§!6§,§1!,§,param1));
      }
      
      public static function §7V§() : void
      {
         §="4§(new §5"L§(§!6§,§1!,§));
      }
      
      public static function §"F§(param1:String) : void
      {
         §="4§(new §,A§(§!6§,§1!,§,param1));
      }
      
      public static function §7!B§(param1:Class, param2:String) : void
      {
         §@q§.§ !P§(param2);
         if(param1 is §4d§)
         {
            §@q§.trackPageView(param1 as §4d§);
         }
         §<"T§(param1);
      }
      
      public static function §<"T§(param1:Class) : void
      {
         var _loc2_:Popup = new param1(§!6§,§1!,§);
         §="4§(_loc2_);
      }
      
      public static function §!<§() : void
      {
         §="4§(new §%! §(§!6§,§1!,§));
      }
      
      public static function §[i§(param1:String) : void
      {
         var _loc2_:§2E§ = new §2E§(§!6§,§1!,§,param1);
         §="4§(_loc2_,true,true);
      }
      
      public static function §'!o§() : §3"H§
      {
         var _loc1_:§3"H§ = new §3"H§(§!6§,§1!,§);
         §="4§(_loc1_);
         return _loc1_;
      }
      
      public static function §>_§(param1:String = null) : void
      {
         try
         {
            §="4§(new §]!I§(§!6§,§1!,§,param1 || §]!I§.§ !d§),false,true);
            if(param1 == §]!I§.§`'§)
            {
               §@q§.§]-§();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §4"4§() : void
      {
         §="4§(new §^7§(§!6§,§1!,§));
      }
      
      public static function §'m§() : void
      {
         §="4§(new §5"7§(§!6§,§1!,§));
      }
      
      public static function §6T§() : void
      {
         §="4§(new § i§(§!6§,§1!,§));
      }
      
      public static function §&",§() : void
      {
         try
         {
            §="4§(new §;!3§(§!6§,§1!,§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §#!o§() : void
      {
         try
         {
            §="4§(new §`! §(§!6§,§1!,§),false,true);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §!!F§() : void
      {
         §="4§(new §!Z§(§!6§,§1!,§));
      }
      
      public static function §-L§(param1:String, param2:String, param3:int, param4:String) : void
      {
         §="4§(new §0!h§(§!6§,§1!,§,param1,param2,param3,param4));
      }
      
      public static function §6"C§() : void
      {
         §="4§(new §>"'§(§!6§));
      }
      
      public static function §7"!§(param1:§8!§) : void
      {
         §="4§(new §<r§(§!6§,§1!,§,param1));
      }
      
      private static function §="4§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         if(§@"$§ && !param3)
         {
            if(param1.§""W§ != Popup.§>!L§)
            {
               §]"I§.push(param1);
               return;
            }
            §]"I§ = new Vector.<Popup>();
            §@"$§.deActivate();
         }
         §3"V§.push(param1);
         §@"$§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§>"E§.§6"-§,§]p§);
         setViewSize(§'"$§,§&g§);
      }
      
      private static function §]p§(param1:§>"E§) : void
      {
         if(param1.§]!X§ == §@"$§)
         {
            §@"$§ = null;
         }
         var _loc2_:Popup = §3"V§.pop();
         if(§]"I§.length > 0)
         {
            §="4§(§]"I§.shift(),false);
         }
         else if(§3"V§.length == 0)
         {
            §?l§.resume();
         }
      }
   }
}
