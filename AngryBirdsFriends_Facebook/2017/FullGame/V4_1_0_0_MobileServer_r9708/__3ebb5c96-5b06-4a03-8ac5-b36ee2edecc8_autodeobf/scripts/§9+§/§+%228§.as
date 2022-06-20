package §9+§
{
   import §&!v§.Image;
   import §&!v§.Sprite;
   import §-"+§.Texture;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §+"8§ extends Sprite
   {
       
      
      private var §0#[§:Point;
      
      private var §9$0§:Texture;
      
      function §+"8§(param1:Context3D)
      {
         var _loc3_:Image = null;
         super();
         this.§0#[§ = new Point();
         this.§9$0§ = this.createTexture(param1);
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new Image(this.§9$0§);
            _loc3_.pivotX = this.§9$0§.width / 2;
            _loc3_.pivotY = this.§9$0§.height / 2;
            _loc3_.§ !$§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§9$0§.dispose();
         super.dispose();
      }
      
      public function §<d§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§0#[§.x += param1 - this.§3"9§.x;
            this.§0#[§.y += param2 - this.§3"9§.y;
         }
         this.§3"9§.x = param1;
         this.§3"9§.y = param2;
         this.§0!Y§.x = 2 * this.§0#[§.x - param1;
         this.§0!Y§.y = 2 * this.§0#[§.y - param2;
      }
      
      public function §4$6§(param1:Number, param2:Number) : void
      {
         this.§0#[§.x = param1;
         this.§0#[§.y = param2;
         this.§<d§(this.§>$#§,this.§6Q§);
      }
      
      private function createTexture(param1:Context3D) : Texture
      {
         var _loc2_:Number = Starling.§7O§;
         var _loc3_:Number = 12 * _loc2_;
         var _loc4_:int = 32 * _loc2_;
         var _loc5_:int = 32 * _loc2_;
         var _loc6_:Number = 1.5 * _loc2_;
         var _loc7_:Shape;
         (_loc7_ = new Shape()).graphics.lineStyle(_loc6_,0,0.3);
         _loc7_.graphics.drawCircle(_loc4_ / 2,_loc5_ / 2,_loc3_ + _loc6_);
         _loc7_.graphics.beginFill(16777215,0.4);
         _loc7_.graphics.lineStyle(_loc6_,16777215);
         _loc7_.graphics.drawCircle(_loc4_ / 2,_loc5_ / 2,_loc3_);
         _loc7_.graphics.endFill();
         var _loc8_:BitmapData;
         (_loc8_ = new BitmapData(_loc4_,_loc5_,true,0)).draw(_loc7_);
         return Texture.§!"I§(param1,_loc8_,false,false,_loc2_);
      }
      
      private function get §3"9§() : Image
      {
         return getChildAt(0) as Image;
      }
      
      private function get §0!Y§() : Image
      {
         return getChildAt(1) as Image;
      }
      
      public function get §>$#§() : Number
      {
         return this.§3"9§.x;
      }
      
      public function get §6Q§() : Number
      {
         return this.§3"9§.y;
      }
      
      public function get §0#M§() : Number
      {
         return this.§0!Y§.x;
      }
      
      public function get §6#P§() : Number
      {
         return this.§0!Y§.y;
      }
   }
}
