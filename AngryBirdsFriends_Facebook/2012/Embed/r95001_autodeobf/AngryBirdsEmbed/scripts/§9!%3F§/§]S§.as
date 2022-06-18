package §9!?§
{
   import §10§.§#!4§;
   import §<k§.§!1§;
   import §<k§.DisplayObject;
   import §<k§.Sprite;
   
   public class §]S§ extends Sprite
   {
       
      
      protected var §7!B§:Sprite;
      
      protected var §79§:DisplayObject;
      
      protected var §#O§:Sprite;
      
      public function §]S§()
      {
         super();
         addChild(this.§#O§ = new Sprite());
         this.§#O§.addChild(this.§7!B§ = new Sprite());
         this.§79§ = new §!1§(2,2,0);
         this.§79§.width = §#!4§.§each §;
         this.§79§.height = §#!4§.§81§;
         addChild(this.§79§);
         this.§79§.alpha = 0.5;
      }
      
      public function get §`!D§() : Sprite
      {
         return this.§7!B§;
      }
      
      public function get §!!F§() : DisplayObject
      {
         return this.§79§;
      }
      
      public function get §0!3§() : Sprite
      {
         return this.§#O§;
      }
      
      public function §`2§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§79§.width / this.§79§.height;
         this.§79§.width = param1 + 600 / _loc3_;
         this.§79§.height = param2 + 600 / _loc3_;
      }
   }
}
