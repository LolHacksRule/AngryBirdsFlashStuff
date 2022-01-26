package §##§
{
   import §87§.§]T§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §!;§
   {
      
      protected static var §2+§:§]T§;
      
      protected static var §#N§:StatePopupManager;
      
      public static var §12§:Object;
      
      public static var §'#§:Popup;
      
      public static var §+!A§:Boolean;
      
      private static var §1!F§:Number;
      
      private static var §6b§:Number;
       
      
      public function §!;§()
      {
         super();
      }
      
      public static function §0!D§() : Boolean
      {
         return §'#§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§2+§)
         {
            return;
         }
         §#N§ = new StatePopupManager();
         §2+§ = new §]T§(§#N§);
         §2+§.init(<xml></xml>,new MovieClip());
         §2+§.§'X§();
         param1.addChild(§2+§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§2+§)
         {
            §2+§.viewWidth = param1;
            §2+§.viewHeight = param2;
         }
         §1!F§ = param1;
         §6b§ = param2;
      }
      
      public static function §+!$§(param1:Boolean) : void
      {
         §4@§(new §2L§(§2+§,param1));
      }
      
      public static function §4K§() : void
      {
         try
         {
            §4@§(new §&A§(§2+§,§#N§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §4@§(param1:Popup, param2:Boolean = true) : void
      {
         if(§'#§ is §9l§)
         {
            return;
         }
         if(§'#§)
         {
            if(§'#§ is §&A§ && !(param1 is §9l§))
            {
               return;
            }
            §'#§.deActivate();
         }
         §'#§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§+G§.§2C§,§#§);
         setViewSize(§1!F§,§6b§);
      }
      
      private static function §#§(param1:§+G§) : void
      {
         if(param1.§-#§ == §'#§)
         {
            §'#§ = null;
         }
      }
   }
}
