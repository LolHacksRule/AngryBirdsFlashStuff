package §_-N§
{
   import §_-Eo§.§_-R4§;
   import flash.external.ExternalInterface;
   
   public class §_-PL§
   {
       
      
      public var §_-ig§:String = "";
      
      private var §_-vT§:Array = null;
      
      public function §_-PL§(param1:String)
      {
         super();
         this.§_-ig§ = param1;
         ExternalInterface.addCallback(this.§_-ig§,this.§_-rH§);
      }
      
      public function §_-rH§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§_-ig§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §_-R4§.log(_loc2_);
         if(this.§_-vT§ != null)
         {
            for each(_loc4_ in this.§_-vT§)
            {
               _loc4_(rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-vT§ == null)
         {
            this.§_-vT§ = new Array();
         }
         this.§_-vT§.push(param1);
      }
   }
}
