package §`c§
{
   import §=<§.§1+§;
   import flash.external.ExternalInterface;
   
   public class §'9§
   {
       
      
      public var §%!h§:String = "";
      
      private var §-!+§:Array = null;
      
      public function §'9§(param1:String)
      {
         super();
         this.§%!h§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§%!h§,this.§!!J§);
         }
      }
      
      public function §!!J§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§%!h§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §1+§.log(_loc2_);
         if(this.§-!+§ != null)
         {
            for each(_loc4_ in this.§-!+§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§-!+§ == null)
         {
            this.§-!+§ = new Array();
         }
         this.§-!+§.push(param1);
      }
      
      public function §2S§(param1:Function) : void
      {
         if(this.§-!+§ && this.§-!+§.indexOf(param1) != -1)
         {
            this.§-!+§.splice(this.§-!+§.indexOf(param1),1);
         }
      }
   }
}
