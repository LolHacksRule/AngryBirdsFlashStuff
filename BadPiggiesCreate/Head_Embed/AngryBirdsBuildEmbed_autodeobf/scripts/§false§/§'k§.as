package §false§
{
   import §!y§.§2U§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §'k§
   {
      
      protected static var §<B§:§2U§;
      
      protected static var §!2§:StatePopupManager;
      
      public static var §@-§:Object;
      
      public static var §[4§:Popup;
      
      public static var §4!S§:Boolean;
      
      private static var §9!i§:Number;
      
      private static var §7i§:Number;
       
      
      public function §'k§()
      {
         super();
      }
      
      public static function §7-§() : Boolean
      {
         return §[4§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§<B§)
         {
            return;
         }
         §!2§ = new StatePopupManager();
         §<B§ = new §2U§(§!2§);
         §<B§.init(<xml></xml>,new MovieClip());
         §<B§.§[T§();
         param1.addChild(§<B§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§<B§)
         {
            §<B§.viewWidth = param1;
            §<B§.viewHeight = param2;
         }
         §9!i§ = param1;
         §7i§ = param2;
      }
      
      public static function § !Q§(param1:Boolean) : void
      {
         §=l§(new §get §(§<B§,param1));
      }
      
      public static function §14§() : void
      {
         try
         {
            §=l§(new §%!W§(§<B§,§!2§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §=l§(param1:Popup, param2:Boolean = true) : void
      {
         if(§[4§ is §3K§)
         {
            return;
         }
         if(§[4§)
         {
            if(§[4§ is §%!W§ && !(param1 is §3K§))
            {
               return;
            }
            §[4§.deActivate();
         }
         §[4§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§=s§.§>`§,§8%§);
         setViewSize(§9!i§,§7i§);
      }
      
      private static function §8%§(param1:§=s§) : void
      {
         if(param1.§ !%§ == §[4§)
         {
            §[4§ = null;
         }
      }
   }
}
