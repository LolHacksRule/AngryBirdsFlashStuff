package §<"8§
{
   import §0N§.§2!@§;
   import flash.external.ExternalInterface;
   
   public class §"I§
   {
       
      
      public var §@!W§:String = "";
      
      private var §2!A§:Array = null;
      
      public function §"I§(param1:String)
      {
         super();
         this.§@!W§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§@!W§,this.§"",§);
         }
      }
      
      public function §"",§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§@!W§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §2!@§.log(_loc3_);
         var _loc2_:* = undefined;
         if(this.§2!A§ != null)
         {
            for each(_loc5_ in this.§2!A§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§2!A§ == null)
         {
            this.§2!A§ = new Array();
         }
         this.§2!A§.push(param1);
      }
      
      public function §@!`§(param1:Function) : void
      {
         if(this.§2!A§ && this.§2!A§.indexOf(param1) != -1)
         {
            this.§2!A§.splice(this.§2!A§.indexOf(param1),1);
         }
      }
   }
}
