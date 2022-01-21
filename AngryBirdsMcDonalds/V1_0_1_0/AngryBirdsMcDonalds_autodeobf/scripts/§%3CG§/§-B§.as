package §<G§
{
   import §`!W§.§2v§;
   import flash.external.ExternalInterface;
   
   public class §-B§
   {
       
      
      public var §9d§:String = "";
      
      private var §,!F§:Array = null;
      
      public function §-B§(param1:String)
      {
         super();
         this.§9d§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§9d§,this.§1>§);
         }
      }
      
      public function §1>§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§9d§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §2v§.log(_loc2_);
         if(this.§,!F§ != null)
         {
            for each(_loc4_ in this.§,!F§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§,!F§ == null)
         {
            this.§,!F§ = new Array();
         }
         this.§,!F§.push(param1);
      }
      
      public function §<X§(param1:Function) : void
      {
         if(this.§,!F§ && this.§,!F§.indexOf(param1) != -1)
         {
            this.§,!F§.splice(this.§,!F§.indexOf(param1),1);
         }
      }
   }
}
