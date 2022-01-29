package § "x§
{
   import §9$;§.Texture;
   import §^"S§.Image;
   import flash.utils.Dictionary;
   
   public class §8!e§
   {
       
      
      private var §6!4§:Texture;
      
      private var §5$5§:int;
      
      private var §4e§:Number;
      
      private var §'"H§:Number;
      
      private var §+[§:Number;
      
      private var §6F§:Dictionary;
      
      public function §8!e§(param1:int, param2:Texture, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.§5$5§ = param1;
         this.§6!4§ = param2;
         this.§4e§ = param3;
         this.§'"H§ = param4;
         this.§+[§ = param5;
         this.§6F§ = null;
      }
      
      public function §[i§(param1:int, param2:Number) : void
      {
         if(this.§6F§ == null)
         {
            this.§6F§ = new Dictionary();
         }
         this.§6F§[param1] = param2;
      }
      
      public function §@#$§(param1:int) : Number
      {
         if(this.§6F§ == null || this.§6F§[param1] == undefined)
         {
            return 0;
         }
         return this.§6F§[param1];
      }
      
      public function §77§() : Image
      {
         return new Image(this.§6!4§);
      }
      
      public function get §7y§() : int
      {
         return this.§5$5§;
      }
      
      public function get xOffset() : Number
      {
         return this.§4e§;
      }
      
      public function get yOffset() : Number
      {
         return this.§'"H§;
      }
      
      public function get §3"d§() : Number
      {
         return this.§+[§;
      }
      
      public function get texture() : Texture
      {
         return this.§6!4§;
      }
      
      public function get width() : Number
      {
         return this.§6!4§.width;
      }
      
      public function get height() : Number
      {
         return this.§6!4§.height;
      }
   }
}
