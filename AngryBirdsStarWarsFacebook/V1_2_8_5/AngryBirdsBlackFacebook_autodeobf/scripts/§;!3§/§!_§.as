package §;!3§
{
   import §8§.§"!E§;
   
   public class §!_§ extends §"!E§
   {
       
      
      private var mRenderer1:§^n§;
      
      private var mRenderer2:§^n§;
      
      private var mRenderer3:§^n§;
      
      public function §!_§()
      {
         super();
         this.mRenderer1 = new §^n§(true);
         this.mRenderer2 = new §^n§(true);
         this.mRenderer3 = new §^n§(true);
         addChild(this.mRenderer1);
         addChild(this.mRenderer2);
         addChild(this.mRenderer3);
         this.mRenderer2.x = 200;
         this.mRenderer3.x = 400;
      }
      
      override public function set data(param1:Object) : void
      {
         if(param1)
         {
            this.mRenderer1.data = param1.length > 0 ? param1[0] : null;
            this.mRenderer2.data = param1.length > 1 ? param1[1] : null;
            this.mRenderer3.data = param1.length > 2 ? param1[2] : null;
         }
      }
      
      override public function get height() : Number
      {
         return 34;
      }
   }
}
