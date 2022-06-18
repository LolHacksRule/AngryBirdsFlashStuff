package §=!K§
{
   import flash.utils.Dictionary;
   
   public class §4!0§ extends §#4§
   {
       
      
      private var §>E§:Dictionary;
      
      private var §>f§:§#4§;
      
      public function §4!0§()
      {
         this.§>E§ = new Dictionary();
         super();
      }
      
      public function §'!G§(param1:String, param2:§#4§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§>f§)
         {
            this.§>f§ = param2;
         }
         this.§>E§[param1] = param2;
      }
      
      override public function addFrame(param1:§@p§) : void
      {
         this.§>f§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §@p§
      {
         return this.§>f§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§>f§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §#4§
      {
         if(this.§>E§[param1])
         {
            return this.§>E§[param1];
         }
         return this.§>f§;
      }
   }
}
