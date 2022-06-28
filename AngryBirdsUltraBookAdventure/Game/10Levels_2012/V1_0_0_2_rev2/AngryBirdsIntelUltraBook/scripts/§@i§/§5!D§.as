package §@i§
{
   import §^_§.§!>§;
   import flash.external.ExternalInterface;
   
   public class §5!D§
   {
       
      
      public var §<J§:String = "";
      
      private var §[!_§:Array = null;
      
      public function §5!D§(param1:String)
      {
         super();
         this.§<J§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§<J§,this.§#<§);
         }
      }
      
      public function §#<§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§<J§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §!>§.log(_loc2_);
         if(this.§[!_§ != null)
         {
            for each(_loc4_ in this.§[!_§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§[!_§ == null)
         {
            this.§[!_§ = new Array();
         }
         this.§[!_§.push(param1);
      }
      
      public function §<a§(param1:Function) : void
      {
         if(this.§[!_§ && this.§[!_§.indexOf(param1) != -1)
         {
            this.§[!_§.splice(this.§[!_§.indexOf(param1),1);
         }
      }
   }
}
