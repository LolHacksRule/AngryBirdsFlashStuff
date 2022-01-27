package §@!L§
{
   import §3!O§.§5q§;
   import flash.external.ExternalInterface;
   
   public class §`I§
   {
       
      
      public var §-!A§:String = "";
      
      private var §]!H§:Array = null;
      
      public function §`I§(param1:String)
      {
         super();
         this.§-!A§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§-!A§,this.§?0§);
         }
      }
      
      public function §?0§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§-!A§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §5q§.log(_loc2_);
         if(this.§]!H§ != null)
         {
            for each(_loc4_ in this.§]!H§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§]!H§ == null)
         {
            this.§]!H§ = new Array();
         }
         this.§]!H§.push(param1);
      }
      
      public function §>c§(param1:Function) : void
      {
         if(this.§]!H§ && this.§]!H§.indexOf(param1) != -1)
         {
            this.§]!H§.splice(this.§]!H§.indexOf(param1),1);
         }
      }
   }
}
