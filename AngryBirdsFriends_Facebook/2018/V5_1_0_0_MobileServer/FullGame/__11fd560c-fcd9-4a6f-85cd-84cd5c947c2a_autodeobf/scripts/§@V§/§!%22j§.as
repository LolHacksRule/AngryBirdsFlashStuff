package §@V§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class §!"j§ extends §6"§
   {
      
      protected static var §3"0§:String;
      
      protected static var §&"V§:Function;
       
      
      public function §!"j§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         super(param1,param2,param3);
      }
      
      public static function get §-J§() : String
      {
         return §3"0§;
      }
      
      public static function set §@![§(param1:Function) : void
      {
         §&"V§ = param1;
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var throwError:Error = null;
         var e:Event = param1;
         var cancelDispatch:Boolean = false;
         if(§&"V§ != null && e is ErrorEvent && !hasEventListener(e.type))
         {
            §&"V§(e);
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
               throwError = new Error("Error loading from \'" + §"C§.url + "\': " + e.toString() + ", " + err.toString() + "\n" + super.data,err.errorID);
               if(§&"V§ != null)
               {
                  §&"V§(throwError);
                  return true;
               }
               throw throwError;
            }
            if(data.error && data.retryAfterSeconds && §`!m§ > 0)
            {
               --§`!m§;
               §=";§ = data.retryAfterSeconds * 1000;
               super.load(§"C§);
               return true;
            }
            if(data.error && §&"V§ != null)
            {
               §&"V§(new ErrorEvent(ErrorEvent.ERROR,false,false,data.error));
               return true;
            }
            if(data.st != undefined)
            {
               §3"0§ = data.st;
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
         this.§1#y§(param1);
         super.load(param1);
      }
      
      private function §1#y§(param1:URLRequest) : void
      {
         if(§3"0§)
         {
            if(param1.url.indexOf("?") == -1)
            {
               param1.url += "?st=" + §3"0§;
            }
            else
            {
               param1.url += "&st=" + §3"0§;
            }
         }
      }
   }
}
