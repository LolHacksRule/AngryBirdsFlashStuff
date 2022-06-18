package §"k§
{
   import flash.utils.Dictionary;
   
   public class §;![§ extends §;!Z§
   {
       
      
      private var §=K§:Dictionary;
      
      private var §9"§:§;!Z§;
      
      public function §;![§()
      {
         this.§=K§ = new Dictionary();
         super();
      }
      
      public function §"X§(param1:String, param2:§;!Z§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§9"§)
         {
            this.§9"§ = param2;
         }
         this.§=K§[param1] = param2;
      }
      
      override public function addFrame(param1:§5!7§) : void
      {
         this.§9"§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §5!7§
      {
         return this.§9"§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§9"§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §;!Z§
      {
         if(this.§=K§[param1])
         {
            return this.§=K§[param1];
         }
         return this.§9"§;
      }
   }
}
