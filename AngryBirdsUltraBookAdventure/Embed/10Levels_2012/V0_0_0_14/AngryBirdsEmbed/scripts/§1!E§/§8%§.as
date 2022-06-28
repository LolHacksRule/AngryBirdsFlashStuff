package §1!E§
{
   import §+!"§.§5!<§;
   import flash.external.ExternalInterface;
   
   public class §8%§
   {
       
      
      public var §=x§:String = "";
      
      private var §+!7§:Array = null;
      
      public function §8%§(param1:String)
      {
         super();
         this.§=x§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§=x§,this.§=M§);
         }
      }
      
      public function §=M§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§=x§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §5!<§.log(_loc2_);
         if(this.§+!7§ != null)
         {
            for each(_loc4_ in this.§+!7§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§+!7§ == null)
         {
            this.§+!7§ = new Array();
         }
         this.§+!7§.push(param1);
      }
      
      public function §?`§(param1:Function) : void
      {
         if(this.§+!7§ && this.§+!7§.indexOf(param1) != -1)
         {
            this.§+!7§.splice(this.§+!7§.indexOf(param1),1);
         }
      }
   }
}
