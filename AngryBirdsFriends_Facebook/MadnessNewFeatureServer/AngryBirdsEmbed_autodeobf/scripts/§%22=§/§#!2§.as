package §"=§
{
   import §'6§.§?!L§;
   import flash.external.ExternalInterface;
   
   public class §#!2§
   {
       
      
      public var §=K§:String = "";
      
      private var § ^§:Array = null;
      
      public function §#!2§(param1:String)
      {
         super();
         this.§=K§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§=K§,this.§3§);
         }
      }
      
      public function §3§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§=K§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §?!L§.log(_loc2_);
         if(this.§ ^§ != null)
         {
            for each(_loc4_ in this.§ ^§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§ ^§ == null)
         {
            this.§ ^§ = new Array();
         }
         this.§ ^§.push(param1);
      }
      
      public function §[v§(param1:Function) : void
      {
         if(this.§ ^§ && this.§ ^§.indexOf(param1) != -1)
         {
            this.§ ^§.splice(this.§ ^§.indexOf(param1),1);
         }
      }
   }
}
