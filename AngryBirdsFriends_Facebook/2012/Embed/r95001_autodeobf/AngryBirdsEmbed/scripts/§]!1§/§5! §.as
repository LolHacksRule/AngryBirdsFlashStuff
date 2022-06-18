package §]!1§
{
   import §6!,§.§[H§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §5! §
   {
      
      protected static var §"S§:§[H§;
      
      protected static var §8?§:StatePopupManager;
      
      public static var §9A§:Object;
      
      public static var §1#§:Popup;
      
      public static var §&!2§:Boolean;
      
      private static var §-b§:Number;
      
      private static var §!g§:Number;
       
      
      public function §5! §()
      {
         super();
      }
      
      public static function §`?§() : Boolean
      {
         return §1#§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§"S§)
         {
            return;
         }
         §8?§ = new StatePopupManager();
         §"S§ = new §[H§(§8?§);
         §"S§.init(<xml></xml>,new MovieClip());
         §"S§.§"!B§();
         param1.addChild(§"S§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§"S§)
         {
            §"S§.viewWidth = param1;
            §"S§.viewHeight = param2;
         }
         §-b§ = param1;
         §!g§ = param2;
      }
      
      public static function §>2§(param1:Boolean) : void
      {
         §2a§(new §,?§(§"S§,param1));
      }
      
      public static function §?!C§() : void
      {
         try
         {
            §2a§(new §]L§(§"S§,§8?§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §2a§(param1:Popup, param2:Boolean = true) : void
      {
         if(§1#§ is §"U§)
         {
            return;
         }
         if(§1#§)
         {
            if(§1#§ is §]L§ && !(param1 is §"U§))
            {
               return;
            }
            §1#§.deActivate();
         }
         §1#§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§"!A§.§>j§,§<!5§);
         setViewSize(§-b§,§!g§);
      }
      
      private static function §<!5§(param1:§"!A§) : void
      {
         if(param1.§3!-§ == §1#§)
         {
            §1#§ = null;
         }
      }
   }
}
