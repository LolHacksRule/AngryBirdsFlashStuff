package §6s§
{
   import §@R§.§4,§;
   import flash.external.ExternalInterface;
   
   public class §8!I§
   {
       
      
      public var §3!9§:String = "";
      
      private var §'c§:Array = null;
      
      public function §8!I§(param1:String)
      {
         super();
         this.§3!9§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§3!9§,this.§@[§);
         }
      }
      
      public function §@[§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§3!9§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §4,§.log(_loc2_);
         if(this.§'c§ != null)
         {
            for each(_loc4_ in this.§'c§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§'c§ == null)
         {
            this.§'c§ = new Array();
         }
         this.§'c§.push(param1);
      }
      
      public function §-=§(param1:Function) : void
      {
         if(this.§'c§ && this.§'c§.indexOf(param1) != -1)
         {
            this.§'c§.splice(this.§'c§.indexOf(param1),1);
         }
      }
   }
}
