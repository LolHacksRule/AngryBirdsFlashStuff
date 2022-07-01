package §6!N§
{
   import §;X§.§ do§;
   import flash.external.ExternalInterface;
   
   public class §%!<§
   {
       
      
      public var §03§:String = "";
      
      private var §1"§:Array = null;
      
      public function §%!<§(param1:String)
      {
         super();
         this.§03§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§03§,this.§#!6§);
         }
      }
      
      public function §#!6§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§03§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         § do§.log(_loc2_);
         if(this.§1"§ != null)
         {
            for each(_loc4_ in this.§1"§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§1"§ == null)
         {
            this.§1"§ = new Array();
         }
         this.§1"§.push(param1);
      }
      
      public function §1!X§(param1:Function) : void
      {
         if(this.§1"§ && this.§1"§.indexOf(param1) != -1)
         {
            this.§1"§.splice(this.§1"§.indexOf(param1),1);
         }
      }
   }
}
