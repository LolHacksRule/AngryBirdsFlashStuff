package §=V§
{
   import § !r§.§`![§;
   import flash.external.ExternalInterface;
   
   public class §-!9§
   {
       
      
      public var §'!I§:String = "";
      
      private var §6!L§:Array = null;
      
      public function §-!9§(param1:String)
      {
         super();
         this.§'!I§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§'!I§,this.§-!G§);
         }
      }
      
      public function §-!G§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§'!I§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §`![§.log(_loc2_);
         if(this.§6!L§ != null)
         {
            for each(_loc4_ in this.§6!L§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§6!L§ == null)
         {
            this.§6!L§ = new Array();
         }
         this.§6!L§.push(param1);
      }
      
      public function § s§(param1:Function) : void
      {
         if(this.§6!L§ && this.§6!L§.indexOf(param1) != -1)
         {
            this.§6!L§.splice(this.§6!L§.indexOf(param1),1);
         }
      }
   }
}
