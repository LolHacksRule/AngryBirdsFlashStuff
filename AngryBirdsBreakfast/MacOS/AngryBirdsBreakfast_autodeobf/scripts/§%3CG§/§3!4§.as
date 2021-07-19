package §<G§
{
   import each.§!!'§;
   import flash.external.ExternalInterface;
   
   public class §3!4§
   {
       
      
      public var §[!%§:String = "";
      
      private var §3K§:Array = null;
      
      public function §3!4§(param1:String)
      {
         super();
         this.§[!%§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§[!%§,this.§`A§);
         }
      }
      
      public function §`A§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§[!%§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §!!'§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§3K§ != null)
         {
            for each(_loc5_ in this.§3K§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§3K§ == null)
         {
            this.§3K§ = new Array();
         }
         if(this.§3K§.indexOf(param1) == -1)
         {
            this.§3K§.push(param1);
         }
      }
      
      public function §;!A§(param1:Function) : void
      {
         if(this.§3K§ && this.§3K§.indexOf(param1) != -1)
         {
            this.§3K§.splice(this.§3K§.indexOf(param1),1);
         }
      }
      
      public function get §3!W§() : int
      {
         if(!this.§3K§)
         {
            return 0;
         }
         return this.§3K§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§[!%§,null);
      }
   }
}
