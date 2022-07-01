package § !H§
{
   import §=!7§.§1!7§;
   import flash.external.ExternalInterface;
   
   public class §!o§
   {
       
      
      public var §6!=§:String = "";
      
      private var §#b§:Array = null;
      
      public function §!o§(param1:String)
      {
         super();
         this.§6!=§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§6!=§,this.§<2§);
         }
      }
      
      public function §<2§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§6!=§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §1!7§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§#b§ != null)
         {
            for each(_loc5_ in this.§#b§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§#b§ == null)
         {
            this.§#b§ = new Array();
         }
         if(this.§#b§.indexOf(param1) == -1)
         {
            this.§#b§.push(param1);
         }
      }
      
      public function §4n§(param1:Function) : void
      {
         if(this.§#b§ && this.§#b§.indexOf(param1) != -1)
         {
            this.§#b§.splice(this.§#b§.indexOf(param1),1);
         }
      }
      
      public function get §#K§() : int
      {
         if(!this.§#b§)
         {
            return 0;
         }
         return this.§#b§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§6!=§,null);
      }
   }
}
