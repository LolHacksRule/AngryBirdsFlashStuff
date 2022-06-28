package §&"§
{
   import §<u§.Log;
   import flash.external.ExternalInterface;
   
   public class ExternalInterfaceMethod
   {
       
      
      public var §6H§:String = "";
      
      private var §3!L§:Array = null;
      
      public function ExternalInterfaceMethod(param1:String)
      {
         super();
         this.§6H§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§6H§,this.§`Y§);
         }
      }
      
      public function §`Y§(... rest) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§6H§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         Log.log(_loc2_);
         if(this.§3!L§ != null)
         {
            for each(_loc4_ in this.§3!L§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§3!L§ == null)
         {
            this.§3!L§ = new Array();
         }
         this.§3!L§.push(param1);
      }
      
      public function §>!X§(param1:Function) : void
      {
         if(this.§3!L§ && this.§3!L§.indexOf(param1) != -1)
         {
            this.§3!L§.splice(this.§3!L§.indexOf(param1),1);
         }
      }
   }
}
