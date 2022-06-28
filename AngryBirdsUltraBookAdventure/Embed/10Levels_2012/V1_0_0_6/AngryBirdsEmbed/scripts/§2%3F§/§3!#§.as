package §2?§
{
   import §0w§.§0#§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §3!#§
   {
      
      protected static var §0y§:§0#§;
      
      protected static var §%§:StatePopupManager;
      
      public static var §#!$§:Object;
      
      public static var §4e§:Popup;
      
      public static var §!K§:Boolean;
      
      private static var §9Z§:Number;
      
      private static var §4!!§:Number;
       
      
      public function §3!#§()
      {
         super();
      }
      
      public static function §?T§() : Boolean
      {
         return §4e§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§0y§)
         {
            return;
         }
         §%§ = new StatePopupManager();
         §0y§ = new §0#§(§%§);
         §0y§.init(<xml></xml>,new MovieClip());
         §0y§.§@`§();
         param1.addChild(§0y§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§0y§)
         {
            §0y§.viewWidth = param1;
            §0y§.viewHeight = param2;
         }
         §9Z§ = param1;
         §4!!§ = param2;
      }
      
      public static function §?!!§(param1:Boolean) : void
      {
         §`4§(new §<5§(§0y§,param1));
      }
      
      public static function §+§() : void
      {
         try
         {
            §`4§(new §^!-§(§0y§,§%§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §`4§(param1:Popup, param2:Boolean = true) : void
      {
         if(§4e§ is §?4§)
         {
            return;
         }
         if(§4e§)
         {
            if(§4e§ is §^!-§ && !(param1 is §?4§))
            {
               return;
            }
            §4e§.deActivate();
         }
         §4e§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§;!#§.§'A§,§9n§);
         setViewSize(§9Z§,§4!!§);
      }
      
      private static function §9n§(param1:§;!#§) : void
      {
         if(param1.§case§ == §4e§)
         {
            §4e§ = null;
         }
      }
   }
}
