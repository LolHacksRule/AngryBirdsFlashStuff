package §9!!§
{
   import §2]§.§#H§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §&a§
   {
      
      protected static var §%"§:§#H§;
      
      protected static var §&8§:StatePopupManager;
      
      public static var §<e§:Object;
      
      public static var §;h§:Popup;
      
      public static var §#V§:Boolean;
      
      private static var §7M§:Number;
      
      private static var §1M§:Number;
       
      
      public function §&a§()
      {
         super();
      }
      
      public static function §][§() : Boolean
      {
         return §;h§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§%"§)
         {
            return;
         }
         §&8§ = new StatePopupManager();
         §%"§ = new §#H§(§&8§);
         §%"§.init(<xml></xml>,new MovieClip());
         §%"§.§>T§();
         param1.addChild(§%"§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§%"§)
         {
            §%"§.viewWidth = param1;
            §%"§.viewHeight = param2;
         }
         §7M§ = param1;
         §1M§ = param2;
      }
      
      public static function §3B§(param1:Boolean) : void
      {
         §!!!§(new §"<§(§%"§,param1));
      }
      
      public static function §1b§() : void
      {
         try
         {
            §!!!§(new §^!-§(§%"§,§&8§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §!!!§(param1:Popup, param2:Boolean = true) : void
      {
         if(§;h§ is §,!&§)
         {
            return;
         }
         if(§;h§)
         {
            if(§;h§ is §^!-§ && !(param1 is §,!&§))
            {
               return;
            }
            §;h§.deActivate();
         }
         §;h§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§9!"§.§`y§,§#!B§);
         setViewSize(§7M§,§1M§);
      }
      
      private static function §#!B§(param1:§9!"§) : void
      {
         if(param1.§-y§ == §;h§)
         {
            §;h§ = null;
         }
      }
   }
}
