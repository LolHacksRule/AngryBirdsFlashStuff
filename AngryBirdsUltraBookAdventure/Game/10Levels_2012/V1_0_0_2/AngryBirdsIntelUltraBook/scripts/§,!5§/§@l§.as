package §,!5§
{
   import §'!9§.§%!g§;
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §true§.§ _§;
   
   public class §@l§ extends Sprite
   {
       
      
      protected var §#!+§:Sprite;
      
      protected var §]r§:DisplayObject;
      
      protected var §1!`§:Sprite;
      
      public function §@l§()
      {
         super();
         addChild(this.§1!`§ = new Sprite());
         this.§1!`§.addChild(this.§#!+§ = new Sprite());
         this.§]r§ = new §%!g§(2,2,0);
         this.§]r§.width = § _§.§[o§;
         this.§]r§.height = § _§.§-S§;
         addChild(this.§]r§);
         this.§]r§.alpha = 0.5;
      }
      
      public function get §&J§() : Sprite
      {
         return this.§#!+§;
      }
      
      public function get §[g§() : DisplayObject
      {
         return this.§]r§;
      }
      
      public function get §5!4§() : Sprite
      {
         return this.§1!`§;
      }
      
      public function §"o§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§]r§.width / this.§]r§.height;
         this.§]r§.width = param1 + 600 / _loc3_;
         this.§]r§.height = param2 + 600 / _loc3_;
      }
   }
}
