package §9"§
{
   import §+#B§.§+$A§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §>!a§
   {
      
      private static var §3"E§:Vector.<§7#7§>;
      
      private static var §'Q§:Boolean = false;
       
      
      private var §break§:§7#7§;
      
      public function §>!a§()
      {
         super();
      }
      
      public static function §;#q§(param1:String, param2:Object) : void
      {
         if(§3"E§ == null)
         {
            §3"E§ = new Vector.<§7#7§>();
         }
         §3"E§.push(new §7#7§(param1,param2));
      }
      
      public static function §7#y§() : void
      {
         if(!§'Q§)
         {
            §'Q§ = true;
         }
      }
      
      public function §!#k§(param1:String) : §7#7§
      {
         var _loc2_:§7#7§ = null;
         for each(_loc2_ in §3"E§)
         {
            if(_loc2_.id == param1)
            {
               this.§break§ = _loc2_;
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §05§() : void
      {
         this.§break§ = null;
      }
      
      public function §8"1§(param1:String) : void
      {
         if(!this.§break§ || !param1)
         {
            return;
         }
         if(param1 == "TOURNAMENT_CAMPAIGN_CLICKED")
         {
            this.§,#$§();
         }
      }
      
      public function §,#$§() : void
      {
         if(!this.§break§)
         {
            return;
         }
         §+$A§.§@"i§().§"r§(this.§break§.id);
         this.§6$3§(this.§break§.§@!f§);
      }
      
      private function §6$3§(param1:String) : void
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
