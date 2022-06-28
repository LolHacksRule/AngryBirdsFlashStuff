package §,6§
{
   import flash.utils.Dictionary;
   
   public class §1V§ extends §^!>§
   {
       
      
      private var §`!'§:Dictionary;
      
      private var §`! §:§^!>§;
      
      public function §1V§()
      {
         this.§`!'§ = new Dictionary();
         super();
      }
      
      public function §,!x§(param1:String, param2:§^!>§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§`! §)
         {
            this.§`! § = param2;
         }
         this.§`!'§[param1] = param2;
      }
      
      override public function addFrame(param1:§5z§) : void
      {
         this.§`! §.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §5z§
      {
         return this.§`! §.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§`! §.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §^!>§
      {
         if(this.§`!'§[param1])
         {
            return this.§`!'§[param1];
         }
         return this.§`! §;
      }
   }
}
