package §_-WS§
{
   import §_-gM§.§_-yj§;
   import flash.external.ExternalInterface;
   
   public class §_-6S§
   {
       
      
      public var §_-Kr§:String = "";
      
      private var §_-ri§:Array = null;
      
      public function §_-6S§(param1:String)
      {
         super();
         this.§_-Kr§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§_-Kr§,this.§_-7j§);
         }
      }
      
      public function §_-7j§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§_-Kr§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §_-yj§.log(_loc2_);
         if(this.§_-ri§ != null)
         {
            for each(_loc4_ in this.§_-ri§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-ri§ == null)
         {
            this.§_-ri§ = new Array();
         }
         this.§_-ri§.push(param1);
      }
      
      public function §_-KC§(param1:Function) : void
      {
         if(this.§_-ri§ && this.§_-ri§.indexOf(param1) != -1)
         {
            this.§_-ri§.splice(this.§_-ri§.indexOf(param1),1);
         }
      }
   }
}
