package §'!7§
{
   import §[R§.§5h§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §6!§
   {
      
      protected static var §`6§:§5h§;
      
      protected static var §,!A§:StatePopupManager;
      
      public static var §81§:Object;
      
      public static var §,4§:Popup;
      
      public static var §^!1§:Boolean;
      
      private static var §2@§:Number;
      
      private static var §[!&§:Number;
       
      
      public function §6!§()
      {
         super();
      }
      
      public static function §0<§() : Boolean
      {
         return §,4§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§`6§)
         {
            return;
         }
         §,!A§ = new StatePopupManager();
         §`6§ = new §5h§(§,!A§);
         §`6§.init(<xml></xml>,new MovieClip());
         §`6§.§0j§();
         param1.addChild(§`6§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§`6§)
         {
            §`6§.viewWidth = param1;
            §`6§.viewHeight = param2;
         }
         §2@§ = param1;
         §[!&§ = param2;
      }
      
      public static function §&!2§(param1:Boolean) : void
      {
         §1X§(new §%!?§(§`6§,param1));
      }
      
      public static function §'!B§() : void
      {
         try
         {
            §1X§(new §#>§(§`6§,§,!A§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §1X§(param1:Popup, param2:Boolean = true) : void
      {
         if(§,4§ is §1l§)
         {
            return;
         }
         if(§,4§)
         {
            if(§,4§ is §#>§ && !(param1 is §1l§))
            {
               return;
            }
            §,4§.deActivate();
         }
         §,4§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§`^§.§>y§,§+@§);
         setViewSize(§2@§,§[!&§);
      }
      
      private static function §+@§(param1:§`^§) : void
      {
         if(param1.§0!§ == §,4§)
         {
            §,4§ = null;
         }
      }
   }
}
