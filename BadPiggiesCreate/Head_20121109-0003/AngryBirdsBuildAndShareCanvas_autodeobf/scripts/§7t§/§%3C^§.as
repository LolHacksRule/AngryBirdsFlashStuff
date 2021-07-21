package §7t§
{
   import §"_§.§!"8§;
   import §&!P§.§^!!§;
   import §+!-§.Sprite;
   import §,!g§.§"!P§;
   import §,P§.§'_§;
   import §-&§.GhostObject;
   import §1" §.§!!2§;
   import §1" §.§#!j§;
   import §;" §.§7!9§;
   import §<!a§.b2Vec2;
   import §@y§.§0"4§;
   import §^!k§.§;!T§;
   import §^!k§.§return§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §<^§
   {
      
      private static const §9s§:int = 15;
       
      
      private var §2s§;
      
      private var §,E§;
      
      private var §==§:BitmapData;
      
      public function §<^§(param1:*)
      {
         var _loc2_:§return§ = null;
         super();
         if(param1 is String)
         {
            _loc2_ = §#!j§.§[E§.§<!_§.§"p§();
            this.setObject(_loc2_.getItemByName(param1));
            if(this.§,E§ == null)
            {
               this.setObject(_loc2_.§+!m§().§9"=§(param1));
               if(this.§,E§)
               {
                  (this.§,E§ as §;!T§).addEventListener(§!"8§.§9!`§,this.§;!S§);
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
         if(this.§,E§ is §;!T§)
         {
            return this.§,E§.visible && §#!j§.§[E§.§<!_§.§"p§().§+!m§().isOpen();
         }
         if(this.§,E§.hasOwnProperty("visible"))
         {
            return this.§,E§.visible;
         }
         return true;
      }
      
      public function setObject(param1:*) : void
      {
         if(param1 != this.§,E§)
         {
            this.§,E§ = param1;
            this.§==§ = null;
         }
      }
      
      public function get object() : *
      {
         return this.§,E§;
      }
      
      private function §;!S§(param1:§!"8§) : void
      {
         this.§2s§ = this.§,E§;
         this.§2s§.removeEventListener(§!"8§.§9!`§,this.§;!S§);
         this.setObject(§#!j§.§[E§.§3d§.§3!^§()[0]);
      }
      
      public function get position() : Point
      {
         var _loc1_:Point = null;
         var _loc2_:§7a§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:§^!!§ = null;
         var _loc5_:int = 0;
         var _loc6_:§7a§ = null;
         var _loc7_:GhostObject = null;
         var _loc8_:Point = null;
         var _loc9_:§0"4§ = null;
         var _loc10_:§;!T§ = null;
         if(this.§,E§ is §7a§)
         {
            if(!§!!2§.§[E§.§'%§(this.§,E§) && !(this.§,E§ as §7a§).§0"&§())
            {
               _loc4_ = §#!j§.§[E§.§0"!§.§0z§.objects;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.getObjectCount())
               {
                  if((_loc6_ = §7a§.§^!g§(_loc4_.getObject(_loc5_))) != this.§,E§.getObject() && _loc6_.getName() == this.§,E§.getName() && §!!2§.§[E§.§'%§(_loc6_))
                  {
                     this.setObject(_loc6_);
                     break;
                  }
                  _loc5_++;
               }
            }
            _loc2_ = this.§,E§ as §7a§;
            _loc3_ = _loc2_.§]5§();
            if(_loc3_ == null)
            {
               this.setObject(this.§2s§);
               this.§2s§.addEventListener(§!"8§.§9!`§,this.§;!S§);
               this.§2s§ = null;
               return this.position;
            }
            _loc1_ = §'_§.§=M§.§4!5§(_loc3_.x,_loc3_.y);
         }
         else if(this.§,E§ is GhostObject)
         {
            _loc7_ = this.§,E§ as GhostObject;
            _loc8_ = new Point(_loc7_.§4U§,_loc7_.§5!Y§);
            _loc1_ = §'_§.§=M§.§4!5§(_loc8_.x,_loc8_.y);
         }
         else if(this.§,E§ is §0"4§)
         {
            _loc1_ = (_loc9_ = this.§,E§ as §0"4§).mClip.parent.localToGlobal(new Point(_loc9_.x,_loc9_.y));
         }
         else if(this.§,E§ is §;!T§)
         {
            _loc1_ = (_loc10_ = this.§,E§ as §;!T§).parent.localToGlobal(new Point(_loc10_.x,_loc10_.y));
         }
         else if(this.§,E§ is DisplayObject)
         {
            _loc1_ = this.§,E§.parent.localToGlobal(new Point(this.§,E§.x,this.§,E§.y));
         }
         else if(this.§,E§ is Point)
         {
            _loc1_ = §'_§.§=M§.§4!5§(this.§,E§.x,this.§,E§.y);
         }
         else if(this.§,E§ is §7!9§)
         {
            _loc1_ = §'_§.§=M§.§4!5§(this.§,E§.objectPosition.x,this.§,E§.objectPosition.y);
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
      
      public function §'!#§() : BitmapData
      {
         var _loc1_:int = 0;
         var _loc2_:§7a§ = null;
         var _loc3_:String = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Bitmap = null;
         var _loc6_:Sprite = null;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Matrix = null;
         _loc1_ = 5;
         if(this.§,E§ is §7a§)
         {
            _loc2_ = this.§,E§ as §7a§;
            _loc3_ = _loc2_.getName();
            _loc4_ = §'_§.§=M§.§8=§.§`d§(_loc3_);
            _loc5_ = new Bitmap(_loc4_,"auto",true);
            _loc6_ = _loc2_.§#!Q§();
            _loc7_ = new Point(_loc5_.width / 2,_loc5_.height / 2);
            _loc8_ = §"!P§.§#X§;
            (_loc9_ = new Matrix()).translate(-_loc7_.x,-_loc7_.y);
            _loc9_.rotate(_loc6_.rotation);
            _loc9_.scale(_loc8_,_loc8_);
            _loc5_.transform.matrix = _loc9_;
            _loc5_.x += _loc5_.width / 2;
            _loc5_.y += _loc5_.height / 2;
            this.§==§ = new BitmapData(_loc5_.width + _loc1_,_loc5_.height + _loc1_,true,0);
            _loc5_.filters = [new GlowFilter(16777215,1,_loc1_,_loc1_,_loc1_)];
            _loc5_.x += _loc1_ / 2;
            _loc5_.y += _loc1_ / 2;
            this.§==§.draw(_loc5_,_loc5_.transform.matrix,null,null,null,true);
            _loc5_.filters = [];
            this.§==§.draw(_loc5_,_loc5_.transform.matrix,null,BlendMode.ERASE,null,true);
         }
         else
         {
            this.§==§ = new BitmapData(1,1);
         }
         return this.§==§;
      }
      
      public function get size() : Point
      {
         var _loc1_:Point = new Point();
         var _loc2_:Number = 1;
         if(this.§,E§ is §7a§)
         {
            _loc1_ = new Point((this.§,E§ as §7a§).§;,§(),(this.§,E§ as §7a§).§=7§());
            _loc2_ = §"!P§.§#X§;
         }
         else if(this.§,E§ is GhostObject)
         {
            _loc1_ = new Point((this.§,E§ as GhostObject).sprite.width,(this.§,E§ as GhostObject).sprite.height);
            _loc2_ = §"!P§.§#X§;
         }
         else if(this.§,E§ is §0"4§)
         {
            _loc1_ = new Point((this.§,E§ as §0"4§).width,(this.§,E§ as §0"4§).height);
            _loc2_ = §"!P§.§#X§;
         }
         else if(this.§,E§ is §;!T§)
         {
            _loc1_ = new Point(§9s§,§9s§);
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
