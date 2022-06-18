package §#;§
{
   import §2x§.§'!@§;
   import flash.external.ExternalInterface;
   
   public class §!O§
   {
       
      
      public var §!1§:String = "";
      
      private var §+P§:Array = null;
      
      public function §!O§(param1:String)
      {
         super();
         this.§!1§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§!1§,this.§#!3§);
         }
      }
      
      public function §#!3§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§!1§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §'!@§.log(_loc2_);
         if(this.§+P§ != null)
         {
            for each(_loc4_ in this.§+P§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§+P§ == null)
         {
            this.§+P§ = new Array();
         }
         this.§+P§.push(param1);
      }
      
      public function §3E§(param1:Function) : void
      {
         if(this.§+P§ && this.§+P§.indexOf(param1) != -1)
         {
            this.§+P§.splice(this.§+P§.indexOf(param1),1);
         }
      }
   }
}
