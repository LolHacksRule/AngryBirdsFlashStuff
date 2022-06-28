package §?N§
{
   import §,B§.§-!0§;
   import §,B§.Popup;
   import §8!;§.§`7§;
   import §[!+§.§4`§;
   import §]+§.§@!J§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §]!e§
   {
      
      protected static var §8!D§:§4`§;
      
      protected static var §;B§:StatePopupManager;
      
      public static var §[Q§:Object;
      
      public static var §implements§:Popup;
      
      public static var §8S§:Boolean;
      
      private static var §finally§:Number;
      
      private static var §3v§:Number;
       
      
      public function §]!e§()
      {
         super();
      }
      
      public static function §`!V§() : Boolean
      {
         return §implements§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§8!D§)
         {
            return;
         }
         §;B§ = new StatePopupManager();
         §8!D§ = new §`7§(§;B§);
         §8!D§.init(<xml></xml>,new MovieClip());
         §8!D§.activateView();
         param1.addChild(§8!D§.§]1§.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§8!D§)
         {
            §8!D§.viewWidth = param1;
            §8!D§.viewHeight = param2;
         }
         §finally§ = param1;
         §3v§ = param2;
      }
      
      public static function §+u§(param1:String) : void
      {
         if(§implements§)
         {
            §implements§.close();
         }
         var _loc2_:§##§ = new §##§(§8!D§,§;B§,param1);
         §-j§(_loc2_);
      }
      
      public static function §>§() : §?1§
      {
         var _loc1_:§?1§ = new §?1§(§8!D§,§;B§);
         §-j§(_loc1_);
         return _loc1_;
      }
      
      public static function §>k§(param1:String = null) : void
      {
         try
         {
            §-j§(new §!!m§(§8!D§,§;B§,param1 || §!!m§.§^![§));
            if(param1 == §!!m§.§[!x§)
            {
               §@!J§.§"!C§();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §1!&§() : void
      {
         try
         {
            §-j§(new §@S§(§8!D§,§;B§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §-!1§() : void
      {
         try
         {
            §-j§(new §[Y§(§8!D§,§;B§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §2L§() : void
      {
         §-j§(new §@!1§(§8!D§,§;B§));
      }
      
      public static function §@!'§(param1:String, param2:String, param3:int, param4:String) : void
      {
         §-j§(new §0F§(§8!D§,§;B§,param1,param2,param3,param4));
      }
      
      private static function §-j§(param1:Popup, param2:Boolean = true) : void
      {
         if(§implements§ is §!!m§ || §implements§ is §@S§)
         {
            return;
         }
         if(§implements§)
         {
            if((§implements§ is §[Y§ || §implements§ is §?1§) && !(param1 is §!!m§ || param1 is §@S§))
            {
               return;
            }
            §implements§.deActivate();
         }
         §implements§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§-!0§.§>!R§,§[!_§);
         setViewSize(§finally§,§3v§);
      }
      
      private static function §[!_§(param1:§-!0§) : void
      {
         if(param1.§!!i§ == §implements§)
         {
            §implements§ = null;
         }
      }
   }
}
