package §3!9§
{
   import §2§.§0!<§;
   import flash.external.ExternalInterface;
   
   public class §6§
   {
       
      
      public var §%m§:String = "";
      
      private var §&B§:Array = null;
      
      public function §6§(param1:String)
      {
         super();
         this.§%m§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§%m§,this.§&!G§);
         }
      }
      
      public function §&!G§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§%m§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §0!<§.log(_loc2_);
         if(this.§&B§ != null)
         {
            for each(_loc4_ in this.§&B§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§&B§ == null)
         {
            this.§&B§ = new Array();
         }
         this.§&B§.push(param1);
      }
      
      public function §class§(param1:Function) : void
      {
         if(this.§&B§ && this.§&B§.indexOf(param1) != -1)
         {
            this.§&B§.splice(this.§&B§.indexOf(param1),1);
         }
      }
   }
}
