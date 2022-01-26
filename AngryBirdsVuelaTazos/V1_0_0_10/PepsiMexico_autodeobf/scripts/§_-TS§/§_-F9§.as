package §_-TS§
{
   import §_-ot§.§_-o6§;
   import flash.external.ExternalInterface;
   
   public class §_-F9§
   {
       
      
      public var §_-j5§:String = "";
      
      private var §_-oM§:Array = null;
      
      public function §_-F9§(param1:String)
      {
         super();
         this.§_-j5§ = param1;
         ExternalInterface.addCallback(this.§_-j5§,this.§_-qB§);
      }
      
      public function §_-qB§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§_-j5§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §_-o6§.log(_loc2_);
         if(this.§_-oM§ != null)
         {
            for each(_loc4_ in this.§_-oM§)
            {
               _loc4_(rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-oM§ == null)
         {
            this.§_-oM§ = new Array();
         }
         this.§_-oM§.push(param1);
      }
   }
}
