package §'b§
{
   import §6b§.Log;
   import flash.external.ExternalInterface;
   
   public class ExternalInterfaceMethod
   {
       
      
      public var §"!Q§:String = "";
      
      private var §2!c§:Array = null;
      
      public function ExternalInterfaceMethod(param1:String)
      {
         super();
         this.§"!Q§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§"!Q§,this.§;M§);
         }
      }
      
      public function §;M§(... rest) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§"!Q§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         Log.log(_loc2_);
         if(this.§2!c§ != null)
         {
            for each(_loc4_ in this.§2!c§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§2!c§ == null)
         {
            this.§2!c§ = new Array();
         }
         this.§2!c§.push(param1);
      }
      
      public function §in§(param1:Function) : void
      {
         if(this.§2!c§ && this.§2!c§.indexOf(param1) != -1)
         {
            this.§2!c§.splice(this.§2!c§.indexOf(param1),1);
         }
      }
   }
}
