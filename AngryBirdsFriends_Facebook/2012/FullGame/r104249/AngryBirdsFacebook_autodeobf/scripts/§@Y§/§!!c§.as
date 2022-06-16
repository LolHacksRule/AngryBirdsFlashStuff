package §@Y§
{
   import §=E§.§0"1§;
   
   public class §!!c§ extends §0"1§
   {
       
      
      private var mPlayer1:§&!c§;
      
      private var mPlayer2:§&!c§;
      
      public function §!!c§()
      {
         super();
         this.mPlayer1 = new §&!c§();
         this.mPlayer2 = new §&!c§();
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
