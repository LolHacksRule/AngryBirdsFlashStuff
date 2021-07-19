package §7"A§
{
   import §>!#§.§-#A§;
   import §>q§.CoinShopPopup;
   import §?"R§.§[W§;
   import §^!,§.§<d§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §!l§
   {
      
      public static const §%!c§:int = -1;
      
      public static const §>"Q§:int = 0;
      
      public static const §<$$§:int = 1;
      
      private static var §+!I§:Vector.<§3"Z§>;
      
      private static var §,! §:Boolean = false;
       
      
      private var §7#u§:§3"Z§;
      
      public function §!l§()
      {
         super();
      }
      
      public static function §8$'§(param1:String, param2:int, param3:Object) : void
      {
         if(§+!I§ == null)
         {
            §+!I§ = new Vector.<§3"Z§>();
         }
         var _loc4_:Object = null;
         if(param2 == §<$$§)
         {
            _loc4_ = {"url":String(param3)};
         }
         §+!I§.push(new §3"Z§(param1,param2,_loc4_));
      }
      
      public static function §4";§() : void
      {
         if(!§,! §)
         {
            §,! § = true;
         }
      }
      
      public function § !5§(param1:String) : §3"Z§
      {
         var _loc2_:§3"Z§ = null;
         for each(_loc2_ in §+!I§)
         {
            if(_loc2_.id == param1)
            {
               this.§7#u§ = _loc2_;
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §##!§() : void
      {
         this.§7#u§ = null;
      }
      
      public function §&>§(param1:String) : void
      {
         if(!this.§7#u§ || !param1)
         {
            return;
         }
         if(param1 == this.§7#u§.§^!_§)
         {
            this.§!"[§();
         }
      }
      
      public function §!"[§() : void
      {
         var _loc1_:CoinShopPopup = null;
         if(!this.§7#u§)
         {
            return;
         }
         §-#A§.§6$2§().§3#5§(this.§7#u§.id);
         switch(this.§7#u§.§&"x§)
         {
            case §>"Q§:
               _loc1_ = new CoinShopPopup(§[W§.NORMAL,§<d§.TOP,CoinShopPopup.§4^§);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
               break;
            case §<$$§:
               this.§7!n§(this.§7#u§.§1L§.url);
         }
      }
      
      private function §7!n§(param1:String) : void
      {
         var urlString:String = param1;
         if(!urlString || urlString.length == 0)
         {
         }
         var url:URLRequest = new URLRequest(urlString);
         try
         {
            AngryBirdsBase.singleton.exitFullScreen();
            navigateToURL(url,"_blank");
         }
         catch(e:Error)
         {
         }
      }
   }
}
