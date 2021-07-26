package §?!a§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §=4§ extends Sprite
   {
      
      public static var §2#=§:§0!#§;
       
      
      protected var §&"9§:DisplayObjectContainer;
      
      public var §^"5§:String;
      
      protected var §65§:Boolean;
      
      private var §3$1§:int;
      
      public function §=4§(param1:String, param2:String, param3:Boolean = false)
      {
         super();
         this.§65§ = param3;
         switch(param2)
         {
            case §6#b§.§[#+§:
               this.§3$1§ = 100;
               break;
            case §6#b§.NORMAL:
               this.§3$1§ = 100;
               break;
            case §6#b§.§?^§:
            case §6#b§.§""b§:
               this.§3$1§ = 50;
               break;
            default:
               this.§3$1§ = int(param2);
         }
         if(param1.length > 0)
         {
            this.§^"5§ = param1;
            this.§>!#§(param1);
         }
      }
      
      public function § !@§() : int
      {
         return this.§3$1§;
      }
      
      private function §>!#§(param1:String) : void
      {
         this.§^"5§ = param1;
         if(this.§&"9§ == null)
         {
            this.§&"9§ = new Sprite();
         }
         while(this.§&"9§.numChildren > 0)
         {
            this.§&"9§.removeChildAt(0);
         }
         this.sendAvatarToRenderer();
      }
      
      public function dispose() : void
      {
      }
      
      protected function sendAvatarToRenderer() : void
      {
         §2#=§.render(this.§^"5§,this.renderAvatar,this.§ !@§(),this.§65§);
      }
      
      public function renderAvatar(param1:BitmapData, param2:MovieClip) : void
      {
         if(this.§&"9§ == null)
         {
            this.§&"9§ = new Sprite();
         }
         while(this.§&"9§.numChildren > 0)
         {
            this.§&"9§.removeChildAt(0);
         }
         var _loc3_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         this.§&"9§.addChild(_loc3_);
         _loc3_.x = -10;
         _loc3_.y = -10;
         addChild(this.§&"9§);
      }
   }
}
