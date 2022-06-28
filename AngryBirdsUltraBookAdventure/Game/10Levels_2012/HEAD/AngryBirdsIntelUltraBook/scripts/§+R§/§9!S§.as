package §+R§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §9!S§ extends Sprite
   {
      
      public static var sAvatarRenderer:§ !a§;
       
      
      private var §+!K§:DisplayObjectContainer;
      
      public var §7!e§:String;
      
      private var §[!Z§:Boolean;
      
      private var §+4§:int;
      
      public function §9!S§(avatarString:String, imageSize:String, ignoreBackground:Boolean = false)
      {
         super();
         this.§[!Z§ = ignoreBackground;
         switch(imageSize)
         {
            case §3!1§.NORMAL:
               this.§+4§ = 100;
               break;
            case §3!1§.SQUARE:
               this.§+4§ = 50;
               break;
            default:
               this.§+4§ = int(imageSize);
         }
         if(avatarString.length > 0)
         {
            this.§7!e§ = avatarString;
            this.§0[§(avatarString);
         }
      }
      
      public function §'!a§() : int
      {
         return this.§+4§;
      }
      
      private function §0[§(avatarString:String) : void
      {
         if(this.§+!K§ == null)
         {
            this.§+!K§ = new Sprite();
         }
         while(this.§+!K§.numChildren > 0)
         {
            this.§+!K§.removeChildAt(0);
         }
         sAvatarRenderer.render(avatarString,this.§0Q§,this.§'!a§(),this.§[!Z§);
      }
      
      public function §0Q§(bitmapData:BitmapData) : void
      {
         var bitmap:Bitmap = new Bitmap(bitmapData,PixelSnapping.ALWAYS,true);
         this.§+!K§.addChild(bitmap);
         bitmap.x = -10;
         bitmap.y = -10;
         addChild(this.§+!K§);
      }
   }
}
