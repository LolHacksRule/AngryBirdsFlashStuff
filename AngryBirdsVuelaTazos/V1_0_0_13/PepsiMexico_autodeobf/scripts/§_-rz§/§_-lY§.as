package §_-rz§
{
   import §_-ex§.§_-mR§;
   import flash.external.ExternalInterface;
   
   public class §_-lY§
   {
       
      
      public var §_-PI§:String = "";
      
      private var §_-kO§:Array = null;
      
      public function §_-lY§(param1:String)
      {
         super();
         this.§_-PI§ = param1;
         ExternalInterface.addCallback(this.§_-PI§,this.§_-ba§);
      }
      
      public function §_-ba§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§_-PI§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §_-mR§.log(_loc2_);
         if(this.§_-kO§ != null)
         {
            for each(_loc4_ in this.§_-kO§)
            {
               _loc4_(rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-kO§ == null)
         {
            this.§_-kO§ = new Array();
         }
         this.§_-kO§.push(param1);
      }
   }
}
