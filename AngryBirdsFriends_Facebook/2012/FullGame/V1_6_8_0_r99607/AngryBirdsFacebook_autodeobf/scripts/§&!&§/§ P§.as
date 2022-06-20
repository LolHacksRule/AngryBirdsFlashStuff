package §&!&§
{
   import §<m§.§,0§;
   
   public class § P§ extends §,0§
   {
       
      
      private var mPlayer1:§`!a§;
      
      private var mPlayer2:§`!a§;
      
      public function § P§()
      {
         super();
         this.mPlayer1 = new §`!a§();
         this.mPlayer2 = new §`!a§();
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
