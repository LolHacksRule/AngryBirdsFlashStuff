package §%J§
{
   import §5Y§.§"!4§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §,3§
   {
      
      protected static var §[!F§:§"!4§;
      
      protected static var §%L§:StatePopupManager;
      
      public static var §0!1§:Object;
      
      public static var § ! §:Popup;
      
      public static var §8!?§:Boolean;
      
      private static var §#!5§:Number;
      
      private static var §6!F§:Number;
       
      
      public function §,3§()
      {
         super();
      }
      
      public static function §[1§() : Boolean
      {
         return § ! § != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§[!F§)
         {
            return;
         }
         §%L§ = new StatePopupManager();
         §[!F§ = new §"!4§(§%L§);
         §[!F§.init(<xml></xml>,new MovieClip());
         §[!F§.§!N§();
         param1.addChild(§[!F§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§[!F§)
         {
            §[!F§.viewWidth = param1;
            §[!F§.viewHeight = param2;
         }
         §#!5§ = param1;
         §6!F§ = param2;
      }
      
      public static function §1a§(param1:Boolean) : void
      {
         §2&§(new §@L§(§[!F§,param1));
      }
      
      public static function §do §() : void
      {
         try
         {
            §2&§(new §!!>§(§[!F§,§%L§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §2&§(param1:Popup, param2:Boolean = true) : void
      {
         if(§ ! § is §6!0§)
         {
            return;
         }
         if(§ ! §)
         {
            if(§ ! § is §!!>§ && !(param1 is §6!0§))
            {
               return;
            }
            § ! §.deActivate();
         }
         § ! § = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§+x§.§3_§,§>-§);
         setViewSize(§#!5§,§6!F§);
      }
      
      private static function §>-§(param1:§+x§) : void
      {
         if(param1.§=P§ == § ! §)
         {
            § ! § = null;
         }
      }
   }
}
