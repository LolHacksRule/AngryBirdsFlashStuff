package §_-PC§
{
   import flash.utils.Dictionary;
   
   public class §_-3Y§ extends §_-ob§
   {
       
      
      private var §_-DE§:Dictionary;
      
      private var §_-38§:§_-ob§;
      
      public function §_-3Y§()
      {
         this.§_-DE§ = new Dictionary();
         super();
      }
      
      public function §_-co§(param1:String, param2:§_-ob§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§_-38§)
         {
            this.§_-38§ = param2;
         }
         this.§_-DE§[param1] = param2;
      }
      
      override public function addFrame(param1:§_-qH§) : void
      {
         this.§_-38§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §_-qH§
      {
         return this.§_-38§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§_-38§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §_-ob§
      {
         if(this.§_-DE§[param1])
         {
            return this.§_-DE§[param1];
         }
         return this.§_-38§;
      }
   }
}
