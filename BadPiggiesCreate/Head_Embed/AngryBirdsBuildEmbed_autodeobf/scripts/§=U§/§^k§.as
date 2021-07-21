package §=U§
{
   import flash.utils.Dictionary;
   
   public class §^k§ extends §;P§
   {
       
      
      private var §9H§:Dictionary;
      
      private var §<!E§:§;P§;
      
      public function §^k§()
      {
         this.§9H§ = new Dictionary();
         super();
      }
      
      public function §'r§(param1:String, param2:§;P§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§<!E§)
         {
            this.§<!E§ = param2;
         }
         this.§9H§[param1] = param2;
      }
      
      override public function addFrame(param1:§>?§) : void
      {
         this.§<!E§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §>?§
      {
         return this.§<!E§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§<!E§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §;P§
      {
         if(this.§9H§[param1])
         {
            return this.§9H§[param1];
         }
         return this.§<!E§;
      }
   }
}
