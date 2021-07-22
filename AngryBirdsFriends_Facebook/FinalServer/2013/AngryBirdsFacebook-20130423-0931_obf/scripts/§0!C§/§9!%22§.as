package §0!C§
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §9!"§
   {
       
      
      private var §;§:Boolean;
      
      private var §2!H§:URLLoader;
      
      public function §9!"§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function get §#!=§() : Boolean
      {
         return this.§;§;
      }
      
      public function set §#!=§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;§ = param1;
         }
      }
      
      public function §">§() : URLLoader
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:URLRequest = §%"S§.§!C§.§`"§.§3"B§("https://graph.facebook.com/me?fields=is_eligible_promo&");
         if(_loc2_)
         {
            if(!this.§2!H§)
            {
               loop0:
               do
               {
                  this.§2!H§ = new URLLoader(_loc1_);
                  while(true)
                  {
                     this.§2!H§.addEventListener(Event.COMPLETE,this.onComplete);
                     while(!(_loc3_ && _loc3_))
                     {
                        this.§2!H§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        if(!(_loc3_ && this))
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(_loc3_ && _loc3_);
               
               addr94:
            }
            return this.§2!H§;
         }
         §§goto(addr94);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = JSON.parse(param1.target.data);
         if(_loc4_)
         {
            if(!_loc2_.is_eligible_promo)
            {
               this.§#!=§ = false;
               if(_loc4_)
               {
                  addr49:
               }
               else
               {
                  addr58:
               }
               return;
            }
            if(_loc4_)
            {
               this.§#!=§ = true;
            }
            §§goto(addr58);
         }
         §§goto(addr49);
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
   }
}
