package §`h§
{
   import §%!$§.§[Z§;
   import flash.external.ExternalInterface;
   
   public class §for §
   {
       
      
      public var §!!;§:String = "";
      
      private var §[D§:Array = null;
      
      public function §for §(param1:String)
      {
         super();
         this.§!!;§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§!!;§,this.§-5§);
         }
      }
      
      public function §-5§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§!!;§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §[Z§.log(_loc2_);
         if(this.§[D§ != null)
         {
            for each(_loc4_ in this.§[D§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§[D§ == null)
         {
            this.§[D§ = new Array();
         }
         this.§[D§.push(param1);
      }
      
      public function §1<§(param1:Function) : void
      {
         if(this.§[D§ && this.§[D§.indexOf(param1) != -1)
         {
            this.§[D§.splice(this.§[D§.indexOf(param1),1);
         }
      }
   }
}
