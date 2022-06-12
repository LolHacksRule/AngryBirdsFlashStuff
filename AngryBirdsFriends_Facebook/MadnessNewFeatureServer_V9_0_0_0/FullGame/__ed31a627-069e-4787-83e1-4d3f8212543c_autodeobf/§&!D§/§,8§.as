package §&!D§
{
   import §"#z§.Texture;
   import §6#H§.Image;
   import flash.utils.Dictionary;
   
   public class §,8§
   {
       
      
      private var §;!D§:Texture;
      
      private var §,#A§:int;
      
      private var §""f§:Number;
      
      private var §8",§:Number;
      
      private var §?0§:Number;
      
      private var §6#&§:Dictionary;
      
      public function §,8§(param1:int, param2:Texture, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.§,#A§ = param1;
         this.§;!D§ = param2;
         this.§""f§ = param3;
         this.§8",§ = param4;
         this.§?0§ = param5;
         this.§6#&§ = null;
      }
      
      public function §?#b§(param1:int, param2:Number) : void
      {
         if(this.§6#&§ == null)
         {
            this.§6#&§ = new Dictionary();
         }
         this.§6#&§[param1] = param2;
      }
      
      public function §3#N§(param1:int) : Number
      {
         if(this.§6#&§ == null || this.§6#&§[param1] == undefined)
         {
            return 0;
         }
         return this.§6#&§[param1];
      }
      
      public function §5[§() : Image
      {
         return new Image(this.§;!D§);
      }
      
      public function get §@!?§() : int
      {
         return this.§,#A§;
      }
      
      public function get xOffset() : Number
      {
         return this.§""f§;
      }
      
      public function get yOffset() : Number
      {
         return this.§8",§;
      }
      
      public function get §5!b§() : Number
      {
         return this.§?0§;
      }
      
      public function get texture() : Texture
      {
         return this.§;!D§;
      }
      
      public function get width() : Number
      {
         return this.§;!D§.width;
      }
      
      public function get height() : Number
      {
         return this.§;!D§.height;
      }
   }
}
