package §9K§
{
   import flash.utils.Dictionary;
   
   public class §`!4§ extends §!?§
   {
       
      
      private var §"!#§:Dictionary;
      
      private var § do§:§!?§;
      
      public function §`!4§()
      {
         this.§"!#§ = new Dictionary();
         super();
      }
      
      public function §]! §(param1:String, param2:§!?§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§ do§)
         {
            this.§ do§ = param2;
         }
         this.§"!#§[param1] = param2;
      }
      
      override public function addFrame(param1:§,z§) : void
      {
         this.§ do§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §,z§
      {
         return this.§ do§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§ do§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §!?§
      {
         if(this.§"!#§[param1])
         {
            return this.§"!#§[param1];
         }
         return this.§ do§;
      }
   }
}
