package §1!N§
{
   import §,!x§.§0!s§;
   import §,!x§.§]S§;
   import §-!5§.GhostObject;
   import §-=§.§8"1§;
   import §2!w§.§8!g§;
   import §3!t§.b2Vec2;
   import §4!#§.§[R§;
   import §7"1§.§%W§;
   import §@!i§.Sprite;
   import §@r§.§3!+§;
   import §^H§.§"!i§;
   import §^H§.§1l§;
   import §^x§.§3!r§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §!!`§
   {
      
      private static const §1c§:int = 15;
       
      
      private var §8!l§;
      
      private var §1!]§;
      
      private var §=!g§:BitmapData;
      
      public function §!!`§(param1:*)
      {
         var _loc2_:§1l§ = null;
         super();
         if(param1 is String)
         {
            _loc2_ = §]S§.§ "!§.§]!c§.§!!=§();
            this.setObject(_loc2_.getItemByName(param1));
            if(this.§1!]§ == null)
            {
               this.setObject(_loc2_.§8!`§().§3"5§(param1));
               if(this.§1!]§)
               {
                  (this.§1!]§ as §"!i§).addEventListener(§8"1§.§--§,this.§[!$§);
               }
            }
         }
         else
         {
            this.setObject(param1);
         }
      }
      
      public function get visible() : Boolean
      {
         if(this.§1!]§ is §"!i§)
         {
            return this.§1!]§.visible && §]S§.§ "!§.§]!c§.§!!=§().§8!`§().isOpen();
         }
         if(this.§1!]§.hasOwnProperty("visible"))
         {
            return this.§1!]§.visible;
         }
         return true;
      }
      
      public function setObject(param1:*) : void
      {
         if(param1 != this.§1!]§)
         {
            this.§1!]§ = param1;
            this.§=!g§ = null;
         }
      }
      
      public function get object() : *
      {
         return this.§1!]§;
      }
      
      private function §[!$§(param1:§8"1§) : void
      {
         this.§8!l§ = this.§1!]§;
         this.§8!l§.removeEventListener(§8"1§.§--§,this.§[!$§);
         this.setObject(§]S§.§ "!§.§<!z§.§?"$§()[0]);
      }
      
      public function get position() : Point
      {
         var _loc1_:Point = null;
         var _loc2_:§"!k§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:§[R§ = null;
         var _loc5_:int = 0;
         var _loc6_:§"!k§ = null;
         var _loc7_:GhostObject = null;
         var _loc8_:Point = null;
         var _loc9_:§3!r§ = null;
         var _loc10_:§"!i§ = null;
         if(this.§1!]§ is §"!k§)
         {
            if(!§0!s§.§ "!§.§in§(this.§1!]§) && !(this.§1!]§ as §"!k§).§1"&§())
            {
               _loc4_ = §]S§.§ "!§.§<" §.§9!8§.objects;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.getObjectCount())
               {
                  if((_loc6_ = §"!k§.§2"5§(_loc4_.getObject(_loc5_))) != this.§1!]§.getObject() && _loc6_.getName() == this.§1!]§.getName() && §0!s§.§ "!§.§in§(_loc6_))
                  {
                     this.setObject(_loc6_);
                     break;
                  }
                  _loc5_++;
               }
            }
            _loc2_ = this.§1!]§ as §"!k§;
            _loc3_ = _loc2_.§2d§();
            if(_loc3_ == null)
            {
               this.setObject(this.§8!l§);
               this.§8!l§.addEventListener(§8"1§.§--§,this.§[!$§);
               this.§8!l§ = null;
               return this.position;
            }
            _loc1_ = §%W§.§5"8§.§!C§(_loc3_.x,_loc3_.y);
         }
         else if(this.§1!]§ is GhostObject)
         {
            _loc7_ = this.§1!]§ as GhostObject;
            _loc8_ = new Point(_loc7_.§+!L§,_loc7_.§5"!§);
            _loc1_ = §%W§.§5"8§.§!C§(_loc8_.x,_loc8_.y);
         }
         else if(this.§1!]§ is §3!r§)
         {
            _loc1_ = (_loc9_ = this.§1!]§ as §3!r§).mClip.parent.localToGlobal(new Point(_loc9_.x,_loc9_.y));
         }
         else if(this.§1!]§ is §"!i§)
         {
            _loc1_ = (_loc10_ = this.§1!]§ as §"!i§).parent.localToGlobal(new Point(_loc10_.x,_loc10_.y));
         }
         else if(this.§1!]§ is DisplayObject)
         {
            _loc1_ = this.§1!]§.parent.localToGlobal(new Point(this.§1!]§.x,this.§1!]§.y));
         }
         else if(this.§1!]§ is Point)
         {
            _loc1_ = §%W§.§5"8§.§!C§(this.§1!]§.x,this.§1!]§.y);
         }
         else if(this.§1!]§ is §8!g§)
         {
            _loc1_ = §%W§.§5"8§.§!C§(this.§1!]§.objectPosition.x,this.§1!]§.objectPosition.y);
         }
         return _loc1_;
      }
      
      public function get x() : Number
      {
         return this.position.x;
      }
      
      public function get y() : Number
      {
         return this.position.y;
      }
      
      public function §]!Z§() : BitmapData
      {
         var _loc1_:int = 0;
         var _loc2_:§"!k§ = null;
         var _loc3_:String = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Bitmap = null;
         var _loc6_:Sprite = null;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Matrix = null;
         _loc1_ = 5;
         if(this.§1!]§ is §"!k§)
         {
            _loc2_ = this.§1!]§ as §"!k§;
            _loc3_ = _loc2_.getName();
            _loc4_ = §%W§.§5"8§.§="!§.§!5§(_loc3_);
            _loc5_ = new Bitmap(_loc4_,"auto",true);
            _loc6_ = _loc2_.§'!%§();
            _loc7_ = new Point(_loc5_.width / 2,_loc5_.height / 2);
            _loc8_ = §3!+§.§2"8§;
            (_loc9_ = new Matrix()).translate(-_loc7_.x,-_loc7_.y);
            _loc9_.rotate(_loc6_.rotation);
            _loc9_.scale(_loc8_,_loc8_);
            _loc5_.transform.matrix = _loc9_;
            _loc5_.x += _loc5_.width / 2;
            _loc5_.y += _loc5_.height / 2;
            this.§=!g§ = new BitmapData(_loc5_.width + _loc1_,_loc5_.height + _loc1_,true,0);
            _loc5_.filters = [new GlowFilter(16777215,1,_loc1_,_loc1_,_loc1_)];
            _loc5_.x += _loc1_ / 2;
            _loc5_.y += _loc1_ / 2;
            this.§=!g§.draw(_loc5_,_loc5_.transform.matrix,null,null,null,true);
            _loc5_.filters = [];
            this.§=!g§.draw(_loc5_,_loc5_.transform.matrix,null,BlendMode.ERASE,null,true);
         }
         else
         {
            this.§=!g§ = new BitmapData(1,1);
         }
         return this.§=!g§;
      }
      
      public function get size() : Point
      {
         var _loc1_:Point = new Point();
         var _loc2_:Number = 1;
         if(this.§1!]§ is §"!k§)
         {
            _loc1_ = new Point((this.§1!]§ as §"!k§).§,!w§(),(this.§1!]§ as §"!k§).§'1§());
            _loc2_ = §3!+§.§2"8§;
         }
         else if(this.§1!]§ is GhostObject)
         {
            _loc1_ = new Point((this.§1!]§ as GhostObject).sprite.width,(this.§1!]§ as GhostObject).sprite.height);
            _loc2_ = §3!+§.§2"8§;
         }
         else if(this.§1!]§ is §3!r§)
         {
            _loc1_ = new Point((this.§1!]§ as §3!r§).width,(this.§1!]§ as §3!r§).height);
            _loc2_ = §3!+§.§2"8§;
         }
         else if(this.§1!]§ is §"!i§)
         {
            _loc1_ = new Point(§1c§,§1c§);
         }
         _loc1_.x *= _loc2_;
         _loc1_.y *= _loc2_;
         return _loc1_;
      }
      
      public function get width() : Number
      {
         return this.size.x;
      }
      
      public function get height() : Number
      {
         return this.size.y;
      }
   }
}
