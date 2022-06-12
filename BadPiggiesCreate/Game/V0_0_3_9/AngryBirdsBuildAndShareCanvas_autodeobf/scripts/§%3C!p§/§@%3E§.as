package §<!p§
{
   import §%%§.§3!T§;
   import §3!S§.§%s§;
   import §5!k§.§6"6§;
   import §7q§.§0!§;
   import §8Y§.Texture;
   import §=" §.GhostObject;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import com.rovio.assets.§8!q§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §@>§
   {
       
      
      private var §[[§:§0!§;
      
      private var § §:§^!#§;
      
      private var §[?§:Point;
      
      private var §-F§:Dictionary;
      
      private var §-!O§:MovieClip;
      
      public function §@>§()
      {
         this.§-F§ = new Dictionary();
         super();
      }
      
      public function dispose() : void
      {
         this.§-"7§();
         this.§[[§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         this.§-"7§();
         for(_loc1_ in this.§-F§)
         {
            if((_loc1_ as GhostObject).§=r§)
            {
               if((_loc1_ as GhostObject).object.§4!^§())
               {
                  (_loc1_ as GhostObject).object.§4!^§().visible = true;
               }
               §%s§.§`!f§.objects.§6+§.removeChild(this.§-F§[_loc1_]);
            }
         }
      }
      
      public function init(param1:Vector.<GhostObject>) : void
      {
         this.§>" §(param1);
         this.§?!X§(param1);
      }
      
      private function §>" §(param1:Vector.<GhostObject>) : void
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
         _loc8_ = §8!q§.§2^§("BluePrint");
         this.§-!O§ = new _loc8_();
         _loc9_ = new Bitmap(new BitmapData(_loc2_.width,_loc2_.height,true,0));
         _loc10_ = new Matrix();
         _loc11_ = this.§-!O§.width / _loc2_.width;
         _loc12_ = this.§-!O§.height / _loc2_.height;
         _loc10_.scale(1 / _loc11_,1 / _loc12_);
         _loc6_.bitmapData.draw(this.§-!O§,_loc10_);
         _loc13_ = new Bitmap(new BitmapData(_loc2_.width / _loc7_,_loc2_.height / _loc7_,true,0));
         for each(_loc3_ in param1)
         {
            (_loc15_ = new Bitmap(§%s§.§`!f§.§20§.§3!y§(_loc3_.name),"auto",true)).filters = [new GlowFilter(_loc3_.borderColor,1,10,10,10)];
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
         §3!T§.§&v§(_loc13_.bitmapData,§3!T§.§2K§.bitmapData);
         _loc6_.bitmapData.draw(_loc13_);
         _loc14_ = §%s§.§`!f§.§20§.§>!d§(_loc6_.bitmapData);
         this.§[[§ = new §0!§(_loc14_);
         this.§[[§.x = _loc2_.x;
         this.§[[§.y = _loc2_.y;
         this.§[[§.scaleX = _loc7_;
         this.§[[§.scaleY = _loc7_;
         this.§[?§ = new Point(_loc2_.x,_loc2_.y);
      }
      
      private function §?!X§(param1:Vector.<GhostObject>) : void
      {
         var _loc2_:GhostObject = null;
         var _loc3_:BitmapData = null;
         var _loc4_:Texture = null;
         var _loc5_:§0!§ = null;
         var _loc6_:Number = NaN;
         for each(_loc2_ in param1)
         {
            if(this.§-F§[_loc2_] == undefined)
            {
               _loc3_ = §%s§.§`!f§.§20§.§3!y§(_loc2_.name);
               _loc4_ = §%s§.§`!f§.§20§.§>!d§(_loc3_);
               (_loc5_ = new §0!§(_loc4_)).name = _loc2_.name;
               _loc5_.rotation = _loc2_.rotation;
               _loc5_.x = _loc2_.x;
               _loc5_.y = _loc2_.y;
               _loc5_.alpha = 0.5;
               _loc6_ = _loc2_.sprite.rotation;
               _loc2_.sprite.rotation = 0;
               _loc5_.pivotX = -_loc2_.sprite.width / 2;
               _loc5_.pivotY = -_loc2_.sprite.height / 2;
               _loc2_.sprite.rotation = _loc6_;
               this.§-F§[_loc2_] = _loc5_;
            }
            _loc2_.addEventListener(§6"6§.CHANGE,this.§0!F§);
         }
      }
      
      private function §0!F§(param1:§6"6§) : void
      {
         var _loc2_:GhostObject = param1.target as GhostObject;
         if(_loc2_.§=r§)
         {
            §%s§.§`!f§.objects.§6+§.addChildAt(this.§-F§[_loc2_],1);
            _loc2_.object.§4!^§().visible = false;
         }
      }
      
      public function §'$§() : void
      {
         if(this.§[[§)
         {
            §%s§.§`!f§.objects.§6+§.addChildAt(this.§[[§,0);
            this.§[[§.x = this.§[?§.x;
            this.§[[§.y = this.§[?§.y;
         }
      }
      
      public function §6!p§() : void
      {
         if(this.§[[§ && this.§[[§.parent)
         {
            if(!this.§ §)
            {
               this.§ § = §"g§.§'!o§.§while§(this.§[[§,{"y":this.§[[§.height},{"y":this.§[[§.y},0.8,§"g§.§ try§);
               this.§ §.onComplete = this.§-"7§;
               this.§ §.play();
            }
            else
            {
               this.§-"7§();
            }
         }
      }
      
      private function §-"7§() : void
      {
         §%s§.§`!f§.objects.§6+§.removeChild(this.§[[§);
      }
   }
}
