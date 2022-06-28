package §6a§
{
   public class §+_§ extends UIContainerRovio
   {
       
      
      public function §+_§(param1:XML, param2:UIContainerRovio)
      {
         super(param1,param2,null);
         this.setVisibility(false);
      }
      
      public function open(param1:Boolean = true) : void
      {
         this.setVisibility(true);
      }
      
      public function close() : void
      {
         this.setVisibility(false);
      }
   }
}
