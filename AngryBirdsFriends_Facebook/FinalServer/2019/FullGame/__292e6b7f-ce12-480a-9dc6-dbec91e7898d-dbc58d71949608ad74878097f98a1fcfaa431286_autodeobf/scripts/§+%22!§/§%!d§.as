package §+"!§
{
   import §,#e§.Image;
   import §-#]§.Texture;
   import flash.utils.Dictionary;
   
   public class §%!d§
   {
       
      
      private var §[!-§:Texture;
      
      private var §#B§:int;
      
      private var §?$@§:Number;
      
      private var §^!`§:Number;
      
      private var §^Z§:Number;
      
      private var §'!&§:Dictionary;
      
      public function §%!d§(param1:int, param2:Texture, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.§#B§ = param1;
         this.§[!-§ = param2;
         this.§?$@§ = param3;
         this.§^!`§ = param4;
         this.§^Z§ = param5;
         this.§'!&§ = null;
      }
      
      public function §0X§(param1:int, param2:Number) : void
      {
         if(this.§'!&§ == null)
         {
            this.§'!&§ = new Dictionary();
         }
         this.§'!&§[param1] = param2;
      }
      
      public function §]"z§(param1:int) : Number
      {
         if(this.§'!&§ == null || this.§'!&§[param1] == undefined)
         {
            return 0;
         }
         return this.§'!&§[param1];
      }
      
      public function §2j§() : Image
      {
         return new Image(this.§[!-§);
      }
      
      public function get §-_§() : int
      {
         return this.§#B§;
      }
      
      public function get xOffset() : Number
      {
         return this.§?$@§;
      }
      
      public function get yOffset() : Number
      {
         return this.§^!`§;
      }
      
      public function get §;!3§() : Number
      {
         return this.§^Z§;
      }
      
      public function get texture() : Texture
      {
         return this.§[!-§;
      }
      
      public function get width() : Number
      {
         return this.§[!-§.width;
      }
      
      public function get height() : Number
      {
         return this.§[!-§.height;
      }
   }
}
