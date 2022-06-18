package §[M§
{
   import §""4§.Texture;
   import §#Z§.Image;
   import flash.utils.Dictionary;
   
   public class §=#e§
   {
       
      
      private var §+!E§:Texture;
      
      private var §8#=§:int;
      
      private var §5#?§:Number;
      
      private var §4#§:Number;
      
      private var §^!i§:Number;
      
      private var §7h§:Dictionary;
      
      public function §=#e§(param1:int, param2:Texture, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.§8#=§ = param1;
         this.§+!E§ = param2;
         this.§5#?§ = param3;
         this.§4#§ = param4;
         this.§^!i§ = param5;
         this.§7h§ = null;
      }
      
      public function §5!e§(param1:int, param2:Number) : void
      {
         if(this.§7h§ == null)
         {
            this.§7h§ = new Dictionary();
         }
         this.§7h§[param1] = param2;
      }
      
      public function §+#i§(param1:int) : Number
      {
         if(this.§7h§ == null || this.§7h§[param1] == undefined)
         {
            return 0;
         }
         return this.§7h§[param1];
      }
      
      public function §3!;§() : Image
      {
         return new Image(this.§+!E§);
      }
      
      public function get §+B§() : int
      {
         return this.§8#=§;
      }
      
      public function get xOffset() : Number
      {
         return this.§5#?§;
      }
      
      public function get yOffset() : Number
      {
         return this.§4#§;
      }
      
      public function get §]$>§() : Number
      {
         return this.§^!i§;
      }
      
      public function get texture() : Texture
      {
         return this.§+!E§;
      }
      
      public function get width() : Number
      {
         return this.§+!E§.width;
      }
      
      public function get height() : Number
      {
         return this.§+!E§.height;
      }
   }
}
