package §^!m§
{
   import §!!j§.§5!`§;
   import §!!j§.Popup;
   import §9j§.§2A§;
   import §<-§.§!!K§;
   import §>f§.§&!G§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §4!i§
   {
      
      protected static var §1!K§:§&!G§;
      
      protected static var § V§:StatePopupManager;
      
      public static var §'0§:Object;
      
      public static var §'!"§:Popup;
      
      public static var §%D§:Boolean;
      
      private static var §-!G§:Number;
      
      private static var §>J§:Number;
       
      
      public function §4!i§()
      {
         super();
      }
      
      public static function §+!V§() : Boolean
      {
         return §'!"§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§1!K§)
         {
            return;
         }
         § V§ = new StatePopupManager();
         §1!K§ = new §2A§(§ V§);
         §1!K§.init(<xml></xml>,new MovieClip());
         §1!K§.activateView();
         param1.addChild(§1!K§.§^!W§.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§1!K§)
         {
            §1!K§.viewWidth = param1;
            §1!K§.viewHeight = param2;
         }
         §-!G§ = param1;
         §>J§ = param2;
      }
      
      public static function §,!Z§(param1:String) : void
      {
         if(§'!"§)
         {
            §'!"§.close();
         }
         var _loc2_:§^!<§ = new §^!<§(§1!K§,§ V§,param1);
         §?!W§(_loc2_);
      }
      
      public static function §+!+§() : §`8§
      {
         var _loc1_:§`8§ = new §`8§(§1!K§,§ V§);
         §?!W§(_loc1_);
         return _loc1_;
      }
      
      public static function §>t§(param1:String = null) : void
      {
         try
         {
            §?!W§(new §;0§(§1!K§,§ V§,param1 || §;0§.§%!P§));
            if(param1 == §;0§.§-!W§)
            {
               §!!K§.§%!,§();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §<"§() : void
      {
         try
         {
            §?!W§(new §4!_§(§1!K§,§ V§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §^!P§() : void
      {
         try
         {
            §?!W§(new §^!S§(§1!K§,§ V§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §[!g§() : void
      {
         §?!W§(new §8!v§(§1!K§,§ V§));
      }
      
      public static function §4!x§(param1:String, param2:String, param3:int, param4:String) : void
      {
         §?!W§(new §]]§(§1!K§,§ V§,param1,param2,param3,param4));
      }
      
      private static function §?!W§(param1:Popup, param2:Boolean = true) : void
      {
         if(§'!"§ is §;0§ || §'!"§ is §4!_§)
         {
            return;
         }
         if(§'!"§)
         {
            if((§'!"§ is §^!S§ || §'!"§ is §`8§) && !(param1 is §;0§ || param1 is §4!_§))
            {
               return;
            }
            §'!"§.deActivate();
         }
         §'!"§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§5!`§.§#V§,§%m§);
         setViewSize(§-!G§,§>J§);
      }
      
      private static function §%m§(param1:§5!`§) : void
      {
         if(param1.§%'§ == §'!"§)
         {
            §'!"§ = null;
         }
      }
   }
}
