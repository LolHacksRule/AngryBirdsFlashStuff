package §7=§
{
   import §'x§.§?z§;
   import §1!Y§.§8C§;
   import §6!D§.GhostObject;
   import §;!§.§8V§;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import §@!P§.§!"+§;
   import §^i§.Texture;
   import com.rovio.assets.§]!S§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §2!a§
   {
       
      
      private var §8!w§:§8C§;
      
      private var §#M§:§8!K§;
      
      private var §7P§:Point;
      
      private var §1"6§:Dictionary;
      
      private var §]"0§:MovieClip;
      
      public function §2!a§()
      {
         this.§1"6§ = new Dictionary();
         super();
      }
      
      public function dispose() : void
      {
         this.§@!!§();
         this.§8!w§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         this.§@!!§();
         for(_loc1_ in this.§1"6§)
         {
            if((_loc1_ as GhostObject).§]"2§)
            {
               if((_loc1_ as GhostObject).object.§9!§())
               {
                  (_loc1_ as GhostObject).object.§9!§().visible = true;
               }
               §?z§.§=7§.objects.§3z§.removeChild(this.§1"6§[_loc1_]);
            }
         }
      }
      
      public function init(param1:Vector.<GhostObject>) : void
      {
         this.§57§(param1);
         this.§&1§(param1);
      }
      
      private function §57§(param1:Vector.<GhostObject>) : void
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
         _loc8_ = §]!S§.§?! §("BluePrint");
         this.§]"0§ = new _loc8_();
         _loc9_ = new Bitmap(new BitmapData(_loc2_.width,_loc2_.height,true,0));
         _loc10_ = new Matrix();
         _loc11_ = this.§]"0§.width / _loc2_.width;
         _loc12_ = this.§]"0§.height / _loc2_.height;
         _loc10_.scale(1 / _loc11_,1 / _loc12_);
         _loc6_.bitmapData.draw(this.§]"0§,_loc10_);
         _loc13_ = new Bitmap(new BitmapData(_loc2_.width / _loc7_,_loc2_.height / _loc7_,true,0));
         for each(_loc3_ in param1)
         {
            (_loc15_ = new Bitmap(§?z§.§=7§.§while§.§#"6§(_loc3_.name),"auto",true)).filters = [new GlowFilter(_loc3_.borderColor,1,10,10,10)];
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
         §!"+§.§6!P§(_loc13_.bitmapData,§!"+§.§4!J§.bitmapData);
         _loc6_.bitmapData.draw(_loc13_);
         _loc14_ = §?z§.§=7§.§while§.§[!$§(_loc6_.bitmapData);
         this.§8!w§ = new §8C§(_loc14_);
         this.§8!w§.x = _loc2_.x;
         this.§8!w§.y = _loc2_.y;
         this.§8!w§.scaleX = _loc7_;
         this.§8!w§.scaleY = _loc7_;
         this.§7P§ = new Point(_loc2_.x,_loc2_.y);
      }
      
      private function §&1§(param1:Vector.<GhostObject>) : void
      {
         var _loc2_:GhostObject = null;
         var _loc3_:BitmapData = null;
         var _loc4_:Texture = null;
         var _loc5_:§8C§ = null;
         var _loc6_:Number = NaN;
         for each(_loc2_ in param1)
         {
            if(this.§1"6§[_loc2_] == undefined)
            {
               _loc3_ = §?z§.§=7§.§while§.§#"6§(_loc2_.name);
               _loc4_ = §?z§.§=7§.§while§.§[!$§(_loc3_);
               (_loc5_ = new §8C§(_loc4_)).name = _loc2_.name;
               _loc5_.rotation = _loc2_.rotation;
               _loc5_.x = _loc2_.x;
               _loc5_.y = _loc2_.y;
               _loc5_.alpha = 0.5;
               _loc6_ = _loc2_.sprite.rotation;
               _loc2_.sprite.rotation = 0;
               _loc5_.pivotX = -_loc2_.sprite.width / 2;
               _loc5_.pivotY = -_loc2_.sprite.height / 2;
               _loc2_.sprite.rotation = _loc6_;
               this.§1"6§[_loc2_] = _loc5_;
            }
            _loc2_.addEventListener(§8V§.CHANGE,this.§-!b§);
         }
      }
      
      private function §-!b§(param1:§8V§) : void
      {
         var _loc2_:GhostObject = param1.target as GhostObject;
         if(_loc2_.§]"2§)
         {
            §?z§.§=7§.objects.§3z§.addChildAt(this.§1"6§[_loc2_],1);
            _loc2_.object.§9!§().visible = false;
         }
      }
      
      public function §"!z§() : void
      {
         if(this.§8!w§)
         {
            §?z§.§=7§.objects.§3z§.addChildAt(this.§8!w§,0);
            this.§8!w§.x = this.§7P§.x;
            this.§8!w§.y = this.§7P§.y;
         }
      }
      
      public function §^"!§() : void
      {
         if(this.§8!w§ && this.§8!w§.parent)
         {
            if(!this.§#M§)
            {
               this.§#M§ = §%!Z§.§if §.§"<§(this.§8!w§,{"y":this.§8!w§.height},{"y":this.§8!w§.y},0.8,§%!Z§.§!!B§);
               this.§#M§.onComplete = this.§@!!§;
               this.§#M§.play();
            }
            else
            {
               this.§@!!§();
            }
         }
      }
      
      private function §@!!§() : void
      {
         §?z§.§=7§.objects.§3z§.removeChild(this.§8!w§);
      }
   }
}
