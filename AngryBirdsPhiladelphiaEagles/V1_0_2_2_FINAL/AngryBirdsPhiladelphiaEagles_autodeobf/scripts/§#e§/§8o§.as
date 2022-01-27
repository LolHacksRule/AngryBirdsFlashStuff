package §#e§
{
   import flash.utils.Dictionary;
   
   public class §8o§ extends §4^§
   {
       
      
      private var §<!6§:Dictionary;
      
      private var §?f§:§4^§;
      
      public function §8o§()
      {
         this.§<!6§ = new Dictionary();
         super();
      }
      
      public function §+Y§(param1:String, param2:§4^§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§?f§)
         {
            this.§?f§ = param2;
         }
         this.§<!6§[param1] = param2;
      }
      
      override public function addFrame(param1:§`!9§) : void
      {
         this.§?f§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §`!9§
      {
         return this.§?f§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§?f§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §4^§
      {
         if(this.§<!6§[param1])
         {
            return this.§<!6§[param1];
         }
         return this.§?f§;
      }
   }
}
