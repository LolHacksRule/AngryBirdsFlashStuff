package §+N§
{
   import flash.utils.Dictionary;
   
   public class §,Z§ extends §%H§
   {
       
      
      private var §#O§:Dictionary;
      
      private var §>O§:§%H§;
      
      public function §,Z§()
      {
         this.§#O§ = new Dictionary();
         super();
      }
      
      public function §"_§(param1:String, param2:§%H§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§>O§)
         {
            this.§>O§ = param2;
         }
         this.§#O§[param1] = param2;
      }
      
      override public function addFrame(param1:§=!+§) : void
      {
         this.§>O§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §=!+§
      {
         return this.§>O§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§>O§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §%H§
      {
         if(this.§#O§[param1])
         {
            return this.§#O§[param1];
         }
         return this.§>O§;
      }
   }
}
