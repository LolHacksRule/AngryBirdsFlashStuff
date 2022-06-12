package §!§
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §'7§
   {
       
      
      private var §4!9§:Boolean;
      
      private var §]D§:URLLoader;
      
      public function §'7§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public function get §3"F§() : Boolean
      {
         return this.§4!9§;
      }
      
      public function set §3"F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4!9§ = param1;
         }
      }
      
      public function §#!h§() : URLLoader
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:URLRequest = §3T§.§67§.§7!>§.§@8§("https://graph.facebook.com/me?fields=is_eligible_promo&");
         if(!(_loc2_ && _loc1_))
         {
            if(!this.§]D§)
            {
               do
               {
                  this.§]D§ = new URLLoader(_loc1_);
                  do
                  {
                     this.§]D§.addEventListener(Event.COMPLETE,this.onComplete);
                     do
                     {
                        this.§]D§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                     }
                     while(!(_loc3_ || this));
                     
                  }
                  while(!(_loc3_ || _loc3_));
                  
               }
               while(!_loc3_);
               
               addr95:
            }
            return this.§]D§;
         }
         §§goto(addr95);
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
               this.§3"F§ = false;
               if(_loc3_ && param1)
               {
                  addr73:
               }
               return;
            }
            if(_loc4_)
            {
               this.§3"F§ = true;
            }
         }
         §§goto(addr73);
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
   }
}
