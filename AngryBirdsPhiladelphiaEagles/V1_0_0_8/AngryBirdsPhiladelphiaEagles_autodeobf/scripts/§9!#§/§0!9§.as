package §9!#§
{
   import §>!7§.§"Q§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §0!9§
   {
      
      protected static var §=+§:§"Q§;
      
      protected static var §%$§:StatePopupManager;
      
      public static var §1Y§:Object;
      
      public static var §[2§:Popup;
      
      public static var §3d§:Boolean;
      
      private static var §9?§:Number;
      
      private static var §#!N§:Number;
       
      
      public function §0!9§()
      {
         super();
      }
      
      public static function §?K§() : Boolean
      {
         return §[2§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§=+§)
         {
            return;
         }
         §%$§ = new StatePopupManager();
         §=+§ = new §"Q§(§%$§);
         §=+§.init(<xml></xml>,new MovieClip());
         §=+§.§`!H§();
         param1.addChild(§=+§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§=+§)
         {
            §=+§.viewWidth = param1;
            §=+§.viewHeight = param2;
         }
         §9?§ = param1;
         §#!N§ = param2;
      }
      
      public static function §[V§(param1:Boolean) : void
      {
         §0Z§(new §7D§(§=+§,param1));
      }
      
      public static function §var§() : void
      {
         try
         {
            §0Z§(new § #§(§=+§,§%$§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §]!P§() : void
      {
         if(!(§[2§ is §"!K§))
         {
            §0!9§.§0Z§(new §"!K§(§=+§,§%$§));
         }
      }
      
      public static function §0Z§(param1:Popup, param2:Boolean = true) : void
      {
         if(§[2§ is §@!9§)
         {
            return;
         }
         if(§[2§)
         {
            if(§[2§ is § #§ && !(param1 is §@!9§))
            {
               return;
            }
            §[2§.deActivate();
         }
         §[2§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§>m§.§5i§,§!!I§);
         setViewSize(§9?§,§#!N§);
      }
      
      private static function §!!I§(param1:§>m§) : void
      {
         if(param1.§ L§ == §[2§)
         {
            §[2§ = null;
         }
      }
   }
}
