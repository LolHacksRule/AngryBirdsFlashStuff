package §3§
{
   import §%c§.§=!X§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §62§.§0!t§;
   import §7R§.Texture;
   import §7r§.§3`§;
   import §[!_§.GhostObject;
   import com.rovio.assets.§>!]§;
   import §default§.§=!Z§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §^!E§
   {
       
      
      private var §!!M§:§=!Z§;
      
      private var §<Z§:§3^§;
      
      private var §1M§:Point;
      
      private var §`"6§:Dictionary;
      
      private var §+@§:MovieClip;
      
      public function §^!E§()
      {
         this.§`"6§ = new Dictionary();
         super();
      }
      
      public function dispose() : void
      {
         this.§4Q§();
         this.§!!M§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         this.§4Q§();
         for(_loc1_ in this.§`"6§)
         {
            if((_loc1_ as GhostObject).§!6§)
            {
               if((_loc1_ as GhostObject).object.§7M§())
               {
                  (_loc1_ as GhostObject).object.§7M§().visible = true;
               }
               §=!X§.§!'§.objects.§9!X§.removeChild(this.§`"6§[_loc1_]);
            }
         }
      }
      
      public function init(param1:Vector.<GhostObject>) : void
      {
         this.§5!B§(param1);
         this.§%6§(param1);
      }
      
      private function §5!B§(param1:Vector.<GhostObject>) : void
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
         _loc8_ = §>!]§.§1!8§("BluePrint");
         this.§+@§ = new _loc8_();
         _loc9_ = new Bitmap(new BitmapData(_loc2_.width,_loc2_.height,true,0));
         _loc10_ = new Matrix();
         _loc11_ = this.§+@§.width / _loc2_.width;
         _loc12_ = this.§+@§.height / _loc2_.height;
         _loc10_.scale(1 / _loc11_,1 / _loc12_);
         _loc6_.bitmapData.draw(this.§+@§,_loc10_);
         _loc13_ = new Bitmap(new BitmapData(_loc2_.width / _loc7_,_loc2_.height / _loc7_,true,0));
         for each(_loc3_ in param1)
         {
            (_loc15_ = new Bitmap(§=!X§.§!'§.§7!J§.§"k§(_loc3_.name),"auto",true)).filters = [new GlowFilter(_loc3_.borderColor,1,10,10,10)];
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
         §3`§.§ !`§(_loc13_.bitmapData,§3`§.§>K§.bitmapData);
         _loc6_.bitmapData.draw(_loc13_);
         _loc14_ = §=!X§.§!'§.§7!J§.§&#§(_loc6_.bitmapData);
         this.§!!M§ = new §=!Z§(_loc14_);
         this.§!!M§.x = _loc2_.x;
         this.§!!M§.y = _loc2_.y;
         this.§!!M§.scaleX = _loc7_;
         this.§!!M§.scaleY = _loc7_;
         this.§1M§ = new Point(_loc2_.x,_loc2_.y);
      }
      
      private function §%6§(param1:Vector.<GhostObject>) : void
      {
         var _loc2_:GhostObject = null;
         var _loc3_:BitmapData = null;
         var _loc4_:Texture = null;
         var _loc5_:§=!Z§ = null;
         var _loc6_:Number = NaN;
         for each(_loc2_ in param1)
         {
            if(this.§`"6§[_loc2_] == undefined)
            {
               _loc3_ = §=!X§.§!'§.§7!J§.§"k§(_loc2_.name);
               _loc4_ = §=!X§.§!'§.§7!J§.§&#§(_loc3_);
               (_loc5_ = new §=!Z§(_loc4_)).name = _loc2_.name;
               _loc5_.rotation = _loc2_.rotation;
               _loc5_.x = _loc2_.x;
               _loc5_.y = _loc2_.y;
               _loc5_.alpha = 0.5;
               _loc6_ = _loc2_.sprite.rotation;
               _loc2_.sprite.rotation = 0;
               _loc5_.pivotX = -_loc2_.sprite.width / 2;
               _loc5_.pivotY = -_loc2_.sprite.height / 2;
               _loc2_.sprite.rotation = _loc6_;
               this.§`"6§[_loc2_] = _loc5_;
            }
            _loc2_.addEventListener(§0!t§.CHANGE,this.§5!3§);
         }
      }
      
      private function §5!3§(param1:§0!t§) : void
      {
         var _loc2_:GhostObject = param1.target as GhostObject;
         if(_loc2_.§!6§)
         {
            §=!X§.§!'§.objects.§9!X§.addChildAt(this.§`"6§[_loc2_],1);
            _loc2_.object.§7M§().visible = false;
         }
      }
      
      public function §;!K§() : void
      {
         if(this.§!!M§)
         {
            §=!X§.§!'§.objects.§9!X§.addChildAt(this.§!!M§,0);
            this.§!!M§.x = this.§1M§.x;
            this.§!!M§.y = this.§1M§.y;
         }
      }
      
      public function §'k§() : void
      {
         if(this.§!!M§ && this.§!!M§.parent)
         {
            if(!this.§<Z§)
            {
               this.§<Z§ = §7!E§.§2=§.§<!C§(this.§!!M§,{"y":this.§!!M§.height},{"y":this.§!!M§.y},0.8,§7!E§.§#r§);
               this.§<Z§.onComplete = this.§4Q§;
               this.§<Z§.play();
            }
            else
            {
               this.§4Q§();
            }
         }
      }
      
      private function §4Q§() : void
      {
         §=!X§.§!'§.objects.§9!X§.removeChild(this.§!!M§);
      }
   }
}
