package §_-Bp§
{
   import flash.utils.Dictionary;
   
   public class §_-G1§ extends §_-wQ§
   {
       
      
      private var §_-C3§:Dictionary;
      
      private var §_-h6§:§_-wQ§;
      
      public function §_-G1§()
      {
         this.§_-C3§ = new Dictionary();
         super();
      }
      
      public function §_-Ms§(param1:String, param2:§_-wQ§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§_-h6§)
         {
            this.§_-h6§ = param2;
         }
         this.§_-C3§[param1] = param2;
      }
      
      override public function addFrame(param1:§_-9c§) : void
      {
         this.§_-h6§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §_-9c§
      {
         return this.§_-h6§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§_-h6§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §_-wQ§
      {
         if(this.§_-C3§[param1])
         {
            return this.§_-C3§[param1];
         }
         return this.§_-h6§;
      }
   }
}
