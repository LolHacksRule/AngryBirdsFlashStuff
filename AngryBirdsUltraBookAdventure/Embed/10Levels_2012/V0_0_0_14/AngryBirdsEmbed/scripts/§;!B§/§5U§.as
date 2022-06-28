package §;!B§
{
   import §<!G§.§^3§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §5U§
   {
      
      protected static var §5q§:§^3§;
      
      protected static var §8!H§:StatePopupManager;
      
      public static var §@H§:Object;
      
      public static var §!%§:Popup;
      
      public static var §,P§:Boolean;
      
      private static var §]!1§:Number;
      
      private static var §5t§:Number;
       
      
      public function §5U§()
      {
         super();
      }
      
      public static function §7;§() : Boolean
      {
         return §!%§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§5q§)
         {
            return;
         }
         §8!H§ = new StatePopupManager();
         §5q§ = new §^3§(§8!H§);
         §5q§.init(<xml></xml>,new MovieClip());
         §5q§.§<!&§();
         param1.addChild(§5q§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§5q§)
         {
            §5q§.viewWidth = param1;
            §5q§.viewHeight = param2;
         }
         §]!1§ = param1;
         §5t§ = param2;
      }
      
      public static function §+w§(param1:Boolean) : void
      {
         §49§(new §9%§(§5q§,param1));
      }
      
      public static function §?7§() : void
      {
         try
         {
            §49§(new §[!E§(§5q§,§8!H§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §49§(param1:Popup, param2:Boolean = true) : void
      {
         if(§!%§ is §`C§)
         {
            return;
         }
         if(§!%§)
         {
            if(§!%§ is §[!E§ && !(param1 is §`C§))
            {
               return;
            }
            §!%§.deActivate();
         }
         §!%§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§7$§.§^O§,§0!$§);
         setViewSize(§]!1§,§5t§);
      }
      
      private static function §0!$§(param1:§7$§) : void
      {
         if(param1.§ set§ == §!%§)
         {
            §!%§ = null;
         }
      }
   }
}
