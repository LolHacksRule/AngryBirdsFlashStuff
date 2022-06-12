package §?^§
{
   import §!q§.§ %§;
   import §!q§.§84§;
   import §1U§.§"!V§;
   import §2!§.§1!n§;
   import §3;§.§#!C§;
   import §9!z§.§'Y§;
   import §9!z§.§5"!§;
   import §;8§.GhostObject;
   import §<8§.§'X§;
   import §="$§.§?w§;
   import §="§.§="-§;
   import §?!h§.b2Vec2;
   import §^I§.Sprite;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §;"6§
   {
      
      private static const §`!6§:int = 15;
       
      
      private var §%!Q§;
      
      private var §+!P§;
      
      private var §04§:BitmapData;
      
      public function §;"6§(param1:*)
      {
         var _loc2_:§'Y§ = null;
         super();
         if(param1 is String)
         {
            _loc2_ = §84§.§,l§.§<B§.§#Y§();
            this.setObject(_loc2_.getItemByName(param1));
            if(this.§+!P§ == null)
            {
               this.setObject(_loc2_.§6!w§().§;m§(param1));
               if(this.§+!P§)
               {
                  (this.§+!P§ as §5"!§).addEventListener(§#!C§.§@1§,this.§>'§);
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
         if(this.§+!P§ is §5"!§)
         {
            return this.§+!P§.visible && §84§.§,l§.§<B§.§#Y§().§6!w§().isOpen();
         }
         if(this.§+!P§.hasOwnProperty("visible"))
         {
            return this.§+!P§.visible;
         }
         return true;
      }
      
      public function setObject(param1:*) : void
      {
         if(param1 != this.§+!P§)
         {
            this.§+!P§ = param1;
            this.§04§ = null;
         }
      }
      
      public function get object() : *
      {
         return this.§+!P§;
      }
      
      private function §>'§(param1:§#!C§) : void
      {
         this.§%!Q§ = this.§+!P§;
         this.§%!Q§.removeEventListener(§#!C§.§@1§,this.§>'§);
         this.setObject(§84§.§,l§.§02§.§#A§()[0]);
      }
      
      public function get position() : Point
      {
         var _loc1_:Point = null;
         var _loc2_:§0Q§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:§="-§ = null;
         var _loc5_:int = 0;
         var _loc6_:§0Q§ = null;
         var _loc7_:GhostObject = null;
         var _loc8_:Point = null;
         var _loc9_:§'X§ = null;
         var _loc10_:§5"!§ = null;
         if(this.§+!P§ is §0Q§)
         {
            if(!§ %§.§,l§.§?!7§(this.§+!P§) && !(this.§+!P§ as §0Q§).§ !b§())
            {
               _loc4_ = §84§.§,l§.§"j§.§^"'§.objects;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.getObjectCount())
               {
                  if((_loc6_ = §0Q§.§super§(_loc4_.getObject(_loc5_))) != this.§+!P§.getObject() && _loc6_.getName() == this.§+!P§.getName() && § %§.§,l§.§?!7§(_loc6_))
                  {
                     this.setObject(_loc6_);
                     break;
                  }
                  _loc5_++;
               }
            }
            _loc2_ = this.§+!P§ as §0Q§;
            _loc3_ = _loc2_.§9b§();
            if(_loc3_ == null)
            {
               this.setObject(this.§%!Q§);
               this.§%!Q§.addEventListener(§#!C§.§@1§,this.§>'§);
               this.§%!Q§ = null;
               return this.position;
            }
            _loc1_ = §"!V§.§!j§.§?!+§(_loc3_.x,_loc3_.y);
         }
         else if(this.§+!P§ is GhostObject)
         {
            _loc7_ = this.§+!P§ as GhostObject;
            _loc8_ = new Point(_loc7_.§,!b§,_loc7_.§%!s§);
            _loc1_ = §"!V§.§!j§.§?!+§(_loc8_.x,_loc8_.y);
         }
         else if(this.§+!P§ is §'X§)
         {
            _loc1_ = (_loc9_ = this.§+!P§ as §'X§).mClip.parent.localToGlobal(new Point(_loc9_.x,_loc9_.y));
         }
         else if(this.§+!P§ is §5"!§)
         {
            _loc1_ = (_loc10_ = this.§+!P§ as §5"!§).parent.localToGlobal(new Point(_loc10_.x,_loc10_.y));
         }
         else if(this.§+!P§ is DisplayObject)
         {
            _loc1_ = this.§+!P§.parent.localToGlobal(new Point(this.§+!P§.x,this.§+!P§.y));
         }
         else if(this.§+!P§ is Point)
         {
            _loc1_ = §"!V§.§!j§.§?!+§(this.§+!P§.x,this.§+!P§.y);
         }
         else if(this.§+!P§ is §?w§)
         {
            _loc1_ = §"!V§.§!j§.§?!+§(this.§+!P§.objectPosition.x,this.§+!P§.objectPosition.y);
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
      
      public function §]!-§() : BitmapData
      {
         var _loc2_:§0Q§ = null;
         var _loc3_:String = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Bitmap = null;
         var _loc6_:Sprite = null;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Matrix = null;
         if(this.§+!P§ is §0Q§)
         {
            _loc2_ = this.§+!P§ as §0Q§;
            _loc3_ = _loc2_.getName();
            _loc4_ = §"!V§.§!j§.§>=§.§2s§(_loc3_);
            _loc5_ = new Bitmap(_loc4_,"auto",true);
            _loc6_ = _loc2_.§]"#§();
            _loc7_ = new Point(_loc5_.width / 2,_loc5_.height / 2);
            _loc8_ = §1!n§.§#!%§;
            (_loc9_ = new Matrix()).translate(-_loc7_.x,-_loc7_.y);
            _loc9_.rotate(_loc6_.rotation);
            _loc9_.scale(_loc8_,_loc8_);
            _loc5_.transform.matrix = _loc9_;
            _loc5_.x += _loc5_.width / 2;
            _loc5_.y += _loc5_.height / 2;
            this.§04§ = new BitmapData(_loc5_.width + 10,_loc5_.height + 10,true,0);
            _loc5_.filters = [new GlowFilter(16777215,1,10,10,10)];
            _loc5_.x += 10 / 2;
            _loc5_.y += 10 / 2;
            this.§04§.draw(_loc5_,_loc5_.transform.matrix,null,null,null,true);
            _loc5_.filters = [];
            this.§04§.draw(_loc5_,_loc5_.transform.matrix,null,BlendMode.ERASE,null,true);
         }
         else
         {
            this.§04§ = new BitmapData(1,1);
         }
         return this.§04§;
      }
      
      public function get size() : Point
      {
         var _loc1_:Point = new Point();
         var _loc2_:Number = 1;
         if(this.§+!P§ is §0Q§)
         {
            _loc1_ = new Point((this.§+!P§ as §0Q§).§>"#§(),(this.§+!P§ as §0Q§).§,Z§());
            _loc2_ = §1!n§.§#!%§;
         }
         else if(this.§+!P§ is GhostObject)
         {
            _loc1_ = new Point((this.§+!P§ as GhostObject).sprite.width,(this.§+!P§ as GhostObject).sprite.height);
            _loc2_ = §1!n§.§#!%§;
         }
         else if(this.§+!P§ is §'X§)
         {
            _loc1_ = new Point((this.§+!P§ as §'X§).width,(this.§+!P§ as §'X§).height);
            _loc2_ = §1!n§.§#!%§;
         }
         else if(this.§+!P§ is §5"!§)
         {
            _loc1_ = new Point(§`!6§,§`!6§);
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
