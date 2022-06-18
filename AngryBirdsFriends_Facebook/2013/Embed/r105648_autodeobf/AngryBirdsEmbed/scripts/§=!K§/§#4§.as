package §=!K§
{
   public class §#4§
   {
       
      
      private var §!>§:Vector.<§@p§>;
      
      public function §#4§()
      {
         super();
         this.§!>§ = new Vector.<§@p§>();
      }
      
      public function addFrame(param1:§@p§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§!>§.push(param1);
      }
      
      public function getFrame(param1:int) : §@p§
      {
         if(param1 >= this.§!>§.length)
         {
            param1 = this.§!>§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§!>§.length)
         {
            return null;
         }
         return this.§!>§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§!>§.length;
      }
      
      public function getSubAnimation(param1:String) : §#4§
      {
         return null;
      }
   }
}
