package §[n§
{
   import flash.utils.Dictionary;
   
   public class §!!,§ extends §2!9§
   {
       
      
      private var §4!'§:Dictionary;
      
      private var §]A§:§2!9§;
      
      public function §!!,§()
      {
         this.§4!'§ = new Dictionary();
         super();
      }
      
      public function §%0§(param1:String, param2:§2!9§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§]A§)
         {
            this.§]A§ = param2;
         }
         this.§4!'§[param1] = param2;
      }
      
      override public function addFrame(param1:§#H§) : void
      {
         this.§]A§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §#H§
      {
         return this.§]A§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§]A§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §2!9§
      {
         if(this.§4!'§[param1])
         {
            return this.§4!'§[param1];
         }
         return this.§]A§;
      }
   }
}
