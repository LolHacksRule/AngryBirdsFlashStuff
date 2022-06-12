package §%4§
{
   import §@!;§.§&F§;
   import flash.external.ExternalInterface;
   
   public class §?B§
   {
       
      
      public var §-d§:String = "";
      
      private var §;?§:Array = null;
      
      public function §?B§(param1:String)
      {
         super();
         this.§-d§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§-d§,this.§ !Y§);
         }
      }
      
      public function § !Y§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§-d§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §&F§.log(_loc2_);
         if(this.§;?§ != null)
         {
            for each(_loc4_ in this.§;?§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§;?§ == null)
         {
            this.§;?§ = new Array();
         }
         this.§;?§.push(param1);
      }
      
      public function §0!'§(param1:Function) : void
      {
         if(this.§;?§ && this.§;?§.indexOf(param1) != -1)
         {
            this.§;?§.splice(this.§;?§.indexOf(param1),1);
         }
      }
   }
}
