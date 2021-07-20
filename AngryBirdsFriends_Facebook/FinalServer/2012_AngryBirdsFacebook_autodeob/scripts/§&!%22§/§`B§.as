package §&!"§
{
   import §#M§.§^0§;
   import §%!'§.§"!e§;
   import §0!,§.§^"B§;
   import §2"I§.§!"A§;
   import §2J§.§4" §;
   import §5!g§.§<"A§;
   import §7!r§.§;§;
   import §<9§.§ ">§;
   import §<9§.§'f§;
   import §?"§.§!"L§;
   import §?"§.§'T§;
   import §[">§.§4!j§;
   import §`!?§.Item;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §`B§
   {
      
      public static var §%4§:§^0§;
      
      private static var §%C§:StatePopupManager;
      
      public static var §5F§:Object;
      
      public static var §1",§:Popup;
      
      public static var §0!_§:Boolean;
      
      private static var §9"G§:Number;
      
      private static var §&;§:Number;
      
      private static var §^!2§:MovieClip;
      
      private static var §8"0§:Vector.<Popup> = new Vector.<Popup>();
       
      
      public function §`B§()
      {
         super();
      }
      
      public static function §%!s§() : Boolean
      {
         return §1",§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§%4§)
         {
            return;
         }
         §%C§ = new StatePopupManager();
         §%4§ = new §4" §(§%C§);
         §%4§.init(<xml></xml>,new MovieClip());
         §%4§.activateView();
         param1.addChild(§%4§.§@H§.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§%4§)
         {
            §%4§.viewWidth = param1;
            §%4§.viewHeight = param2;
         }
         §9"G§ = param1;
         §&;§ = param2;
      }
      
      public static function §8;§(param1:Item) : void
      {
         §8O§(new §6!0§(§%4§,§%C§,param1));
      }
      
      public static function §26§() : void
      {
         §8O§(new §'"8§(§%4§,§%C§));
      }
      
      public static function §5C§(param1:String = null) : void
      {
         §8O§(new §^"B§(§%4§,§%C§,param1,true));
      }
      
      public static function §3"5§() : void
      {
         §8O§(new §[!B§(§%4§,§%C§));
      }
      
      public static function §2"H§() : void
      {
         §8O§(new §1!I§(§%4§,§%C§),false,true);
      }
      
      public static function §3m§() : void
      {
         §8O§(new §>!'§(§%4§,§%C§));
      }
      
      public static function § if§() : void
      {
         §8O§(new §8!d§(§%4§,§%C§));
      }
      
      public static function §>v§(param1:Boolean = false, param2:Boolean = true) : void
      {
         §8O§(new §4!j§(§%4§,§%C§,param1),param2);
      }
      
      public static function §8m§(param1:Boolean = true) : void
      {
         var _loc2_:§ ">§ = new § ">§(§%4§,§%C§);
         §8O§(_loc2_,param1);
         _loc2_.mClip.addEventListener(§1"@§.§+2§,§1"G§);
      }
      
      private static function §1"G§(param1:§1"@§) : void
      {
         if(§5F§)
         {
            §0!_§ = true;
            §[D§(§5F§,false);
            §5F§ = null;
         }
      }
      
      public static function §[D§(param1:Object, param2:Boolean = true) : void
      {
         var _loc3_:§'f§ = new §'f§(§%4§,§%C§,param1);
         §8O§(_loc3_,param2);
         _loc3_.mClip.addEventListener(§1"@§.§+2§,§]"-§);
      }
      
      private static function §]"-§(param1:§1"@§) : void
      {
         if(§0!_§)
         {
            §0!_§ = false;
            §8m§(false);
         }
      }
      
      public static function §1"0§() : void
      {
         §8O§(new §<"A§(§%4§,§%C§));
      }
      
      public static function §6n§() : void
      {
         §8O§(new §!"A§(§%4§,§%C§));
      }
      
      public static function §'"5§() : void
      {
         §8O§(new §'T§(§%4§,§%C§));
      }
      
      public static function §<6§() : void
      {
         §8O§(new §!"L§(§%4§,§%C§));
      }
      
      public static function §4h§(param1:String) : void
      {
         §8O§(new §8#§(§%4§,§%C§,param1));
      }
      
      public static function §29§(param1:Class, param2:String) : void
      {
         §"!e§.§!`§(param2);
         §`]§(param1);
      }
      
      public static function §`]§(param1:Class) : void
      {
         var _loc2_:Popup = new param1(§%4§,§%C§);
         §8O§(_loc2_);
      }
      
      public static function §!"'§() : void
      {
         §8O§(new §;§(§%4§,§%C§));
      }
      
      public static function §69§(param1:String) : void
      {
         var _loc2_:§["4§ = new §["4§(§%4§,§%C§,param1);
         §8O§(_loc2_,true,true);
      }
      
      public static function §>>§() : §4!F§
      {
         var _loc1_:§4!F§ = new §4!F§(§%4§,§%C§);
         §8O§(_loc1_);
         return _loc1_;
      }
      
      public static function §#!i§(param1:String = null) : void
      {
         try
         {
            §8O§(new §5"§(§%4§,§%C§,param1 || §5"§.§!"6§));
            if(param1 == §5"§.§;s§)
            {
               §"!e§.§-t§();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §0!7§() : void
      {
         §8O§(new §7!?§(§%4§,§%C§));
      }
      
      public static function §`!h§() : void
      {
         §8O§(new §5<§(§%4§,§%C§));
      }
      
      public static function §&!2§() : void
      {
         try
         {
            §8O§(new §1!O§(§%4§,§%C§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §-!§() : void
      {
         try
         {
            §8O§(new §-!k§(§%4§,§%C§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §+1§() : void
      {
         §8O§(new §<S§(§%4§,§%C§));
      }
      
      public static function § !6§(param1:String, param2:String, param3:int, param4:String) : void
      {
         §8O§(new §?!N§(§%4§,§%C§,param1,param2,param3,param4));
      }
      
      public static function §?""§() : void
      {
         §8O§(new §=!_§(§%4§));
      }
      
      private static function §8O§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         if(§1",§ && !param3)
         {
            if(param1.§]!i§ != Popup.§#c§)
            {
               §8"0§.push(param1);
               return;
            }
            §8"0§ = new Vector.<Popup>();
            §1",§.deActivate();
         }
         §1",§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§1"@§.§+2§,§=§);
         setViewSize(§9"G§,§&;§);
      }
      
      private static function §=§(param1:§1"@§) : void
      {
         if(param1.§,]§ == §1",§)
         {
            §1",§ = null;
         }
         if(§8"0§.length > 0)
         {
            §8O§(§8"0§.shift(),false);
         }
      }
   }
}
