package §48§
{
   import flash.utils.Dictionary;
   
   public class § f§ extends §8!'§
   {
       
      
      private var §in §:Dictionary;
      
      private var §^X§:§8!'§;
      
      public function § f§()
      {
         this.§in § = new Dictionary();
         super();
      }
      
      public function static(param1:String, param2:§8!'§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§^X§)
         {
            this.§^X§ = param2;
         }
         this.§in §[param1] = param2;
      }
      
      override public function addFrame(param1:§6!Z§) : void
      {
         this.§^X§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §6!Z§
      {
         return this.§^X§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§^X§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §8!'§
      {
         if(this.§in §[param1])
         {
            return this.§in §[param1];
         }
         return this.§^X§;
      }
   }
}
