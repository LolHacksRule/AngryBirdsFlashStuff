package §_-O7§
{
   import §_-e3§.§_-54§;
   import flash.external.ExternalInterface;
   
   public class §_-HB§
   {
       
      
      public var §_-wA§:String = "";
      
      private var §_-Pa§:Array = null;
      
      public function §_-HB§(param1:String)
      {
         super();
         this.§_-wA§ = param1;
         ExternalInterface.addCallback(this.§_-wA§,this.§_-cq§);
      }
      
      public function §_-cq§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§_-wA§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §_-54§.log(_loc2_);
         if(this.§_-Pa§ != null)
         {
            for each(_loc4_ in this.§_-Pa§)
            {
               _loc4_(rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-Pa§ == null)
         {
            this.§_-Pa§ = new Array();
         }
         this.§_-Pa§.push(param1);
      }
   }
}
