package §^R§
{
   import §"1§.§3'§;
   import flash.external.ExternalInterface;
   
   public class §^!!§
   {
       
      
      public var §+!+§:String = "";
      
      private var §'2§:Array = null;
      
      public function §^!!§(param1:String)
      {
         super();
         this.§+!+§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§+!+§,this.§6!K§);
         }
      }
      
      public function §6!K§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§+!+§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §3'§.log(_loc2_);
         if(this.§'2§ != null)
         {
            for each(_loc4_ in this.§'2§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§'2§ == null)
         {
            this.§'2§ = new Array();
         }
         this.§'2§.push(param1);
      }
      
      public function §<I§(param1:Function) : void
      {
         if(this.§'2§ && this.§'2§.indexOf(param1) != -1)
         {
            this.§'2§.splice(this.§'2§.indexOf(param1),1);
         }
      }
   }
}
