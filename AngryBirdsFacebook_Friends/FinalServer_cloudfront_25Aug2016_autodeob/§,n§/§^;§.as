package §,n§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §^;§ extends Sprite
   {
      
      public static var §%"l§:§2m§;
       
      
      protected var §,q§:DisplayObjectContainer;
      
      public var §?D§:String;
      
      protected var §"!H§:Boolean;
      
      private var §55§:int;
      
      public function §^;§(param1:String, param2:String, param3:Boolean = false)
      {
         super();
         this.§"!H§ = param3;
         switch(param2)
         {
            case §+!f§.§2!2§:
               this.§55§ = 100;
               break;
            case §+!f§.NORMAL:
               this.§55§ = 100;
               break;
            case §+!f§.§%#M§:
            case §+!f§.§`#Q§:
               this.§55§ = 50;
               break;
            default:
               this.§55§ = int(param2);
         }
         if(param1.length > 0)
         {
            this.§?D§ = param1;
            this.§,#O§(param1);
         }
      }
      
      public function §[!V§() : int
      {
         return this.§55§;
      }
      
      private function §,#O§(param1:String) : void
      {
         this.§?D§ = param1;
         if(this.§,q§ == null)
         {
            this.§,q§ = new Sprite();
         }
         while(this.§,q§.numChildren > 0)
         {
            this.§,q§.removeChildAt(0);
         }
         this.sendAvatarToRenderer();
      }
      
      public function dispose() : void
      {
      }
      
      protected function sendAvatarToRenderer() : void
      {
         §%"l§.render(this.§?D§,this.renderAvatar,this.§[!V§(),this.§"!H§);
      }
      
      public function renderAvatar(param1:BitmapData, param2:MovieClip) : void
      {
         if(this.§,q§ == null)
         {
            this.§,q§ = new Sprite();
         }
         while(this.§,q§.numChildren > 0)
         {
            this.§,q§.removeChildAt(0);
         }
         var _loc3_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         this.§,q§.addChild(_loc3_);
         _loc3_.x = -10;
         _loc3_.y = -10;
         addChild(this.§,q§);
      }
   }
}
