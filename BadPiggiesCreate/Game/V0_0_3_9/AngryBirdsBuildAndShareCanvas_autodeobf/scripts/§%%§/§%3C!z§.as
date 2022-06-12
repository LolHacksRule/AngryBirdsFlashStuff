package §%%§
{
   import §%!n§.§7P§;
   import §&!&§.§&"1§;
   import §&"8§.§]T§;
   import §-!G§.b2Vec2;
   import §3!S§.§%s§;
   import §5!k§.§6"6§;
   import §7"2§.§;!5§;
   import §7q§.Sprite;
   import §8!7§.§&%§;
   import §8!7§.§'9§;
   import §=" §.GhostObject;
   import §@!N§.§2i§;
   import §]r§.§2"%§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §<!z§
   {
      
      private static const §!Y§:int = 15;
       
      
      private var § get§;
      
      private var §6f§;
      
      private var §@!2§:BitmapData;
      
      public function §<!z§(param1:*)
      {
         var _loc2_:§&%§ = null;
         super();
         if(param1 is String)
         {
            _loc2_ = §;!5§.§'!o§.§[U§.§^A§();
            this.setObject(_loc2_.getItemByName(param1));
            if(this.§6f§ == null)
            {
               this.setObject(_loc2_.§[S§().§+!!§(param1));
               if(this.§6f§)
               {
                  (this.§6f§ as §'9§).addEventListener(§6"6§.§@!%§,this.§@!-§);
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
         if(this.§6f§ is §'9§)
         {
            return this.§6f§.visible && §;!5§.§'!o§.§[U§.§^A§().§[S§().isOpen();
         }
         if(this.§6f§.hasOwnProperty("visible"))
         {
            return this.§6f§.visible;
         }
         return true;
      }
      
      public function setObject(param1:*) : void
      {
         if(param1 != this.§6f§)
         {
            this.§6f§ = param1;
            this.§@!2§ = null;
         }
      }
      
      public function get object() : *
      {
         return this.§6f§;
      }
      
      private function §@!-§(param1:§6"6§) : void
      {
         this.§ get§ = this.§6f§;
         this.§ get§.removeEventListener(§6"6§.§@!%§,this.§@!-§);
         this.setObject(§;!5§.§'!o§.§,!%§.§;!?§()[0]);
      }
      
      public function get position() : Point
      {
         var _loc1_:Point = null;
         var _loc2_:§7!O§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:§2"%§ = null;
         var _loc5_:int = 0;
         var _loc6_:§7!O§ = null;
         var _loc7_:GhostObject = null;
         var _loc8_:Point = null;
         var _loc9_:§&"1§ = null;
         var _loc10_:§'9§ = null;
         if(this.§6f§ is §7!O§)
         {
            if(!§7P§.§'!o§.§&$§(this.§6f§) && !(this.§6f§ as §7!O§).§1!"§())
            {
               _loc4_ = §;!5§.§'!o§.§94§.§'!E§.objects;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.getObjectCount())
               {
                  if((_loc6_ = §7!O§.§-n§(_loc4_.getObject(_loc5_))) != this.§6f§.getObject() && _loc6_.getName() == this.§6f§.getName() && §7P§.§'!o§.§&$§(_loc6_))
                  {
                     this.setObject(_loc6_);
                     break;
                  }
                  _loc5_++;
               }
            }
            _loc2_ = this.§6f§ as §7!O§;
            _loc3_ = _loc2_.§"B§();
            if(_loc3_ == null)
            {
               this.setObject(this.§ get§);
               this.§ get§.addEventListener(§6"6§.§@!%§,this.§@!-§);
               this.§ get§ = null;
               return this.position;
            }
            _loc1_ = §%s§.§`!f§.§,w§(_loc3_.x,_loc3_.y);
         }
         else if(this.§6f§ is GhostObject)
         {
            _loc7_ = this.§6f§ as GhostObject;
            _loc8_ = new Point(_loc7_.§^"$§,_loc7_.§0U§);
            _loc1_ = §%s§.§`!f§.§,w§(_loc8_.x,_loc8_.y);
         }
         else if(this.§6f§ is §&"1§)
         {
            _loc1_ = (_loc9_ = this.§6f§ as §&"1§).mClip.parent.localToGlobal(new Point(_loc9_.x,_loc9_.y));
         }
         else if(this.§6f§ is §'9§)
         {
            _loc1_ = (_loc10_ = this.§6f§ as §'9§).parent.localToGlobal(new Point(_loc10_.x,_loc10_.y));
         }
         else if(this.§6f§ is DisplayObject)
         {
            _loc1_ = this.§6f§.parent.localToGlobal(new Point(this.§6f§.x,this.§6f§.y));
         }
         else if(this.§6f§ is Point)
         {
            _loc1_ = §%s§.§`!f§.§,w§(this.§6f§.x,this.§6f§.y);
         }
         else if(this.§6f§ is §]T§)
         {
            _loc1_ = §%s§.§`!f§.§,w§(this.§6f§.objectPosition.x,this.§6f§.objectPosition.y);
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
      
      public function §0!E§() : BitmapData
      {
         var _loc2_:§7!O§ = null;
         var _loc3_:String = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Bitmap = null;
         var _loc6_:Sprite = null;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Matrix = null;
         if(this.§6f§ is §7!O§)
         {
            _loc2_ = this.§6f§ as §7!O§;
            _loc3_ = _loc2_.getName();
            _loc4_ = §%s§.§`!f§.§20§.§3!y§(_loc3_);
            _loc5_ = new Bitmap(_loc4_,"auto",true);
            _loc6_ = _loc2_.§4!^§();
            _loc7_ = new Point(_loc5_.width / 2,_loc5_.height / 2);
            _loc8_ = §2i§.§0Z§;
            (_loc9_ = new Matrix()).translate(-_loc7_.x,-_loc7_.y);
            _loc9_.rotate(_loc6_.rotation);
            _loc9_.scale(_loc8_,_loc8_);
            _loc5_.transform.matrix = _loc9_;
            _loc5_.x += _loc5_.width / 2;
            _loc5_.y += _loc5_.height / 2;
            this.§@!2§ = new BitmapData(_loc5_.width + 10,_loc5_.height + 10,true,0);
            _loc5_.filters = [new GlowFilter(16777215,1,10,10,10)];
            _loc5_.x += 10 / 2;
            _loc5_.y += 10 / 2;
            this.§@!2§.draw(_loc5_,_loc5_.transform.matrix,null,null,null,true);
            _loc5_.filters = [];
            this.§@!2§.draw(_loc5_,_loc5_.transform.matrix,null,BlendMode.ERASE,null,true);
         }
         else
         {
            this.§@!2§ = new BitmapData(1,1);
         }
         return this.§@!2§;
      }
      
      public function get size() : Point
      {
         var _loc1_:Point = new Point();
         var _loc2_:Number = 1;
         if(this.§6f§ is §7!O§)
         {
            _loc1_ = new Point((this.§6f§ as §7!O§).§4!d§(),(this.§6f§ as §7!O§).§4!<§());
            _loc2_ = §2i§.§0Z§;
         }
         else if(this.§6f§ is GhostObject)
         {
            _loc1_ = new Point((this.§6f§ as GhostObject).sprite.width,(this.§6f§ as GhostObject).sprite.height);
            _loc2_ = §2i§.§0Z§;
         }
         else if(this.§6f§ is §&"1§)
         {
            _loc1_ = new Point((this.§6f§ as §&"1§).width,(this.§6f§ as §&"1§).height);
            _loc2_ = §2i§.§0Z§;
         }
         else if(this.§6f§ is §'9§)
         {
            _loc1_ = new Point(§!Y§,§!Y§);
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
