package §5^§
{
   import §-!5§.§5s§;
   import flash.external.ExternalInterface;
   
   public class §-W§
   {
       
      
      public var §+<§:String = "";
      
      private var §?!8§:Array = null;
      
      public function §-W§(param1:String)
      {
         super();
         this.§+<§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§+<§,this.§=9§);
         }
      }
      
      public function §=9§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§+<§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §5s§.log(_loc2_);
         if(this.§?!8§ != null)
         {
            for each(_loc4_ in this.§?!8§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§?!8§ == null)
         {
            this.§?!8§ = new Array();
         }
         this.§?!8§.push(param1);
      }
      
      public function §=[§(param1:Function) : void
      {
         if(this.§?!8§ && this.§?!8§.indexOf(param1) != -1)
         {
            this.§?!8§.splice(this.§?!8§.indexOf(param1),1);
         }
      }
   }
}
