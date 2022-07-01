package §@!P§
{
   import § ""§.§6!u§;
   import §'x§.§?z§;
   import §+!d§.§8!=§;
   import §+L§.b2Vec2;
   import §1!Y§.Sprite;
   import §1"3§.§`"0§;
   import §1z§.§@k§;
   import §2!5§.§0!X§;
   import §2!5§.§=,§;
   import §6!D§.GhostObject;
   import §9!l§.§@O§;
   import §9!l§.§`!d§;
   import §;!§.§8V§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §,"5§
   {
      
      private static const §!![§:int = 15;
       
      
      private var §59§;
      
      private var §&!$§;
      
      private var §4y§:BitmapData;
      
      public function §,"5§(param1:*)
      {
         var _loc2_:§`!d§ = null;
         super();
         if(param1 is String)
         {
            _loc2_ = §0!X§.§if §.§!e§.§<8§();
            this.setObject(_loc2_.getItemByName(param1));
            if(this.§&!$§ == null)
            {
               this.setObject(_loc2_.§2!?§().§%d§(param1));
               if(this.§&!$§)
               {
                  (this.§&!$§ as §@O§).addEventListener(§8V§.§9t§,this.§5F§);
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
         if(this.§&!$§ is §@O§)
         {
            return this.§&!$§.visible && §0!X§.§if §.§!e§.§<8§().§2!?§().isOpen();
         }
         if(this.§&!$§.hasOwnProperty("visible"))
         {
            return this.§&!$§.visible;
         }
         return true;
      }
      
      public function setObject(param1:*) : void
      {
         if(param1 != this.§&!$§)
         {
            this.§&!$§ = param1;
            this.§4y§ = null;
         }
      }
      
      public function get object() : *
      {
         return this.§&!$§;
      }
      
      private function §5F§(param1:§8V§) : void
      {
         this.§59§ = this.§&!$§;
         this.§59§.removeEventListener(§8V§.§9t§,this.§5F§);
         this.setObject(§0!X§.§if §.§ 5§.§0x§()[0]);
      }
      
      public function get position() : Point
      {
         var _loc1_:Point = null;
         var _loc2_:§?"%§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:§6!u§ = null;
         var _loc5_:int = 0;
         var _loc6_:§?"%§ = null;
         var _loc7_:GhostObject = null;
         var _loc8_:Point = null;
         var _loc9_:§8!=§ = null;
         var _loc10_:§@O§ = null;
         if(this.§&!$§ is §?"%§)
         {
            if(!§=,§.§if §.§9'§(this.§&!$§) && !(this.§&!$§ as §?"%§).§@g§())
            {
               _loc4_ = §0!X§.§if §.§@s§.§'4§.objects;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.getObjectCount())
               {
                  if((_loc6_ = §?"%§.§3! §(_loc4_.getObject(_loc5_))) != this.§&!$§.getObject() && _loc6_.getName() == this.§&!$§.getName() && §=,§.§if §.§9'§(_loc6_))
                  {
                     this.setObject(_loc6_);
                     break;
                  }
                  _loc5_++;
               }
            }
            _loc2_ = this.§&!$§ as §?"%§;
            _loc3_ = _loc2_.§]>§();
            if(_loc3_ == null)
            {
               this.setObject(this.§59§);
               this.§59§.addEventListener(§8V§.§9t§,this.§5F§);
               this.§59§ = null;
               return this.position;
            }
            _loc1_ = §?z§.§=7§.§for§(_loc3_.x,_loc3_.y);
         }
         else if(this.§&!$§ is GhostObject)
         {
            _loc7_ = this.§&!$§ as GhostObject;
            _loc8_ = new Point(_loc7_.§%k§,_loc7_.§ "§);
            _loc1_ = §?z§.§=7§.§for§(_loc8_.x,_loc8_.y);
         }
         else if(this.§&!$§ is §8!=§)
         {
            _loc1_ = (_loc9_ = this.§&!$§ as §8!=§).mClip.parent.localToGlobal(new Point(_loc9_.x,_loc9_.y));
         }
         else if(this.§&!$§ is §@O§)
         {
            _loc1_ = (_loc10_ = this.§&!$§ as §@O§).parent.localToGlobal(new Point(_loc10_.x,_loc10_.y));
         }
         else if(this.§&!$§ is DisplayObject)
         {
            _loc1_ = this.§&!$§.parent.localToGlobal(new Point(this.§&!$§.x,this.§&!$§.y));
         }
         else if(this.§&!$§ is Point)
         {
            _loc1_ = §?z§.§=7§.§for§(this.§&!$§.x,this.§&!$§.y);
         }
         else if(this.§&!$§ is §@k§)
         {
            _loc1_ = §?z§.§=7§.§for§(this.§&!$§.objectPosition.x,this.§&!$§.objectPosition.y);
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
      
      public function §-!=§() : BitmapData
      {
         var _loc2_:§?"%§ = null;
         var _loc3_:String = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Bitmap = null;
         var _loc6_:Sprite = null;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Matrix = null;
         if(this.§&!$§ is §?"%§)
         {
            _loc2_ = this.§&!$§ as §?"%§;
            _loc3_ = _loc2_.getName();
            _loc4_ = §?z§.§=7§.§while§.§#"6§(_loc3_);
            _loc5_ = new Bitmap(_loc4_,"auto",true);
            _loc6_ = _loc2_.§9!§();
            _loc7_ = new Point(_loc5_.width / 2,_loc5_.height / 2);
            _loc8_ = §`"0§.§;!G§;
            (_loc9_ = new Matrix()).translate(-_loc7_.x,-_loc7_.y);
            _loc9_.rotate(_loc6_.rotation);
            _loc9_.scale(_loc8_,_loc8_);
            _loc5_.transform.matrix = _loc9_;
            _loc5_.x += _loc5_.width / 2;
            _loc5_.y += _loc5_.height / 2;
            this.§4y§ = new BitmapData(_loc5_.width + 10,_loc5_.height + 10,true,0);
            _loc5_.filters = [new GlowFilter(16777215,1,10,10,10)];
            _loc5_.x += 10 / 2;
            _loc5_.y += 10 / 2;
            this.§4y§.draw(_loc5_,_loc5_.transform.matrix,null,null,null,true);
            _loc5_.filters = [];
            this.§4y§.draw(_loc5_,_loc5_.transform.matrix,null,BlendMode.ERASE,null,true);
         }
         else
         {
            this.§4y§ = new BitmapData(1,1);
         }
         return this.§4y§;
      }
      
      public function get size() : Point
      {
         var _loc1_:Point = new Point();
         var _loc2_:Number = 1;
         if(this.§&!$§ is §?"%§)
         {
            _loc1_ = new Point((this.§&!$§ as §?"%§).§1!§(),(this.§&!$§ as §?"%§).§[S§());
            _loc2_ = §`"0§.§;!G§;
         }
         else if(this.§&!$§ is GhostObject)
         {
            _loc1_ = new Point((this.§&!$§ as GhostObject).sprite.width,(this.§&!$§ as GhostObject).sprite.height);
            _loc2_ = §`"0§.§;!G§;
         }
         else if(this.§&!$§ is §8!=§)
         {
            _loc1_ = new Point((this.§&!$§ as §8!=§).width,(this.§&!$§ as §8!=§).height);
            _loc2_ = §`"0§.§;!G§;
         }
         else if(this.§&!$§ is §@O§)
         {
            _loc1_ = new Point(§!![§,§!![§);
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
