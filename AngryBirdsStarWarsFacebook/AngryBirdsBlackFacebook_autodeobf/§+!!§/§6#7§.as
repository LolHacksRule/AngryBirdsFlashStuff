package §+!!§
{
   import §,!,§.§0!d§;
   
   public class §6#7§ extends §0!d§
   {
       
      
      private var mRenderer1:§&"l§;
      
      private var mRenderer2:§&"l§;
      
      public function §6#7§()
      {
         super();
         this.mRenderer1 = new §&"l§();
         this.mRenderer2 = new §&"l§();
         addChild(this.mRenderer1);
         addChild(this.mRenderer2);
         this.mRenderer2.x = 300;
      }
      
      override public function set data(param1:Object) : void
      {
         if(param1)
         {
            this.mRenderer1.data = param1.length > 0 ? param1[0] : null;
            this.mRenderer2.data = param1.length > 1 ? param1[1] : null;
         }
      }
      
      override public function get height() : Number
      {
         return 34;
      }
   }
}
