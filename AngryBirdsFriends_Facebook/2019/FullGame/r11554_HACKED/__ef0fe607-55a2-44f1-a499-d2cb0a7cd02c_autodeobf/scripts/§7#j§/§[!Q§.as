package §7#j§
{
   import §9#K§.§=#f§;
   import flash.external.ExternalInterface;
   
   public class §[!Q§
   {
       
      
      public var §`" §:String = "";
      
      private var §+H§:Array = null;
      
      public function §[!Q§(param1:String)
      {
         super();
         this.§`" § = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§`" §,this.§&#_§);
         }
      }
      
      public function §&#_§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         _loc3_ = "call through externalInterface! " + this.§`" § + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §=#f§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§+H§ != null)
         {
            var _loc6_:int = 0;
            var _loc7_:* = this.§+H§;
            while(§§hasnext(_loc7_,_loc6_))
            {
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§+H§ == null)
         {
            this.§+H§ = new Array();
         }
         if(this.§+H§.indexOf(param1) == -1)
         {
            this.§+H§.push(param1);
         }
      }
      
      public function §=F§(param1:Function) : void
      {
         if(this.§+H§ && this.§+H§.indexOf(param1) != -1)
         {
            this.§+H§.splice(this.§+H§.indexOf(param1),1);
         }
      }
      
      public function get §'g§() : int
      {
         if(!this.§+H§)
         {
            return 0;
         }
         return this.§+H§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§`" §,null);
      }
   }
}
