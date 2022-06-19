package §![§
{
   import §&N§.§@,§;
   import flash.external.ExternalInterface;
   
   public class §[[§
   {
       
      
      public var §8`§:String = "";
      
      private var §4e§:Array = null;
      
      public function §[[§(param1:String)
      {
         super();
         this.§8`§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§8`§,this.§+[§);
         }
      }
      
      public function §+[§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§8`§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §@,§.log(_loc2_);
         if(this.§4e§ != null)
         {
            for each(_loc4_ in this.§4e§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§4e§ == null)
         {
            this.§4e§ = new Array();
         }
         this.§4e§.push(param1);
      }
      
      public function §@_§(param1:Function) : void
      {
         if(this.§4e§ && this.§4e§.indexOf(param1) != -1)
         {
            this.§4e§.splice(this.§4e§.indexOf(param1),1);
         }
      }
   }
}
