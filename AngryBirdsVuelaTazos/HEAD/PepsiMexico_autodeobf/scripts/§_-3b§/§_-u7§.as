package §_-3b§
{
   import flash.utils.Dictionary;
   
   public class §_-u7§ extends §_-5p§
   {
       
      
      private var §_-rC§:Dictionary;
      
      private var §_-v3§:§_-5p§;
      
      public function §_-u7§()
      {
         this.§_-rC§ = new Dictionary();
         super();
      }
      
      public function §_-zU§(param1:String, param2:§_-5p§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§_-v3§)
         {
            this.§_-v3§ = param2;
         }
         this.§_-rC§[param1] = param2;
      }
      
      override public function addFrame(param1:§_-Lf§) : void
      {
         this.§_-v3§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §_-Lf§
      {
         return this.§_-v3§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§_-v3§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §_-5p§
      {
         if(this.§_-rC§[param1])
         {
            return this.§_-rC§[param1];
         }
         return this.§_-v3§;
      }
   }
}
