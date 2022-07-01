package §+h§
{
   import §1"2§.§'s§;
   import §2H§.§<T§;
   import §2H§.§<j§;
   import §2H§.§continue§;
   import §8" §.§2J§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §^!]§
   {
      
      public static var §+!b§:§'s§;
      
      private static var §"i§:StatePopupManager;
      
      public static var §>"&§:Object;
      
      public static var §;?§:Popup;
      
      public static var §""'§:Boolean;
      
      private static var §6!u§:Number;
      
      private static var §6R§:Number;
      
      private static var §5! §:MovieClip;
      
      private static var §0D§:Vector.<Popup> = new Vector.<Popup>();
       
      
      public function §^!]§()
      {
         super();
      }
      
      public static function §]!@§() : Boolean
      {
         return §;?§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§+!b§)
         {
            return;
         }
         §"i§ = new StatePopupManager();
         §+!b§ = new §'s§(§"i§);
         §+!b§.init(<xml></xml>,new MovieClip());
         §+!b§.§&o§();
         param1.addChild(§+!b§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§+!b§)
         {
            §+!b§.viewWidth = param1;
            §+!b§.viewHeight = param2;
         }
         §6!u§ = param1;
         §6R§ = param2;
      }
      
      public static function §>!c§() : §="-§
      {
         var _loc1_:§="-§ = new §="-§(§+!b§,§"i§);
         §!I§(_loc1_);
         return _loc1_;
      }
      
      public static function § !]§() : §+"9§
      {
         var _loc1_:§+"9§ = new §+"9§(§+!b§,§"i§);
         §!I§(_loc1_);
         return _loc1_;
      }
      
      public static function §<!o§() : §`r§
      {
         var _loc1_:§`r§ = new §`r§(§+!b§,§"i§);
         §!I§(_loc1_);
         return _loc1_;
      }
      
      public static function §7m§(param1:String) : void
      {
         var _loc2_:§<T§ = new §<T§(§+!b§,param1,§"i§);
         §!I§(_loc2_,true,false);
      }
      
      public static function §&I§(param1:§2J§) : §<j§
      {
         var _loc2_:§<j§ = new §<j§(§+!b§,§"i§,param1);
         §!I§(_loc2_,false);
         return _loc2_;
      }
      
      public static function §3"4§(param1:String) : §continue§
      {
         var _loc2_:§continue§ = new §continue§(§+!b§,§"i§,param1);
         §!I§(_loc2_,false);
         return _loc2_;
      }
      
      private static function §!I§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         if(§;?§ && !param3)
         {
            if(param1.§0!x§ != Popup.§-8§)
            {
               §0D§.push(param1);
               return;
            }
            §0D§ = new Vector.<Popup>();
            §;?§.deActivate();
         }
         §;?§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§+1§.§9!R§,§#5§);
         setViewSize(§6!u§,§6R§);
      }
      
      private static function §#5§(param1:§+1§) : void
      {
         if(param1.§@!J§ == §;?§)
         {
            §;?§ = null;
         }
         if(§0D§.length > 0)
         {
            §!I§(§0D§.shift(),false);
         }
      }
   }
}
