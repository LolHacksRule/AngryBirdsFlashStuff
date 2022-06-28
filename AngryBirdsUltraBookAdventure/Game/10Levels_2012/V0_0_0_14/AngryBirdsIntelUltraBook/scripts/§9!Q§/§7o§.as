package §9!Q§
{
   import §&!h§.§]V§;
   import §-2§.§ !O§;
   import §1n§.§ C§;
   import §9#§.§?!D§;
   import §9#§.Popup;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §7o§
   {
      
      protected static var §1!$§:§ C§;
      
      protected static var §>b§:StatePopupManager;
      
      public static var §@!8§:Object;
      
      public static var §]T§:Popup;
      
      public static var §[e§:Boolean;
      
      private static var §[p§:Number;
      
      private static var §7!L§:Number;
       
      
      public function §7o§()
      {
         super();
      }
      
      public static function §`!h§() : Boolean
      {
         return §]T§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§1!$§)
         {
            return;
         }
         §>b§ = new StatePopupManager();
         §1!$§ = new § !O§(§>b§);
         §1!$§.init(<xml></xml>,new MovieClip());
         §1!$§.activateView();
         param1.addChild(§1!$§.§>&§.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§1!$§)
         {
            §1!$§.viewWidth = param1;
            §1!$§.viewHeight = param2;
         }
         §[p§ = param1;
         §7!L§ = param2;
      }
      
      public static function §;M§(param1:String) : void
      {
         if(§]T§)
         {
            §]T§.close();
         }
         var _loc2_:§`!!§ = new §`!!§(§1!$§,§>b§,param1);
         §=?§(_loc2_);
      }
      
      public static function §=E§() : §&!a§
      {
         var _loc1_:§&!a§ = new §&!a§(§1!$§,§>b§);
         §=?§(_loc1_);
         return _loc1_;
      }
      
      public static function §-Y§(param1:String = null) : void
      {
         try
         {
            §=?§(new §2!S§(§1!$§,§>b§,param1 || §2!S§.§;v§));
            if(param1 == §2!S§.§2u§)
            {
               §]V§.§9f§();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §<!_§() : void
      {
         try
         {
            §=?§(new §0`§(§1!$§,§>b§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function § "§() : void
      {
         try
         {
            §=?§(new §,]§(§1!$§,§>b§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §,!h§() : void
      {
         §=?§(new §1T§(§1!$§,§>b§));
      }
      
      public static function §`J§(param1:String, param2:String, param3:int, param4:String) : void
      {
         §=?§(new §<^§(§1!$§,§>b§,param1,param2,param3,param4));
      }
      
      private static function §=?§(param1:Popup, param2:Boolean = true) : void
      {
         if(§]T§ is §2!S§ || §]T§ is §0`§)
         {
            return;
         }
         if(§]T§)
         {
            if((§]T§ is §,]§ || §]T§ is §&!a§) && !(param1 is §2!S§ || param1 is §0`§))
            {
               return;
            }
            §]T§.deActivate();
         }
         §]T§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§?!D§.§9!R§,§[S§);
         setViewSize(§[p§,§7!L§);
      }
      
      private static function §[S§(param1:§?!D§) : void
      {
         if(param1.§#!!§ == §]T§)
         {
            §]T§ = null;
         }
      }
   }
}
