package §6A§
{
   import §<!!§.§-"§;
   import flash.external.ExternalInterface;
   
   public class §1=§
   {
       
      
      public var §71§:String = "";
      
      private var §`N§:Array = null;
      
      public function §1=§(param1:String)
      {
         super();
         this.§71§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§71§,this.§'L§);
         }
      }
      
      public function §'L§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§71§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §-"§.log(_loc2_);
         if(this.§`N§ != null)
         {
            for each(_loc4_ in this.§`N§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§`N§ == null)
         {
            this.§`N§ = new Array();
         }
         this.§`N§.push(param1);
      }
      
      public function §8![§(param1:Function) : void
      {
         if(this.§`N§ && this.§`N§.indexOf(param1) != -1)
         {
            this.§`N§.splice(this.§`N§.indexOf(param1),1);
         }
      }
   }
}
