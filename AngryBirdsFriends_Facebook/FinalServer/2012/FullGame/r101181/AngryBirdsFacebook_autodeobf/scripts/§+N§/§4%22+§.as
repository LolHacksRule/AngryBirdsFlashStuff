package §+N§
{
   import §6o§.§+!k§;
   import flash.external.ExternalInterface;
   
   public class §4"+§
   {
       
      
      public var §<+§:String = "";
      
      private var §"P§:Array = null;
      
      public function §4"+§(param1:String)
      {
         super();
         this.§<+§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§<+§,this.§!!'§);
         }
      }
      
      public function §!!'§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§<+§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §+!k§.log(_loc2_);
         if(this.§"P§ != null)
         {
            for each(_loc4_ in this.§"P§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§"P§ == null)
         {
            this.§"P§ = new Array();
         }
         this.§"P§.push(param1);
      }
      
      public function §[">§(param1:Function) : void
      {
         if(this.§"P§ && this.§"P§.indexOf(param1) != -1)
         {
            this.§"P§.splice(this.§"P§.indexOf(param1),1);
         }
      }
   }
}
