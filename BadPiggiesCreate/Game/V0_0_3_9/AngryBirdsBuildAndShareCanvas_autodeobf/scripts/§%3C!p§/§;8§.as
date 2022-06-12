package §<!p§
{
   import §;!<§.§7!f§;
   import com.rovio.assets.§8!q§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class §;8§ extends Sprite
   {
      
      private static const § each§:int = 30;
       
      
      private const §4!h§:Number = 0.8;
      
      private const §[0§:Number = 0.3;
      
      private var § set§:Boolean;
      
      private var §4""§:Bitmap;
      
      private var §%!r§:DisplayObject;
      
      private var § ,§:DisplayObject;
      
      private var §4!J§:String;
      
      public function §;8§(param1:String, param2:Boolean)
      {
         super();
         this.§ set§ = param2;
         var _loc3_:BitmapData = §7!f§.§'!o§.§3!y§(param1);
         this.§4""§ = new Bitmap(_loc3_,"auto",true);
         this.§4""§.smoothing = true;
         this.§4""§.width = Math.min(this.§4""§.width,§ each§);
         this.§4""§.scaleY = this.§4""§.scaleX;
         var _loc4_:Class = §8!q§.§2^§("checkMark");
         this.§%!r§ = new _loc4_();
         var _loc5_:Class = §8!q§.§2^§("crossMark");
         this.§ ,§ = new _loc5_();
         this.§4!J§ = param1;
         addChild(this.§4""§);
         this.§%!r§.x = this.§4""§.width / 2;
         this.§%!r§.y = this.§4""§.height / 2;
         this.§ ,§.x = this.§4""§.width / 2;
         this.§ ,§.y = this.§4""§.height / 2;
         addChild(this.§%!r§);
         addChild(this.§ ,§);
      }
      
      public function get §0! §() : Boolean
      {
         return this.§ set§;
      }
      
      public function get §3!q§() : String
      {
         return this.§4!J§;
      }
      
      public function §`w§(param1:Boolean) : void
      {
         this.§%!r§.visible = param1;
         this.§ ,§.visible = !this.§ set§ && !param1;
         this.§4""§.alpha = !!param1 ? Number(this.§[0§) : Number(this.§4!h§);
      }
      
      public function get §?H§() : Boolean
      {
         return this.§%!r§.visible;
      }
   }
}
