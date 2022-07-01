package §?-§
{
   import §"I§.§=!U§;
   import flash.external.ExternalInterface;
   
   public class §6!V§
   {
       
      
      public var §!!f§:String = "";
      
      private var §+!C§:Array = null;
      
      public function §6!V§(param1:String)
      {
         super();
         this.§!!f§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§!!f§,this.§"U§);
         }
      }
      
      public function §"U§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§!!f§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §=!U§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§+!C§ != null)
         {
            for each(_loc5_ in this.§+!C§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§+!C§ == null)
         {
            this.§+!C§ = new Array();
         }
         if(this.§+!C§.indexOf(param1) == -1)
         {
            this.§+!C§.push(param1);
         }
      }
      
      public function §5J§(param1:Function) : void
      {
         if(this.§+!C§ && this.§+!C§.indexOf(param1) != -1)
         {
            this.§+!C§.splice(this.§+!C§.indexOf(param1),1);
         }
      }
      
      public function get §9!P§() : int
      {
         if(!this.§+!C§)
         {
            return 0;
         }
         return this.§+!C§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§!!f§,null);
      }
   }
}
