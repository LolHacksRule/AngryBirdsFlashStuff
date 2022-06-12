package § ^§
{
   import §#!8§.§&!'§;
   import §&W§.§7L§;
   import §&W§.Base64;
   import §-!+§.§6"6§;
   import §-!H§.§0!]§;
   import §07§.§^P§;
   import §0I§.§`!m§;
   import §0s§.§?!?§;
   import §0s§.§];§;
   import §2b§.§"" §;
   import §4!S§.§<V§;
   import §6O§.§99§;
   import §7!g§.§?!i§;
   import §8!E§.§'4§;
   import §8!E§.§1!6§;
   import §8!E§.§2w§;
   import §=!<§.§5!U§;
   import §=%§.§<A§;
   import §?"&§.§"!q§;
   import §^^§.StateLevelEditorTestPlay;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.net.SharedObject;
   import flash.utils.ByteArray;
   
   public class §%!4§ extends EventDispatcher implements §-!"§
   {
      
      public static const §]A§:int = 200;
      
      public static const §]"$§:int = 1000;
      
      public static const §%"$§:int = 8;
      
      private static const §3M§:String = "LastEditedLevel";
      
      private static var §5!2§:SharedObject;
      
      private static var §=0§:Function;
       
      
      private var §3!S§:Function;
      
      private var §7!;§:§2w§;
      
      private var §`5§:§0c§;
      
      private var §1W§:Boolean = true;
      
      public function §%!4§(param1:§0c§)
      {
         super();
         this.§`5§ = param1;
         this.§7!;§ = §5!U§.§,!E§ as §2w§;
      }
      
      public static function §0D§(param1:Function) : void
      {
         §=0§ = param1;
         §6"6§.§^F§.§[!?§ = §?!+§;
      }
      
      private static function §?!+§() : BitmapData
      {
         var _loc1_:Number = §5!U§.§#!t§();
         var _loc2_:Number = §5!U§.§%" §();
         var _loc3_:BitmapData = new BitmapData(_loc1_,_loc2_,false);
         §6"6§.drawToBitmapData(_loc3_);
         if(§=0§ != null)
         {
            §=0§(_loc3_);
            §=0§ = null;
         }
         return _loc3_;
      }
      
      public function activate() : void
      {
         §@#§.§7!?§.§<?§(this.§<"$§,§@#§.SAVE);
         this.§,!]§(§^P§.§0! §);
      }
      
      public function initialize() : void
      {
         this.§`5§.§!A§.addEventListener(§?!i§.SAVE,this.§4!!§);
      }
      
      private function §4!!§(param1:§?!i§) : void
      {
         if(§@#§.§7!?§.§<"$§())
         {
            §&!'§.doJsCall("save",JSON.stringify(§<V§.§7!?§.§;! §()),JSON.stringify(this.§5]§()));
            this.§1W§ = false;
         }
      }
      
      public function get §9"&§() : §2w§
      {
         return this.§7!;§;
      }
      
      public function get camera() : §"" §
      {
         return this.§7!;§.camera;
      }
      
      public function §^";§() : void
      {
         var _loc2_:§<A§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7!;§.objects.getObjectCount())
         {
            _loc2_ = §<A§.§5y§(this.§7!;§.objects.getObject(_loc1_));
            _loc2_.§^";§();
            _loc1_++;
         }
      }
      
      public function §,!]§(param1:§];§) : void
      {
         this.§7!;§.clearLevel();
         this.§7!;§.init(param1);
         this.§7!;§.objects.setGroundTextureEnabled(false);
         §<A§.§4"1§(this.§7!;§.objects);
         this.§7!;§.slingshot.setSlingShotState(§1!6§.§return§);
         this.§6c§();
         this.§^!n§();
         dispatchEvent(new §?!i§(§?!i§.§0"0§));
      }
      
      private function §^!n§() : void
      {
         var _loc2_:§<A§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7!;§.objects.getObjectCount())
         {
            _loc2_ = §<A§.§5y§(this.§7!;§.objects.getObject(_loc1_));
            if(_loc2_.isTexture())
            {
               _loc2_.§^i§(-1,true);
            }
            _loc1_++;
         }
      }
      
      public function §<"$§() : Boolean
      {
         return this.§1W§;
      }
      
      public function §9!r§() : void
      {
         this.§1W§ = true;
         dispatchEvent(new §?!i§(§?!i§.CHANGE));
      }
      
      public function §5]§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.data = this.§7!;§.§3U§().§+T§();
         _loc1_.valid = StateLevelEditorTestPlay.§#"?§;
         return _loc1_;
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §4!c§(param1:Number, param2:Number) : Point
      {
         return this.§7!;§.§6!;§(param1,param2);
      }
      
      public function §+8§(param1:Point, param2:Boolean = true) : Object
      {
         var _loc5_:Vector.<§"!q§> = null;
         var _loc6_:§"!q§ = null;
         var _loc3_:Point = this.§7!;§.screenToBox2D(param1.x,param1.y);
         var _loc4_:Object;
         if((_loc4_ = this.§7!;§.slingshot.getObjectFromPoint(_loc3_.x,_loc3_.y)) == null && this.§7!;§.slingshot.intersectsWithPoint(_loc3_.x,_loc3_.y))
         {
            _loc4_ = this.§7!;§.slingshot;
         }
         if(_loc4_ == null)
         {
            _loc5_ = this.§7!;§.objects.getObjectsFromPoint(_loc3_.x,_loc3_.y);
            for each(_loc6_ in _loc5_)
            {
               if(§@#§.§7!?§.§9d§(§<A§.§5y§(_loc6_)))
               {
                  return _loc6_;
               }
            }
         }
         if(_loc4_ is §"!q§ && (_loc4_ as §"!q§).isGround())
         {
            return null;
         }
         return _loc4_;
      }
      
      private function §4,§() : void
      {
         §6"6§.§^F§.§[!?§ = this.§=!4§;
      }
      
      private function §=!4§() : void
      {
         var _loc1_:Object = this.§5]§();
         var _loc2_:BitmapData = §?!+§();
         var _loc3_:ByteArray = §99§.encode(_loc2_);
         _loc1_.screen = Base64.§6!A§(_loc3_);
         §&!'§.doJsCall("onScreenshotReady",JSON.stringify(_loc1_));
      }
      
      public function § W§() : int
      {
         var _loc1_:int = (AngryBirdsFP11.§"!c§ as §0!]§).§<`§;
         var _loc2_:int = this.getBlockCount() - this.§>!+§();
         var _loc3_:int = this.§`5§.§+"9§.§[!U§();
         return _loc1_ - _loc2_ + _loc3_;
      }
      
      public function §>!;§() : int
      {
         return §]"$§ - this.getStaticCount();
      }
      
      public function §35§() : int
      {
         return §%"$§ - this.§7!;§.slingshot.getBirdCount();
      }
      
      public function §>!V§() : Vector.<§'4§>
      {
         return this.§7!;§.slingshot.mBirds;
      }
      
      public function getBirdCount() : int
      {
         return this.§7!;§.slingshot.getBirdCount();
      }
      
      public function getPigCount() : int
      {
         return this.§7!;§.objects.getPigCount();
      }
      
      public function getBlockCount() : int
      {
         return this.§7!;§.§4!1§.getBlockCount();
      }
      
      public function §>!+§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7!;§.§4!1§.getObjectCount())
         {
            if(this.§7!;§.§4!1§.getObject(_loc2_).isMiscBlock())
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         return this.§7!;§.§4!1§.getStaticCount();
      }
      
      public function §-U§() : §"!q§
      {
         return this.§7!;§.objects.getObject(0);
      }
      
      public function §92§(param1:String, param2:Number, param3:Number, param4:Boolean = true) : Object
      {
         if(param1.indexOf("BIRD_") != -1)
         {
            if(this.§35§() <= 0)
            {
               §7L§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Bird Limit");
               return null;
            }
         }
         else if(param1.indexOf("TERRAIN_") == 0)
         {
            if(this.§>!;§() <= 0)
            {
               §7L§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Static Limit");
               return null;
            }
         }
         else if(this.§ W§() <= 0)
         {
            §7L§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Block Limit");
            dispatchEvent(new §?!i§(§?!i§.§&?§));
            return null;
         }
         var _loc5_:Object = null;
         if(param1.indexOf("BIRD_") != -1)
         {
            _loc5_ = this.§7!;§.slingshot.addNewBirdToEndOfList(param1,param2,param3);
         }
         else
         {
            _loc5_ = this.§7!;§.objects.addObject(param1,param2,param3,0);
         }
         if(_loc5_ != null && param4)
         {
            this.§9!r§();
         }
         return _loc5_;
      }
      
      public function removeObject(param1:§"!q§) : void
      {
         if(§@#§.§7!?§.§%v§(§<A§.§5y§(param1)))
         {
            this.§7!;§.objects.removeObject(param1);
            this.§9!r§();
         }
      }
      
      public function §-"$§(param1:§'4§) : void
      {
         this.§7!;§.slingshot.removeObject(param1);
      }
      
      private function §6c§() : void
      {
         var _loc2_:§<A§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7!;§.objects.getObjectCount())
         {
            _loc2_ = §<A§.§5y§(this.§7!;§.objects.getObject(_loc1_));
            _loc2_.§#<§();
            _loc1_++;
         }
      }
      
      public function getJoints() : Vector.<§`!m§>
      {
         return this.§7!;§.objects.getJoints();
      }
      
      public function §3m§(param1:§<A§, param2:Number, param3:Number) : §<A§
      {
         return param1.clone(this.§7!;§,param2,param3);
      }
      
      public function get §#"6§() : §?!?§
      {
         return this.§7!;§.§3U§() as §?!?§;
      }
   }
}
