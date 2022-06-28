package §5!'§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class § !Q§ extends Sprite
   {
      
      public static var sAvatarRenderer:§^E§;
       
      
      private var §]!Q§:DisplayObjectContainer;
      
      public var §[5§:String;
      
      private var §7!7§:Boolean;
      
      private var § S§:int;
      
      public function § !Q§(avatarString:String, imageSize:String, ignoreBackground:Boolean = false)
      {
         super();
         this.§7!7§ = ignoreBackground;
         switch(imageSize)
         {
            case §>Y§.NORMAL:
               this.§ S§ = 100;
               break;
            case §>Y§.SQUARE:
               this.§ S§ = 50;
               break;
            default:
               this.§ S§ = int(imageSize);
         }
         if(avatarString.length > 0)
         {
            this.§[5§ = avatarString;
            this.§2!-§(avatarString);
         }
      }
      
      public function §%P§() : int
      {
         return this.§ S§;
      }
      
      private function §2!-§(avatarString:String) : void
      {
         if(this.§]!Q§ == null)
         {
            this.§]!Q§ = new Sprite();
         }
         while(this.§]!Q§.numChildren > 0)
         {
            this.§]!Q§.removeChildAt(0);
         }
         sAvatarRenderer.render(avatarString,this.§&!M§,this.§%P§(),this.§7!7§);
      }
      
      public function §&!M§(bitmapData:BitmapData) : void
      {
         var bitmap:Bitmap = new Bitmap(bitmapData,PixelSnapping.ALWAYS,true);
         this.§]!Q§.addChild(bitmap);
         bitmap.x = -10;
         bitmap.y = -10;
         addChild(this.§]!Q§);
      }
   }
}
