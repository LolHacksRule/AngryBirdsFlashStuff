package §9!y§
{
   import §0X§.§'N§;
   import §2h§.§'!^§;
   import §7=§.§7j§;
   import §[m§.§%!b§;
   import §[m§.Popup;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §@M§
   {
      
      protected static var §0!P§:§'!^§;
      
      protected static var §8!>§:StatePopupManager;
      
      public static var §;c§:Object;
      
      public static var §2!;§:Popup;
      
      public static var §>,§:Boolean;
      
      private static var §?!L§:Number;
      
      private static var §@!O§:Number;
       
      
      public function §@M§()
      {
         super();
      }
      
      public static function §6w§() : Boolean
      {
         return §2!;§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§0!P§)
         {
            return;
         }
         §8!>§ = new StatePopupManager();
         §0!P§ = new §7j§(§8!>§);
         §0!P§.init(<xml></xml>,new MovieClip());
         §0!P§.activateView();
         param1.addChild(§0!P§.§;H§.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§0!P§)
         {
            §0!P§.viewWidth = param1;
            §0!P§.viewHeight = param2;
         }
         §?!L§ = param1;
         §@!O§ = param2;
      }
      
      public static function §@!7§(param1:String) : void
      {
         if(§2!;§)
         {
            §2!;§.close();
         }
         var _loc2_:§]!+§ = new §]!+§(§0!P§,§8!>§,param1);
         §2N§(_loc2_);
      }
      
      public static function §?!K§() : §%g§
      {
         var _loc1_:§%g§ = new §%g§(§0!P§,§8!>§);
         §2N§(_loc1_);
         return _loc1_;
      }
      
      public static function §!!g§(param1:String = null) : void
      {
         try
         {
            §2N§(new §2v§(§0!P§,§8!>§,param1 || §2v§.§?%§));
            if(param1 == §2v§.§'1§)
            {
               §'N§.§"!@§();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §-!@§() : void
      {
         try
         {
            §2N§(new §switch§(§0!P§,§8!>§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §-5§() : void
      {
         try
         {
            §2N§(new §!N§(§0!P§,§8!>§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §"&§() : void
      {
         §2N§(new §6!6§(§0!P§,§8!>§));
      }
      
      public static function §'t§(param1:String, param2:String, param3:int, param4:String) : void
      {
         §2N§(new §]s§(§0!P§,§8!>§,param1,param2,param3,param4));
      }
      
      private static function §2N§(param1:Popup, param2:Boolean = true) : void
      {
         if(§2!;§ is §2v§ || §2!;§ is §switch§)
         {
            return;
         }
         if(§2!;§)
         {
            if((§2!;§ is §!N§ || §2!;§ is §%g§) && !(param1 is §2v§ || param1 is §switch§))
            {
               return;
            }
            §2!;§.deActivate();
         }
         §2!;§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§%!b§.§<!k§,§6§);
         setViewSize(§?!L§,§@!O§);
      }
      
      private static function §6§(param1:§%!b§) : void
      {
         if(param1.§1!g§ == §2!;§)
         {
            §2!;§ = null;
         }
      }
   }
}
