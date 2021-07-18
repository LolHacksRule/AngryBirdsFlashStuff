package §="V§
{
   import §5t§.Log;
   import flash.external.ExternalInterface;
   
   public class §"!U§
   {
       
      
      public var §1F§:String = "";
      
      private var §;3§:Array = null;
      
      public function §"!U§(param1:String)
      {
         super();
         this.§1F§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§1F§,this.§=!B§);
         }
      }
      
      public function §=!B§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§1F§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         Log.log(_loc3_);
         var _loc2_:* = null;
         if(this.§;3§ != null)
         {
            for each(_loc5_ in this.§;3§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§;3§ == null)
         {
            this.§;3§ = new Array();
         }
         if(this.§;3§.indexOf(param1) == -1)
         {
            this.§;3§.push(param1);
         }
      }
      
      public function §&z§(param1:Function) : void
      {
         if(this.§;3§ && this.§;3§.indexOf(param1) != -1)
         {
            this.§;3§.splice(this.§;3§.indexOf(param1),1);
         }
      }
      
      public function get §]>§() : int
      {
         if(!this.§;3§)
         {
            return 0;
         }
         return this.§;3§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§1F§,null);
      }
   }
}
