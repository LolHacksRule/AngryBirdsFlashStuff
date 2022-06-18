package §,'§
{
   import §=g§.§@!L§;
   import flash.external.ExternalInterface;
   
   public class §%5§
   {
       
      
      public var §@!I§:String = "";
      
      private var §'!a§:Array = null;
      
      public function §%5§(param1:String)
      {
         super();
         this.§@!I§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§@!I§,this.§ !4§);
         }
      }
      
      public function § !4§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§@!I§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §@!L§.log(_loc2_);
         if(this.§'!a§ != null)
         {
            for each(_loc4_ in this.§'!a§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§'!a§ == null)
         {
            this.§'!a§ = new Array();
         }
         this.§'!a§.push(param1);
      }
      
      public function §6m§(param1:Function) : void
      {
         if(this.§'!a§ && this.§'!a§.indexOf(param1) != -1)
         {
            this.§'!a§.splice(this.§'!a§.indexOf(param1),1);
         }
      }
   }
}
