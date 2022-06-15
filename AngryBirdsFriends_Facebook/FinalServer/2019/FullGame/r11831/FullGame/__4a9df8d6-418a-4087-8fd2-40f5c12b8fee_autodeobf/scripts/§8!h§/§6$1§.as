package §8!h§
{
   import §&!_§.§!!K§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §6$1§
   {
      
      private static var §+v§:Vector.<§^"]§>;
      
      private static var §9>§:Boolean = false;
       
      
      private var §^Y§:§^"]§;
      
      public function §6$1§()
      {
         super();
      }
      
      public static function §%#J§(param1:String, param2:Object) : void
      {
         if(§+v§ == null)
         {
            §+v§ = new Vector.<§^"]§>();
         }
         §+v§.push(new §^"]§(param1,param2));
      }
      
      public static function §7"§() : void
      {
         if(!§9>§)
         {
            §9>§ = true;
         }
      }
      
      public function §if §(param1:String) : §^"]§
      {
         var _loc2_:§^"]§ = null;
         for each(_loc2_ in §+v§)
         {
            if(_loc2_.id == param1)
            {
               this.§^Y§ = _loc2_;
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §?#z§() : void
      {
         this.§^Y§ = null;
      }
      
      public function §'"b§(param1:String) : void
      {
         if(!this.§^Y§ || !param1)
         {
            return;
         }
         if(param1 == "TOURNAMENT_CAMPAIGN_CLICKED")
         {
            this.§8#-§();
         }
      }
      
      public function §8#-§() : void
      {
         if(!this.§^Y§)
         {
            return;
         }
         §!!K§.§%#S§().§!!F§(this.§^Y§.id);
         this.§32§(this.§^Y§.§5##§);
      }
      
      private function §32§(param1:String) : void
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
