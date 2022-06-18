package §0!>§
{
   import §?H§.§+!B§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §,!C§
   {
      
      protected static var §@,§:§+!B§;
      
      protected static var §3r§:StatePopupManager;
      
      public static var §"E§:Object;
      
      public static var §']§:Popup;
      
      public static var § set§:Boolean;
      
      private static var §!!D§:Number;
      
      private static var §7I§:Number;
       
      
      public function §,!C§()
      {
         super();
      }
      
      public static function §`e§() : Boolean
      {
         return §']§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§@,§)
         {
            return;
         }
         §3r§ = new StatePopupManager();
         §@,§ = new §+!B§(§3r§);
         §@,§.init(<xml></xml>,new MovieClip());
         §@,§.§`>§();
         param1.addChild(§@,§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§@,§)
         {
            §@,§.viewWidth = param1;
            §@,§.viewHeight = param2;
         }
         §!!D§ = param1;
         §7I§ = param2;
      }
      
      public static function §'c§(param1:Boolean) : void
      {
         §?8§(new §>y§(§@,§,param1));
      }
      
      public static function §>s§() : void
      {
         try
         {
            §?8§(new §+R§(§@,§,§3r§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §?8§(param1:Popup, param2:Boolean = true) : void
      {
         if(§']§ is §@%§)
         {
            return;
         }
         if(§']§)
         {
            if(§']§ is §+R§ && !(param1 is §@%§))
            {
               return;
            }
            §']§.deActivate();
         }
         §']§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§do§.§9E§,§><§);
         setViewSize(§!!D§,§7I§);
      }
      
      private static function §><§(param1:§do§) : void
      {
         if(param1.§#e§ == §']§)
         {
            §']§ = null;
         }
      }
   }
}
