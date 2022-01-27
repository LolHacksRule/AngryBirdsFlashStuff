package §]!C§
{
   import flash.utils.Dictionary;
   
   public class §[U§ extends §<!c§
   {
       
      
      private var §79§:Dictionary;
      
      private var §6!K§:§<!c§;
      
      public function §[U§()
      {
         this.§79§ = new Dictionary();
         super();
      }
      
      public function § h§(param1:String, param2:§<!c§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§6!K§)
         {
            this.§6!K§ = param2;
         }
         this.§79§[param1] = param2;
      }
      
      override public function addFrame(param1:§'!!§) : void
      {
         this.§6!K§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §'!!§
      {
         return this.§6!K§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§6!K§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §<!c§
      {
         if(this.§79§[param1])
         {
            return this.§79§[param1];
         }
         return this.§6!K§;
      }
   }
}
