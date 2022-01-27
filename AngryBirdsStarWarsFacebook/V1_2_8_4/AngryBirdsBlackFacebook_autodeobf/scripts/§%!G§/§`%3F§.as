package §%!G§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class §`?§ extends §?!g§
   {
      
      protected static var §^5§:String;
      
      protected static var §]v§:Function;
       
      
      public function §`?§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         super(param1,param2,param3);
      }
      
      public static function get §+!B§() : String
      {
         return §^5§;
      }
      
      public static function set §`"i§(param1:Function) : void
      {
         §]v§ = param1;
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var e:Event = param1;
         if(§]v§ != null && e is ErrorEvent && !hasEventListener(e.type))
         {
            §]v§(e);
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
               if(§]v§ != null)
               {
                  §]v§(err);
                  return true;
               }
               throw err;
            }
            if(data.error && data.retryAfterSeconds && §89§ > 0)
            {
               --§89§;
               §']§ = data.retryAfterSeconds * 1000;
               super.load(§]!C§);
               return true;
            }
            if(data.error && §]v§ != null)
            {
               §]v§(new ErrorEvent(ErrorEvent.ERROR,false,false,data.error));
               return true;
            }
            if(data.st != undefined)
            {
               §^5§ = data.st;
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
         this.§9i§(param1);
         super.load(param1);
      }
      
      private function §9i§(param1:URLRequest) : void
      {
         if(§^5§)
         {
            if(param1.url.indexOf("?") == -1)
            {
               param1.url += "?st=" + §^5§;
            }
            else
            {
               param1.url += "&st=" + §^5§;
            }
         }
      }
   }
}
