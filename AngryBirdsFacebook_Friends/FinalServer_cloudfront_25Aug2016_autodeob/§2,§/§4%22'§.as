package §2,§
{
   import §1&§.Texture;
   import §9$§.Image;
   import flash.utils.Dictionary;
   
   public class §4"'§
   {
       
      
      private var §3!L§:Texture;
      
      private var §]J§:int;
      
      private var §5E§:Number;
      
      private var §+"-§:Number;
      
      private var §;!+§:Number;
      
      private var §1P§:Dictionary;
      
      public function §4"'§(param1:int, param2:Texture, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.§]J§ = param1;
         this.§3!L§ = param2;
         this.§5E§ = param3;
         this.§+"-§ = param4;
         this.§;!+§ = param5;
         this.§1P§ = null;
      }
      
      public function § #b§(param1:int, param2:Number) : void
      {
         if(this.§1P§ == null)
         {
            this.§1P§ = new Dictionary();
         }
         this.§1P§[param1] = param2;
      }
      
      public function §9!u§(param1:int) : Number
      {
         if(this.§1P§ == null || this.§1P§[param1] == undefined)
         {
            return 0;
         }
         return this.§1P§[param1];
      }
      
      public function §,!@§() : Image
      {
         return new Image(this.§3!L§);
      }
      
      public function get §>h§() : int
      {
         return this.§]J§;
      }
      
      public function get xOffset() : Number
      {
         return this.§5E§;
      }
      
      public function get yOffset() : Number
      {
         return this.§+"-§;
      }
      
      public function get §,"y§() : Number
      {
         return this.§;!+§;
      }
      
      public function get texture() : Texture
      {
         return this.§3!L§;
      }
      
      public function get width() : Number
      {
         return this.§3!L§.width;
      }
      
      public function get height() : Number
      {
         return this.§3!L§.height;
      }
   }
}
