package §1L§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class §0#=§ extends §9#f§
   {
      
      protected static var §]!z§:String;
      
      protected static var §?#,§:Function;
       
      
      public function §0#=§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         super(param1,param2,param3);
      }
      
      public static function get §+#!§() : String
      {
         return §]!z§;
      }
      
      public static function set §5#[§(param1:Function) : void
      {
         §?#,§ = param1;
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var throwError:Error = null;
         var e:Event = param1;
         var cancelDispatch:Boolean = false;
         if(§?#,§ != null && e is ErrorEvent && !hasEventListener(e.type))
         {
            §?#,§(e);
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
               throwError = new Error("Error loading from \'" + §4#m§.url + "\': " + e.toString() + ", " + err.toString() + "\n" + super.data,err.errorID);
               if(§?#,§ != null)
               {
                  §?#,§(throwError);
                  return true;
               }
               throw throwError;
            }
            if(data.error && data.retryAfterSeconds && §%[§ > 0)
            {
               --§%[§;
               §?#m§ = data.retryAfterSeconds * 1000;
               super.load(§4#m§);
               return true;
            }
            if(data.error && §?#,§ != null)
            {
               §?#,§(new ErrorEvent(ErrorEvent.ERROR,false,false,data.error));
               return true;
            }
            if(data.st != undefined)
            {
               §]!z§ = data.st;
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
         this.§8!2§(param1);
         super.load(param1);
      }
      
      private function §8!2§(param1:URLRequest) : void
      {
         if(§]!z§)
         {
            if(param1.url.indexOf("?") == -1)
            {
               param1.url += "?st=" + §]!z§;
            }
            else
            {
               param1.url += "&st=" + §]!z§;
            }
         }
      }
   }
}
