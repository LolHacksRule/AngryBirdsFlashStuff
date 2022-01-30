package §=%§
{
   import § !R§.GhostObject;
   import § ^§.§0c§;
   import § ^§.§@#§;
   import §1!z§.b2Vec2;
   import §2b§.§"" §;
   import §4!S§.§7!o§;
   import §4!j§.§[!f§;
   import §7!g§.§?!i§;
   import §;W§.§"w§;
   import §;W§.§%!§;
   import §=!<§.§5!U§;
   import §?"&§.§5b§;
   import §`L§.Sprite;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §0L§
   {
      
      private static const §4!l§:int = 15;
       
      
      private var §2s§;
      
      private var §4"3§;
      
      private var §6w§:BitmapData;
      
      public function §0L§(param1:*)
      {
         var _loc2_:§"w§ = null;
         super();
         if(param1 is String)
         {
            _loc2_ = §0c§.§7!?§.§!A§.§2!o§();
            this.setObject(_loc2_.getItemByName(param1));
            if(this.§4"3§ == null)
            {
               this.setObject(_loc2_.§[y§().§]!§(param1));
               if(this.§4"3§)
               {
                  (this.§4"3§ as §%!§).addEventListener(§?!i§.§8!G§,this.§8Z§);
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
         if(this.§4"3§ is §%!§)
         {
            return this.§4"3§.visible && §0c§.§7!?§.§!A§.§2!o§().§[y§().isOpen();
         }
         if(this.§4"3§.hasOwnProperty("visible"))
         {
            return this.§4"3§.visible;
         }
         return true;
      }
      
      public function setObject(param1:*) : void
      {
         if(param1 != this.§4"3§)
         {
            this.§4"3§ = param1;
            this.§6w§ = null;
         }
      }
      
      public function get object() : *
      {
         return this.§4"3§;
      }
      
      private function §8Z§(param1:§?!i§) : void
      {
         this.§2s§ = this.§4"3§;
         this.§2s§.removeEventListener(§?!i§.§8!G§,this.§8Z§);
         this.setObject(§0c§.§7!?§.§8!9§.§5!l§()[0]);
      }
      
      public function get position() : Point
      {
         var _loc1_:Point = null;
         var _loc2_:§<A§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:§5b§ = null;
         var _loc5_:int = 0;
         var _loc6_:§<A§ = null;
         var _loc7_:GhostObject = null;
         var _loc8_:Point = null;
         var _loc9_:§[!f§ = null;
         var _loc10_:§%!§ = null;
         if(this.§4"3§ is §<A§)
         {
            if(!§@#§.§7!?§.§9d§(this.§4"3§) && !(this.§4"3§ as §<A§).§!!F§())
            {
               _loc4_ = §0c§.§7!?§.§6%§.§9"&§.objects;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.getObjectCount())
               {
                  if((_loc6_ = §<A§.§5y§(_loc4_.getObject(_loc5_))) != this.§4"3§.getObject() && _loc6_.getName() == this.§4"3§.getName() && §@#§.§7!?§.§9d§(_loc6_))
                  {
                     this.setObject(_loc6_);
                     break;
                  }
                  _loc5_++;
               }
            }
            _loc2_ = this.§4"3§ as §<A§;
            _loc3_ = _loc2_.§@!0§();
            if(_loc3_ == null)
            {
               this.setObject(this.§2s§);
               this.§2s§.addEventListener(§?!i§.§8!G§,this.§8Z§);
               this.§2s§ = null;
               return this.position;
            }
            _loc1_ = §5!U§.§,!E§.§6!;§(_loc3_.x,_loc3_.y);
         }
         else if(this.§4"3§ is GhostObject)
         {
            _loc7_ = this.§4"3§ as GhostObject;
            _loc8_ = new Point(_loc7_.§=",§,_loc7_.§!;§);
            _loc1_ = §5!U§.§,!E§.§6!;§(_loc8_.x,_loc8_.y);
         }
         else if(this.§4"3§ is §[!f§)
         {
            _loc1_ = (_loc9_ = this.§4"3§ as §[!f§).mClip.parent.localToGlobal(new Point(_loc9_.x,_loc9_.y));
         }
         else if(this.§4"3§ is §%!§)
         {
            _loc1_ = (_loc10_ = this.§4"3§ as §%!§).parent.localToGlobal(new Point(_loc10_.x,_loc10_.y));
         }
         else if(this.§4"3§ is DisplayObject)
         {
            _loc1_ = this.§4"3§.parent.localToGlobal(new Point(this.§4"3§.x,this.§4"3§.y));
         }
         else if(this.§4"3§ is Point)
         {
            _loc1_ = §5!U§.§,!E§.§6!;§(this.§4"3§.x,this.§4"3§.y);
         }
         else if(this.§4"3§ is §7!o§)
         {
            _loc1_ = §5!U§.§,!E§.§6!;§(this.§4"3§.objectPosition.x,this.§4"3§.objectPosition.y);
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
      
      public function §'!F§() : BitmapData
      {
         var _loc1_:int = 0;
         var _loc2_:§<A§ = null;
         var _loc3_:String = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Bitmap = null;
         var _loc6_:Sprite = null;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Matrix = null;
         _loc1_ = 5;
         if(this.§4"3§ is §<A§)
         {
            _loc2_ = this.§4"3§ as §<A§;
            _loc3_ = _loc2_.getName();
            _loc4_ = §5!U§.§,!E§.§4F§.§!!k§(_loc3_);
            _loc5_ = new Bitmap(_loc4_,"auto",true);
            _loc6_ = _loc2_.§?]§();
            _loc7_ = new Point(_loc5_.width / 2,_loc5_.height / 2);
            _loc8_ = §"" §.§>!-§;
            (_loc9_ = new Matrix()).translate(-_loc7_.x,-_loc7_.y);
            _loc9_.rotate(_loc6_.rotation);
            _loc9_.scale(_loc8_,_loc8_);
            _loc5_.transform.matrix = _loc9_;
            _loc5_.x += _loc5_.width / 2;
            _loc5_.y += _loc5_.height / 2;
            this.§6w§ = new BitmapData(_loc5_.width + _loc1_,_loc5_.height + _loc1_,true,0);
            _loc5_.filters = [new GlowFilter(16777215,1,_loc1_,_loc1_,_loc1_)];
            _loc5_.x += _loc1_ / 2;
            _loc5_.y += _loc1_ / 2;
            this.§6w§.draw(_loc5_,_loc5_.transform.matrix,null,null,null,true);
            _loc5_.filters = [];
            this.§6w§.draw(_loc5_,_loc5_.transform.matrix,null,BlendMode.ERASE,null,true);
         }
         else
         {
            this.§6w§ = new BitmapData(1,1);
         }
         return this.§6w§;
      }
      
      public function get size() : Point
      {
         var _loc1_:Point = new Point();
         var _loc2_:Number = 1;
         if(this.§4"3§ is §<A§)
         {
            _loc1_ = new Point((this.§4"3§ as §<A§).§ "=§(),(this.§4"3§ as §<A§).§>!F§());
            _loc2_ = §"" §.§>!-§;
         }
         else if(this.§4"3§ is GhostObject)
         {
            _loc1_ = new Point((this.§4"3§ as GhostObject).sprite.width,(this.§4"3§ as GhostObject).sprite.height);
            _loc2_ = §"" §.§>!-§;
         }
         else if(this.§4"3§ is §[!f§)
         {
            _loc1_ = new Point((this.§4"3§ as §[!f§).width,(this.§4"3§ as §[!f§).height);
            _loc2_ = §"" §.§>!-§;
         }
         else if(this.§4"3§ is §%!§)
         {
            _loc1_ = new Point(§4!l§,§4!l§);
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
