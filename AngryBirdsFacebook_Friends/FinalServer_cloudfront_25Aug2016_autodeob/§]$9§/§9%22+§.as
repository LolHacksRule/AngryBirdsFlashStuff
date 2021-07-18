package §]$9§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class §9"+§ extends §5$5§
   {
      
      protected static var §>!a§:String;
      
      protected static var §>!X§:Function;
       
      
      public function §9"+§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         super(param1,param2,param3);
      }
      
      public static function get §"C§() : String
      {
         return §>!a§;
      }
      
      public static function set §8"C§(param1:Function) : void
      {
         §>!X§ = param1;
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var throwError:Error = null;
         var e:Event = param1;
         var cancelDispatch:Boolean = false;
         if(§>!X§ != null && e is ErrorEvent && !hasEventListener(e.type))
         {
            §>!X§(e);
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
                  addr141:
                  data = JSON.parse(super.data);
               }
               if(data.error && data.retryAfterSeconds && §3#y§ > 0)
               {
                  --§3#y§;
                  §3#Q§ = data.retryAfterSeconds * 1000;
                  super.load(§6#y§);
                  return true;
               }
               if(data.error && §>!X§ != null)
               {
                  §>!X§(new ErrorEvent(ErrorEvent.ERROR,false,false,data.error));
                  return true;
               }
               if(data.st != undefined)
               {
                  §>!a§ = data.st;
               }
               cancelDispatch = this.initData();
            }
            catch(err:Error)
            {
               throwError = new Error("Error loading from \'" + §6#y§.url + "\': " + e.toString() + ", " + err.toString() + "\n" + super.data,err.errorID);
               if(§>!X§ != null)
               {
                  §>!X§(throwError);
                  return true;
               }
               throw throwError;
            }
            §§goto(addr141);
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
         this.§]!t§(param1);
         super.load(param1);
      }
      
      private function §]!t§(param1:URLRequest) : void
      {
         if(§>!a§)
         {
            if(param1.url.indexOf("?") == -1)
            {
               param1.url += "?st=" + §>!a§;
            }
            else
            {
               param1.url += "&st=" + §>!a§;
            }
         }
      }
   }
}
