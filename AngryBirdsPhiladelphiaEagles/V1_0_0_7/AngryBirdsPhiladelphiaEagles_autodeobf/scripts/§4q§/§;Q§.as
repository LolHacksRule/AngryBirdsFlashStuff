package §4q§
{
   import §5!<§.§@]§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §;Q§
   {
      
      protected static var §7!N§:§@]§;
      
      protected static var §>#§:StatePopupManager;
      
      public static var §-[§:Object;
      
      public static var §#@§:Popup;
      
      public static var §]!F§:Boolean;
      
      private static var §2e§:Number;
      
      private static var §-z§:Number;
       
      
      public function §;Q§()
      {
         super();
      }
      
      public static function native() : Boolean
      {
         return §#@§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§7!N§)
         {
            return;
         }
         §>#§ = new StatePopupManager();
         §7!N§ = new §@]§(§>#§);
         §7!N§.init(<xml></xml>,new MovieClip());
         §7!N§.§4!2§();
         param1.addChild(§7!N§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§7!N§)
         {
            §7!N§.viewWidth = param1;
            §7!N§.viewHeight = param2;
         }
         §2e§ = param1;
         §-z§ = param2;
      }
      
      public static function §[%§(param1:Boolean) : void
      {
         §=A§(new §6!1§(§7!N§,param1));
      }
      
      public static function §=z§() : void
      {
         try
         {
            §=A§(new §?!;§(§7!N§,§>#§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §#^§() : void
      {
         if(!(§#@§ is §!!M§))
         {
            §;Q§.§=A§(new §!!M§(§7!N§,§>#§));
         }
      }
      
      public static function §=A§(param1:Popup, param2:Boolean = true) : void
      {
         if(§#@§ is §,]§)
         {
            return;
         }
         if(§#@§)
         {
            if(§#@§ is §?!;§ && !(param1 is §,]§))
            {
               return;
            }
            §#@§.deActivate();
         }
         §#@§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§4$§.§9U§,§[Q§);
         setViewSize(§2e§,§-z§);
      }
      
      private static function §[Q§(param1:§4$§) : void
      {
         if(param1.§2!0§ == §#@§)
         {
            §#@§ = null;
         }
      }
   }
}
