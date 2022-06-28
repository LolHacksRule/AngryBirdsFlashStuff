package §<d§
{
   import §3a§.§7!+§;
   import flash.external.ExternalInterface;
   
   public class §68§
   {
       
      
      public var §;T§:String = "";
      
      private var §6[§:Array = null;
      
      public function §68§(param1:String)
      {
         super();
         this.§;T§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§;T§,this.§0!2§);
         }
      }
      
      public function §0!2§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§;T§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §7!+§.log(_loc2_);
         if(this.§6[§ != null)
         {
            for each(_loc4_ in this.§6[§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§6[§ == null)
         {
            this.§6[§ = new Array();
         }
         this.§6[§.push(param1);
      }
      
      public function §@u§(param1:Function) : void
      {
         if(this.§6[§ && this.§6[§.indexOf(param1) != -1)
         {
            this.§6[§.splice(this.§6[§.indexOf(param1),1);
         }
      }
   }
}
