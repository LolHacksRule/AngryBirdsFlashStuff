package §_-8d§
{
   import flash.utils.Dictionary;
   
   public class §_-0Ex§ extends §_-J§
   {
       
      
      private var §_-0L§:Dictionary;
      
      private var §_-7j§:§_-J§;
      
      public function §_-0Ex§()
      {
         this.§_-0L§ = new Dictionary();
         super();
      }
      
      public function §_-06j§(param1:String, param2:§_-J§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§_-7j§)
         {
            this.§_-7j§ = param2;
         }
         this.§_-0L§[param1] = param2;
      }
      
      override public function addFrame(param1:§_-vz§) : void
      {
         this.§_-7j§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §_-vz§
      {
         return this.§_-7j§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§_-7j§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §_-J§
      {
         if(this.§_-0L§[param1])
         {
            return this.§_-0L§[param1];
         }
         return this.§_-7j§;
      }
   }
}
