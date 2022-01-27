package §<!<§
{
   import §2S§.§<!K§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §+!<§
   {
      
      protected static var §<!@§:§<!K§;
      
      protected static var §5!$§:StatePopupManager;
      
      public static var §;@§:Object;
      
      public static var §2X§:Popup;
      
      public static var §]!6§:Boolean;
      
      private static var §?!'§:Number;
      
      private static var §][§:Number;
       
      
      public function §+!<§()
      {
         super();
      }
      
      public static function §%P§() : Boolean
      {
         return §2X§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§<!@§)
         {
            return;
         }
         §5!$§ = new StatePopupManager();
         §<!@§ = new §<!K§(§5!$§);
         §<!@§.init(<xml></xml>,new MovieClip());
         §<!@§.§%%§();
         param1.addChild(§<!@§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§<!@§)
         {
            §<!@§.viewWidth = param1;
            §<!@§.viewHeight = param2;
         }
         §?!'§ = param1;
         §][§ = param2;
      }
      
      public static function §"d§(param1:Boolean) : void
      {
         §5!M§(new §#1§(§<!@§,param1));
      }
      
      public static function §7L§() : void
      {
         try
         {
            §5!M§(new §`!#§(§<!@§,§5!$§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §;!G§() : void
      {
         if(!(§2X§ is §0<§))
         {
            §+!<§.§5!M§(new §0<§(§<!@§,§5!$§));
         }
      }
      
      public static function §5!M§(param1:Popup, param2:Boolean = true) : void
      {
         if(§2X§ is §4§)
         {
            return;
         }
         if(§2X§)
         {
            if(§2X§ is §`!#§ && !(param1 is §4§))
            {
               return;
            }
            §2X§.deActivate();
         }
         §2X§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§=b§.§2!?§,§@Q§);
         setViewSize(§?!'§,§][§);
      }
      
      private static function §@Q§(param1:§=b§) : void
      {
         if(param1.§3>§ == §2X§)
         {
            §2X§ = null;
         }
      }
   }
}
