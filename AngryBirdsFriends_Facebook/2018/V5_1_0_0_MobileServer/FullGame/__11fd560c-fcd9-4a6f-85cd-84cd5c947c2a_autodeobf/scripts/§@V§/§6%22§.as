package §@V§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §6"§ extends URLLoader
   {
       
      
      protected var §`!m§:int;
      
      protected var §"C§:URLRequest;
      
      protected var §=";§:Number;
      
      protected var §"!v§:Timer;
      
      protected var §]#C§:Boolean = false;
      
      protected var §+j§:URLRequest;
      
      public function §6"§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§`!m§ = param2;
         this.§"C§ = param1;
         this.§=";§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<#i§);
      }
      
      public function §<#^§(param1:URLRequest) : void
      {
         this.§+j§ = param1;
      }
      
      public function §'o§() : void
      {
         if(this.§+j§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§+j§);
         this.§+j§ = null;
      }
      
      protected function §<#i§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§`!m§ = 0;
            this.§]#C§ = true;
            super.dispatchEvent(new §;m§(§;m§.§!$5§));
         }
         else if(param1.status == 400)
         {
            this.§`!m§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§`!m§ > 0)
         {
            --this.§`!m§;
            super.load(this.§"C§);
            return true;
         }
         if(!this.§]#C§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§"C§ = param1;
         if(this.§=";§ > 0)
         {
            this.§"!v§ = new Timer(this.§=";§);
            this.§"!v§.addEventListener(TimerEvent.TIMER,this.§[$?§);
            this.§"!v§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §[$?§(param1:TimerEvent) : void
      {
         this.§"!v§.removeEventListener(TimerEvent.TIMER,this.§[$?§);
         this.§"!v§.reset();
         this.§"!v§ = null;
         this.§=";§ = 0;
         super.load(this.§"C§);
      }
   }
}
