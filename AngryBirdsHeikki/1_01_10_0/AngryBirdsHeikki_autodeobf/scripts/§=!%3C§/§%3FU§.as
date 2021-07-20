package §=!<§
{
   import flash.utils.Dictionary;
   
   public class §?U§ extends §!x§
   {
       
      
      private var §,!%§:Dictionary;
      
      private var §6e§:§!x§;
      
      public function §?U§()
      {
         this.§,!%§ = new Dictionary();
         super();
      }
      
      public function §7f§(param1:String, param2:§!x§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§6e§)
         {
            this.§6e§ = param2;
         }
         this.§,!%§[param1] = param2;
      }
      
      override public function addFrame(param1:§8!!§) : void
      {
         this.§6e§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §8!!§
      {
         return this.§6e§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§6e§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §!x§
      {
         if(this.§,!%§[param1])
         {
            return this.§,!%§[param1];
         }
         return this.§6e§;
      }
   }
}
