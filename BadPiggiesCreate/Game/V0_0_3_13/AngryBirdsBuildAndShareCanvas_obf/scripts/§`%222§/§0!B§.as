package §`"2§
{
   import flash.utils.Dictionary;
   
   public class §0!B§ extends §>",§
   {
       
      
      private var §1!=§:Dictionary;
      
      private var §[!=§:§>",§;
      
      public function §0!B§()
      {
         this.§1!=§ = new Dictionary();
         super();
      }
      
      public function §;!D§(param1:String, param2:§>",§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§[!=§)
         {
            this.§[!=§ = param2;
         }
         this.§1!=§[param1] = param2;
      }
      
      override public function addFrame(param1:§%3§) : void
      {
         this.§[!=§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §%3§
      {
         return this.§[!=§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§[!=§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §>",§
      {
         if(this.§1!=§[param1])
         {
            return this.§1!=§[param1];
         }
         return this.§[!=§;
      }
   }
}
