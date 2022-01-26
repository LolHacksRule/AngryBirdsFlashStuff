package §_-1P§
{
   import flash.utils.Dictionary;
   
   public class §_-hj§ extends §_-uT§
   {
       
      
      private var §_-hR§:Dictionary;
      
      private var §_-oR§:§_-uT§;
      
      public function §_-hj§()
      {
         this.§_-hR§ = new Dictionary();
         super();
      }
      
      public function §_-Dm§(param1:String, param2:§_-uT§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§_-oR§)
         {
            this.§_-oR§ = param2;
         }
         this.§_-hR§[param1] = param2;
      }
      
      override public function addFrame(param1:§_-XN§) : void
      {
         this.§_-oR§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §_-XN§
      {
         return this.§_-oR§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§_-oR§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §_-uT§
      {
         if(this.§_-hR§[param1])
         {
            return this.§_-hR§[param1];
         }
         return this.§_-oR§;
      }
   }
}
