package §_-my§
{
   import flash.utils.Dictionary;
   
   public class §_-T9§ extends §_-uG§
   {
       
      
      private var §_-CE§:Dictionary;
      
      private var §_-vE§:§_-uG§;
      
      public function §_-T9§()
      {
         this.§_-CE§ = new Dictionary();
         super();
      }
      
      public function §_-ym§(param1:String, param2:§_-uG§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§_-vE§)
         {
            this.§_-vE§ = param2;
         }
         this.§_-CE§[param1] = param2;
      }
      
      override public function addFrame(param1:§_-GX§) : void
      {
         this.§_-vE§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §_-GX§
      {
         return this.§_-vE§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§_-vE§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §_-uG§
      {
         if(this.§_-CE§[param1])
         {
            return this.§_-CE§[param1];
         }
         return this.§_-vE§;
      }
   }
}
