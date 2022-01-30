package §3A§
{
   import §&W§.§7L§;
   import flash.external.ExternalInterface;
   
   public class §5!x§
   {
       
      
      public var §>@§:String = "";
      
      private var §%!@§:Array = null;
      
      public function §5!x§(param1:String)
      {
         super();
         this.§>@§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§>@§,this.§]!&§);
         }
      }
      
      public function §]!&§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§>@§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §7L§.log(_loc2_);
         if(this.§%!@§ != null)
         {
            for each(_loc4_ in this.§%!@§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§%!@§ == null)
         {
            this.§%!@§ = new Array();
         }
         this.§%!@§.push(param1);
      }
      
      public function §@§(param1:Function) : void
      {
         if(this.§%!@§ && this.§%!@§.indexOf(param1) != -1)
         {
            this.§%!@§.splice(this.§%!@§.indexOf(param1),1);
         }
      }
   }
}
