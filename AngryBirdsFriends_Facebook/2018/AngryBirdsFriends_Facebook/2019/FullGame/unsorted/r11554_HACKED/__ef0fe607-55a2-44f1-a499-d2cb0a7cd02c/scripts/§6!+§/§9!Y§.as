package §6!+§
{
   import §!6§.Image;
   import §""'§.Texture;
   import flash.utils.Dictionary;
   
   public class §9!Y§
   {
       
      
      private var §;Z§:Texture;
      
      private var §1#s§:int;
      
      private var §6^§:Number;
      
      private var §;!=§:Number;
      
      private var §<#i§:Number;
      
      private var §?#Z§:Dictionary;
      
      public function §9!Y§(param1:int, param2:Texture, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.§1#s§ = param1;
         this.§;Z§ = param2;
         this.§6^§ = param3;
         this.§;!=§ = param4;
         this.§<#i§ = param5;
         this.§?#Z§ = null;
      }
      
      public function §2#@§(param1:int, param2:Number) : void
      {
         if(this.§?#Z§ == null)
         {
            this.§?#Z§ = new Dictionary();
         }
         this.§?#Z§[param1] = param2;
      }
      
      public function §&x§(param1:int) : Number
      {
         if(this.§?#Z§ == null || this.§?#Z§[param1] == undefined)
         {
            return 0;
         }
         return this.§?#Z§[param1];
      }
      
      public function §;!2§() : Image
      {
         return new Image(this.§;Z§);
      }
      
      public function get §9"!§() : int
      {
         return this.§1#s§;
      }
      
      public function get xOffset() : Number
      {
         return this.§6^§;
      }
      
      public function get yOffset() : Number
      {
         return this.§;!=§;
      }
      
      public function get §6"v§() : Number
      {
         return this.§<#i§;
      }
      
      public function get texture() : Texture
      {
         return this.§;Z§;
      }
      
      public function get width() : Number
      {
         return this.§;Z§.width;
      }
      
      public function get height() : Number
      {
         return this.§;Z§.height;
      }
   }
}
