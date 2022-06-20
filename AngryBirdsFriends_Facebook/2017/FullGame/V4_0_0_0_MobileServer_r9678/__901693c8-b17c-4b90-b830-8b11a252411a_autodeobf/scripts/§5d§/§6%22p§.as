package §5d§
{
   import §6V§.§?!=§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §6"p§
   {
      
      private static var §`!B§:Vector.<§<"F§>;
      
      private static var §5#>§:Boolean = false;
       
      
      private var §8a§:§<"F§;
      
      public function §6"p§()
      {
         super();
      }
      
      public static function §0$ §(param1:String, param2:Object) : void
      {
         if(§`!B§ == null)
         {
            §`!B§ = new Vector.<§<"F§>();
         }
         §`!B§.push(new §<"F§(param1,param2));
      }
      
      public static function §&-§() : void
      {
         if(!§5#>§)
         {
            §5#>§ = true;
         }
      }
      
      public function §[!=§(param1:String) : §<"F§
      {
         var _loc2_:§<"F§ = null;
         for each(_loc2_ in §`!B§)
         {
            if(_loc2_.id == param1)
            {
               this.§8a§ = _loc2_;
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §'e§() : void
      {
         this.§8a§ = null;
      }
      
      public function §3#_§(param1:String) : void
      {
         if(!this.§8a§ || !param1)
         {
            return;
         }
         if(param1 == "TOURNAMENT_CAMPAIGN_CLICKED")
         {
            this.§@k§();
         }
      }
      
      public function §@k§() : void
      {
         if(!this.§8a§)
         {
            return;
         }
         §?!=§.§3!q§().§]"N§(this.§8a§.id);
         this.§1!n§(this.§8a§.§@#8§);
      }
      
      private function §1!n§(param1:String) : void
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
