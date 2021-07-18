package §7&§
{
   import §"_§.§!"8§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §+!-§.§7"#§;
   import §,P§.§'_§;
   import §-&§.GhostObject;
   import §0!%§.Texture;
   import §7t§.§-!7§;
   import com.rovio.assets.§69§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §6!4§
   {
       
      
      private var §]"5§:§7"#§;
      
      private var §-!-§:§=!r§;
      
      private var §"V§:Point;
      
      private var §]!N§:Dictionary;
      
      private var §]!;§:MovieClip;
      
      public function §6!4§()
      {
         this.§]!N§ = new Dictionary();
         super();
      }
      
      public function dispose() : void
      {
         this.§=k§();
         this.§]"5§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         this.§=k§();
         for(_loc1_ in this.§]!N§)
         {
            if((_loc1_ as GhostObject).§%i§)
            {
               if((_loc1_ as GhostObject).object.§#!Q§())
               {
                  (_loc1_ as GhostObject).object.§#!Q§().visible = true;
               }
               §'_§.§=M§.objects.§[!l§.removeChild(this.§]!N§[_loc1_]);
            }
         }
      }
      
      public function init(param1:Vector.<GhostObject>) : void
      {
         this.§6!M§(param1);
         this.§>C§(param1);
      }
      
      private function §6!M§(param1:Vector.<GhostObject>) : void
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
         _loc8_ = §69§.§ 0§("BluePrint");
         this.§]!;§ = new _loc8_();
         _loc9_ = new Bitmap(new BitmapData(_loc2_.width,_loc2_.height,true,0));
         _loc10_ = new Matrix();
         _loc11_ = this.§]!;§.width / _loc2_.width;
         _loc12_ = this.§]!;§.height / _loc2_.height;
         _loc10_.scale(1 / _loc11_,1 / _loc12_);
         _loc6_.bitmapData.draw(this.§]!;§,_loc10_);
         _loc13_ = new Bitmap(new BitmapData(_loc2_.width / _loc7_,_loc2_.height / _loc7_,true,0));
         for each(_loc3_ in param1)
         {
            (_loc15_ = new Bitmap(§'_§.§=M§.§8=§.§`d§(_loc3_.name),"auto",true)).filters = [new GlowFilter(_loc3_.borderColor,1,10,10,10)];
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
         §-!7§.§[s§(_loc13_.bitmapData,§-!7§.§;#§.bitmapData);
         _loc6_.bitmapData.draw(_loc13_);
         _loc14_ = §'_§.§=M§.§8=§.§%N§(_loc6_.bitmapData);
         this.§]"5§ = new §7"#§(_loc14_);
         this.§]"5§.x = _loc2_.x;
         this.§]"5§.y = _loc2_.y;
         this.§]"5§.scaleX = _loc7_;
         this.§]"5§.scaleY = _loc7_;
         this.§"V§ = new Point(_loc2_.x,_loc2_.y);
      }
      
      private function §>C§(param1:Vector.<GhostObject>) : void
      {
         var _loc2_:GhostObject = null;
         var _loc3_:BitmapData = null;
         var _loc4_:Texture = null;
         var _loc5_:§7"#§ = null;
         var _loc6_:Number = NaN;
         for each(_loc2_ in param1)
         {
            if(this.§]!N§[_loc2_] == undefined)
            {
               _loc3_ = §'_§.§=M§.§8=§.§`d§(_loc2_.name);
               _loc4_ = §'_§.§=M§.§8=§.§%N§(_loc3_);
               (_loc5_ = new §7"#§(_loc4_)).name = _loc2_.name;
               _loc5_.rotation = _loc2_.rotation;
               _loc5_.x = _loc2_.x;
               _loc5_.y = _loc2_.y;
               _loc5_.alpha = 0.5;
               _loc6_ = _loc2_.sprite.rotation;
               _loc2_.sprite.rotation = 0;
               _loc5_.pivotX = -_loc2_.sprite.width / 2;
               _loc5_.pivotY = -_loc2_.sprite.height / 2;
               _loc2_.sprite.rotation = _loc6_;
               this.§]!N§[_loc2_] = _loc5_;
            }
            _loc2_.addEventListener(§!"8§.CHANGE,this.§3!'§);
         }
      }
      
      private function §3!'§(param1:§!"8§) : void
      {
         var _loc2_:GhostObject = param1.target as GhostObject;
         if(_loc2_.§%i§)
         {
            §'_§.§=M§.objects.§[!l§.addChildAt(this.§]!N§[_loc2_],1);
            _loc2_.object.§#!Q§().visible = false;
         }
      }
      
      public function §[&§() : void
      {
         if(this.§]"5§)
         {
            §'_§.§=M§.objects.§[!l§.addChildAt(this.§]"5§,0);
            this.§]"5§.x = this.§"V§.x;
            this.§]"5§.y = this.§"V§.y;
         }
      }
      
      public function §?7§() : void
      {
         if(this.§]"5§ && this.§]"5§.parent)
         {
            if(!this.§-!-§)
            {
               this.§-!-§ = §7I§.§[E§.§ ";§(this.§]"5§,{"y":this.§]"5§.height},{"y":this.§]"5§.y},0.8,§7I§.§%"'§);
               this.§-!-§.onComplete = this.§=k§;
               this.§-!-§.play();
            }
            else
            {
               this.§=k§();
            }
         }
      }
      
      private function §=k§() : void
      {
         §'_§.§=M§.objects.§[!l§.removeChild(this.§]"5§);
      }
   }
}
