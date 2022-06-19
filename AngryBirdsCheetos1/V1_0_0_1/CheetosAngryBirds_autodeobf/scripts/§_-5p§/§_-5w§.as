package §_-5p§
{
   import flash.utils.Dictionary;
   
   public class §_-5w§ extends §_-b1§
   {
       
      
      private var §_-R-§:Dictionary;
      
      private var §_-6K§:§_-b1§;
      
      public function §_-5w§()
      {
         this.§_-R-§ = new Dictionary();
         super();
      }
      
      public function §_-tT§(param1:String, param2:§_-b1§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§_-6K§)
         {
            this.§_-6K§ = param2;
         }
         this.§_-R-§[param1] = param2;
      }
      
      override public function addFrame(param1:§_-4§) : void
      {
         this.§_-6K§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §_-4§
      {
         return this.§_-6K§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§_-6K§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §_-b1§
      {
         if(this.§_-R-§[param1])
         {
            return this.§_-R-§[param1];
         }
         return this.§_-6K§;
      }
   }
}
