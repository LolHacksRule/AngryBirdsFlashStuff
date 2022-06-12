package §5h§
{
   import §-!5§.GhostObject;
   import §-=§.§8"1§;
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §1!N§.§#!g§;
   import §7"1§.§%W§;
   import §@!i§.§%Q§;
   import §^Q§.Texture;
   import com.rovio.assets.§!"'§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §,! §
   {
       
      
      private var §+F§:§%Q§;
      
      private var §9"6§:§+I§;
      
      private var §`!&§:Point;
      
      private var §5§:Dictionary;
      
      private var §6!'§:MovieClip;
      
      public function §,! §()
      {
         this.§5§ = new Dictionary();
         super();
      }
      
      public function dispose() : void
      {
         this.§^!v§();
         this.§+F§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         this.§^!v§();
         for(_loc1_ in this.§5§)
         {
            if((_loc1_ as GhostObject).§7h§)
            {
               if((_loc1_ as GhostObject).object.§'!%§())
               {
                  (_loc1_ as GhostObject).object.§'!%§().visible = true;
               }
               §%W§.§5"8§.objects.§3$§.removeChild(this.§5§[_loc1_]);
            }
         }
      }
      
      public function init(param1:Vector.<GhostObject>) : void
      {
         this.§%!s§(param1);
         this.§1!c§(param1);
      }
      
      private function §%!s§(param1:Vector.<GhostObject>) : void
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
         _loc8_ = §!"'§.§%!Q§("BluePrint");
         this.§6!'§ = new _loc8_();
         _loc9_ = new Bitmap(new BitmapData(_loc2_.width,_loc2_.height,true,0));
         _loc10_ = new Matrix();
         _loc11_ = this.§6!'§.width / _loc2_.width;
         _loc12_ = this.§6!'§.height / _loc2_.height;
         _loc10_.scale(1 / _loc11_,1 / _loc12_);
         _loc6_.bitmapData.draw(this.§6!'§,_loc10_);
         _loc13_ = new Bitmap(new BitmapData(_loc2_.width / _loc7_,_loc2_.height / _loc7_,true,0));
         for each(_loc3_ in param1)
         {
            (_loc15_ = new Bitmap(§%W§.§5"8§.§="!§.§!5§(_loc3_.name),"auto",true)).filters = [new GlowFilter(_loc3_.borderColor,1,10,10,10)];
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
         §#!g§.§with§(_loc13_.bitmapData,§#!g§.§+!D§.bitmapData);
         _loc6_.bitmapData.draw(_loc13_);
         _loc14_ = §%W§.§5"8§.§="!§.§,!d§(_loc6_.bitmapData);
         this.§+F§ = new §%Q§(_loc14_);
         this.§+F§.x = _loc2_.x;
         this.§+F§.y = _loc2_.y;
         this.§+F§.scaleX = _loc7_;
         this.§+F§.scaleY = _loc7_;
         this.§`!&§ = new Point(_loc2_.x,_loc2_.y);
      }
      
      private function §1!c§(param1:Vector.<GhostObject>) : void
      {
         var _loc2_:GhostObject = null;
         var _loc3_:BitmapData = null;
         var _loc4_:Texture = null;
         var _loc5_:§%Q§ = null;
         var _loc6_:Number = NaN;
         for each(_loc2_ in param1)
         {
            if(this.§5§[_loc2_] == undefined)
            {
               _loc3_ = §%W§.§5"8§.§="!§.§!5§(_loc2_.name);
               _loc4_ = §%W§.§5"8§.§="!§.§,!d§(_loc3_);
               (_loc5_ = new §%Q§(_loc4_)).name = _loc2_.name;
               _loc5_.rotation = _loc2_.rotation;
               _loc5_.x = _loc2_.x;
               _loc5_.y = _loc2_.y;
               _loc5_.alpha = 0.5;
               _loc6_ = _loc2_.sprite.rotation;
               _loc2_.sprite.rotation = 0;
               _loc5_.pivotX = -_loc2_.sprite.width / 2;
               _loc5_.pivotY = -_loc2_.sprite.height / 2;
               _loc2_.sprite.rotation = _loc6_;
               this.§5§[_loc2_] = _loc5_;
            }
            _loc2_.addEventListener(§8"1§.CHANGE,this.§`!§);
         }
      }
      
      private function §`!§(param1:§8"1§) : void
      {
         var _loc2_:GhostObject = param1.target as GhostObject;
         if(_loc2_.§7h§)
         {
            §%W§.§5"8§.objects.§3$§.addChildAt(this.§5§[_loc2_],1);
            _loc2_.object.§'!%§().visible = false;
         }
      }
      
      public function §44§() : void
      {
         if(this.§+F§)
         {
            §%W§.§5"8§.objects.§3$§.addChildAt(this.§+F§,0);
            this.§+F§.x = this.§`!&§.x;
            this.§+F§.y = this.§`!&§.y;
         }
      }
      
      public function §4k§() : void
      {
         if(this.§+F§ && this.§+F§.parent)
         {
            if(!this.§9"6§)
            {
               this.§9"6§ = §-!M§.§ "!§.§+d§(this.§+F§,{"y":this.§+F§.height},{"y":this.§+F§.y},0.8,§-!M§.§62§);
               this.§9"6§.onComplete = this.§^!v§;
               this.§9"6§.play();
            }
            else
            {
               this.§^!v§();
            }
         }
      }
      
      private function §^!v§() : void
      {
         §%W§.§5"8§.objects.§3$§.removeChild(this.§+F§);
      }
   }
}
