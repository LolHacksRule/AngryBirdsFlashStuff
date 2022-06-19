package §_-4I§
{
   import flash.utils.Dictionary;
   
   public class §_-fU§ extends §_-14§
   {
       
      
      private var §_-uf§:Dictionary;
      
      private var §_-VD§:§_-14§;
      
      public function §_-fU§()
      {
         this.§_-uf§ = new Dictionary();
         super();
      }
      
      public function §_-sw§(param1:String, param2:§_-14§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§_-VD§)
         {
            this.§_-VD§ = param2;
         }
         this.§_-uf§[param1] = param2;
      }
      
      override public function addFrame(param1:§_-EA§) : void
      {
         this.§_-VD§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §_-EA§
      {
         return this.§_-VD§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§_-VD§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §_-14§
      {
         if(this.§_-uf§[param1])
         {
            return this.§_-uf§[param1];
         }
         return this.§_-VD§;
      }
   }
}
