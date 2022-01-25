package §9!Y§
{
   import flash.utils.Dictionary;
   
   public class §5z§ extends §<!%§
   {
       
      
      private var §"u§:Dictionary;
      
      private var §@p§:§<!%§;
      
      public function §5z§()
      {
         this.§"u§ = new Dictionary();
         super();
      }
      
      public function §6§(param1:String, param2:§<!%§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§@p§)
         {
            this.§@p§ = param2;
         }
         this.§"u§[param1] = param2;
      }
      
      override public function addFrame(param1:§"#§) : void
      {
         this.§@p§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §"#§
      {
         return this.§@p§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§@p§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §<!%§
      {
         if(this.§"u§[param1])
         {
            return this.§"u§[param1];
         }
         return this.§@p§;
      }
   }
}
