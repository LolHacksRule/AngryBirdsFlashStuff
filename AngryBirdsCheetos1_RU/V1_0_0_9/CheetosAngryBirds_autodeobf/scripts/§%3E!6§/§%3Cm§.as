package §>!6§
{
   import §-!6§.§>I§;
   import flash.external.ExternalInterface;
   
   public class §<m§
   {
       
      
      public var §^<§:String = "";
      
      private var §=f§:Array = null;
      
      public function §<m§(param1:String)
      {
         super();
         this.§^<§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§^<§,this.§][§);
         }
      }
      
      public function §][§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§^<§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §>I§.log(_loc2_);
         if(this.§=f§ != null)
         {
            for each(_loc4_ in this.§=f§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§=f§ == null)
         {
            this.§=f§ = new Array();
         }
         this.§=f§.push(param1);
      }
      
      public function §4!E§(param1:Function) : void
      {
         if(this.§=f§ && this.§=f§.indexOf(param1) != -1)
         {
            this.§=f§.splice(this.§=f§.indexOf(param1),1);
         }
      }
   }
}
