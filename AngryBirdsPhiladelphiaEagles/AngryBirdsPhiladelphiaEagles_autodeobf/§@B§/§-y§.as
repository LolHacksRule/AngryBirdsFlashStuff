package §@B§
{
   import §`K§.§ L§;
   import flash.external.ExternalInterface;
   
   public class §-y§
   {
       
      
      public var §;5§:String = "";
      
      private var §`u§:Array = null;
      
      public function §-y§(param1:String)
      {
         super();
         this.§;5§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§;5§,this.§3!!§);
         }
      }
      
      public function §3!!§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§;5§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         § L§.log(_loc2_);
         if(this.§`u§ != null)
         {
            for each(_loc4_ in this.§`u§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§`u§ == null)
         {
            this.§`u§ = new Array();
         }
         this.§`u§.push(param1);
      }
      
      public function §=&§(param1:Function) : void
      {
         if(this.§`u§ && this.§`u§.indexOf(param1) != -1)
         {
            this.§`u§.splice(this.§`u§.indexOf(param1),1);
         }
      }
   }
}
