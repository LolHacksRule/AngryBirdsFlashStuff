package §_-Y8§
{
   import §_-0BH§.§_-FK§;
   import flash.external.ExternalInterface;
   
   public class §_-qc§
   {
       
      
      public var §_-nA§:String = "";
      
      private var §_-oO§:Array = null;
      
      public function §_-qc§(param1:String)
      {
         super();
         this.§_-nA§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§_-nA§,this.§_-dM§);
         }
      }
      
      public function §_-dM§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§_-nA§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §_-FK§.log(_loc2_);
         if(this.§_-oO§ != null)
         {
            for each(_loc4_ in this.§_-oO§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-oO§ == null)
         {
            this.§_-oO§ = new Array();
         }
         this.§_-oO§.push(param1);
      }
      
      public function §_-tG§(param1:Function) : void
      {
         if(this.§_-oO§ && this.§_-oO§.indexOf(param1) != -1)
         {
            this.§_-oO§.splice(this.§_-oO§.indexOf(param1),1);
         }
      }
   }
}
