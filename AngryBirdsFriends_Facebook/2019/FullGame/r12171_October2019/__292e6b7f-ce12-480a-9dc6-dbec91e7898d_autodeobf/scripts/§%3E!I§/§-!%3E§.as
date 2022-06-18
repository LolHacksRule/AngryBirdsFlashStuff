package §>!I§
{
   import §#"4§.§3";§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §-!>§
   {
      
      private static var §!!!§:Vector.<§&"5§>;
      
      private static var §?#T§:Boolean = false;
       
      
      private var §8!]§:§&"5§;
      
      public function §-!>§()
      {
         super();
      }
      
      public static function §3$&§(param1:String, param2:Object) : void
      {
         if(§!!!§ == null)
         {
            §!!!§ = new Vector.<§&"5§>();
         }
         §!!!§.push(new §&"5§(param1,param2));
      }
      
      public static function §#!0§() : void
      {
         if(!§?#T§)
         {
            §?#T§ = true;
         }
      }
      
      public function §1#>§(param1:String) : §&"5§
      {
         var _loc2_:§&"5§ = null;
         for each(_loc2_ in §!!!§)
         {
            if(_loc2_.id == param1)
            {
               this.§8!]§ = _loc2_;
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §5"#§() : void
      {
         this.§8!]§ = null;
      }
      
      public function §<!W§(param1:String) : void
      {
         if(!this.§8!]§ || !param1)
         {
            return;
         }
         if(param1 == "TOURNAMENT_CAMPAIGN_CLICKED")
         {
            this.§+b§();
         }
      }
      
      public function §+b§() : void
      {
         if(!this.§8!]§)
         {
            return;
         }
         §3";§.§#"'§().§7"F§(this.§8!]§.id);
         this.§ e§(this.§8!]§.§ "3§);
      }
      
      private function § e§(param1:String) : void
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
