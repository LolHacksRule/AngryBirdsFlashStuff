package §"a§
{
   import flash.utils.Dictionary;
   
   public class § `§ extends §#c§
   {
       
      
      private var § k§:Dictionary;
      
      private var §]y§:§#c§;
      
      public function § `§()
      {
         this.§ k§ = new Dictionary();
         super();
      }
      
      public function §"N§(param1:String, param2:§#c§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§]y§)
         {
            this.§]y§ = param2;
         }
         this.§ k§[param1] = param2;
      }
      
      override public function addFrame(param1:§^>§) : void
      {
         this.§]y§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §^>§
      {
         return this.§]y§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§]y§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §#c§
      {
         if(this.§ k§[param1])
         {
            return this.§ k§[param1];
         }
         return this.§]y§;
      }
   }
}
