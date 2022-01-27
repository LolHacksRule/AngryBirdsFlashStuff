package §>"!§
{
   import §9!&§.§`-§;
   
   public class §4!5§ extends §`-§
   {
       
      
      private var mRenderer1:§3!h§;
      
      private var mRenderer2:§3!h§;
      
      private var mRenderer3:§3!h§;
      
      public function §4!5§()
      {
         super();
         this.mRenderer1 = new §3!h§(true);
         this.mRenderer2 = new §3!h§(true);
         this.mRenderer3 = new §3!h§(true);
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
