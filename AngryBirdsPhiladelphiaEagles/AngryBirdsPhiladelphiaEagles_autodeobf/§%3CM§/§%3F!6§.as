package §<M§
{
   import §]!-§.§`o§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §?!6§
   {
      
      protected static var §2%§:§`o§;
      
      protected static var §#!6§:StatePopupManager;
      
      public static var §;u§:Object;
      
      public static var §7§:Popup;
      
      public static var §'N§:Boolean;
      
      private static var §>$§:Number;
      
      private static var §'F§:Number;
       
      
      public function §?!6§()
      {
         super();
      }
      
      public static function §%!7§() : Boolean
      {
         return §7§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§2%§)
         {
            return;
         }
         §#!6§ = new StatePopupManager();
         §2%§ = new §`o§(§#!6§);
         §2%§.init(<xml></xml>,new MovieClip());
         §2%§.§[C§();
         param1.addChild(§2%§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§2%§)
         {
            §2%§.viewWidth = param1;
            §2%§.viewHeight = param2;
         }
         §>$§ = param1;
         §'F§ = param2;
      }
      
      public static function §4,§(param1:Boolean) : void
      {
         §6'§(new §5?§(§2%§,param1));
      }
      
      public static function §<!>§() : void
      {
         try
         {
            §6'§(new §]!=§(§2%§,§#!6§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §1%§() : void
      {
         if(!(§7§ is §>!"§))
         {
            §?!6§.§6'§(new §>!"§(§2%§,§#!6§));
         }
      }
      
      public static function §6'§(param1:Popup, param2:Boolean = true) : void
      {
         if(§7§ is §]!N§)
         {
            return;
         }
         if(§7§)
         {
            if(§7§ is §]!=§ && !(param1 is §]!N§))
            {
               return;
            }
            §7§.deActivate();
         }
         §7§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§%,§.§=a§,§>r§);
         setViewSize(§>$§,§'F§);
      }
      
      private static function §>r§(param1:§%,§) : void
      {
         if(param1.§^5§ == §7§)
         {
            §7§ = null;
         }
      }
   }
}
