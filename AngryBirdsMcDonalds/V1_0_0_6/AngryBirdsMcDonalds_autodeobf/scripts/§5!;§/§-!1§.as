package §5!;§
{
   import §8<§.§<!7§;
   import flash.external.ExternalInterface;
   
   public class §-!1§
   {
       
      
      public var §@m§:String = "";
      
      private var §]§:Array = null;
      
      public function §-!1§(param1:String)
      {
         super();
         this.§@m§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§@m§,this.§%>§);
         }
      }
      
      public function §%>§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§@m§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §<!7§.log(_loc2_);
         if(this.§]§ != null)
         {
            for each(_loc4_ in this.§]§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§]§ == null)
         {
            this.§]§ = new Array();
         }
         this.§]§.push(param1);
      }
      
      public function §;!m§(param1:Function) : void
      {
         if(this.§]§ && this.§]§.indexOf(param1) != -1)
         {
            this.§]§.splice(this.§]§.indexOf(param1),1);
         }
      }
   }
}
