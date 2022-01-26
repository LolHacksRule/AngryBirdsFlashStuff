package §&!W§
{
   import flash.utils.Dictionary;
   
   public class §^J§ extends §+=§
   {
       
      
      private var §3!@§:Dictionary;
      
      private var §5!6§:§+=§;
      
      public function §^J§()
      {
         this.§3!@§ = new Dictionary();
         super();
      }
      
      public function §9!O§(param1:String, param2:§+=§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§5!6§)
         {
            this.§5!6§ = param2;
         }
         this.§3!@§[param1] = param2;
      }
      
      override public function addFrame(param1:§&!$§) : void
      {
         this.§5!6§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §&!$§
      {
         return this.§5!6§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§5!6§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §+=§
      {
         if(this.§3!@§[param1])
         {
            return this.§3!@§[param1];
         }
         return this.§5!6§;
      }
   }
}
