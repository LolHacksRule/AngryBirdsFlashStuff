package §8x§
{
   import §0!$§.§#!-§;
   import flash.external.ExternalInterface;
   
   public class §&!w§
   {
       
      
      public var §6=§:String = "";
      
      private var §"y§:Array = null;
      
      public function §&!w§(param1:String)
      {
         super();
         this.§6=§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§6=§,this.§ V§);
         }
      }
      
      public function § V§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§6=§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §#!-§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§"y§ != null)
         {
            for each(_loc5_ in this.§"y§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§"y§ == null)
         {
            this.§"y§ = new Array();
         }
         if(this.§"y§.indexOf(param1) == -1)
         {
            this.§"y§.push(param1);
         }
      }
      
      public function §@!A§(param1:Function) : void
      {
         if(this.§"y§ && this.§"y§.indexOf(param1) != -1)
         {
            this.§"y§.splice(this.§"y§.indexOf(param1),1);
         }
      }
      
      public function get §!U§() : int
      {
         if(!this.§"y§)
         {
            return 0;
         }
         return this.§"y§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§6=§,null);
      }
   }
}
