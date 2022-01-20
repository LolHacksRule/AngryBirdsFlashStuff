package §=u§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §!!j§ extends URLLoader
   {
       
      
      protected var §&U§:int;
      
      protected var §,!>§:URLRequest;
      
      protected var §;!1§:Number;
      
      protected var § !o§:Timer;
      
      protected var §null§:Boolean = false;
      
      protected var §get §:URLRequest;
      
      public function §!!j§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§&U§ = param2;
         this.§,!>§ = param1;
         this.§;!1§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§2!2§);
      }
      
      public function §1!e§(param1:URLRequest) : void
      {
         this.§get § = param1;
      }
      
      public function §]a§() : void
      {
         if(this.§get § == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§get §);
         this.§get § = null;
      }
      
      protected function §2!2§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§&U§ = 0;
            this.§null§ = true;
            super.dispatchEvent(new §[§(§[§.§0!G§));
         }
         else if(param1.status == 400)
         {
            this.§&U§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§&U§ > 0)
         {
            --this.§&U§;
            super.load(this.§,!>§);
            return true;
         }
         if(!this.§null§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§,!>§ = param1;
         if(this.§;!1§ > 0)
         {
            this.§ !o§ = new Timer(this.§;!1§);
            this.§ !o§.addEventListener(TimerEvent.TIMER,this.§8!g§);
            this.§ !o§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §8!g§(param1:TimerEvent) : void
      {
         this.§ !o§.removeEventListener(TimerEvent.TIMER,this.§8!g§);
         this.§ !o§.reset();
         this.§ !o§ = null;
         super.load(this.§,!>§);
      }
   }
}
