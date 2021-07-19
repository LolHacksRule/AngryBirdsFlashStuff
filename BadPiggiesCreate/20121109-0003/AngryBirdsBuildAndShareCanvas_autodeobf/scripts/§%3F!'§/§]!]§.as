package §?!'§
{
   import §&!<§.§>!V§;
   import §-"'§.§-!p§;
   import §-"'§.§8!5§;
   import §-"'§.§=!e§;
   import §;" §.§>"0§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §]!]§
   {
      
      public static var §]!H§:§>!V§;
      
      private static var §4!i§:StatePopupManager;
      
      public static var §<"2§:Object;
      
      public static var §>!4§:Popup;
      
      public static var §9!4§:Boolean;
      
      private static var §"!]§:Number;
      
      private static var §'"&§:Number;
      
      private static var §9I§:MovieClip;
      
      private static var § !O§:Vector.<Popup> = new Vector.<Popup>();
       
      
      public function §]!]§()
      {
         super();
      }
      
      public static function §9!5§() : Boolean
      {
         return §>!4§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§]!H§)
         {
            return;
         }
         §4!i§ = new StatePopupManager();
         §]!H§ = new §>!V§(§4!i§);
         §]!H§.init(<xml></xml>,new MovieClip());
         §]!H§.§6!<§();
         param1.addChild(§]!H§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§]!H§)
         {
            §]!H§.viewWidth = param1;
            §]!H§.viewHeight = param2;
         }
         §"!]§ = param1;
         §'"&§ = param2;
      }
      
      public static function §!!<§() : §1!k§
      {
         var _loc1_:§1!k§ = new §1!k§(§]!H§,§4!i§);
         §&!N§(_loc1_);
         return _loc1_;
      }
      
      public static function §-!T§() : §@3§
      {
         var _loc1_:§@3§ = new §@3§(§]!H§,§4!i§);
         §&!N§(_loc1_);
         return _loc1_;
      }
      
      public static function §&§() : §2!"§
      {
         var _loc1_:§2!"§ = new §2!"§(§]!H§,§4!i§);
         §&!N§(_loc1_);
         return _loc1_;
      }
      
      public static function §-!H§(param1:String) : void
      {
         var _loc2_:§-!p§ = new §-!p§(§]!H§,param1,§4!i§);
         §&!N§(_loc2_,true,false);
      }
      
      public static function §04§(param1:§>"0§) : §8!5§
      {
         var _loc2_:§8!5§ = new §8!5§(§]!H§,§4!i§,param1);
         §&!N§(_loc2_,false);
         return _loc2_;
      }
      
      public static function §;"%§(param1:String) : §=!e§
      {
         var _loc2_:§=!e§ = new §=!e§(§]!H§,§4!i§,param1);
         §&!N§(_loc2_,false);
         return _loc2_;
      }
      
      private static function §&!N§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         if(§>!4§ && !param3)
         {
            if(param1.§9=§ != Popup.§=u§)
            {
               § !O§.push(param1);
               return;
            }
            § !O§ = new Vector.<Popup>();
            §>!4§.deActivate();
         }
         §>!4§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§`![§.§;!U§,§0s§);
         setViewSize(§"!]§,§'"&§);
      }
      
      private static function §0s§(param1:§`![§) : void
      {
         if(param1.§@"-§ == §>!4§)
         {
            §>!4§ = null;
         }
         if(§ !O§.length > 0)
         {
            §&!N§(§ !O§.shift(),false);
         }
      }
   }
}
