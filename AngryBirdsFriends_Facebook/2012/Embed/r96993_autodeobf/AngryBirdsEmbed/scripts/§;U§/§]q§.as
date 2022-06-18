package §;U§
{
   import §^s§.§&"§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §]q§
   {
      
      protected static var §;!>§:§&"§;
      
      protected static var §0!>§:StatePopupManager;
      
      public static var §,,§:Object;
      
      public static var §-s§:Popup;
      
      public static var §[Q§:Boolean;
      
      private static var §]b§:Number;
      
      private static var §52§:Number;
       
      
      public function §]q§()
      {
         super();
      }
      
      public static function §=6§() : Boolean
      {
         return §-s§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§;!>§)
         {
            return;
         }
         §0!>§ = new StatePopupManager();
         §;!>§ = new §&"§(§0!>§);
         §;!>§.init(<xml></xml>,new MovieClip());
         §;!>§.§%g§();
         param1.addChild(§;!>§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§;!>§)
         {
            §;!>§.viewWidth = param1;
            §;!>§.viewHeight = param2;
         }
         §]b§ = param1;
         §52§ = param2;
      }
      
      public static function §&&§(param1:Boolean) : void
      {
         §if §(new §3q§(§;!>§,param1));
      }
      
      public static function §%"§() : void
      {
         try
         {
            §if §(new §^p§(§;!>§,§0!>§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §if §(param1:Popup, param2:Boolean = true) : void
      {
         if(§-s§ is §`-§)
         {
            return;
         }
         if(§-s§)
         {
            if(§-s§ is §^p§ && !(param1 is §`-§))
            {
               return;
            }
            §-s§.deActivate();
         }
         §-s§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§#!>§.§2!>§,§9I§);
         setViewSize(§]b§,§52§);
      }
      
      private static function §9I§(param1:§#!>§) : void
      {
         if(param1.§[!!§ == §-s§)
         {
            §-s§ = null;
         }
      }
   }
}
