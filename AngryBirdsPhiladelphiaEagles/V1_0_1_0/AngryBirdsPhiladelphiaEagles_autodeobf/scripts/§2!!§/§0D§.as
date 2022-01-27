package §2!!§
{
   import §]!O§.§+[§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §0D§
   {
      
      protected static var §-d§:§+[§;
      
      protected static var §#0§:StatePopupManager;
      
      public static var §+!H§:Object;
      
      public static var §if §:Popup;
      
      public static var §=<§:Boolean;
      
      private static var §@$§:Number;
      
      private static var §,D§:Number;
       
      
      public function §0D§()
      {
         super();
      }
      
      public static function §&8§() : Boolean
      {
         return §if § != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§-d§)
         {
            return;
         }
         §#0§ = new StatePopupManager();
         §-d§ = new §+[§(§#0§);
         §-d§.init(<xml></xml>,new MovieClip());
         §-d§.§#W§();
         param1.addChild(§-d§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§-d§)
         {
            §-d§.viewWidth = param1;
            §-d§.viewHeight = param2;
         }
         §@$§ = param1;
         §,D§ = param2;
      }
      
      public static function §>!E§(param1:Boolean) : void
      {
         §-!2§(new §%!9§(§-d§,param1));
      }
      
      public static function §[!>§() : void
      {
         try
         {
            §-!2§(new §[^§(§-d§,§#0§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §@!3§() : void
      {
         if(!(§if § is §6K§))
         {
            §0D§.§-!2§(new §6K§(§-d§,§#0§));
         }
      }
      
      public static function §-!2§(param1:Popup, param2:Boolean = true) : void
      {
         if(§if § is §+D§)
         {
            return;
         }
         if(§if §)
         {
            if(§if § is §[^§ && !(param1 is §+D§))
            {
               return;
            }
            §if §.deActivate();
         }
         §if § = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§+`§.§%@§,§9!F§);
         setViewSize(§@$§,§,D§);
      }
      
      private static function §9!F§(param1:§+`§) : void
      {
         if(param1.§;w§ == §if §)
         {
            §if § = null;
         }
      }
   }
}
