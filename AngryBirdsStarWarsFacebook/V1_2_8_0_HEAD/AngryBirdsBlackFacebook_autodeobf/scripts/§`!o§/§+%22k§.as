package §`!o§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class §+"k§ extends §2,§
   {
      
      protected static var §4#Y§:String;
      
      protected static var §]"1§:Function;
       
      
      public function §+"k§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         super(param1,param2,param3);
      }
      
      public static function get §!x§() : String
      {
         return §4#Y§;
      }
      
      public static function set §-!w§(param1:Function) : void
      {
         §]"1§ = param1;
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var e:Event = param1;
         if(§]"1§ != null && e is ErrorEvent && !hasEventListener(e.type))
         {
            §]"1§(e);
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
               if(§]"1§ != null)
               {
                  §]"1§(err);
                  return true;
               }
               throw err;
            }
            if(data.error && data.retryAfterSeconds && §`"m§ > 0)
            {
               --§`"m§;
               §7!+§ = data.retryAfterSeconds * 1000;
               super.load(§^!y§);
               return true;
            }
            if(data.error && §]"1§ != null)
            {
               §]"1§(new ErrorEvent(ErrorEvent.ERROR,false,false,data.error));
               return true;
            }
            if(data.st != undefined)
            {
               §4#Y§ = data.st;
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
         this.§8e§(param1);
         super.load(param1);
      }
      
      private function §8e§(param1:URLRequest) : void
      {
         if(§4#Y§)
         {
            if(param1.url.indexOf("?") == -1)
            {
               param1.url += "?st=" + §4#Y§;
            }
            else
            {
               param1.url += "&st=" + §4#Y§;
            }
         }
      }
   }
}
