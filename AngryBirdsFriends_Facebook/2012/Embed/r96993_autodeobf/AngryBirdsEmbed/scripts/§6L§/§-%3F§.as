package §6L§
{
   import §3v§.§1a§;
   import flash.external.ExternalInterface;
   
   public class §-?§
   {
       
      
      public var §2-§:String = "";
      
      private var §!E§:Array = null;
      
      public function §-?§(param1:String)
      {
         super();
         this.§2-§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§2-§,this.§2!%§);
         }
      }
      
      public function §2!%§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§2-§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §1a§.log(_loc2_);
         if(this.§!E§ != null)
         {
            for each(_loc4_ in this.§!E§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§!E§ == null)
         {
            this.§!E§ = new Array();
         }
         this.§!E§.push(param1);
      }
      
      public function §-v§(param1:Function) : void
      {
         if(this.§!E§ && this.§!E§.indexOf(param1) != -1)
         {
            this.§!E§.splice(this.§!E§.indexOf(param1),1);
         }
      }
   }
}
