package §'i§
{
   import § "@§.StateLevelEditorTestPlay;
   import §"v§.§9"§;
   import §"v§.§]!B§;
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §+!o§.§]"5§;
   import §3!t§.include;
   import §3"5§.§ !,§;
   import §5!V§.§1!L§;
   import §5!V§.§>n§;
   import §5!V§.§[!6§;
   import §62§.§0!t§;
   import §6p§.§?%§;
   import §7r§.§=q§;
   import §8" §.§,!q§;
   import §=!#§.§`"=§;
   import §=!M§.§9!P§;
   import §=!M§.Base64;
   import §="6§.§^"8§;
   import §^!y§.§'"#§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.net.SharedObject;
   import flash.utils.ByteArray;
   
   public class § "+§ extends EventDispatcher implements §8p§
   {
      
      public static const §-§:int = 200;
      
      public static const §try §:int = 1000;
      
      public static const §%!l§:int = 8;
      
      private static const §6"7§:String = "LastEditedLevel";
      
      private static var §2!l§:SharedObject;
      
      private static var §4!y§:Function;
       
      
      private var §#"&§:Function;
      
      private var §9q§:§1!L§;
      
      private var §6!^§:§'!;§;
      
      private var §@B§:Boolean = true;
      
      public function § "+§(param1:§'!;§)
      {
         super();
         this.§6!^§ = param1;
         this.§9q§ = §=!X§.§!'§ as §1!L§;
      }
      
      public static function §2&§(param1:Function) : void
      {
         §4!y§ = param1;
         §?%§.§%b§.§[!Z§ = §6"8§;
      }
      
      private static function §6"8§() : BitmapData
      {
         var _loc1_:Number = §=!X§.§7,§();
         var _loc2_:Number = §=!X§.§3?§();
         var _loc3_:BitmapData = new BitmapData(_loc1_,_loc2_,false);
         §?%§.drawToBitmapData(_loc3_);
         if(§4!y§ != null)
         {
            §4!y§(_loc3_);
            §4!y§ = null;
         }
         return _loc3_;
      }
      
      public function activate() : void
      {
         §,!1§.§2=§.§8!5§(this.§-!Q§,§,!1§.SAVE);
         this.§48§(§^"8§.§7K§);
      }
      
      public function initialize() : void
      {
         this.§6!^§.§+"2§.addEventListener(§0!t§.SAVE,this.§9"9§);
      }
      
      private function §9"9§(param1:§0!t§) : void
      {
         if(§,!1§.§2=§.§-!Q§())
         {
            §4m§.doJsCall("save",JSON.stringify(§,!q§.§2=§.§[!K§()),JSON.stringify(this.§`!U§()));
            this.§@B§ = false;
         }
      }
      
      public function get §4+§() : §1!L§
      {
         return this.§9q§;
      }
      
      public function get camera() : §`"=§
      {
         return this.§9q§.camera;
      }
      
      public function §21§() : void
      {
         var _loc2_:§=q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9q§.objects.getObjectCount())
         {
            _loc2_ = §=q§.§0"§(this.§9q§.objects.getObject(_loc1_));
            _loc2_.§21§();
            _loc1_++;
         }
      }
      
      public function §48§(param1:§9"§) : void
      {
         this.§9q§.clearLevel();
         this.§9q§.init(param1);
         this.§9q§.objects.setGroundTextureEnabled(false);
         §=q§.§+!2§(this.§9q§.objects);
         this.§9q§.slingshot.setSlingShotState(§[!6§.§[B§);
         this.§9v§();
         this.§><§();
         dispatchEvent(new §0!t§(§0!t§.§4T§));
      }
      
      private function §><§() : void
      {
         var _loc2_:§=q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9q§.objects.getObjectCount())
         {
            _loc2_ = §=q§.§0"§(this.§9q§.objects.getObject(_loc1_));
            if(_loc2_.isTexture())
            {
               _loc2_.§0q§(-1,true);
            }
            _loc1_++;
         }
      }
      
      public function §-!Q§() : Boolean
      {
         return this.§@B§;
      }
      
      public function § f§() : void
      {
         this.§@B§ = true;
         dispatchEvent(new §0!t§(§0!t§.CHANGE));
      }
      
      public function §`!U§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.data = this.§9q§.§6!P§().§%4§();
         _loc1_.valid = StateLevelEditorTestPlay.§^!M§;
         return _loc1_;
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §!!3§(param1:Number, param2:Number) : Point
      {
         return this.§9q§.§&g§(param1,param2);
      }
      
      public function §]!l§(param1:Point, param2:Boolean = true) : Object
      {
         var _loc5_:Vector.<§]"5§> = null;
         var _loc6_:§]"5§ = null;
         var _loc3_:Point = this.§9q§.screenToBox2D(param1.x,param1.y);
         var _loc4_:Object;
         if((_loc4_ = this.§9q§.slingshot.getObjectFromPoint(_loc3_.x,_loc3_.y)) == null && this.§9q§.slingshot.intersectsWithPoint(_loc3_.x,_loc3_.y))
         {
            _loc4_ = this.§9q§.slingshot;
         }
         if(_loc4_ == null)
         {
            _loc5_ = this.§9q§.objects.getObjectsFromPoint(_loc3_.x,_loc3_.y);
            for each(_loc6_ in _loc5_)
            {
               if(§,!1§.§2=§.§>L§(§=q§.§0"§(_loc6_)))
               {
                  return _loc6_;
               }
            }
         }
         if(_loc4_ is §]"5§ && (_loc4_ as §]"5§).isGround())
         {
            return null;
         }
         return _loc4_;
      }
      
      private function § !j§() : void
      {
         §?%§.§%b§.§[!Z§ = this.§""6§;
      }
      
      private function §""6§() : void
      {
         var _loc1_:Object = this.§`!U§();
         var _loc2_:BitmapData = §6"8§();
         var _loc3_:ByteArray = include.encode(_loc2_);
         _loc1_.screen = Base64.§<_§(_loc3_);
         §4m§.doJsCall("onScreenshotReady",JSON.stringify(_loc1_));
      }
      
      public function §4!3§() : int
      {
         var _loc1_:int = (AngryBirdsFP11.§>" § as §'"#§).§!T§;
         var _loc2_:int = this.getBlockCount() - this.§[S§();
         var _loc3_:int = this.§6!^§.§4!4§.§;!J§();
         return _loc1_ - _loc2_ + _loc3_;
      }
      
      public function §#=§() : int
      {
         return §try § - this.getStaticCount();
      }
      
      public function §4!m§() : int
      {
         return §%!l§ - this.§9q§.slingshot.getBirdCount();
      }
      
      public function §98§() : Vector.<§>n§>
      {
         return this.§9q§.slingshot.mBirds;
      }
      
      public function getBirdCount() : int
      {
         return this.§9q§.slingshot.getBirdCount();
      }
      
      public function getPigCount() : int
      {
         return this.§9q§.objects.getPigCount();
      }
      
      public function getBlockCount() : int
      {
         return this.§9q§.§1!V§.getBlockCount();
      }
      
      public function §[S§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§9q§.§1!V§.getObjectCount())
         {
            if(this.§9q§.§1!V§.getObject(_loc2_).isMiscBlock())
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         return this.§9q§.§1!V§.getStaticCount();
      }
      
      public function §[6§() : §]"5§
      {
         return this.§9q§.objects.getObject(0);
      }
      
      public function §9%§(param1:String, param2:Number, param3:Number, param4:Boolean = true) : Object
      {
         if(param1.indexOf("BIRD_") != -1)
         {
            if(this.§4!m§() <= 0)
            {
               §9!P§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Bird Limit");
               return null;
            }
         }
         else if(param1.indexOf("TERRAIN_") == 0)
         {
            if(this.§#=§() <= 0)
            {
               §9!P§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Static Limit");
               return null;
            }
         }
         else if(this.§4!3§() <= 0)
         {
            §9!P§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Block Limit");
            dispatchEvent(new §0!t§(§0!t§.§ 6§));
            return null;
         }
         var _loc5_:Object = null;
         if(param1.indexOf("BIRD_") != -1)
         {
            _loc5_ = this.§9q§.slingshot.addNewBirdToEndOfList(param1,param2,param3);
         }
         else
         {
            _loc5_ = this.§9q§.objects.addObject(param1,param2,param3,0);
         }
         if(_loc5_ != null && param4)
         {
            this.§ f§();
         }
         return _loc5_;
      }
      
      public function removeObject(param1:§]"5§) : void
      {
         if(§,!1§.§2=§.§,h§(§=q§.§0"§(param1)))
         {
            this.§9q§.objects.removeObject(param1);
            this.§ f§();
         }
      }
      
      public function §5,§(param1:§>n§) : void
      {
         this.§9q§.slingshot.removeObject(param1);
      }
      
      private function §9v§() : void
      {
         var _loc2_:§=q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9q§.objects.getObjectCount())
         {
            _loc2_ = §=q§.§0"§(this.§9q§.objects.getObject(_loc1_));
            _loc2_.§]<§();
            _loc1_++;
         }
      }
      
      public function getJoints() : Vector.<§ !,§>
      {
         return this.§9q§.objects.getJoints();
      }
      
      public function §&!%§(param1:§=q§, param2:Number, param3:Number) : §=q§
      {
         return param1.clone(this.§9q§,param2,param3);
      }
      
      public function get §'";§() : §]!B§
      {
         return this.§9q§.§6!P§() as §]!B§;
      }
   }
}
