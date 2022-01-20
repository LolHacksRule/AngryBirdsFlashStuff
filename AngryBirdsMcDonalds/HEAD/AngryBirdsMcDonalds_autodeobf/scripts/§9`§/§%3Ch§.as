package §9`§
{
   import flash.utils.Dictionary;
   
   public class §<h§ extends §+!D§
   {
       
      
      private var §true §:Dictionary;
      
      private var §9i§:§+!D§;
      
      public function §<h§()
      {
         this.§true § = new Dictionary();
         super();
      }
      
      public function §?!2§(param1:String, param2:§+!D§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§9i§)
         {
            this.§9i§ = param2;
         }
         this.§true §[param1] = param2;
      }
      
      override public function addFrame(param1:§8!P§) : void
      {
         this.§9i§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §8!P§
      {
         return this.§9i§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§9i§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §+!D§
      {
         if(this.§true §[param1])
         {
            return this.§true §[param1];
         }
         return this.§9i§;
      }
   }
}
