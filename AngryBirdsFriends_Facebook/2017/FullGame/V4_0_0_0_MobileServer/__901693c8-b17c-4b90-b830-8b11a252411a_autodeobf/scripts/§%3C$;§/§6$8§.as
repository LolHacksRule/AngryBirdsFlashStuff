package §<$;§
{
   import §&!v§.Image;
   import §-"+§.Texture;
   import flash.utils.Dictionary;
   
   public class §6$8§
   {
       
      
      private var §9$0§:Texture;
      
      private var §2!S§:int;
      
      private var §?""§:Number;
      
      private var §"#T§:Number;
      
      private var §9#I§:Number;
      
      private var §>$4§:Dictionary;
      
      public function §6$8§(param1:int, param2:Texture, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.§2!S§ = param1;
         this.§9$0§ = param2;
         this.§?""§ = param3;
         this.§"#T§ = param4;
         this.§9#I§ = param5;
         this.§>$4§ = null;
      }
      
      public function §8"5§(param1:int, param2:Number) : void
      {
         if(this.§>$4§ == null)
         {
            this.§>$4§ = new Dictionary();
         }
         this.§>$4§[param1] = param2;
      }
      
      public function §`!>§(param1:int) : Number
      {
         if(this.§>$4§ == null || this.§>$4§[param1] == undefined)
         {
            return 0;
         }
         return this.§>$4§[param1];
      }
      
      public function §3!z§() : Image
      {
         return new Image(this.§9$0§);
      }
      
      public function get §#H§() : int
      {
         return this.§2!S§;
      }
      
      public function get xOffset() : Number
      {
         return this.§?""§;
      }
      
      public function get yOffset() : Number
      {
         return this.§"#T§;
      }
      
      public function get §[!g§() : Number
      {
         return this.§9#I§;
      }
      
      public function get texture() : Texture
      {
         return this.§9$0§;
      }
      
      public function get width() : Number
      {
         return this.§9$0§.width;
      }
      
      public function get height() : Number
      {
         return this.§9$0§.height;
      }
   }
}
