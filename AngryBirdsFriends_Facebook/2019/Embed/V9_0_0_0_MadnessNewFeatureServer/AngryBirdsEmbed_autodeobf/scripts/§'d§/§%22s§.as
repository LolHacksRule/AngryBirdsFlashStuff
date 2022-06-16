package §'d§
{
   import §@a§.§8H§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §"s§
   {
      
      protected static var §3w§:§8H§;
      
      protected static var §--§:StatePopupManager;
      
      public static var §]7§:Object;
      
      public static var §=!8§:Popup;
      
      public static var §^d§:Boolean;
      
      private static var § h§:Number;
      
      private static var §9H§:Number;
       
      
      public function §"s§()
      {
         super();
      }
      
      public static function §63§() : Boolean
      {
         return §=!8§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§3w§)
         {
            return;
         }
         §--§ = new StatePopupManager();
         §3w§ = new §8H§(§--§);
         §3w§.init(<xml></xml>,new MovieClip());
         §3w§.§0A§();
         param1.addChild(§3w§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§3w§)
         {
            §3w§.viewWidth = param1;
            §3w§.viewHeight = param2;
         }
         § h§ = param1;
         §9H§ = param2;
      }
      
      public static function §=!E§(param1:Boolean) : void
      {
         §"!E§(new §@T§(§3w§,param1));
      }
      
      public static function §9,§() : void
      {
         try
         {
            §"!E§(new § var§(§3w§,§--§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §"!E§(param1:Popup, param2:Boolean = true) : void
      {
         if(§=!8§ is §'`§)
         {
            return;
         }
         if(§=!8§)
         {
            if(§=!8§ is § var§ && !(param1 is §'`§))
            {
               return;
            }
            §=!8§.deActivate();
         }
         §=!8§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§]'§.§]!A§,§@!=§);
         setViewSize(§ h§,§9H§);
      }
      
      private static function §@!=§(param1:§]'§) : void
      {
         if(param1.§%!G§ == §=!8§)
         {
            §=!8§ = null;
         }
      }
   }
}
