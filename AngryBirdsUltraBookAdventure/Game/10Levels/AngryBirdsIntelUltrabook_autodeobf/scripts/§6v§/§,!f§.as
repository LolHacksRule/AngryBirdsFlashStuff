package §6v§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §,!f§ extends Sprite
   {
      
      public static var sAvatarRenderer:§ ![§;
       
      
      private var §=!G§:DisplayObjectContainer;
      
      public var §-!%§:String;
      
      private var §7!U§:Boolean;
      
      private var §'I§:int;
      
      public function §,!f§(avatarString:String, imageSize:String, ignoreBackground:Boolean = false)
      {
         super();
         this.§7!U§ = ignoreBackground;
         switch(imageSize)
         {
            case §5!D§.NORMAL:
               this.§'I§ = 100;
               break;
            case §5!D§.SQUARE:
               this.§'I§ = 50;
               break;
            default:
               this.§'I§ = int(imageSize);
         }
         if(avatarString.length > 0)
         {
            this.§-!%§ = avatarString;
            this.§]!^§(avatarString);
         }
      }
      
      public function §&F§() : int
      {
         return this.§'I§;
      }
      
      private function §]!^§(avatarString:String) : void
      {
         if(this.§=!G§ == null)
         {
            this.§=!G§ = new Sprite();
         }
         while(this.§=!G§.numChildren > 0)
         {
            this.§=!G§.removeChildAt(0);
         }
         sAvatarRenderer.render(avatarString,this.§<F§,this.§&F§(),this.§7!U§);
      }
      
      public function §<F§(bitmapData:BitmapData) : void
      {
         var bitmap:Bitmap = new Bitmap(bitmapData,PixelSnapping.ALWAYS,true);
         this.§=!G§.addChild(bitmap);
         bitmap.x = -10;
         bitmap.y = -10;
         addChild(this.§=!G§);
      }
   }
}
