package §_-01E§
{
   import §_-9X§.§_-qS§;
   import §_-Hb§.§_-P-§;
   import §_-Hb§.§_-ur§;
   import §_-Y8§.§_-05J§;
   import §_-eS§.§_-4E§;
   import §_-mh§.§_-09d§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §_-9K§
   {
      
      private static var §_-01p§:§_-ur§;
      
      private static var §_-0Cx§:Object;
      
      private static var §_-0-H§:String = "";
      
      private static var §_-31§:int = 0;
       
      
      public function §_-9K§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         §_-01p§ = new §_-ur§();
         §_-01p§.dataFormat = URLLoaderDataFormat.TEXT;
         §_-01p§.addEventListener(Event.COMPLETE,§_-0V§);
         §_-01p§.addEventListener(IOErrorEvent.IO_ERROR,§_-cs§);
         §_-01p§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§_-cs§);
         if(param1)
         {
            §_-01p§.load(§_-P-§.§_-0Ak§(AngryBirdsFP11.§_-08Q§ + "/init/" + param1 + "/" + param2 + "/" + param3 + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            §_-01p§.load(§_-P-§.§_-0Ak§(AngryBirdsFP11.§_-08Q§ + "/init"));
         }
      }
      
      protected static function §_-cs§(param1:Event) : void
      {
         §_-0-H§ = "Can\'t contact server.\n" + param1.toString();
         §_-01p§ = null;
      }
      
      private static function §_-0V§(param1:Event) : void
      {
         var serverResponse:String = null;
         var bragObject:Object = null;
         var e:Event = param1;
         var threwError:Boolean = false;
         serverResponse = String(§_-01p§.data);
         try
         {
            §_-0Cx§ = JSON.parse(serverResponse);
            if(§_-0Cx§.error)
            {
               §_-0-H§ = "Server error of type \'" + §_-0Cx§.type + "\':\n" + §_-0Cx§.message;
               if(§_-0Cx§.type == "OAuthException")
               {
                  §_-31§ = §_-4E§.§_-T§;
               }
               threwError = true;
            }
         }
         catch(e:Error)
         {
            §_-0-H§ = "Invalid server response. Expected a json string but got this:\n" + serverResponse;
            §_-31§ = §_-4E§.§_-ju§;
            threwError = true;
         }
         if(!threwError)
         {
            §_-qS§.§_-067§(§_-0Cx§.friends);
            (AngryBirdsFP11.sUserProgress as §_-09d§).§_-mg§(§_-0Cx§.state as Array,§_-0Cx§.user.name,§_-0Cx§.user.avatar,§_-0Cx§.user.userId,§_-0Cx§.eggs,§_-0Cx§.user.tutorials);
            §_-xz§.§_-3S§.§_-Hd§(§_-0Cx§.excludedUserIds);
            §_-xz§.§_-3S§.§_-JD§(§_-0Cx§.deauthorizedUserIds);
            if(§_-0Cx§.user.name == null)
            {
               throw new Error("User name cannot be null");
            }
            if(§_-0Cx§.user.ap == true)
            {
               §_-05J§.§_-0At§("doAdParlorConversion");
            }
            §_-rG§.§_-1J§(§_-0Cx§.friends);
            for each(bragObject in §_-0Cx§.requests.brags)
            {
               §_-05J§.§_-0At§("flashDeleteRequest",bragObject.r);
            }
         }
         §_-01p§ = null;
      }
      
      public static function get §_-Er§() : Boolean
      {
         return §_-01p§ != null;
      }
      
      private static function get data() : Object
      {
         return §_-0Cx§;
      }
      
      public static function §_-00E§() : String
      {
         return §_-0-H§;
      }
      
      public static function §_-If§() : int
      {
         return §_-31§;
      }
   }
}
