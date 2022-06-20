package § $%§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class §5h§ extends §0#`§
   {
      
      protected static var §7"j§:String;
      
      protected static var §=#l§:Function;
       
      
      public function §5h§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         super(param1,param2,param3);
      }
      
      public static function get §0#,§() : String
      {
         return §7"j§;
      }
      
      public static function set § #V§(param1:Function) : void
      {
         §=#l§ = param1;
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var throwError:Error = null;
         var e:Event = param1;
         var cancelDispatch:Boolean = false;
         if(§=#l§ != null && e is ErrorEvent && !hasEventListener(e.type))
         {
            §=#l§(e);
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
            catch(err:Error)
            {
               throwError = new Error("Error loading from \'" + §'d§.url + "\': " + e.toString() + ", " + err.toString() + "\n" + super.data,err.errorID);
               if(§=#l§ != null)
               {
                  §=#l§(throwError);
                  return true;
               }
               throw throwError;
            }
            if(data.error && data.retryAfterSeconds && §4#l§ > 0)
            {
               --§4#l§;
               §;;§ = data.retryAfterSeconds * 1000;
               super.load(§'d§);
               return true;
            }
            if(data.error && §=#l§ != null)
            {
               §=#l§(new ErrorEvent(ErrorEvent.ERROR,false,false,data.error));
               return true;
            }
            if(data.st != undefined)
            {
               §7"j§ = data.st;
            }
            cancelDispatch = this.initData();
         }
         if(cancelDispatch)
         {
            return false;
         }
         return super.dispatchEvent(e);
      }
      
      protected function initData() : Boolean
      {
         return false;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§""a§(param1);
         super.load(param1);
      }
      
      private function §""a§(param1:URLRequest) : void
      {
         if(§7"j§)
         {
            if(param1.url.indexOf("?") == -1)
            {
               param1.url += "?st=" + §7"j§;
            }
            else
            {
               param1.url += "&st=" + §7"j§;
            }
         }
      }
   }
}
