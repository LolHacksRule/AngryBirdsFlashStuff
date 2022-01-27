package §^'§
{
   import flash.utils.Dictionary;
   
   public class § r§ extends §,!2§
   {
       
      
      private var §`e§:Dictionary;
      
      private var §2Q§:§,!2§;
      
      public function § r§()
      {
         this.§`e§ = new Dictionary();
         super();
      }
      
      public function §9L§(param1:String, param2:§,!2§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§2Q§)
         {
            this.§2Q§ = param2;
         }
         this.§`e§[param1] = param2;
      }
      
      override public function addFrame(param1:§!!M§) : void
      {
         this.§2Q§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §!!M§
      {
         return this.§2Q§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§2Q§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §,!2§
      {
         if(this.§`e§[param1])
         {
            return this.§`e§[param1];
         }
         return this.§2Q§;
      }
   }
}
