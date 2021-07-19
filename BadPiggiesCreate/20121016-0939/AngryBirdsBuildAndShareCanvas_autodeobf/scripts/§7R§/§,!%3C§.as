package §7r§
{
   import §%c§.§=!X§;
   import §'!A§.§-!2§;
   import §'i§.§'!;§;
   import §'i§.§,!1§;
   import §+!o§.§?"-§;
   import §2"=§.b2Vec2;
   import §62§.§0!t§;
   import §8" §.§7z§;
   import §=!#§.§`"=§;
   import §[!_§.GhostObject;
   import §^[§.§!$§;
   import §^[§.§'!K§;
   import §default§.Sprite;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §,!<§
   {
      
      private static const §6"<§:int = 15;
       
      
      private var §3";§;
      
      private var §;6§;
      
      private var §]!4§:BitmapData;
      
      public function §,!<§(param1:*)
      {
         var _loc2_:§'!K§ = null;
         super();
         if(param1 is String)
         {
            _loc2_ = §'!;§.§2=§.§+"2§.§9B§();
            this.setObject(_loc2_.getItemByName(param1));
            if(this.§;6§ == null)
            {
               this.setObject(_loc2_.§'!Q§().§+!I§(param1));
               if(this.§;6§)
               {
                  (this.§;6§ as §!$§).addEventListener(§0!t§.§]!x§,this.§;B§);
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
         if(this.§;6§ is §!$§)
         {
            return this.§;6§.visible && §'!;§.§2=§.§+"2§.§9B§().§'!Q§().isOpen();
         }
         if(this.§;6§.hasOwnProperty("visible"))
         {
            return this.§;6§.visible;
         }
         return true;
      }
      
      public function setObject(param1:*) : void
      {
         if(param1 != this.§;6§)
         {
            this.§;6§ = param1;
            this.§]!4§ = null;
         }
      }
      
      public function get object() : *
      {
         return this.§;6§;
      }
      
      private function §;B§(param1:§0!t§) : void
      {
         this.§3";§ = this.§;6§;
         this.§3";§.removeEventListener(§0!t§.§]!x§,this.§;B§);
         this.setObject(§'!;§.§2=§.§`!]§.§#_§()[0]);
      }
      
      public function get position() : Point
      {
         var _loc1_:Point = null;
         var _loc2_:§=q§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:§?"-§ = null;
         var _loc5_:int = 0;
         var _loc6_:§=q§ = null;
         var _loc7_:GhostObject = null;
         var _loc8_:Point = null;
         var _loc9_:§-!2§ = null;
         var _loc10_:§!$§ = null;
         if(this.§;6§ is §=q§)
         {
            if(!§,!1§.§2=§.§>L§(this.§;6§) && !(this.§;6§ as §=q§).§8!w§())
            {
               _loc4_ = §'!;§.§2=§.§8#§.§4+§.objects;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.getObjectCount())
               {
                  if((_loc6_ = §=q§.§0"§(_loc4_.getObject(_loc5_))) != this.§;6§.getObject() && _loc6_.getName() == this.§;6§.getName() && §,!1§.§2=§.§>L§(_loc6_))
                  {
                     this.setObject(_loc6_);
                     break;
                  }
                  _loc5_++;
               }
            }
            _loc2_ = this.§;6§ as §=q§;
            _loc3_ = _loc2_.§9!l§();
            if(_loc3_ == null)
            {
               this.setObject(this.§3";§);
               this.§3";§.addEventListener(§0!t§.§]!x§,this.§;B§);
               this.§3";§ = null;
               return this.position;
            }
            _loc1_ = §=!X§.§!'§.§&g§(_loc3_.x,_loc3_.y);
         }
         else if(this.§;6§ is GhostObject)
         {
            _loc7_ = this.§;6§ as GhostObject;
            _loc8_ = new Point(_loc7_.§6!j§,_loc7_.§8i§);
            _loc1_ = §=!X§.§!'§.§&g§(_loc8_.x,_loc8_.y);
         }
         else if(this.§;6§ is §-!2§)
         {
            _loc1_ = (_loc9_ = this.§;6§ as §-!2§).mClip.parent.localToGlobal(new Point(_loc9_.x,_loc9_.y));
         }
         else if(this.§;6§ is §!$§)
         {
            _loc1_ = (_loc10_ = this.§;6§ as §!$§).parent.localToGlobal(new Point(_loc10_.x,_loc10_.y));
         }
         else if(this.§;6§ is DisplayObject)
         {
            _loc1_ = this.§;6§.parent.localToGlobal(new Point(this.§;6§.x,this.§;6§.y));
         }
         else if(this.§;6§ is Point)
         {
            _loc1_ = §=!X§.§!'§.§&g§(this.§;6§.x,this.§;6§.y);
         }
         else if(this.§;6§ is §7z§)
         {
            _loc1_ = §=!X§.§!'§.§&g§(this.§;6§.objectPosition.x,this.§;6§.objectPosition.y);
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
      
      public function §'!]§() : BitmapData
      {
         var _loc1_:int = 0;
         var _loc2_:§=q§ = null;
         var _loc3_:String = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Bitmap = null;
         var _loc6_:Sprite = null;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Matrix = null;
         _loc1_ = 5;
         if(this.§;6§ is §=q§)
         {
            _loc2_ = this.§;6§ as §=q§;
            _loc3_ = _loc2_.getName();
            _loc4_ = §=!X§.§!'§.§7!J§.§"k§(_loc3_);
            _loc5_ = new Bitmap(_loc4_,"auto",true);
            _loc6_ = _loc2_.§7M§();
            _loc7_ = new Point(_loc5_.width / 2,_loc5_.height / 2);
            _loc8_ = §`"=§.§;!0§;
            (_loc9_ = new Matrix()).translate(-_loc7_.x,-_loc7_.y);
            _loc9_.rotate(_loc6_.rotation);
            _loc9_.scale(_loc8_,_loc8_);
            _loc5_.transform.matrix = _loc9_;
            _loc5_.x += _loc5_.width / 2;
            _loc5_.y += _loc5_.height / 2;
            this.§]!4§ = new BitmapData(_loc5_.width + _loc1_,_loc5_.height + _loc1_,true,0);
            _loc5_.filters = [new GlowFilter(16777215,1,_loc1_,_loc1_,_loc1_)];
            _loc5_.x += _loc1_ / 2;
            _loc5_.y += _loc1_ / 2;
            this.§]!4§.draw(_loc5_,_loc5_.transform.matrix,null,null,null,true);
            _loc5_.filters = [];
            this.§]!4§.draw(_loc5_,_loc5_.transform.matrix,null,BlendMode.ERASE,null,true);
         }
         else
         {
            this.§]!4§ = new BitmapData(1,1);
         }
         return this.§]!4§;
      }
      
      public function get size() : Point
      {
         var _loc1_:Point = new Point();
         var _loc2_:Number = 1;
         if(this.§;6§ is §=q§)
         {
            _loc1_ = new Point((this.§;6§ as §=q§).§=y§(),(this.§;6§ as §=q§).§-p§());
            _loc2_ = §`"=§.§;!0§;
         }
         else if(this.§;6§ is GhostObject)
         {
            _loc1_ = new Point((this.§;6§ as GhostObject).sprite.width,(this.§;6§ as GhostObject).sprite.height);
            _loc2_ = §`"=§.§;!0§;
         }
         else if(this.§;6§ is §-!2§)
         {
            _loc1_ = new Point((this.§;6§ as §-!2§).width,(this.§;6§ as §-!2§).height);
            _loc2_ = §`"=§.§;!0§;
         }
         else if(this.§;6§ is §!$§)
         {
            _loc1_ = new Point(§6"<§,§6"<§);
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
