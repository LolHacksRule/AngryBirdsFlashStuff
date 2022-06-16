package §-#e§
{
   import §`7§.§ try§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §6#P§
   {
      
      private static var §`!V§:Vector.<§[#a§>;
      
      private static var §`!<§:Boolean = false;
       
      
      private var §@8§:§[#a§;
      
      public function §6#P§()
      {
         super();
      }
      
      public static function §#$ §(param1:String, param2:Object) : void
      {
         if(§`!V§ == null)
         {
            §`!V§ = new Vector.<§[#a§>();
         }
         §`!V§.push(new §[#a§(param1,param2));
      }
      
      public static function §4# §() : void
      {
         if(!§`!<§)
         {
            §`!<§ = true;
         }
      }
      
      public function §`!-§(param1:String) : §[#a§
      {
         var _loc2_:§[#a§ = null;
         for each(_loc2_ in §`!V§)
         {
            if(_loc2_.id == param1)
            {
               this.§@8§ = _loc2_;
               return _loc2_;
            }
         }
         return null;
      }
      
      public function § "P§() : void
      {
         this.§@8§ = null;
      }
      
      public function §7#7§(param1:String) : void
      {
         if(!this.§@8§ || !param1)
         {
            return;
         }
         if(param1 == "TOURNAMENT_CAMPAIGN_CLICKED")
         {
            this.§8",§();
         }
      }
      
      public function §8",§() : void
      {
         if(!this.§@8§)
         {
            return;
         }
         § try§.§!!t§().§&$>§(this.§@8§.id);
         this.§%Q§(this.§@8§.§+##§);
      }
      
      private function §%Q§(param1:String) : void
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
