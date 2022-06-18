package §4!6§
{
   import §@,§.§4h§;
   import flash.external.ExternalInterface;
   
   public class §8`§
   {
       
      
      public var §4e§:String = "";
      
      private var §+[§:Array = null;
      
      public function §8`§(param1:String)
      {
         super();
         this.§4e§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§4e§,this.§-M§);
         }
      }
      
      public function §-M§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§4e§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §4h§.log(_loc2_);
         if(this.§+[§ != null)
         {
            for each(_loc4_ in this.§+[§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§+[§ == null)
         {
            this.§+[§ = new Array();
         }
         this.§+[§.push(param1);
      }
      
      public function §!9§(param1:Function) : void
      {
         if(this.§+[§ && this.§+[§.indexOf(param1) != -1)
         {
            this.§+[§.splice(this.§+[§.indexOf(param1),1);
         }
      }
   }
}
