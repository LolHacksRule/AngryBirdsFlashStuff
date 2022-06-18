package §8!`§
{
   import §1!§.§@!Q§;
   import §;!Q§.§,r§;
   import §;!Q§.DisplayObject;
   import §;!Q§.Sprite;
   
   public class §'9§ extends Sprite
   {
       
      
      protected var §+>§:Sprite;
      
      protected var §&!B§:DisplayObject;
      
      protected var §&E§:Sprite;
      
      public function §'9§()
      {
         super();
         addChild(this.§&E§ = new Sprite());
         this.§&E§.addChild(this.§+>§ = new Sprite());
         this.§&!B§ = new §,r§(2,2,0);
         this.§&!B§.width = §@!Q§.§`!N§;
         this.§&!B§.height = §@!Q§.§1!9§;
         addChild(this.§&!B§);
         this.§&!B§.alpha = 0.5;
      }
      
      public function get §0S§() : Sprite
      {
         return this.§+>§;
      }
      
      public function get §5!'§() : DisplayObject
      {
         return this.§&!B§;
      }
      
      public function get §8!%§() : Sprite
      {
         return this.§&E§;
      }
      
      public function §>3§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§&!B§.width / this.§&!B§.height;
         this.§&!B§.width = param1 + 600 / _loc3_;
         this.§&!B§.height = param2 + 600 / _loc3_;
      }
   }
}
