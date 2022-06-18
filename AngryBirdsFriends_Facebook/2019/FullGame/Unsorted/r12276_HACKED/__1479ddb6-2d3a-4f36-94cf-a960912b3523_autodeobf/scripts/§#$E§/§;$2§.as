package §#$E§
{
   import §2E§.§]!P§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §;$2§
   {
      
      private static var §+$4§:Vector.<§,!Y§>;
      
      private static var §,$ §:Boolean = false;
       
      
      private var §@$!§:§,!Y§;
      
      public function §;$2§()
      {
         super();
      }
      
      public static function §6!8§(param1:String, param2:Object) : void
      {
         if(§+$4§ == null)
         {
            §+$4§ = new Vector.<§,!Y§>();
         }
         §+$4§.push(new §,!Y§(param1,param2));
      }
      
      public static function §3#X§() : void
      {
         if(!§,$ §)
         {
            §,$ § = true;
         }
      }
      
      public function §3"F§(param1:String) : §,!Y§
      {
         var _loc2_:§,!Y§ = null;
         for each(_loc2_ in §+$4§)
         {
            if(_loc2_.id == param1)
            {
               this.§@$!§ = _loc2_;
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §13§() : void
      {
         this.§@$!§ = null;
      }
      
      public function §,#y§(param1:String) : void
      {
         if(!this.§@$!§ || !param1)
         {
            return;
         }
         if(param1 == "TOURNAMENT_CAMPAIGN_CLICKED")
         {
            this.§]$9§();
         }
      }
      
      public function §]$9§() : void
      {
         if(!this.§@$!§)
         {
            return;
         }
         §]!P§.§1!7§().§;"v§(this.§@$!§.id);
         this.§"2§(this.§@$!§.§="e§);
      }
      
      private function §"2§(param1:String) : void
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
