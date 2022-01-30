package §,!x§
{
   import §"p§.§@8§;
   import §"p§.Base64;
   import §-=§.§8"1§;
   import §0E§.§#O§;
   import §0E§.§@R§;
   import §1!N§.§"!k§;
   import §2!w§.§[D§;
   import §3",§.§0"<§;
   import §4!#§.§60§;
   import §7"1§.§%W§;
   import §7K§.§@";§;
   import §7N§.StateLevelEditorTestPlay;
   import §=e§.§1!@§;
   import §>!#§.§-""§;
   import §>";§.§#§;
   import §?",§.§7"?§;
   import §@r§.§3!+§;
   import §[B§.§,!f§;
   import §[B§.§1!z§;
   import §[B§.§^W§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.net.SharedObject;
   import flash.utils.ByteArray;
   
   public class §1g§ extends EventDispatcher implements §]!'§
   {
      
      public static const §-S§:int = 200;
      
      public static const §&!L§:int = 1000;
      
      public static const §;!6§:int = 8;
      
      private static const §[=§:String = "LastEditedLevel";
      
      private static var §7M§:SharedObject;
      
      private static var §;!V§:Function;
       
      
      private var §?!R§:Function;
      
      private var §]!3§:§1!z§;
      
      private var §[",§:§]S§;
      
      private var §,!Z§:Boolean = true;
      
      public function §1g§(param1:§]S§)
      {
         super();
         this.§[",§ = param1;
         this.§]!3§ = §%W§.§5"8§ as §1!z§;
      }
      
      public static function §>!7§(param1:Function) : void
      {
         §;!V§ = param1;
         §0"<§.§<?§.§4!V§ = §0!`§;
      }
      
      private static function §0!`§() : BitmapData
      {
         var _loc1_:Number = §%W§.§;v§();
         var _loc2_:Number = §%W§.§>^§();
         var _loc3_:BitmapData = new BitmapData(_loc1_,_loc2_,false);
         §0"<§.drawToBitmapData(_loc3_);
         if(§;!V§ != null)
         {
            §;!V§(_loc3_);
            §;!V§ = null;
         }
         return _loc3_;
      }
      
      public function activate() : void
      {
         §0!s§.§ "!§.§3"'§(this.§-U§,§0!s§.SAVE);
         this.§-"1§(§-""§.§,,§);
      }
      
      public function initialize() : void
      {
         this.§[",§.§]!c§.addEventListener(§8"1§.SAVE,this.§;X§);
      }
      
      private function §;X§(param1:§8"1§) : void
      {
         if(§0!s§.§ "!§.§-U§())
         {
            §1!@§.doJsCall("save",JSON.stringify(§[D§.§ "!§.§4"5§()),JSON.stringify(this.§<%§()));
            this.§,!Z§ = false;
         }
      }
      
      public function get §9!8§() : §1!z§
      {
         return this.§]!3§;
      }
      
      public function get camera() : §3!+§
      {
         return this.§]!3§.camera;
      }
      
      public function §7,§() : void
      {
         var _loc2_:§"!k§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!3§.objects.getObjectCount())
         {
            _loc2_ = §"!k§.§2"5§(this.§]!3§.objects.getObject(_loc1_));
            _loc2_.§7,§();
            _loc1_++;
         }
      }
      
      public function §-"1§(param1:§#O§) : void
      {
         this.§]!3§.clearLevel();
         this.§]!3§.init(param1);
         this.§]!3§.objects.setGroundTextureEnabled(false);
         §"!k§.§[k§(this.§]!3§.objects);
         this.§]!3§.slingshot.setSlingShotState(§^W§.§07§);
         this.§&!§();
         this.§6"8§();
         dispatchEvent(new §8"1§(§8"1§.§["<§));
      }
      
      private function §6"8§() : void
      {
         var _loc2_:§"!k§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!3§.objects.getObjectCount())
         {
            _loc2_ = §"!k§.§2"5§(this.§]!3§.objects.getObject(_loc1_));
            if(_loc2_.isTexture())
            {
               _loc2_.§-+§(-1,true);
            }
            _loc1_++;
         }
      }
      
      public function §-U§() : Boolean
      {
         return this.§,!Z§;
      }
      
      public function §"!§() : void
      {
         this.§,!Z§ = true;
         dispatchEvent(new §8"1§(§8"1§.CHANGE));
      }
      
      public function §<%§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.data = this.§]!3§.§9!4§().§4!U§();
         _loc1_.valid = StateLevelEditorTestPlay.§+c§;
         return _loc1_;
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §`"<§(param1:Number, param2:Number) : Point
      {
         return this.§]!3§.§!C§(param1,param2);
      }
      
      public function §2!f§(param1:Point, param2:Boolean = true) : Object
      {
         var _loc5_:Vector.<§60§> = null;
         var _loc6_:§60§ = null;
         var _loc3_:Point = this.§]!3§.screenToBox2D(param1.x,param1.y);
         var _loc4_:Object;
         if((_loc4_ = this.§]!3§.slingshot.getObjectFromPoint(_loc3_.x,_loc3_.y)) == null && this.§]!3§.slingshot.intersectsWithPoint(_loc3_.x,_loc3_.y))
         {
            _loc4_ = this.§]!3§.slingshot;
         }
         if(_loc4_ == null)
         {
            _loc5_ = this.§]!3§.objects.getObjectsFromPoint(_loc3_.x,_loc3_.y);
            for each(_loc6_ in _loc5_)
            {
               if(§0!s§.§ "!§.§in§(§"!k§.§2"5§(_loc6_)))
               {
                  return _loc6_;
               }
            }
         }
         if(_loc4_ is §60§ && (_loc4_ as §60§).isGround())
         {
            return null;
         }
         return _loc4_;
      }
      
      private function §"!w§() : void
      {
         §0"<§.§<?§.§4!V§ = this.§5<§;
      }
      
      private function §5<§() : void
      {
         var _loc1_:Object = this.§<%§();
         var _loc2_:BitmapData = §0!`§();
         var _loc3_:ByteArray = §@";§.encode(_loc2_);
         _loc1_.screen = Base64.§7!6§(_loc3_);
         §1!@§.doJsCall("onScreenshotReady",JSON.stringify(_loc1_));
      }
      
      public function §"3§() : int
      {
         var _loc1_:int = (AngryBirdsFP11.§`!j§ as §#§).§5"#§;
         var _loc2_:int = this.getBlockCount() - this.§8S§();
         var _loc3_:int = this.§[",§.§3!V§.§>]§();
         return _loc1_ - _loc2_ + _loc3_;
      }
      
      public function §,3§() : int
      {
         return §&!L§ - this.getStaticCount();
      }
      
      public function §>"7§() : int
      {
         return §;!6§ - this.§]!3§.slingshot.getBirdCount();
      }
      
      public function §'!W§() : Vector.<§,!f§>
      {
         return this.§]!3§.slingshot.mBirds;
      }
      
      public function getBirdCount() : int
      {
         return this.§]!3§.slingshot.getBirdCount();
      }
      
      public function getPigCount() : int
      {
         return this.§]!3§.objects.getPigCount();
      }
      
      public function getBlockCount() : int
      {
         return this.§]!3§.§2![§.getBlockCount();
      }
      
      public function §8S§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!3§.§2![§.getObjectCount())
         {
            if(this.§]!3§.§2![§.getObject(_loc2_).isMiscBlock())
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         return this.§]!3§.§2![§.getStaticCount();
      }
      
      public function §6^§() : §60§
      {
         return this.§]!3§.objects.getObject(0);
      }
      
      public function §@"§(param1:String, param2:Number, param3:Number, param4:Boolean = true) : Object
      {
         if(param1.indexOf("BIRD_") != -1)
         {
            if(this.§>"7§() <= 0)
            {
               §@8§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Bird Limit");
               return null;
            }
         }
         else if(param1.indexOf("TERRAIN_") == 0)
         {
            if(this.§,3§() <= 0)
            {
               §@8§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Static Limit");
               return null;
            }
         }
         else if(this.§"3§() <= 0)
         {
            §@8§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Block Limit");
            dispatchEvent(new §8"1§(§8"1§.§-!Z§));
            return null;
         }
         var _loc5_:Object = null;
         if(param1.indexOf("BIRD_") != -1)
         {
            _loc5_ = this.§]!3§.slingshot.addNewBirdToEndOfList(param1,param2,param3);
         }
         else
         {
            _loc5_ = this.§]!3§.objects.addObject(param1,param2,param3,0);
         }
         if(_loc5_ != null && param4)
         {
            this.§"!§();
         }
         return _loc5_;
      }
      
      public function removeObject(param1:§60§) : void
      {
         if(§0!s§.§ "!§.§]!I§(§"!k§.§2"5§(param1)))
         {
            this.§]!3§.objects.removeObject(param1);
            this.§"!§();
         }
      }
      
      public function §2W§(param1:§,!f§) : void
      {
         this.§]!3§.slingshot.removeObject(param1);
      }
      
      private function §&!§() : void
      {
         var _loc2_:§"!k§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!3§.objects.getObjectCount())
         {
            _loc2_ = §"!k§.§2"5§(this.§]!3§.objects.getObject(_loc1_));
            _loc2_.§!&§();
            _loc1_++;
         }
      }
      
      public function getJoints() : Vector.<§7"?§>
      {
         return this.§]!3§.objects.getJoints();
      }
      
      public function §[#§(param1:§"!k§, param2:Number, param3:Number) : §"!k§
      {
         return param1.clone(this.§]!3§,param2,param3);
      }
      
      public function get §=c§() : §@R§
      {
         return this.§]!3§.§9!4§() as §@R§;
      }
   }
}
