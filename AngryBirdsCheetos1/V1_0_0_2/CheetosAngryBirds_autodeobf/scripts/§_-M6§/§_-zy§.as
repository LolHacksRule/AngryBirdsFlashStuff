package §_-M6§
{
   import §_-aA§.§_-I0§;
   import flash.external.ExternalInterface;
   
   public class §_-zy§
   {
       
      
      public var §_-iT§:String = "";
      
      private var §_-nn§:Array = null;
      
      public function §_-zy§(param1:String)
      {
         super();
         this.§_-iT§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§_-iT§,this.§_-sL§);
         }
      }
      
      public function §_-sL§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§_-iT§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §_-I0§.log(_loc2_);
         if(this.§_-nn§ != null)
         {
            for each(_loc4_ in this.§_-nn§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-nn§ == null)
         {
            this.§_-nn§ = new Array();
         }
         this.§_-nn§.push(param1);
      }
      
      public function §_-p2§(param1:Function) : void
      {
         if(this.§_-nn§ && this.§_-nn§.indexOf(param1) != -1)
         {
            this.§_-nn§.splice(this.§_-nn§.indexOf(param1),1);
         }
      }
   }
}
