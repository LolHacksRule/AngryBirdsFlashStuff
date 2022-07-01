package §-" §
{
   import §"!0§.§"!5§;
   import §"!0§.§;!5§;
   import §,m§.§?"%§;
   import §3!U§.Texture;
   import §4L§.GhostObject;
   import §]!2§.§,!n§;
   import §`%§.§8!0§;
   import com.rovio.assets.§%"4§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import §true§.§,!6§;
   
   public class § 0§
   {
       
      
      private var §[u§:§,!n§;
      
      private var §=!n§:§;!5§;
      
      private var § R§:Point;
      
      private var §-_§:Dictionary;
      
      private var § !h§:MovieClip;
      
      public function § 0§()
      {
         this.§-_§ = new Dictionary();
         super();
      }
      
      public function dispose() : void
      {
         this.§!v§();
         this.§[u§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         this.§!v§();
         for(_loc1_ in this.§-_§)
         {
            if((_loc1_ as GhostObject).§>U§)
            {
               if((_loc1_ as GhostObject).object.§2B§())
               {
                  (_loc1_ as GhostObject).object.§2B§().visible = true;
               }
               §8!0§.§?2§.objects.§9t§.removeChild(this.§-_§[_loc1_]);
            }
         }
      }
      
      public function init(param1:Vector.<GhostObject>) : void
      {
         this.§0&§(param1);
         this.§3"§(param1);
      }
      
      private function §0&§(param1:Vector.<GhostObject>) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:GhostObject = null;
         var _loc4_:int = 0;
         var _loc6_:Bitmap = null;
         var _loc7_:Number = NaN;
         var _loc8_:Class = null;
         var _loc9_:Bitmap = null;
         var _loc10_:Matrix = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Bitmap = null;
         var _loc14_:Texture = null;
         var _loc15_:Bitmap = null;
         var _loc16_:Bitmap = null;
         var _loc17_:Point = null;
         var _loc18_:Matrix = null;
         _loc2_ = new Rectangle(param1[0].x,param1[0].y,0,0);
         _loc4_ = 10;
         for each(_loc3_ in param1)
         {
            _loc2_.left = Math.min(_loc2_.left,_loc3_.x - _loc3_.sprite.width / 2 - _loc4_ / 2 - 50);
            _loc2_.top = Math.min(_loc2_.top,_loc3_.y - _loc3_.sprite.height / 2 - _loc4_ / 2 - 50);
            _loc2_.right = Math.max(_loc2_.right,_loc3_.x + _loc3_.sprite.width / 2 + _loc4_ / 2 + 50);
            _loc2_.bottom = Math.max(_loc2_.bottom,_loc3_.y + _loc3_.sprite.height / 2 + _loc4_ / 2 + 50);
         }
         _loc6_ = new Bitmap(new BitmapData(_loc2_.width,_loc2_.height,true,0));
         _loc7_ = Math.max(_loc2_.width / _loc6_.width,_loc2_.height / _loc6_.height);
         _loc8_ = §%"4§.§>!v§("BluePrint");
         this.§ !h§ = new _loc8_();
         _loc9_ = new Bitmap(new BitmapData(_loc2_.width,_loc2_.height,true,0));
         _loc10_ = new Matrix();
         _loc11_ = this.§ !h§.width / _loc2_.width;
         _loc12_ = this.§ !h§.height / _loc2_.height;
         _loc10_.scale(1 / _loc11_,1 / _loc12_);
         _loc6_.bitmapData.draw(this.§ !h§,_loc10_);
         _loc13_ = new Bitmap(new BitmapData(_loc2_.width / _loc7_,_loc2_.height / _loc7_,true,0));
         for each(_loc3_ in param1)
         {
            (_loc15_ = new Bitmap(§8!0§.§?2§.§7<§.§+"#§(_loc3_.name),"auto",true)).filters = [new GlowFilter(_loc3_.borderColor,1,_loc4_,_loc4_,10)];
            _loc16_ = new Bitmap(new BitmapData(_loc15_.width + _loc4_,_loc15_.height + _loc4_,true,0));
            _loc15_.x = _loc4_ / 2;
            _loc15_.y = _loc4_ / 2;
            _loc16_.bitmapData.draw(_loc15_,_loc15_.transform.matrix);
            _loc15_.filters = [];
            _loc16_.bitmapData.draw(_loc15_,_loc15_.transform.matrix,null,BlendMode.ERASE);
            _loc17_ = new Point(_loc16_.width / 2,_loc16_.height / 2);
            (_loc18_ = new Matrix()).translate(-_loc17_.x,-_loc17_.y);
            _loc18_.rotate(_loc3_.rotation);
            _loc18_.translate(_loc3_.x - _loc2_.left,_loc3_.y - _loc2_.top);
            _loc18_.scale(1 / _loc7_,1 / _loc7_);
            _loc13_.bitmapData.draw(_loc16_,_loc18_);
         }
         §,!6§.§]]§(_loc13_.bitmapData,§,!6§.§'"0§.bitmapData);
         _loc6_.bitmapData.draw(_loc13_);
         _loc14_ = §8!0§.§?2§.§7<§.§>!,§(_loc6_.bitmapData);
         this.§[u§ = new §,!n§(_loc14_);
         this.§[u§.x = _loc2_.x;
         this.§[u§.y = _loc2_.y;
         this.§[u§.scaleX = _loc7_;
         this.§[u§.scaleY = _loc7_;
         this.§ R§ = new Point(_loc2_.x,_loc2_.y);
      }
      
      private function §3"§(param1:Vector.<GhostObject>) : void
      {
         var _loc2_:GhostObject = null;
         var _loc3_:BitmapData = null;
         var _loc4_:Texture = null;
         var _loc5_:§,!n§ = null;
         var _loc6_:Number = NaN;
         for each(_loc2_ in param1)
         {
            if(this.§-_§[_loc2_] == undefined)
            {
               _loc3_ = §8!0§.§?2§.§7<§.§+"#§(_loc2_.name);
               _loc4_ = §8!0§.§?2§.§7<§.§>!,§(_loc3_);
               (_loc5_ = new §,!n§(_loc4_)).name = _loc2_.name;
               _loc5_.rotation = _loc2_.rotation;
               _loc5_.x = _loc2_.x;
               _loc5_.y = _loc2_.y;
               _loc5_.alpha = 0.5;
               _loc6_ = _loc2_.sprite.rotation;
               _loc2_.sprite.rotation = 0;
               _loc5_.pivotX = -_loc2_.sprite.width / 2;
               _loc5_.pivotY = -_loc2_.sprite.height / 2;
               _loc2_.sprite.rotation = _loc6_;
               this.§-_§[_loc2_] = _loc5_;
            }
            _loc2_.addEventListener(§?"%§.CHANGE,this.§^"2§);
         }
      }
      
      private function §^"2§(param1:§?"%§) : void
      {
         var _loc2_:GhostObject = param1.target as GhostObject;
         if(_loc2_.§>U§)
         {
            §8!0§.§?2§.objects.§9t§.addChild(this.§-_§[_loc2_]);
            _loc2_.object.§2B§().visible = false;
         }
      }
      
      public function §&!=§() : void
      {
         if(this.§[u§)
         {
            §8!0§.§?2§.objects.§9t§.addChildAt(this.§[u§,0);
            this.§[u§.x = this.§ R§.x;
            this.§[u§.y = this.§ R§.y;
         }
      }
      
      public function §#!O§() : void
      {
         if(this.§[u§ && this.§[u§.parent)
         {
            if(!this.§=!n§)
            {
               this.§=!n§ = §"!5§.§9j§.§4!p§(this.§[u§,{"y":this.§[u§.height},{"y":this.§[u§.y},0.8,§"!5§.§;!D§);
               this.§=!n§.onComplete = this.§!v§;
               this.§=!n§.play();
            }
            else
            {
               this.§!v§();
            }
         }
      }
      
      private function §!v§() : void
      {
         §8!0§.§?2§.objects.§9t§.removeChild(this.§[u§);
      }
   }
}
