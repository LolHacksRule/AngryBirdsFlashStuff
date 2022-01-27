package §@<§
{
   import §4M§.§^'§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §`N§
   {
      
      protected static var §;>§:§^'§;
      
      protected static var §,=§:StatePopupManager;
      
      public static var §>+§:Object;
      
      public static var §'g§:Popup;
      
      public static var §=!%§:Boolean;
      
      private static var §5E§:Number;
      
      private static var §-s§:Number;
       
      
      public function §`N§()
      {
         super();
      }
      
      public static function §+!F§() : Boolean
      {
         return §'g§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§;>§)
         {
            return;
         }
         §,=§ = new StatePopupManager();
         §;>§ = new §^'§(§,=§);
         §;>§.init(<xml></xml>,new MovieClip());
         §;>§.§>j§();
         param1.addChild(§;>§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§;>§)
         {
            §;>§.viewWidth = param1;
            §;>§.viewHeight = param2;
         }
         §5E§ = param1;
         §-s§ = param2;
      }
      
      public static function §5! §(param1:Boolean) : void
      {
         §[!#§(new §-!"§(§;>§,param1));
      }
      
      public static function §+J§() : void
      {
         try
         {
            §[!#§(new §[!@§(§;>§,§,=§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §@c§() : void
      {
         if(!(§'g§ is §#;§))
         {
            §`N§.§[!#§(new §#;§(§;>§,§,=§));
         }
      }
      
      public static function §[!#§(param1:Popup, param2:Boolean = true) : void
      {
         if(§'g§ is §<^§)
         {
            return;
         }
         if(§'g§)
         {
            if(§'g§ is §[!@§ && !(param1 is §<^§))
            {
               return;
            }
            §'g§.deActivate();
         }
         §'g§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§!z§.§#!Q§,§'W§);
         setViewSize(§5E§,§-s§);
      }
      
      private static function §'W§(param1:§!z§) : void
      {
         if(param1.§4!1§ == §'g§)
         {
            §'g§ = null;
         }
      }
   }
}
