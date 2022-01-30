package §""§
{
   import §0!C§.§=!]§;
   import §1!5§.§<"§;
   import §1!5§.§^X§;
   import §1!5§.§`!2§;
   import §4!S§.§&"'§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §]!^§
   {
      
      public static var §"6§:§=!]§;
      
      private static var §6s§:StatePopupManager;
      
      public static var §+"7§:Object;
      
      public static var §6!6§:Popup;
      
      public static var §[!"§:Boolean;
      
      private static var §^!D§:Number;
      
      private static var §,A§:Number;
      
      private static var §"!d§:MovieClip;
      
      private static var §?$§:Vector.<Popup> = new Vector.<Popup>();
       
      
      public function §]!^§()
      {
         super();
      }
      
      public static function §9!i§() : Boolean
      {
         return §6!6§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§"6§)
         {
            return;
         }
         §6s§ = new StatePopupManager();
         §"6§ = new §=!]§(§6s§);
         §"6§.init(<xml></xml>,new MovieClip());
         §"6§.§6!n§();
         param1.addChild(§"6§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§"6§)
         {
            §"6§.viewWidth = param1;
            §"6§.viewHeight = param2;
         }
         §^!D§ = param1;
         §,A§ = param2;
      }
      
      public static function §2!P§() : §1!r§
      {
         var _loc1_:§1!r§ = new §1!r§(§"6§,§6s§);
         §^!C§(_loc1_);
         return _loc1_;
      }
      
      public static function §>!'§() : §?!-§
      {
         var _loc1_:§?!-§ = new §?!-§(§"6§,§6s§);
         §^!C§(_loc1_);
         return _loc1_;
      }
      
      public static function §5"8§() : §5![§
      {
         var _loc1_:§5![§ = new §5![§(§"6§,§6s§);
         §^!C§(_loc1_);
         return _loc1_;
      }
      
      public static function §5I§(param1:String) : void
      {
         var _loc2_:§`!2§ = new §`!2§(§"6§,param1,§6s§);
         §^!C§(_loc2_,true,false);
      }
      
      public static function §%;§(param1:§&"'§) : §<"§
      {
         var _loc2_:§<"§ = new §<"§(§"6§,§6s§,param1);
         §^!C§(_loc2_,false);
         return _loc2_;
      }
      
      public static function §8!8§(param1:String) : §^X§
      {
         var _loc2_:§^X§ = new §^X§(§"6§,§6s§,param1);
         §^!C§(_loc2_,false);
         return _loc2_;
      }
      
      private static function §^!C§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         if(§6!6§ && !param3)
         {
            if(param1.§<#§ != Popup.§4!_§)
            {
               §?$§.push(param1);
               return;
            }
            §?$§ = new Vector.<Popup>();
            §6!6§.deActivate();
         }
         §6!6§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§8>§.§2!$§,§-$§);
         setViewSize(§^!D§,§,A§);
      }
      
      private static function §-$§(param1:§8>§) : void
      {
         if(param1.§+P§ == §6!6§)
         {
            §6!6§ = null;
         }
         if(§?$§.length > 0)
         {
            §^!C§(§?$§.shift(),false);
         }
      }
   }
}
