package §7"n§
{
   import §8!§.§;+§;
   
   public class §7$2§ extends §;+§
   {
       
      
      private var mPlayer1:§!#D§;
      
      private var mPlayer2:§!#D§;
      
      public function §7$2§()
      {
         super();
         this.mPlayer1 = new §!#D§();
         this.mPlayer2 = new §!#D§();
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
