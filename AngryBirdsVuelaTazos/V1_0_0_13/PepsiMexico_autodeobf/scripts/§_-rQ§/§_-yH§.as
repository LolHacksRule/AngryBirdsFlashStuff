package §_-rQ§
{
   import flash.utils.Dictionary;
   
   public class §_-yH§ extends §_-Fv§
   {
       
      
      private var §_-a8§:Dictionary;
      
      private var §_-kd§:§_-Fv§;
      
      public function §_-yH§()
      {
         this.§_-a8§ = new Dictionary();
         super();
      }
      
      public function §_-eS§(param1:String, param2:§_-Fv§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§_-kd§)
         {
            this.§_-kd§ = param2;
         }
         this.§_-a8§[param1] = param2;
      }
      
      override public function addFrame(param1:§_-MV§) : void
      {
         this.§_-kd§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §_-MV§
      {
         return this.§_-kd§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§_-kd§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §_-Fv§
      {
         if(this.§_-a8§[param1])
         {
            return this.§_-a8§[param1];
         }
         return this.§_-kd§;
      }
   }
}
