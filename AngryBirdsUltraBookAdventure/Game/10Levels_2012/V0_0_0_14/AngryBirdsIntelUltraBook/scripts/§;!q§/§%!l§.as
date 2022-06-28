package §;!q§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §%!l§ extends Sprite
   {
      
      public static var §9!o§:§^!#§;
       
      
      private var §+!5§:DisplayObjectContainer;
      
      public var §7!-§:String;
      
      private var §-!@§:Boolean;
      
      private var §4>§:int;
      
      public function §%!l§(param1:String, param2:String, param3:Boolean = false)
      {
         super();
         this.§-!@§ = param3;
         switch(param2)
         {
            case §%t§.NORMAL:
               this.§4>§ = 100;
               break;
            case §%t§.§@!#§:
               this.§4>§ = 50;
               break;
            default:
               this.§4>§ = int(param2);
         }
         if(param1.length > 0)
         {
            this.§7!-§ = param1;
            this.§<!1§(param1);
         }
      }
      
      public function §null §() : int
      {
         return this.§4>§;
      }
      
      private function §<!1§(param1:String) : void
      {
         if(this.§+!5§ == null)
         {
            this.§+!5§ = new Sprite();
         }
         while(this.§+!5§.numChildren > 0)
         {
            this.§+!5§.removeChildAt(0);
         }
         §9!o§.render(param1,this.§+!9§,this.§null §(),this.§-!@§);
      }
      
      public function §+!9§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         this.§+!5§.addChild(_loc2_);
         _loc2_.x = -10;
         _loc2_.y = -10;
         addChild(this.§+!5§);
      }
   }
}
