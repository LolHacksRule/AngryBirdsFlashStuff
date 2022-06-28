package §5`§
{
   import flash.utils.Dictionary;
   
   public class §'g§ extends §+R§
   {
       
      
      private var §7g§:Dictionary;
      
      private var §8t§:§+R§;
      
      public function §'g§()
      {
         this.§7g§ = new Dictionary();
         super();
      }
      
      public function §+"§(param1:String, param2:§+R§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§8t§)
         {
            this.§8t§ = param2;
         }
         this.§7g§[param1] = param2;
      }
      
      override public function addFrame(param1:§%F§) : void
      {
         this.§8t§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §%F§
      {
         return this.§8t§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§8t§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §+R§
      {
         if(this.§7g§[param1])
         {
            return this.§7g§[param1];
         }
         return this.§8t§;
      }
   }
}
