package §_-QN§
{
   import §_-ZG§.§_-Ne§;
   import flash.external.ExternalInterface;
   
   public class §_-WU§
   {
       
      
      public var §_-Ph§:String = "";
      
      private var §_-pA§:Array = null;
      
      public function §_-WU§(param1:String)
      {
         super();
         this.§_-Ph§ = param1;
         ExternalInterface.addCallback(this.§_-Ph§,this.§_-Ic§);
      }
      
      public function §_-Ic§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§_-Ph§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §_-Ne§.log(_loc2_);
         if(this.§_-pA§ != null)
         {
            for each(_loc4_ in this.§_-pA§)
            {
               _loc4_(rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-pA§ == null)
         {
            this.§_-pA§ = new Array();
         }
         this.§_-pA§.push(param1);
      }
   }
}
