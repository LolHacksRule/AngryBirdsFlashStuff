package starling.events
{
   import §&!]§.§#[§;
   import §&!]§.Sprite;
   import §9"@§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §`=§ extends Sprite
   {
      
      private static var §"!s§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §0[§:Point;
      
      private var §3!2§:Texture;
      
      function §`=§(param1:Context3D)
      {
         var _loc3_:§#[§ = null;
         super();
         this.§0[§ = new Point();
         this.§3!2§ = Texture.§4w§(param1,new §"!s§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §#[§(this.§3!2§);
            _loc3_.pivotX = this.§3!2§.width / 2;
            _loc3_.pivotY = this.§3!2§.height / 2;
            _loc3_.§="C§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§3!2§.dispose();
         super.dispose();
      }
      
      public function §1!8§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§0[§.x += param1 - this.§#!`§.x;
            this.§0[§.y += param2 - this.§#!`§.y;
         }
         this.§#!`§.x = param1;
         this.§#!`§.y = param2;
         this.§;!$§.x = 2 * this.§0[§.x - param1;
         this.§;!$§.y = 2 * this.§0[§.y - param2;
      }
      
      public function §!q§(param1:Number, param2:Number) : void
      {
         this.§0[§.x = param1;
         this.§0[§.y = param2;
         this.§1!8§(this.§ !J§,this.§@r§);
      }
      
      private function get §#!`§() : §#[§
      {
         return getChildAt(0) as §#[§;
      }
      
      private function get §;!$§() : §#[§
      {
         return getChildAt(1) as §#[§;
      }
      
      public function get § !J§() : Number
      {
         return this.§#!`§.x;
      }
      
      public function get §@r§() : Number
      {
         return this.§#!`§.y;
      }
      
      public function get §5!o§() : Number
      {
         return this.§;!$§.x;
      }
      
      public function get §9!3§() : Number
      {
         return this.§;!$§.y;
      }
   }
}
