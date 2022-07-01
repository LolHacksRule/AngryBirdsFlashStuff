package §2!5§
{
   import § ""§.§%,§;
   import §"!2§.§>9§;
   import §""6§.§<a§;
   import §'x§.§?z§;
   import §+%§.§5!F§;
   import §,Q§.§="2§;
   import §0P§.§!!l§;
   import §1!v§.§!,§;
   import §1!v§.§&f§;
   import §1!v§.§>"!§;
   import §1"3§.§`"0§;
   import §1z§.§2!J§;
   import §5"'§.§&!]§;
   import §;!§.§8V§;
   import §;X§.§ do§;
   import §;X§.Base64;
   import §@!P§.§?"%§;
   import §]!!§.§"X§;
   import §]X§.§<!-§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.net.SharedObject;
   import flash.utils.ByteArray;
   
   public class §"^§ extends EventDispatcher implements §4!]§
   {
      
      public static const § §:int = 200;
      
      public static const §^I§:int = 1000;
      
      public static const §0g§:int = 8;
      
      private static const §="4§:String = "LastEditedLevel";
      
      private static var §;!&§:SharedObject;
      
      private static var §+b§:Function;
       
      
      private var §,!X§:Function;
      
      private var §]Z§:§&f§;
      
      private var §!^§:§0!X§;
      
      private var §,!+§:Boolean = true;
      
      public function §"^§(param1:§0!X§)
      {
         super();
         this.§!^§ = param1;
         this.§]Z§ = §?z§.§=7§ as §&f§;
      }
      
      public static function §#w§(param1:Function) : void
      {
         §+b§ = param1;
         §!!l§.§`7§.§;-§ = §9!X§;
      }
      
      private static function §9!X§() : BitmapData
      {
         var _loc1_:Number = §?z§.§9h§();
         var _loc2_:Number = §?z§.§68§();
         var _loc3_:BitmapData = new BitmapData(_loc1_,_loc2_,false);
         §!!l§.drawToBitmapData(_loc3_);
         if(§+b§ != null)
         {
            §+b§(_loc3_);
            §+b§ = null;
         }
         return _loc3_;
      }
      
      public function activate() : void
      {
         §=,§.§if §.§,!M§(this.§9q§,§=,§.SAVE);
         this.§87§(§<!-§.§3^§);
      }
      
      public function initialize() : void
      {
         this.§!^§.§!e§.addEventListener(§8V§.SAVE,this.§4!K§);
      }
      
      private function §4!K§(param1:§8V§) : void
      {
         if(§=,§.§if §.§9q§())
         {
            §="2§.doJsCall("save",JSON.stringify(§2!J§.§if §.§"" §()),JSON.stringify(this.§1_§()));
            this.§,!+§ = false;
         }
      }
      
      public function get §'4§() : §&f§
      {
         return this.§]Z§;
      }
      
      public function get camera() : §`"0§
      {
         return this.§]Z§.camera;
      }
      
      public function §'![§() : void
      {
         var _loc2_:§?"%§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]Z§.objects.getObjectCount())
         {
            _loc2_ = §?"%§.§3! §(this.§]Z§.objects.getObject(_loc1_));
            _loc2_.§'![§();
            _loc1_++;
         }
      }
      
      public function §87§(param1:§5!F§) : void
      {
         this.§]Z§.clearLevel();
         this.§]Z§.init(param1);
         this.§]Z§.objects.setGroundTextureEnabled(false);
         §?"%§.§!!D§(this.§]Z§.objects);
         this.§]Z§.slingshot.setSlingShotState(§>"!§.§9!o§);
         this.§9g§();
         this.§80§();
         dispatchEvent(new §8V§(§8V§.§["0§));
      }
      
      private function §80§() : void
      {
         var _loc2_:§?"%§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]Z§.objects.getObjectCount())
         {
            _loc2_ = §?"%§.§3! §(this.§]Z§.objects.getObject(_loc1_));
            if(_loc2_.isTexture())
            {
               _loc2_.§`!Q§(-1,true);
            }
            _loc1_++;
         }
      }
      
      public function §9q§() : Boolean
      {
         return this.§,!+§;
      }
      
      public function §3!%§() : void
      {
         this.§,!+§ = true;
         dispatchEvent(new §8V§(§8V§.CHANGE));
      }
      
      public function §1_§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.data = this.§]Z§.§"!T§().§;`§();
         _loc1_.valid = §<a§.§!%§;
         return _loc1_;
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §<!I§(param1:Number, param2:Number) : Point
      {
         return this.§]Z§.§for§(param1,param2);
      }
      
      public function §1!l§(param1:Point, param2:Boolean = true) : Object
      {
         var _loc5_:Vector.<§%,§> = null;
         var _loc6_:§%,§ = null;
         var _loc3_:Point = this.§]Z§.screenToBox2D(param1.x,param1.y);
         var _loc4_:Object;
         if((_loc4_ = this.§]Z§.slingshot.getObjectFromPoint(_loc3_.x,_loc3_.y)) == null && this.§]Z§.slingshot.intersectsWithPoint(_loc3_.x,_loc3_.y))
         {
            _loc4_ = this.§]Z§.slingshot;
         }
         if(_loc4_ == null)
         {
            _loc5_ = this.§]Z§.objects.getObjectsFromPoint(_loc3_.x,_loc3_.y);
            for each(_loc6_ in _loc5_)
            {
               if(§=,§.§if §.§9'§(§?"%§.§3! §(_loc6_)))
               {
                  return _loc6_;
               }
            }
         }
         if(_loc4_ is §%,§ && (_loc4_ as §%,§).isGround())
         {
            return null;
         }
         return _loc4_;
      }
      
      private function §2A§() : void
      {
         §!!l§.§`7§.§;-§ = this.§^p§;
      }
      
      private function §^p§() : void
      {
         var _loc1_:Object = this.§1_§();
         var _loc2_:BitmapData = §9!X§();
         var _loc3_:ByteArray = §&!]§.encode(_loc2_);
         _loc1_.screen = Base64.§^!n§(_loc3_);
         §="2§.doJsCall("onScreenshotReady",JSON.stringify(_loc1_));
      }
      
      public function §>!§() : int
      {
         var _loc1_:int = (AngryBirdsFP11.§8!I§ as §>9§).§1!m§;
         var _loc2_:int = this.getBlockCount() - this.§;!j§();
         var _loc3_:int = this.§!^§.§2s§.§@!v§();
         return _loc1_ - _loc2_ + _loc3_;
      }
      
      public function §-!X§() : int
      {
         return §^I§ - this.getStaticCount();
      }
      
      public function §+h§() : int
      {
         return §0g§ - this.§]Z§.slingshot.getBirdCount();
      }
      
      public function §-,§() : Vector.<§!,§>
      {
         return this.§]Z§.slingshot.mBirds;
      }
      
      public function getBirdCount() : int
      {
         return this.§]Z§.slingshot.getBirdCount();
      }
      
      public function getPigCount() : int
      {
         return this.§]Z§.objects.getPigCount();
      }
      
      public function getBlockCount() : int
      {
         return this.§]Z§.§>"9§.getBlockCount();
      }
      
      public function §;!j§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]Z§.§>"9§.getObjectCount())
         {
            if(this.§]Z§.§>"9§.getObject(_loc2_).isMiscBlock())
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         return this.§]Z§.§>"9§.getStaticCount();
      }
      
      public function § case§() : §%,§
      {
         return this.§]Z§.objects.getObject(0);
      }
      
      public function §!!0§(param1:String) : void
      {
      }
      
      public function §""9§(param1:String, param2:Number, param3:Number) : Object
      {
         if(param1.indexOf("BIRD_") != -1)
         {
            if(this.§+h§() <= 0)
            {
               § do§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Bird Limit");
               return null;
            }
         }
         else if(param1.indexOf("TERRAIN_") == 0)
         {
            if(this.§-!X§() <= 0)
            {
               § do§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Static Limit");
               return null;
            }
         }
         else if(this.§>!§() <= 0)
         {
            § do§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Block Limit");
            dispatchEvent(new §8V§(§8V§.§3!w§));
            return null;
         }
         var _loc4_:Object = null;
         if(param1.indexOf("BIRD_") != -1)
         {
            _loc4_ = this.§]Z§.slingshot.addNewBirdToEndOfList(param1,param2,param3);
         }
         else
         {
            _loc4_ = this.§]Z§.objects.addObject(param1,param2,param3,0);
         }
         if(_loc4_ != null)
         {
            this.§3!%§();
         }
         return _loc4_;
      }
      
      public function removeObject(param1:§%,§) : void
      {
         if(§=,§.§if §.§[h§(§?"%§.§3! §(param1)))
         {
            this.§]Z§.objects.removeObject(param1);
            this.§3!%§();
         }
      }
      
      public function §1!e§(param1:§!,§) : void
      {
         this.§]Z§.slingshot.removeObject(param1);
      }
      
      private function §9g§() : void
      {
         var _loc2_:§?"%§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]Z§.objects.getObjectCount())
         {
            _loc2_ = §?"%§.§3! §(this.§]Z§.objects.getObject(_loc1_));
            _loc2_.§>!%§();
            _loc1_++;
         }
      }
      
      public function getJoints() : Vector.<§"X§>
      {
         return this.§]Z§.objects.getJoints();
      }
      
      public function §5!-§(param1:§?"%§, param2:Number, param3:Number) : §?"%§
      {
         var _loc4_:§?"%§ = param1.clone(this.§]Z§,param2,param3);
         this.§3!%§();
         return _loc4_;
      }
   }
}
