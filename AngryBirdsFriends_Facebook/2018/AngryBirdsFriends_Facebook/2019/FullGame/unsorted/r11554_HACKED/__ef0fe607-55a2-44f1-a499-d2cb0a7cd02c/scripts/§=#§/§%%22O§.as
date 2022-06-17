package §=#§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §%"O§ extends Sprite
   {
      
      public static var §5!,§:§%#k§;
       
      
      protected var §4"9§:DisplayObjectContainer;
      
      public var §'!j§:String;
      
      protected var §<"K§:Boolean;
      
      private var §&#q§:int;
      
      public function §%"O§(param1:String, param2:String, param3:Boolean = false)
      {
         super();
         this.§<"K§ = param3;
         switch(param2)
         {
            case §1!"§.§,!z§:
               this.§&#q§ = 100;
               break;
            case §1!"§.NORMAL:
               this.§&#q§ = 100;
               break;
            case §1!"§.§+$=§:
            case §1!"§.§'"O§:
               this.§&#q§ = 50;
               break;
            default:
               this.§&#q§ = int(param2);
         }
         if(param1.length > 0)
         {
            this.§'!j§ = param1;
            this.§&$D§(param1);
         }
      }
      
      public function §?"H§() : int
      {
         return this.§&#q§;
      }
      
      private function §&$D§(param1:String) : void
      {
         this.§'!j§ = param1;
         if(this.§4"9§ == null)
         {
            this.§4"9§ = new Sprite();
         }
         while(this.§4"9§.numChildren > 0)
         {
            this.§4"9§.removeChildAt(0);
         }
         this.sendAvatarToRenderer();
      }
      
      public function dispose() : void
      {
      }
      
      protected function sendAvatarToRenderer() : void
      {
         §5!,§.render(this.§'!j§,this.renderAvatar,this.§?"H§(),this.§<"K§);
      }
      
      public function renderAvatar(param1:BitmapData, param2:MovieClip) : void
      {
         if(this.§4"9§ == null)
         {
            this.§4"9§ = new Sprite();
         }
         while(this.§4"9§.numChildren > 0)
         {
            this.§4"9§.removeChildAt(0);
         }
         var _loc3_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         this.§4"9§.addChild(_loc3_);
         _loc3_.x = -10;
         _loc3_.y = -10;
         addChild(this.§4"9§);
      }
   }
}
