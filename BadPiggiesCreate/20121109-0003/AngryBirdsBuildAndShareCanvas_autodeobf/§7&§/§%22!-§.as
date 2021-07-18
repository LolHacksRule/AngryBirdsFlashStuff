package §7&§
{
   import §;"7§.§="<§;
   import com.rovio.assets.§69§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class §"!-§ extends Sprite
   {
      
      private static const §%!P§:int = 30;
       
      
      private const §-+§:Number = 0.8;
      
      private const §'d§:Number = 0.3;
      
      private var §"!w§:Boolean;
      
      private var §var§:Bitmap;
      
      private var § !S§:DisplayObject;
      
      private var §"!r§:DisplayObject;
      
      private var §@F§:String;
      
      public function §"!-§(param1:String, param2:Boolean)
      {
         super();
         this.§"!w§ = param2;
         var _loc3_:BitmapData = §="<§.§[E§.§`d§(param1);
         this.§var§ = new Bitmap(_loc3_,"auto",true);
         this.§var§.smoothing = true;
         this.§var§.width = Math.min(this.§var§.width,§%!P§);
         this.§var§.scaleY = this.§var§.scaleX;
         var _loc4_:Class = §69§.§ 0§("checkMark");
         this.§ !S§ = new _loc4_();
         var _loc5_:Class = §69§.§ 0§("crossMark");
         this.§"!r§ = new _loc5_();
         this.§@F§ = param1;
         addChild(this.§var§);
         this.§ !S§.x = this.§var§.width / 2;
         this.§ !S§.y = this.§var§.height / 2;
         this.§"!r§.x = this.§var§.width / 2;
         this.§"!r§.y = this.§var§.height / 2;
         addChild(this.§ !S§);
         addChild(this.§"!r§);
      }
      
      public function get §"">§() : Boolean
      {
         return this.§"!w§;
      }
      
      public function get §#!+§() : String
      {
         return this.§@F§;
      }
      
      public function §2!T§(param1:Boolean) : void
      {
         this.§ !S§.visible = param1;
         this.§"!r§.visible = !this.§"!w§ && !param1;
         this.§var§.alpha = !!param1 ? Number(this.§'d§) : Number(this.§-+§);
      }
      
      public function get §^8§() : Boolean
      {
         return this.§ !S§.visible;
      }
   }
}
