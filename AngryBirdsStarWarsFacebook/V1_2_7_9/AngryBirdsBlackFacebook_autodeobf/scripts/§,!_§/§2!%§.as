package §,!_§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class §2!%§ extends §"!c§
   {
      
      protected static var §72§:String;
      
      protected static var §5t§:Function;
       
      
      public function §2!%§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         super(param1,param2,param3);
      }
      
      public static function get §+!k§() : String
      {
         return §72§;
      }
      
      public static function set §+!'§(param1:Function) : void
      {
         §5t§ = param1;
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var e:Event = param1;
         if(§5t§ != null && e is ErrorEvent && !hasEventListener(e.type))
         {
            §5t§(e);
            return true;
         }
         if(e.type == Event.COMPLETE)
         {
            try
            {
               if(super.data == "")
               {
                  data = {};
               }
               else
               {
                  data = JSON.parse(super.data);
               }
            }
            catch(err:SyntaxError)
            {
               err = new SyntaxError(e.toString() + "\n" + super.data);
               if(§5t§ != null)
               {
                  §5t§(err);
                  return true;
               }
               throw err;
            }
            if(data.error && data.retryAfterSeconds && §&y§ > 0)
            {
               --§&y§;
               §#n§ = data.retryAfterSeconds * 1000;
               super.load(§>G§);
               return true;
            }
            if(data.error && §5t§ != null)
            {
               §5t§(new ErrorEvent(ErrorEvent.ERROR,false,false,data.error));
               return true;
            }
            if(data.st != undefined)
            {
               §72§ = data.st;
            }
            this.initData();
         }
         return super.dispatchEvent(e);
      }
      
      protected function initData() : void
      {
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§8!;§(param1);
         super.load(param1);
      }
      
      private function §8!;§(param1:URLRequest) : void
      {
         if(§72§)
         {
            if(param1.url.indexOf("?") == -1)
            {
               param1.url += "?st=" + §72§;
            }
            else
            {
               param1.url += "&st=" + §72§;
            }
         }
      }
   }
}
