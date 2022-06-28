package §,!#§
{
   import §'N§.Log;
   import flash.external.ExternalInterface;
   
   public class ExternalInterfaceMethod
   {
       
      
      public var §@g§:String = "";
      
      private var §'Q§:Array = null;
      
      public function ExternalInterfaceMethod(param1:String)
      {
         super();
         this.§@g§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§@g§,this.§2[§);
         }
      }
      
      public function §2[§(... rest) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§@g§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         Log.log(_loc2_);
         if(this.§'Q§ != null)
         {
            for each(_loc4_ in this.§'Q§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§'Q§ == null)
         {
            this.§'Q§ = new Array();
         }
         this.§'Q§.push(param1);
      }
      
      public function §<!<§(param1:Function) : void
      {
         if(this.§'Q§ && this.§'Q§.indexOf(param1) != -1)
         {
            this.§'Q§.splice(this.§'Q§.indexOf(param1),1);
         }
      }
   }
}
