package §9!2§
{
   import flash.utils.Dictionary;
   
   public class §=!<§ extends §@!!§
   {
       
      
      private var §8A§:Dictionary;
      
      private var §2x§:§@!!§;
      
      public function §=!<§()
      {
         this.§8A§ = new Dictionary();
         super();
      }
      
      public function §5!6§(param1:String, param2:§@!!§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§2x§)
         {
            this.§2x§ = param2;
         }
         this.§8A§[param1] = param2;
      }
      
      override public function addFrame(param1:§<j§) : void
      {
         this.§2x§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §<j§
      {
         return this.§2x§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§2x§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §@!!§
      {
         if(this.§8A§[param1])
         {
            return this.§8A§[param1];
         }
         return this.§2x§;
      }
   }
}
