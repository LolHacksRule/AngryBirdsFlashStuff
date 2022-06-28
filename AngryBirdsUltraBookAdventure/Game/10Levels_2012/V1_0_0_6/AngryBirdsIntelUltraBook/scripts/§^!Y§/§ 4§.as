package §^!Y§
{
   import flash.utils.Dictionary;
   
   public class § 4§ extends §4!f§
   {
       
      
      private var § s§:Dictionary;
      
      private var §8i§:§4!f§;
      
      public function § 4§()
      {
         this.§ s§ = new Dictionary();
         super();
      }
      
      public function §,!m§(param1:String, param2:§4!f§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§8i§)
         {
            this.§8i§ = param2;
         }
         this.§ s§[param1] = param2;
      }
      
      override public function addFrame(param1:§1C§) : void
      {
         this.§8i§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §1C§
      {
         return this.§8i§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§8i§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §4!f§
      {
         if(this.§ s§[param1])
         {
            return this.§ s§[param1];
         }
         return this.§8i§;
      }
   }
}
