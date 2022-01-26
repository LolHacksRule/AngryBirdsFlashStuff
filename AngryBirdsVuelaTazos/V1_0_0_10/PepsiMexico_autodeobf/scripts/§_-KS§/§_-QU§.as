package §_-KS§
{
   import flash.utils.Dictionary;
   
   public class §_-QU§ extends §_-3l§
   {
       
      
      private var §_-BC§:Dictionary;
      
      private var §_-rH§:§_-3l§;
      
      public function §_-QU§()
      {
         this.§_-BC§ = new Dictionary();
         super();
      }
      
      public function §_-9X§(param1:String, param2:§_-3l§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§_-rH§)
         {
            this.§_-rH§ = param2;
         }
         this.§_-BC§[param1] = param2;
      }
      
      override public function addFrame(param1:§_-Wt§) : void
      {
         this.§_-rH§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §_-Wt§
      {
         return this.§_-rH§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§_-rH§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §_-3l§
      {
         if(this.§_-BC§[param1])
         {
            return this.§_-BC§[param1];
         }
         return this.§_-rH§;
      }
   }
}
