package §&"5§
{
   import flash.utils.Dictionary;
   
   public class §6!&§ extends §+2§
   {
       
      
      private var §!!g§:Dictionary;
      
      private var §6!=§:§+2§;
      
      public function §6!&§()
      {
         this.§!!g§ = new Dictionary();
         super();
      }
      
      public function §9">§(param1:String, param2:§+2§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§6!=§)
         {
            this.§6!=§ = param2;
         }
         this.§!!g§[param1] = param2;
      }
      
      override public function addFrame(param1:§6!L§) : void
      {
         this.§6!=§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §6!L§
      {
         return this.§6!=§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§6!=§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §+2§
      {
         if(this.§!!g§[param1])
         {
            return this.§!!g§[param1];
         }
         return this.§6!=§;
      }
   }
}
