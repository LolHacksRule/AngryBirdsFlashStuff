package §_-3N§
{
   import §_-U0§.§_-tF§;
   import flash.external.ExternalInterface;
   
   public class §_-3n§
   {
       
      
      public var §_-iu§:String = "";
      
      private var §_-yE§:Array = null;
      
      public function §_-3n§(param1:String)
      {
         super();
         this.§_-iu§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§_-iu§,this.§_-ut§);
         }
      }
      
      public function §_-ut§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§_-iu§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §_-tF§.log(_loc2_);
         if(this.§_-yE§ != null)
         {
            for each(_loc4_ in this.§_-yE§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-yE§ == null)
         {
            this.§_-yE§ = new Array();
         }
         this.§_-yE§.push(param1);
      }
      
      public function §_-Zc§(param1:Function) : void
      {
         if(this.§_-yE§ && this.§_-yE§.indexOf(param1) != -1)
         {
            this.§_-yE§.splice(this.§_-yE§.indexOf(param1),1);
         }
      }
   }
}
