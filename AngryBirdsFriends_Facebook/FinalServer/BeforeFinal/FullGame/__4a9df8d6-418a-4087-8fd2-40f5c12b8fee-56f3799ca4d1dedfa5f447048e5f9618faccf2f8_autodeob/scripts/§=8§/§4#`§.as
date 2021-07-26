package §=8§
{
   import §=§.§>!Y§;
   
   public class §4#`§ extends §>!Y§
   {
       
      
      private var mPlayer1:§-^§;
      
      private var mPlayer2:§-^§;
      
      public function §4#`§()
      {
         super();
         this.mPlayer1 = new §-^§();
         this.mPlayer2 = new §-^§();
         addChild(this.mPlayer1);
         addChild(this.mPlayer2);
         this.mPlayer2.x = 300;
      }
      
      override public function set data(param1:Object) : void
      {
         if(param1)
         {
            this.mPlayer1.data = param1[0];
            this.mPlayer2.data = param1[1];
         }
      }
      
      override public function get height() : Number
      {
         return 35;
      }
   }
}
