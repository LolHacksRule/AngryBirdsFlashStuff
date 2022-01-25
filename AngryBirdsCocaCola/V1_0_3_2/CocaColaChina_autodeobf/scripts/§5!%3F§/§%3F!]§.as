package §5!?§
{
   import §;t§.§6!K§;
   import §;t§.DisplayObject;
   import §;t§.Sprite;
   import §=F§.§"n§;
   
   public class §?!]§ extends Sprite
   {
       
      
      protected var §=J§:Sprite;
      
      protected var §;[§:DisplayObject;
      
      protected var § !M§:Sprite;
      
      public function §?!]§()
      {
         super();
         addChild(this.§ !M§ = new Sprite());
         this.§ !M§.addChild(this.§=J§ = new Sprite());
         this.§;[§ = new §6!K§(2,2,0);
         this.§;[§.width = §"n§.§,T§;
         this.§;[§.height = §"n§.§8-§;
         addChild(this.§;[§);
         this.§;[§.alpha = 0.5;
      }
      
      public function get §[W§() : Sprite
      {
         return this.§=J§;
      }
      
      public function get §>!R§() : DisplayObject
      {
         return this.§;[§;
      }
      
      public function get § '§() : Sprite
      {
         return this.§ !M§;
      }
      
      public function §2t§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§;[§.width / this.§;[§.height;
         this.§;[§.width = param1 + 600 / _loc3_;
         this.§;[§.height = param2 + 600 / _loc3_;
      }
   }
}
