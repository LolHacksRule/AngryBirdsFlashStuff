package §]!b§
{
   import §!!T§.§"!S§;
   import §%!&§.§;!x§;
   import §%h§.§+p§;
   import §%h§.§5!K§;
   import §%h§.§=$§;
   import §&"+§.§<!1§;
   import §'!O§.§@!l§;
   import §,m§.§?"%§;
   import §-P§.§1""§;
   import §0!F§.§^d§;
   import §4!7§.§]!1§;
   import §4u§.§<!L§;
   import §4u§.Base64;
   import §9e§.§"!e§;
   import §;!+§.§`!#§;
   import §>0§.§'L§;
   import §`!O§.§]!F§;
   import §`%§.§8!0§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.net.SharedObject;
   import flash.utils.ByteArray;
   import §true§.§>"-§;
   import §var§.§,"1§;
   
   public class §40§ extends EventDispatcher implements §9h§
   {
      
      public static const §2"2§:int = 200;
      
      public static const §%U§:int = 1000;
      
      public static const §5"5§:int = 8;
      
      private static const §^q§:String = "LastEditedLevel";
      
      private static var §"!J§:SharedObject;
      
      private static var §5!g§:Function;
       
      
      private var §[",§:Function;
      
      private var §>"2§:§+p§;
      
      private var §8O§:§]?§;
      
      private var §"%§:Boolean = true;
      
      public function §40§(param1:§]?§)
      {
         super();
         this.§8O§ = param1;
         this.§>"2§ = §8!0§.§?2§ as §+p§;
      }
      
      public static function §!_§(param1:Function) : void
      {
         §5!g§ = param1;
         §^d§.§+!f§.§+!^§ = §8!=§;
      }
      
      private static function §8!=§() : BitmapData
      {
         var _loc1_:Number = §8!0§.§]f§();
         var _loc2_:Number = §8!0§.§4!;§();
         var _loc3_:BitmapData = new BitmapData(_loc1_,_loc2_,false);
         §^d§.drawToBitmapData(_loc3_);
         if(§5!g§ != null)
         {
            §5!g§(_loc3_);
            §5!g§ = null;
         }
         return _loc3_;
      }
      
      public function initialize() : void
      {
         this.§8O§.§%H§.addEventListener(§?"%§.SAVE,this.§9!r§);
      }
      
      private function §9!r§(param1:§?"%§) : void
      {
         if(§]!1§.§9j§.canSave())
         {
            §"!S§.doJsCall("save",JSON.stringify(§,"1§.§9j§.§;!7§()),JSON.stringify(this.§3!g§()));
            this.§"%§ = false;
         }
      }
      
      public function get §]!D§() : §+p§
      {
         return this.§>"2§;
      }
      
      public function get camera() : §'L§
      {
         return this.§>"2§.camera;
      }
      
      public function §#e§() : void
      {
         var _loc2_:§>"-§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>"2§.objects.getObjectCount())
         {
            _loc2_ = §>"-§.§0V§(this.§>"2§.objects.getObject(_loc1_));
            _loc2_.§#e§();
            _loc1_++;
         }
      }
      
      public function §7&§(param1:§@!l§) : void
      {
         this.§>"2§.clearLevel();
         this.§>"2§.init(param1);
         this.§>"2§.objects.setGroundTextureEnabled(false);
         §>"-§.§%C§(this.§>"2§.objects);
         this.§>"2§.slingshot.setSlingShotState(§=$§.§,!b§);
         this.§-c§();
         dispatchEvent(new §?"%§(§?"%§.§]"-§));
      }
      
      public function canSave() : Boolean
      {
         return this.§"%§;
      }
      
      public function §#u§() : void
      {
         this.§"%§ = true;
         dispatchEvent(new §?"%§(§?"%§.CHANGE));
      }
      
      public function §3!g§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.data = this.§>"2§.§>7§().§'D§();
         _loc1_.valid = §1""§.§[3§;
         return _loc1_;
      }
      
      public function activate() : void
      {
         this.§7&§(§`!#§.§>! §);
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §&#§(param1:Number, param2:Number) : Point
      {
         return this.§>"2§.§'W§(param1,param2);
      }
      
      public function §5m§(param1:Point) : Object
      {
         var _loc2_:Point = this.§>"2§.screenToBox2D(param1.x,param1.y);
         var _loc3_:Object = this.§>"2§.objects.getObjectFromPoint(_loc2_.x,_loc2_.y);
         if(_loc3_ == null)
         {
            _loc3_ = this.§>"2§.slingshot.getObjectFromPoint(_loc2_.x,_loc2_.y);
         }
         if(_loc3_ == null && this.§>"2§.slingshot.intersectsWithPoint(_loc2_.x,_loc2_.y))
         {
            _loc3_ = this.§>"2§.slingshot;
         }
         if(_loc3_ is §;!x§ && (_loc3_ as §;!x§).isGround())
         {
            return null;
         }
         return _loc3_;
      }
      
      private function §5!y§() : void
      {
         §^d§.§+!f§.§+!^§ = this.§6!3§;
      }
      
      private function §6!3§() : void
      {
         var _loc1_:Object = this.§3!g§();
         var _loc2_:BitmapData = §8!=§();
         var _loc3_:ByteArray = §]!F§.encode(_loc2_);
         _loc1_.screen = Base64.§%"!§(_loc3_);
         §"!S§.doJsCall("onScreenshotReady",JSON.stringify(_loc1_));
      }
      
      public function §!J§() : int
      {
         var _loc1_:int = (AngryBirdsFP11.§8!v§ as §"!e§).§8"3§;
         var _loc2_:int = this.getBlockCount() - this.§-I§();
         var _loc3_:int = this.§8O§.§>f§.§ _§();
         return _loc1_ - _loc2_ + _loc3_;
      }
      
      public function §-Y§() : int
      {
         return §%U§ - this.getStaticCount();
      }
      
      public function §>1§() : int
      {
         return §5"5§ - this.§>"2§.slingshot.getBirdCount();
      }
      
      public function §&"1§() : Vector.<§5!K§>
      {
         return this.§>"2§.slingshot.mBirds;
      }
      
      public function getBirdCount() : int
      {
         return this.§>"2§.slingshot.getBirdCount();
      }
      
      public function getPigCount() : int
      {
         return this.§>"2§.objects.getPigCount();
      }
      
      public function getBlockCount() : int
      {
         return this.§>"2§.§2!H§.getBlockCount();
      }
      
      public function §-I§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§>"2§.§2!H§.getObjectCount())
         {
            if(this.§>"2§.§2!H§.getObject(_loc2_).isMiscBlock())
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         return this.§>"2§.§2!H§.getStaticCount();
      }
      
      public function §^!O§() : §;!x§
      {
         return this.§>"2§.objects.getObject(0);
      }
      
      public function §;!C§(param1:String) : void
      {
      }
      
      public function §?"-§(param1:String, param2:Number, param3:Number) : Object
      {
         if(param1.indexOf("BIRD_") != -1)
         {
            if(this.§>1§() <= 0)
            {
               §<!L§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Bird Limit");
               return null;
            }
         }
         else if(param1.indexOf("TERRAIN_") == 0)
         {
            if(this.§-Y§() <= 0)
            {
               §<!L§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Static Limit");
               return null;
            }
         }
         else if(this.§!J§() <= 0)
         {
            §<!L§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Block Limit");
            return null;
         }
         var _loc4_:Object = null;
         if(param1.indexOf("BIRD_") != -1)
         {
            _loc4_ = this.§>"2§.slingshot.addNewBirdToEndOfList(param1,param2,param3);
         }
         else
         {
            _loc4_ = this.§>"2§.objects.addObject(param1,param2,param3,0);
         }
         if(_loc4_ != null)
         {
            this.§#u§();
         }
         return _loc4_;
      }
      
      public function removeObject(param1:§;!x§) : void
      {
         if(§]!1§.§9j§.§%k§(§>"-§.§0V§(param1)))
         {
            this.§>"2§.objects.removeObject(param1);
            this.§#u§();
         }
      }
      
      public function §=!9§(param1:§5!K§) : void
      {
         this.§>"2§.slingshot.removeObject(param1);
      }
      
      private function §-c§() : void
      {
         var _loc2_:§>"-§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>"2§.objects.getObjectCount())
         {
            _loc2_ = §>"-§.§0V§(this.§>"2§.objects.getObject(_loc1_));
            _loc2_.§<0§();
            _loc1_++;
         }
      }
      
      public function getJoints() : Vector.<§<!1§>
      {
         return this.§>"2§.objects.getJoints();
      }
      
      public function §+!y§(param1:§>"-§, param2:Number, param3:Number) : §>"-§
      {
         var _loc4_:§>"-§ = param1.clone(this.§>"2§,param2,param3);
         this.§#u§();
         return _loc4_;
      }
   }
}
