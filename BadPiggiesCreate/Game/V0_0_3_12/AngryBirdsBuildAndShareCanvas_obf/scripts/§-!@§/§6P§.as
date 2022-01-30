package §-!@§
{
   import §7!%§.§ if§;
   import §7!%§.§8!q§;
   import §@">§.§%!u§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §6P§
   {
      
      public static var §<C§:§%!u§;
      
      private static var §'m§:StatePopupManager;
      
      public static var §'>§:Object;
      
      public static var § !N§:Popup;
      
      public static var §[!>§:Boolean;
      
      private static var §0a§:Number;
      
      private static var §-4§:Number;
      
      private static var §&$§:MovieClip;
      
      private static var §"G§:Vector.<Popup> = new Vector.<Popup>();
       
      
      public function §6P§()
      {
         super();
      }
      
      public static function §01§() : Boolean
      {
         return § !N§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§<C§)
         {
            return;
         }
         §'m§ = new StatePopupManager();
         §<C§ = new §%!u§(§'m§);
         §<C§.init(<xml></xml>,new MovieClip());
         §<C§.§<O§();
         param1.addChild(§<C§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§<C§)
         {
            §<C§.viewWidth = param1;
            §<C§.viewHeight = param2;
         }
         §0a§ = param1;
         §-4§ = param2;
      }
      
      public static function §=!4§() : §2Q§
      {
         var _loc1_:§2Q§ = new §2Q§(§<C§,§'m§);
         § I§(_loc1_);
         return _loc1_;
      }
      
      public static function §4! §() : §2!G§
      {
         var _loc1_:§2!G§ = new §2!G§(§<C§,§'m§);
         § I§(_loc1_);
         return _loc1_;
      }
      
      public static function §[!b§() : §+!5§
      {
         var _loc1_:§+!5§ = new §+!5§(§<C§,§'m§);
         § I§(_loc1_);
         return _loc1_;
      }
      
      public static function §5m§(param1:String) : void
      {
         var _loc2_:§8!q§ = new §8!q§(§<C§,param1,§'m§);
         § I§(_loc2_,true,false);
      }
      
      public static function §'!P§(param1:String) : § if§
      {
         var _loc2_:§ if§ = new § if§(§<C§,§'m§,param1);
         § I§(_loc2_,false);
         return _loc2_;
      }
      
      private static function § I§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         if(§ !N§ && !param3)
         {
            if(param1.§`!2§ != Popup.§%!l§)
            {
               §"G§.push(param1);
               return;
            }
            §"G§ = new Vector.<Popup>();
            § !N§.deActivate();
         }
         § !N§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§3Q§.§#!B§,§3!q§);
         setViewSize(§0a§,§-4§);
      }
      
      private static function §3!q§(param1:§3Q§) : void
      {
         if(param1.§0§ == § !N§)
         {
            § !N§ = null;
         }
         if(§"G§.length > 0)
         {
            § I§(§"G§.shift(),false);
         }
      }
   }
}
