package §[v§
{
   import flash.utils.Dictionary;
   
   public class §=x§ extends §03§
   {
       
      
      private var §^!E§:Dictionary;
      
      private var §@^§:§03§;
      
      public function §=x§()
      {
         this.§^!E§ = new Dictionary();
         super();
      }
      
      public function §'j§(param1:String, param2:§03§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§@^§)
         {
            this.§@^§ = param2;
         }
         this.§^!E§[param1] = param2;
      }
      
      override public function addFrame(param1:§'P§) : void
      {
         this.§@^§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §'P§
      {
         return this.§@^§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§@^§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §03§
      {
         if(this.§^!E§[param1])
         {
            return this.§^!E§[param1];
         }
         return this.§@^§;
      }
   }
}
