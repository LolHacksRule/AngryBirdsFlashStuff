package § " §
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §3P§ extends Sprite
   {
      
      public static var §'"=§:§@Y§;
       
      
      protected var §62§:DisplayObjectContainer;
      
      public var §@!0§:String;
      
      protected var §&%§:Boolean;
      
      private var §%" §:int;
      
      public function §3P§(param1:String, param2:String, param3:Boolean = false)
      {
         super();
         this.§&%§ = param3;
         switch(param2)
         {
            case §+!p§.NORMAL:
               this.§%" § = 100;
               break;
            case §+!p§.§'"6§:
               this.§%" § = 50;
               break;
            default:
               this.§%" § = int(param2);
         }
         if(param1.length > 0)
         {
            this.§@!0§ = param1;
            this.§[S§(param1);
         }
      }
      
      public function §#D§() : int
      {
         return this.§%" §;
      }
      
      private function §[S§(param1:String) : void
      {
         this.§@!0§ = param1;
         if(this.§62§ == null)
         {
            this.§62§ = new Sprite();
         }
         while(this.§62§.numChildren > 0)
         {
            this.§62§.removeChildAt(0);
         }
         this.sendAvatarToRenderer();
      }
      
      protected function sendAvatarToRenderer() : void
      {
         §'"=§.render(this.§@!0§,this.renderAvatar,this.§#D§(),this.§&%§);
      }
      
      public function renderAvatar(param1:BitmapData) : void
      {
         if(this.§62§ == null)
         {
            this.§62§ = new Sprite();
         }
         while(this.§62§.numChildren > 0)
         {
            this.§62§.removeChildAt(0);
         }
         var _loc2_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         this.§62§.addChild(_loc2_);
         _loc2_.x = -10;
         _loc2_.y = -10;
         addChild(this.§62§);
      }
   }
}
