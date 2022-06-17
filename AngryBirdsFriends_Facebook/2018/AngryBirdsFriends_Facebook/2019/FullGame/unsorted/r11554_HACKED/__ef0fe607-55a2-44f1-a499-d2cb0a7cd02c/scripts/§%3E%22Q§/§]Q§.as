package §>"Q§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class §]Q§ extends §7"2§
   {
      
      protected static var §##c§:String;
      
      protected static var §+-§:Function;
       
      
      public function §]Q§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         super(param1,param2,param3);
      }
      
      public static function get §="3§() : String
      {
         return §##c§;
      }
      
      public static function set §"!2§(param1:Function) : void
      {
         §+-§ = param1;
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var throwError:Error = null;
         var e:Event = param1;
         var cancelDispatch:Boolean = false;
         if(§+-§ != null && e is ErrorEvent && !hasEventListener(e.type))
         {
            §+-§(e);
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
                  addr146:
                  data = JSON.parse(super.data);
               }
               if(data.error && data.retryAfterSeconds && §=P§ > 0)
               {
                  --§=P§;
                  §>""§ = data.retryAfterSeconds * 1000;
                  super.load(§use§);
                  return true;
               }
               if(data.error && §+-§ != null)
               {
                  §+-§(new ErrorEvent(ErrorEvent.ERROR,false,false,data.error));
                  return true;
               }
               if(data.st != undefined)
               {
                  §##c§ = data.st;
               }
               cancelDispatch = this.initData();
            }
            catch(err:Error)
            {
               throwError = new Error("Error loading from \'" + §use§.url + "\': " + e.toString() + ", " + err.toString() + "\n" + super.data,err.errorID);
               if(§+-§ != null)
               {
                  §+-§(throwError);
                  return true;
               }
               throw throwError;
            }
            §§goto(addr146);
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
         this.§3#7§(param1);
         super.load(param1);
      }
      
      private function §3#7§(param1:URLRequest) : void
      {
         if(§##c§)
         {
            if(param1.url.indexOf("?") == -1)
            {
               param1.url += "?st=" + §##c§;
            }
            else
            {
               param1.url += "&st=" + §##c§;
            }
         }
      }
   }
}
