package § 0§
{
   import §0"I§.§5!s§;
   import flash.external.ExternalInterface;
   
   public class §+!n§
   {
       
      
      public var §2o§:String = "";
      
      private var §+H§:Array = null;
      
      public function §+!n§(param1:String)
      {
         super();
         this.§2o§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§2o§,this.§@!,§);
         }
      }
      
      public function §@!,§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§2o§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §5!s§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§+H§ != null)
         {
            for each(_loc5_ in this.§+H§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§+H§ == null)
         {
            this.§+H§ = new Array();
         }
         if(this.§+H§.indexOf(param1) == -1)
         {
            this.§+H§.push(param1);
         }
      }
      
      public function §0"<§(param1:Function) : void
      {
         if(this.§+H§ && this.§+H§.indexOf(param1) != -1)
         {
            this.§+H§.splice(this.§+H§.indexOf(param1),1);
         }
      }
      
      public function get §+x§() : int
      {
         if(!this.§+H§)
         {
            return 0;
         }
         return this.§+H§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§2o§,null);
      }
   }
}
