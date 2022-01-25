package §2l§
{
   import flash.utils.Dictionary;
   
   public class §^! § extends §63§
   {
       
      
      private var §9!H§:Dictionary;
      
      private var §'=§:§63§;
      
      public function §^! §()
      {
         this.§9!H§ = new Dictionary();
         super();
      }
      
      public function §,v§(param1:String, param2:§63§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§'=§)
         {
            this.§'=§ = param2;
         }
         this.§9!H§[param1] = param2;
      }
      
      override public function addFrame(param1:§4!Q§) : void
      {
         this.§'=§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §4!Q§
      {
         return this.§'=§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§'=§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §63§
      {
         if(this.§9!H§[param1])
         {
            return this.§9!H§[param1];
         }
         return this.§'=§;
      }
   }
}
