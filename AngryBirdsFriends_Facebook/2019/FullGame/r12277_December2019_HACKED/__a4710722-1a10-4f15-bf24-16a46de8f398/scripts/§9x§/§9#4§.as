package §9x§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §9#4§ extends Sprite
   {
      
      public static var §3U§:§;c§;
       
      
      protected var §5!!§:DisplayObjectContainer;
      
      public var §!Q§:String;
      
      protected var §1$4§:Boolean;
      
      private var § 1§:int;
      
      public function §9#4§(param1:String, param2:String, param3:Boolean = false)
      {
         super();
         this.§1$4§ = param3;
         switch(param2)
         {
            case §7",§.§4$6§:
               this.§ 1§ = 100;
               break;
            case §7",§.NORMAL:
               this.§ 1§ = 100;
               break;
            case §7",§.§1"0§:
            case §7",§.§>z§:
               this.§ 1§ = 50;
               break;
            default:
               this.§ 1§ = int(param2);
         }
         if(param1.length > 0)
         {
            this.§!Q§ = param1;
            this.§29§(param1);
         }
      }
      
      public function §&;§() : int
      {
         return this.§ 1§;
      }
      
      private function §29§(param1:String) : void
      {
         this.§!Q§ = param1;
         if(this.§5!!§ == null)
         {
            this.§5!!§ = new Sprite();
         }
         while(this.§5!!§.numChildren > 0)
         {
            this.§5!!§.removeChildAt(0);
         }
         this.sendAvatarToRenderer();
      }
      
      public function dispose() : void
      {
      }
      
      protected function sendAvatarToRenderer() : void
      {
         §3U§.render(this.§!Q§,this.renderAvatar,this.§&;§(),this.§1$4§);
      }
      
      public function renderAvatar(param1:BitmapData, param2:MovieClip) : void
      {
         if(this.§5!!§ == null)
         {
            this.§5!!§ = new Sprite();
         }
         while(this.§5!!§.numChildren > 0)
         {
            this.§5!!§.removeChildAt(0);
         }
         var _loc3_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         this.§5!!§.addChild(_loc3_);
         _loc3_.x = -10;
         _loc3_.y = -10;
         addChild(this.§5!!§);
      }
   }
}
