package §%!x§
{
   import §]!6§.§6Y§;
   import flash.external.ExternalInterface;
   
   public class §6g§
   {
       
      
      public var §4$&§:String = "";
      
      private var §;L§:Array = null;
      
      public function §6g§(param1:String)
      {
         super();
         this.§4$&§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§4$&§,this.§3"<§);
         }
      }
      
      public function §3"<§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§4$&§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §6Y§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§;L§ != null)
         {
            for each(_loc5_ in this.§;L§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§;L§ == null)
         {
            this.§;L§ = new Array();
         }
         if(this.§;L§.indexOf(param1) == -1)
         {
            this.§;L§.push(param1);
         }
      }
      
      public function §,"i§(param1:Function) : void
      {
         if(this.§;L§ && this.§;L§.indexOf(param1) != -1)
         {
            this.§;L§.splice(this.§;L§.indexOf(param1),1);
         }
      }
      
      public function get §1#V§() : int
      {
         if(!this.§;L§)
         {
            return 0;
         }
         return this.§;L§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§4$&§,null);
      }
   }
}
