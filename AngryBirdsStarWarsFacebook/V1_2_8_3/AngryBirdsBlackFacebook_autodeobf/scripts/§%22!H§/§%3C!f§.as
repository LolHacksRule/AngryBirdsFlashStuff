package §"!H§
{
   import §'!P§.§29§;
   
   public class §<!f§ implements §29§
   {
       
      
      public var itemId:String;
      
      public var quantity:int;
      
      public var §[W§:int;
      
      public var wasFree:Boolean;
      
      public function §<!f§()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         if(param1)
         {
            this.itemId = param1.itemId;
            this.quantity = param1.quantity;
            this.§[W§ = param1.starCoins;
            this.wasFree = param1.wasFree;
         }
      }
   }
}
