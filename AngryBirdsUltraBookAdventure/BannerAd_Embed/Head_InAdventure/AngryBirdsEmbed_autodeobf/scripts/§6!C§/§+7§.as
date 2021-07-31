package §6!C§
{
   import §-!D§.§4!,§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §+7§
   {
      
      protected static var §9!9§:§4!,§;
      
      protected static var §<!'§:StatePopupManager;
      
      public static var §2>§:Object;
      
      public static var §!4§:Popup;
      
      public static var §#Q§:Boolean;
      
      private static var §"O§:Number;
      
      private static var §]w§:Number;
       
      
      public function §+7§()
      {
         super();
      }
      
      public static function §>!-§() : Boolean
      {
         return §!4§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§9!9§)
         {
            return;
         }
         §<!'§ = new StatePopupManager();
         §9!9§ = new §4!,§(§<!'§);
         §9!9§.init(<xml></xml>,new MovieClip());
         §9!9§.§@2§();
         param1.addChild(§9!9§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§9!9§)
         {
            §9!9§.viewWidth = param1;
            §9!9§.viewHeight = param2;
         }
         §"O§ = param1;
         §]w§ = param2;
      }
      
      public static function §?%§(param1:Boolean) : void
      {
         §4g§(new §6!G§(§9!9§,param1));
      }
      
      public static function §2!9§() : void
      {
         try
         {
            §4g§(new §`G§(§9!9§,§<!'§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §4g§(param1:Popup, param2:Boolean = true) : void
      {
         if(§!4§ is §';§)
         {
            return;
         }
         if(§!4§)
         {
            if(§!4§ is §`G§ && !(param1 is §';§))
            {
               return;
            }
            §!4§.deActivate();
         }
         §!4§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§%n§.§<6§,§4s§);
         setViewSize(§"O§,§]w§);
      }
      
      private static function §4s§(param1:§%n§) : void
      {
         if(param1.§]`§ == §!4§)
         {
            §!4§ = null;
         }
      }
   }
}
