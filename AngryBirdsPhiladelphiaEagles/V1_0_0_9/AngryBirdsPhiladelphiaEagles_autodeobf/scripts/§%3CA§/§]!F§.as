package §<A§
{
   import flash.utils.Dictionary;
   
   public class §]!F§ extends §;V§
   {
       
      
      private var §<%§:Dictionary;
      
      private var §?!C§:§;V§;
      
      public function §]!F§()
      {
         this.§<%§ = new Dictionary();
         super();
      }
      
      public function §+!9§(param1:String, param2:§;V§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§?!C§)
         {
            this.§?!C§ = param2;
         }
         this.§<%§[param1] = param2;
      }
      
      override public function addFrame(param1:§8<§) : void
      {
         this.§?!C§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §8<§
      {
         return this.§?!C§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§?!C§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §;V§
      {
         if(this.§<%§[param1])
         {
            return this.§<%§[param1];
         }
         return this.§?!C§;
      }
   }
}
