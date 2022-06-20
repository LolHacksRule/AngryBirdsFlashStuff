package §7"1§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class §="A§ extends §"$D§
   {
      
      protected static var §`#A§:String;
      
      protected static var §""v§:Function;
       
      
      public function §="A§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         super(param1,param2,param3);
      }
      
      public static function get §<!9§() : String
      {
         return §`#A§;
      }
      
      public static function set §3#-§(param1:Function) : void
      {
         §""v§ = param1;
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var throwError:Error = null;
         var e:Event = param1;
         var cancelDispatch:Boolean = false;
         if(§""v§ != null && e is ErrorEvent && !hasEventListener(e.type))
         {
            §""v§(e);
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
               if(data.error && data.retryAfterSeconds && §%">§ > 0)
               {
                  --§%">§;
                  §6"e§ = data.retryAfterSeconds * 1000;
                  super.load(§1!9§);
                  return true;
               }
               if(data.error && §""v§ != null)
               {
                  §""v§(new ErrorEvent(ErrorEvent.ERROR,false,false,data.error));
                  return true;
               }
               if(data.st != undefined)
               {
                  §`#A§ = data.st;
               }
               cancelDispatch = this.initData();
            }
            catch(err:Error)
            {
               throwError = new Error("Error loading from \'" + §1!9§.url + "\': " + e.toString() + ", " + err.toString() + "\n" + super.data,err.errorID);
               if(§""v§ != null)
               {
                  §""v§(throwError);
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
         this.§;x§(param1);
         super.load(param1);
      }
      
      private function §;x§(param1:URLRequest) : void
      {
         if(§`#A§)
         {
            if(param1.url.indexOf("?") == -1)
            {
               param1.url += "?st=" + §`#A§;
            }
            else
            {
               param1.url += "&st=" + §`#A§;
            }
         }
      }
   }
}
