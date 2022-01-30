package §+`§
{
   import §%!&§.§'"-§;
   import §,m§.§?"%§;
   import §4!7§.§]!1§;
   import §4L§.GhostObject;
   import §9!7§.§0!`§;
   import §9v§.b2Vec2;
   import §>0§.§'L§;
   import §@!H§.§,!a§;
   import §@!H§.§;!L§;
   import §]!2§.Sprite;
   import §]!b§.§]?§;
   import §`%§.§8!0§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import §true§.§>"-§;
   
   public class §#'§
   {
      
      private static const §%!S§:int = 15;
       
      
      private var §,!z§;
      
      private var §3!=§;
      
      private var §8!Q§:BitmapData;
      
      public function §#'§(param1:*)
      {
         var _loc2_:§,!a§ = null;
         super();
         if(param1 is String)
         {
            _loc2_ = §]?§.§9j§.§%H§.§<!9§();
            this.setObject(_loc2_.getItemByName(param1));
            if(this.§3!=§ == null)
            {
               this.setObject(_loc2_.§1!u§().§^!f§(param1));
               if(this.§3!=§)
               {
                  (this.§3!=§ as §;!L§).addEventListener(§?"%§.§"!H§,this.§"",§);
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
         if(this.§3!=§ is §;!L§)
         {
            return this.§3!=§.visible;
         }
         return true;
      }
      
      private function setObject(param1:*) : void
      {
         if(param1 != this.§3!=§)
         {
            this.§3!=§ = param1;
            this.§8!Q§ = null;
         }
      }
      
      public function get object() : *
      {
         return this.§3!=§;
      }
      
      private function §"",§(param1:§?"%§) : void
      {
         this.§,!z§ = this.§3!=§;
         this.§,!z§.removeEventListener(§?"%§.§"!H§,this.§"",§);
         this.setObject(§]?§.§9j§.§["§.§=p§()[0]);
      }
      
      public function get position() : Point
      {
         var _loc1_:Point = null;
         var _loc2_:§>"-§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:§'"-§ = null;
         var _loc5_:int = 0;
         var _loc6_:§>"-§ = null;
         var _loc7_:GhostObject = null;
         var _loc8_:Point = null;
         var _loc9_:§0!`§ = null;
         var _loc10_:§;!L§ = null;
         if(this.§3!=§ is §>"-§)
         {
            if(!§]!1§.§9j§.§5]§(this.§3!=§) && !(this.§3!=§ as §>"-§).§[!,§())
            {
               _loc4_ = §]?§.§9j§.§4+§.§]!D§.objects;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.getObjectCount())
               {
                  if((_loc6_ = §>"-§.§0V§(_loc4_.getObject(_loc5_))) != this.§3!=§.getObject() && _loc6_.getName() == this.§3!=§.getName() && §]!1§.§9j§.§5]§(_loc6_))
                  {
                     this.setObject(_loc6_);
                     break;
                  }
                  _loc5_++;
               }
            }
            _loc2_ = this.§3!=§ as §>"-§;
            _loc3_ = _loc2_.§8K§();
            if(_loc3_ == null)
            {
               this.setObject(this.§,!z§);
               this.§,!z§.addEventListener(§?"%§.§"!H§,this.§"",§);
               this.§,!z§ = null;
               return this.position;
            }
            _loc1_ = §8!0§.§?2§.§'W§(_loc3_.x,_loc3_.y);
         }
         else if(this.§3!=§ is GhostObject)
         {
            _loc7_ = this.§3!=§ as GhostObject;
            _loc8_ = new Point(_loc7_.§4!Q§,_loc7_.§^!]§);
            _loc1_ = §8!0§.§?2§.§'W§(_loc8_.x,_loc8_.y);
         }
         else if(this.§3!=§ is §0!`§)
         {
            _loc1_ = (_loc9_ = this.§3!=§ as §0!`§).mClip.parent.localToGlobal(new Point(_loc9_.x,_loc9_.y));
         }
         else if(this.§3!=§ is §;!L§)
         {
            _loc1_ = (_loc10_ = this.§3!=§ as §;!L§).parent.localToGlobal(new Point(_loc10_.x,_loc10_.y));
         }
         else if(this.§3!=§ is Point)
         {
            _loc1_ = §8!0§.§?2§.§'W§(this.§3!=§.x,this.§3!=§.y);
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
      
      public function §?h§() : BitmapData
      {
         var _loc2_:§>"-§ = null;
         var _loc3_:String = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Bitmap = null;
         var _loc6_:Sprite = null;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Matrix = null;
         if(this.§3!=§ is §>"-§)
         {
            _loc2_ = this.§3!=§ as §>"-§;
            _loc3_ = _loc2_.getName();
            _loc4_ = §8!0§.§?2§.§7<§.§+"#§(_loc3_);
            _loc5_ = new Bitmap(_loc4_,"auto",true);
            _loc6_ = _loc2_.§2B§();
            _loc7_ = new Point(_loc5_.width / 2,_loc5_.height / 2);
            _loc8_ = §'L§.§9K§;
            (_loc9_ = new Matrix()).translate(-_loc7_.x,-_loc7_.y);
            _loc9_.rotate(_loc6_.rotation);
            _loc9_.scale(_loc8_,_loc8_);
            _loc5_.transform.matrix = _loc9_;
            _loc5_.x += _loc5_.width / 2;
            _loc5_.y += _loc5_.height / 2;
            this.§8!Q§ = new BitmapData(_loc5_.width + 10,_loc5_.height + 10,true,0);
            _loc5_.filters = [new GlowFilter(16777215,1,10,10,10)];
            _loc5_.x += 10 / 2;
            _loc5_.y += 10 / 2;
            this.§8!Q§.draw(_loc5_,_loc5_.transform.matrix,null,null,null,true);
            _loc5_.filters = [];
            this.§8!Q§.draw(_loc5_,_loc5_.transform.matrix,null,BlendMode.ERASE,null,true);
         }
         else
         {
            this.§8!Q§ = new BitmapData(1,1);
         }
         return this.§8!Q§;
      }
      
      public function get size() : Point
      {
         var _loc1_:Point = new Point();
         var _loc2_:Number = 1;
         if(this.§3!=§ is §>"-§)
         {
            _loc1_ = new Point((this.§3!=§ as §>"-§).§%!Y§(),(this.§3!=§ as §>"-§).§0!R§());
            _loc2_ = §'L§.§9K§;
         }
         else if(this.§3!=§ is GhostObject)
         {
            _loc1_ = new Point((this.§3!=§ as GhostObject).sprite.width,(this.§3!=§ as GhostObject).sprite.height);
            _loc2_ = §'L§.§9K§;
         }
         else if(this.§3!=§ is §0!`§)
         {
            _loc1_ = new Point((this.§3!=§ as §0!`§).width,(this.§3!=§ as §0!`§).height);
            _loc2_ = §'L§.§9K§;
         }
         else if(this.§3!=§ is §;!L§)
         {
            _loc1_ = new Point(§%!S§,§%!S§);
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
