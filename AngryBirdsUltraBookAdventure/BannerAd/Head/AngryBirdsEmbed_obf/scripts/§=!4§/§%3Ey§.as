package §=!4§
{
   import §1;§.§!!1§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §>y§
   {
      
      protected static var §18§:§!!1§;
      
      protected static var §3m§:StatePopupManager;
      
      public static var §^!G§:Object;
      
      public static var §#^§:Popup;
      
      public static var §;G§:Boolean;
      
      private static var §92§:Number;
      
      private static var §%`§:Number;
       
      
      public function §>y§()
      {
         super();
      }
      
      public static function §7e§() : Boolean
      {
         return §#^§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§18§)
         {
            return;
         }
         §3m§ = new StatePopupManager();
         §18§ = new §!!1§(§3m§);
         §18§.init(<xml></xml>,new MovieClip());
         §18§.§+,§();
         param1.addChild(§18§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§18§)
         {
            §18§.viewWidth = param1;
            §18§.viewHeight = param2;
         }
         §92§ = param1;
         §%`§ = param2;
      }
      
      public static function §]>§(param1:Boolean) : void
      {
         §@m§(new §24§(§18§,param1));
      }
      
      public static function §2K§() : void
      {
         try
         {
            §@m§(new §+x§(§18§,§3m§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §@m§(param1:Popup, param2:Boolean = true) : void
      {
         if(§#^§ is §^^§)
         {
            return;
         }
         if(§#^§)
         {
            if(§#^§ is §+x§ && !(param1 is §^^§))
            {
               return;
            }
            §#^§.deActivate();
         }
         §#^§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§;=§.§"!G§,§0B§);
         setViewSize(§92§,§%`§);
      }
      
      private static function §0B§(param1:§;=§) : void
      {
         if(param1.§=!5§ == §#^§)
         {
            §#^§ = null;
         }
      }
   }
}
