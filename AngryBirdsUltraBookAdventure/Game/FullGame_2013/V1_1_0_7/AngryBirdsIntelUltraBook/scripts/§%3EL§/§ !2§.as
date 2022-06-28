package §>L§
{
   import §1!B§.§<m§;
   import flash.external.ExternalInterface;
   
   public class § !2§
   {
       
      
      public var §;!E§:String = "";
      
      private var §'`§:Array = null;
      
      public function § !2§(param1:String)
      {
         super();
         this.§;!E§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§;!E§,this.§ !K§);
         }
      }
      
      public function § !K§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§;!E§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §<m§.log(_loc2_);
         if(this.§'`§ != null)
         {
            for each(_loc4_ in this.§'`§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§'`§ == null)
         {
            this.§'`§ = new Array();
         }
         this.§'`§.push(param1);
      }
      
      public function §=+§(param1:Function) : void
      {
         if(this.§'`§ && this.§'`§.indexOf(param1) != -1)
         {
            this.§'`§.splice(this.§'`§.indexOf(param1),1);
         }
      }
   }
}
