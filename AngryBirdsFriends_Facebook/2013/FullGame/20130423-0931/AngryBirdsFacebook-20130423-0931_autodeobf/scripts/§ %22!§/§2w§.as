package § "!§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §2w§ extends Sprite
   {
      
      public static var §6!w§:§04§;
       
      
      protected var §9"W§:DisplayObjectContainer;
      
      public var §+!Q§:String;
      
      protected var §=U§:Boolean;
      
      private var §'""§:int;
      
      public function §2w§(param1:String, param2:String, param3:Boolean = false)
      {
         super();
         this.§=U§ = param3;
         switch(param2)
         {
            case §!"O§.NORMAL:
               this.§'""§ = 100;
               break;
            case §!"O§.§'"O§:
               this.§'""§ = 50;
               break;
            default:
               this.§'""§ = int(param2);
         }
         if(param1.length > 0)
         {
            this.§+!Q§ = param1;
            this.§7,§(param1);
         }
      }
      
      public function § ^§() : int
      {
         return this.§'""§;
      }
      
      private function §7,§(param1:String) : void
      {
         this.§+!Q§ = param1;
         if(this.§9"W§ == null)
         {
            this.§9"W§ = new Sprite();
         }
         while(this.§9"W§.numChildren > 0)
         {
            this.§9"W§.removeChildAt(0);
         }
         this.sendAvatarToRenderer();
      }
      
      protected function sendAvatarToRenderer() : void
      {
         §6!w§.render(this.§+!Q§,this.renderAvatar,this.§ ^§(),this.§=U§);
      }
      
      public function renderAvatar(param1:BitmapData) : void
      {
         if(this.§9"W§ == null)
         {
            this.§9"W§ = new Sprite();
         }
         while(this.§9"W§.numChildren > 0)
         {
            this.§9"W§.removeChildAt(0);
         }
         var _loc2_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         this.§9"W§.addChild(_loc2_);
         _loc2_.x = -10;
         _loc2_.y = -10;
         addChild(this.§9"W§);
      }
   }
}
