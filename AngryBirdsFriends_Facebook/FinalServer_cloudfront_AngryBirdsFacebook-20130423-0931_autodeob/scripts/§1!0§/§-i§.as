package §1!0§
{
   import §2!o§.§2"3§;
   
   public class §-i§ extends §2"3§
   {
       
      
      private var mPlayer1:§@"[§;
      
      private var mPlayer2:§@"[§;
      
      public function §-i§()
      {
         super();
         this.mPlayer1 = new §@"[§();
         this.mPlayer2 = new §@"[§();
         addChild(this.mPlayer1);
         addChild(this.mPlayer2);
         this.mPlayer2.x = 260;
      }
      
      override public function set data(param1:Object) : void
      {
         if(param1)
         {
            this.mPlayer1.data = param1[0];
            this.mPlayer2.data = param1[1];
         }
      }
   }
}
