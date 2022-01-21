package §7,§
{
   import §5K§.§[C§;
   import flash.external.ExternalInterface;
   
   public class §]V§
   {
       
      
      public var §+!O§:String = "";
      
      private var §>!X§:Array = null;
      
      public function §]V§(param1:String)
      {
         super();
         this.§+!O§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§+!O§,this.§7Q§);
         }
      }
      
      public function §7Q§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§+!O§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §[C§.log(_loc2_);
         if(this.§>!X§ != null)
         {
            for each(_loc4_ in this.§>!X§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§>!X§ == null)
         {
            this.§>!X§ = new Array();
         }
         this.§>!X§.push(param1);
      }
      
      public function §2!p§(param1:Function) : void
      {
         if(this.§>!X§ && this.§>!X§.indexOf(param1) != -1)
         {
            this.§>!X§.splice(this.§>!X§.indexOf(param1),1);
         }
      }
   }
}
