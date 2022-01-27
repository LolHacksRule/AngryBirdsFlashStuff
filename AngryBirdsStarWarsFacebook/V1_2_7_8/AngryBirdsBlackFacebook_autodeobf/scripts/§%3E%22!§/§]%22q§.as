package §>"!§
{
   import §9!&§.§`-§;
   
   public class §]"q§ extends §`-§
   {
       
      
      private var mRenderer1:§3!h§;
      
      private var mRenderer2:§3!h§;
      
      public function §]"q§()
      {
         super();
         this.mRenderer1 = new §3!h§();
         this.mRenderer2 = new §3!h§();
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
