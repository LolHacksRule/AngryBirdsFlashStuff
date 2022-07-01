package §`"3§
{
   import §1U§.§"!V§;
   import §3;§.§#!C§;
   import §4!S§.Texture;
   import §;8§.GhostObject;
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   import §?^§.§,!X§;
   import §^I§.§=!+§;
   import com.rovio.assets.§5!+§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §[!-§
   {
       
      
      private var §23§:§=!+§;
      
      private var §4"§:§^F§;
      
      private var §8`§:Point;
      
      private var §-!c§:Dictionary;
      
      private var §'w§:MovieClip;
      
      public function §[!-§()
      {
         this.§-!c§ = new Dictionary();
         super();
      }
      
      public function dispose() : void
      {
         this.§#!u§();
         this.§23§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         this.§#!u§();
         for(_loc1_ in this.§-!c§)
         {
            if((_loc1_ as GhostObject).§implements§)
            {
               if((_loc1_ as GhostObject).object.§]"#§())
               {
                  (_loc1_ as GhostObject).object.§]"#§().visible = true;
               }
               §"!V§.§!j§.objects.§!",§.removeChild(this.§-!c§[_loc1_]);
            }
         }
      }
      
      public function init(param1:Vector.<GhostObject>) : void
      {
         this.§@@§(param1);
         this.§<!x§(param1);
      }
      
      private function §@@§(param1:Vector.<GhostObject>) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:GhostObject = null;
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
         for each(_loc3_ in param1)
         {
            _loc2_.left = Math.min(_loc2_.left,_loc3_.x - _loc3_.sprite.width / 2 - 10 / 2 - 50);
            _loc2_.top = Math.min(_loc2_.top,_loc3_.y - _loc3_.sprite.height / 2 - 10 / 2 - 50);
            _loc2_.right = Math.max(_loc2_.right,_loc3_.x + _loc3_.sprite.width / 2 + 10 / 2 + 50);
            _loc2_.bottom = Math.max(_loc2_.bottom,_loc3_.y + _loc3_.sprite.height / 2 + 10 / 2 + 50);
         }
         _loc6_ = new Bitmap(new BitmapData(_loc2_.width,_loc2_.height,true,0));
         _loc7_ = Math.max(_loc2_.width / _loc6_.width,_loc2_.height / _loc6_.height);
         _loc8_ = §5!+§.§,]§("BluePrint");
         this.§'w§ = new _loc8_();
         _loc9_ = new Bitmap(new BitmapData(_loc2_.width,_loc2_.height,true,0));
         _loc10_ = new Matrix();
         _loc11_ = this.§'w§.width / _loc2_.width;
         _loc12_ = this.§'w§.height / _loc2_.height;
         _loc10_.scale(1 / _loc11_,1 / _loc12_);
         _loc6_.bitmapData.draw(this.§'w§,_loc10_);
         _loc13_ = new Bitmap(new BitmapData(_loc2_.width / _loc7_,_loc2_.height / _loc7_,true,0));
         for each(_loc3_ in param1)
         {
            (_loc15_ = new Bitmap(§"!V§.§!j§.§>=§.§2s§(_loc3_.name),"auto",true)).filters = [new GlowFilter(_loc3_.borderColor,1,10,10,10)];
            _loc16_ = new Bitmap(new BitmapData(_loc15_.width + 10,_loc15_.height + 10,true,0));
            _loc15_.x = 10 / 2;
            _loc15_.y = 10 / 2;
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
         §,!X§.§%!C§(_loc13_.bitmapData,§,!X§.§';§.bitmapData);
         _loc6_.bitmapData.draw(_loc13_);
         _loc14_ = §"!V§.§!j§.§>=§.§extends§(_loc6_.bitmapData);
         this.§23§ = new §=!+§(_loc14_);
         this.§23§.x = _loc2_.x;
         this.§23§.y = _loc2_.y;
         this.§23§.scaleX = _loc7_;
         this.§23§.scaleY = _loc7_;
         this.§8`§ = new Point(_loc2_.x,_loc2_.y);
      }
      
      private function §<!x§(param1:Vector.<GhostObject>) : void
      {
         var _loc2_:GhostObject = null;
         var _loc3_:BitmapData = null;
         var _loc4_:Texture = null;
         var _loc5_:§=!+§ = null;
         var _loc6_:Number = NaN;
         for each(_loc2_ in param1)
         {
            if(this.§-!c§[_loc2_] == undefined)
            {
               _loc3_ = §"!V§.§!j§.§>=§.§2s§(_loc2_.name);
               _loc4_ = §"!V§.§!j§.§>=§.§extends§(_loc3_);
               (_loc5_ = new §=!+§(_loc4_)).name = _loc2_.name;
               _loc5_.rotation = _loc2_.rotation;
               _loc5_.x = _loc2_.x;
               _loc5_.y = _loc2_.y;
               _loc5_.alpha = 0.5;
               _loc6_ = _loc2_.sprite.rotation;
               _loc2_.sprite.rotation = 0;
               _loc5_.pivotX = -_loc2_.sprite.width / 2;
               _loc5_.pivotY = -_loc2_.sprite.height / 2;
               _loc2_.sprite.rotation = _loc6_;
               this.§-!c§[_loc2_] = _loc5_;
            }
            _loc2_.addEventListener(§#!C§.CHANGE,this.§0!J§);
         }
      }
      
      private function §0!J§(param1:§#!C§) : void
      {
         var _loc2_:GhostObject = param1.target as GhostObject;
         if(_loc2_.§implements§)
         {
            §"!V§.§!j§.objects.§!",§.addChildAt(this.§-!c§[_loc2_],1);
            _loc2_.object.§]"#§().visible = false;
         }
      }
      
      public function §29§() : void
      {
         if(this.§23§)
         {
            §"!V§.§!j§.objects.§!",§.addChildAt(this.§23§,0);
            this.§23§.x = this.§8`§.x;
            this.§23§.y = this.§8`§.y;
         }
      }
      
      public function §8h§() : void
      {
         if(this.§23§ && this.§23§.parent)
         {
            if(!this.§4"§)
            {
               this.§4"§ = §<y§.§,l§.§]!C§(this.§23§,{"y":this.§23§.height},{"y":this.§23§.y},0.8,§<y§.§]1§);
               this.§4"§.onComplete = this.§#!u§;
               this.§4"§.play();
            }
            else
            {
               this.§#!u§();
            }
         }
      }
      
      private function §#!u§() : void
      {
         §"!V§.§!j§.objects.§!",§.removeChild(this.§23§);
      }
   }
}
