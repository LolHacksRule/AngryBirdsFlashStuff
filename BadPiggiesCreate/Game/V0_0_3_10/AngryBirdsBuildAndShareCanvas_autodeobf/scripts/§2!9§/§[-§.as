package §2!9§
{
   import §9!G§.§]!e§;
   import flash.external.ExternalInterface;
   
   public class §[-§
   {
       
      
      public var §<I§:String = "";
      
      private var §&V§:Array = null;
      
      public function §[-§(param1:String)
      {
         super();
         this.§<I§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§<I§,this.§`!h§);
         }
      }
      
      public function §`!h§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§<I§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §]!e§.log(_loc2_);
         if(this.§&V§ != null)
         {
            for each(_loc4_ in this.§&V§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§&V§ == null)
         {
            this.§&V§ = new Array();
         }
         this.§&V§.push(param1);
      }
      
      public function §&n§(param1:Function) : void
      {
         if(this.§&V§ && this.§&V§.indexOf(param1) != -1)
         {
            this.§&V§.splice(this.§&V§.indexOf(param1),1);
         }
      }
   }
}
