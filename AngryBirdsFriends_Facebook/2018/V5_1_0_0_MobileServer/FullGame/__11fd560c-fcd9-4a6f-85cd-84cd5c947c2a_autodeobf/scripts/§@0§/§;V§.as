package §@0§
{
   import §;#D§.§3#U§;
   import §^"S§.§'#E§;
   import §^"S§.DisplayObject;
   import §^"S§.Sprite;
   
   public class §;V§ extends Sprite
   {
       
      
      protected var §]#i§:Sprite;
      
      protected var §1#4§:DisplayObject;
      
      protected var § 9§:Sprite;
      
      public function §;V§()
      {
         super();
         addChild(this.§ 9§ = new Sprite());
         this.§ 9§.addChild(this.§]#i§ = new Sprite());
         this.§1#4§ = new §'#E§(2,2,0);
         this.§1#4§.width = §3#U§.§,g§;
         this.§1#4§.height = §3#U§.§2b§;
         addChild(this.§1#4§);
         this.§1#4§.alpha = 0.5;
      }
      
      public function get §<#u§() : Sprite
      {
         return this.§]#i§;
      }
      
      public function get §4!^§() : DisplayObject
      {
         return this.§1#4§;
      }
      
      public function get §6#H§() : Sprite
      {
         return this.§ 9§;
      }
      
      public function §;#[§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§1#4§.width / this.§1#4§.height;
         this.§1#4§.width = param1 + 600 / _loc3_;
         this.§1#4§.height = param2 + 600 / _loc3_;
      }
   }
}
