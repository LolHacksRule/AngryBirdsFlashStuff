package §_-g2§
{
   import §_-RG§.§_-HT§;
   import flash.external.ExternalInterface;
   
   public class §_-Ub§
   {
       
      
      public var §_-aS§:String = "";
      
      private var §_-L§:Array = null;
      
      public function §_-Ub§(param1:String)
      {
         super();
         this.§_-aS§ = param1;
         ExternalInterface.addCallback(this.§_-aS§,this.§_-wl§);
      }
      
      public function §_-wl§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§_-aS§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §_-HT§.log(_loc2_);
         if(this.§_-L§ != null)
         {
            for each(_loc4_ in this.§_-L§)
            {
               _loc4_(rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-L§ == null)
         {
            this.§_-L§ = new Array();
         }
         this.§_-L§.push(param1);
      }
   }
}
