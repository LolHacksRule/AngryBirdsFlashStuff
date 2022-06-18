package §@r§
{
   import §"!K§.§,U§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §'!+§
   {
      
      protected static var §;$§:§,U§;
      
      protected static var §"R§:StatePopupManager;
      
      public static var §6e§:Object;
      
      public static var §!!6§:Popup;
      
      public static var §`7§:Boolean;
      
      private static var §+g§:Number;
      
      private static var §+!,§:Number;
       
      
      public function §'!+§()
      {
         super();
      }
      
      public static function §76§() : Boolean
      {
         return §!!6§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§;$§)
         {
            return;
         }
         §"R§ = new StatePopupManager();
         §;$§ = new §,U§(§"R§);
         §;$§.init(<xml></xml>,new MovieClip());
         §;$§.§ L§();
         param1.addChild(§;$§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§;$§)
         {
            §;$§.viewWidth = param1;
            §;$§.viewHeight = param2;
         }
         §+g§ = param1;
         §+!,§ = param2;
      }
      
      public static function §[N§(param1:Boolean) : void
      {
         §?#§(new §9!;§(§;$§,param1));
      }
      
      public static function § %§() : void
      {
         try
         {
            §?#§(new §7!-§(§;$§,§"R§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §?#§(param1:Popup, param2:Boolean = true) : void
      {
         if(§!!6§ is §]!@§)
         {
            return;
         }
         if(§!!6§)
         {
            if(§!!6§ is §7!-§ && !(param1 is §]!@§))
            {
               return;
            }
            §!!6§.deActivate();
         }
         §!!6§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§-w§.§;E§,§3Z§);
         setViewSize(§+g§,§+!,§);
      }
      
      private static function §3Z§(param1:§-w§) : void
      {
         if(param1.§;!D§ == §!!6§)
         {
            §!!6§ = null;
         }
      }
   }
}
