package § !p§
{
   import §3#q§.§ !Q§;
   
   public class §?"q§ extends § !Q§
   {
       
      
      private var mPlayer1:§>5§;
      
      private var mPlayer2:§>5§;
      
      public function §?"q§()
      {
         super();
         this.mPlayer1 = new §>5§();
         this.mPlayer2 = new §>5§();
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
