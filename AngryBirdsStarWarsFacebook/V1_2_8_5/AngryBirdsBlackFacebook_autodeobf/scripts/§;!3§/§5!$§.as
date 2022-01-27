package §;!3§
{
   import §8§.§"!E§;
   
   public class §5!$§ extends §"!E§
   {
       
      
      private var mRenderer1:§^n§;
      
      private var mRenderer2:§^n§;
      
      public function §5!$§()
      {
         super();
         this.mRenderer1 = new §^n§();
         this.mRenderer2 = new §^n§();
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
