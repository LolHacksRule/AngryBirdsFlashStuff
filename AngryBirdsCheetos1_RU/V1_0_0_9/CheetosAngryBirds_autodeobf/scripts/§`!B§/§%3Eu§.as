package §`!B§
{
   import flash.utils.Dictionary;
   
   public class §>u§ extends §2j§
   {
       
      
      private var §%!3§:Dictionary;
      
      private var §&5§:§2j§;
      
      public function §>u§()
      {
         this.§%!3§ = new Dictionary();
         super();
      }
      
      public function §0!U§(param1:String, param2:§2j§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§&5§)
         {
            this.§&5§ = param2;
         }
         this.§%!3§[param1] = param2;
      }
      
      override public function addFrame(param1:§4!I§) : void
      {
         this.§&5§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §4!I§
      {
         return this.§&5§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§&5§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §2j§
      {
         if(this.§%!3§[param1])
         {
            return this.§%!3§[param1];
         }
         return this.§&5§;
      }
   }
}
