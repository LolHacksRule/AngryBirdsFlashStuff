package §7"2§
{
   import § !%§.§^2§;
   import §%!n§.§7P§;
   import §%%§.§7!O§;
   import §&"&§.§8!"§;
   import §&"8§.§[`§;
   import §-N§.§=!]§;
   import §1'§.§=!Q§;
   import §3!S§.§%s§;
   import §5!k§.§6"6§;
   import §6!&§.§0!b§;
   import §9!#§.§4X§;
   import §9[§.§["§;
   import §=b§.§5?§;
   import §=b§.§8",§;
   import §=b§.§@!6§;
   import §@!;§.§&F§;
   import §@!;§.Base64;
   import §@!N§.§2i§;
   import §]'§.§0r§;
   import §]r§.§9!R§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.net.SharedObject;
   import flash.utils.ByteArray;
   
   public class § 2§ extends EventDispatcher implements §!"1§
   {
      
      public static const § !c§:int = 200;
      
      public static const § R§:int = 1000;
      
      public static const § H§:int = 8;
      
      private static const §5"7§:String = "LastEditedLevel";
      
      private static var §8X§:SharedObject;
      
      private static var §@n§:Function;
       
      
      private var §6G§:Function;
      
      private var §;!x§:§@!6§;
      
      private var §"Z§:§;!5§;
      
      private var §>;§:Boolean = true;
      
      public function § 2§(param1:§;!5§)
      {
         super();
         this.§"Z§ = param1;
         this.§;!x§ = §%s§.§`!f§ as §@!6§;
      }
      
      public static function §6x§(param1:Function) : void
      {
         §@n§ = param1;
         §=!]§.§@§.§9E§ = §02§;
      }
      
      private static function §02§() : BitmapData
      {
         var _loc1_:Number = §%s§.§2w§();
         var _loc2_:Number = §%s§.§%!^§();
         var _loc3_:BitmapData = new BitmapData(_loc1_,_loc2_,false);
         §=!]§.drawToBitmapData(_loc3_);
         if(§@n§ != null)
         {
            §@n§(_loc3_);
            §@n§ = null;
         }
         return _loc3_;
      }
      
      public function initialize() : void
      {
         this.§"Z§.§[U§.addEventListener(§6"6§.SAVE,this.§^!7§);
      }
      
      private function §^!7§(param1:§6"6§) : void
      {
         if(§7P§.§'!o§.canSave())
         {
            §8!"§.doJsCall("save",JSON.stringify(§[`§.§'!o§.§78§()),JSON.stringify(this.§[!S§()));
            this.§>;§ = false;
         }
      }
      
      public function get §'!E§() : §@!6§
      {
         return this.§;!x§;
      }
      
      public function get camera() : §2i§
      {
         return this.§;!x§.camera;
      }
      
      public function §6!y§() : void
      {
         var _loc2_:§7!O§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;!x§.objects.getObjectCount())
         {
            _loc2_ = §7!O§.§-n§(this.§;!x§.objects.getObject(_loc1_));
            _loc2_.§6!y§();
            _loc1_++;
         }
      }
      
      public function §![§(param1:§0!b§) : void
      {
         this.§;!x§.clearLevel();
         this.§;!x§.init(param1);
         this.§;!x§.objects.setGroundTextureEnabled(false);
         §7!O§.§`t§(this.§;!x§.objects);
         this.§;!x§.slingshot.setSlingShotState(§5?§.§'h§);
         this.§&t§();
         this.§5D§();
         dispatchEvent(new §6"6§(§6"6§.§9"+§));
      }
      
      private function §5D§() : void
      {
         var _loc2_:§7!O§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;!x§.objects.getObjectCount())
         {
            _loc2_ = §7!O§.§-n§(this.§;!x§.objects.getObject(_loc1_));
            if(_loc2_.isTexture())
            {
               _loc2_.§1;§(-1,true);
            }
            _loc1_++;
         }
      }
      
      public function canSave() : Boolean
      {
         return this.§>;§;
      }
      
      public function §"§() : void
      {
         this.§>;§ = true;
         dispatchEvent(new §6"6§(§6"6§.CHANGE));
      }
      
      public function §[!S§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.data = this.§;!x§.§+!3§().§=!I§();
         _loc1_.valid = §4X§.§ !o§;
         return _loc1_;
      }
      
      public function activate() : void
      {
         this.§![§(§0r§.§,!R§);
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function § ;§(param1:Number, param2:Number) : Point
      {
         return this.§;!x§.§,w§(param1,param2);
      }
      
      public function §7k§(param1:Point, param2:Boolean = true) : Object
      {
         var _loc5_:Vector.<§9!R§> = null;
         var _loc6_:§9!R§ = null;
         var _loc3_:Point = this.§;!x§.screenToBox2D(param1.x,param1.y);
         var _loc4_:Object;
         if((_loc4_ = this.§;!x§.slingshot.getObjectFromPoint(_loc3_.x,_loc3_.y)) == null && this.§;!x§.slingshot.intersectsWithPoint(_loc3_.x,_loc3_.y))
         {
            _loc4_ = this.§;!x§.slingshot;
         }
         if(_loc4_ == null)
         {
            _loc5_ = this.§;!x§.objects.getObjectsFromPoint(_loc3_.x,_loc3_.y);
            for each(_loc6_ in _loc5_)
            {
               if(§7P§.§'!o§.§&$§(§7!O§.§-n§(_loc6_)))
               {
                  return _loc6_;
               }
            }
         }
         if(_loc4_ is §9!R§ && (_loc4_ as §9!R§).isGround())
         {
            return null;
         }
         return _loc4_;
      }
      
      private function §-"5§() : void
      {
         §=!]§.§@§.§9E§ = this.§?6§;
      }
      
      private function §?6§() : void
      {
         var _loc1_:Object = this.§[!S§();
         var _loc2_:BitmapData = §02§();
         var _loc3_:ByteArray = §["§.encode(_loc2_);
         _loc1_.screen = Base64.§?"3§(_loc3_);
         §8!"§.doJsCall("onScreenshotReady",JSON.stringify(_loc1_));
      }
      
      public function §=<§() : int
      {
         var _loc1_:int = (AngryBirdsFP11.§5!c§ as §^2§).§[4§;
         var _loc2_:int = this.getBlockCount() - this.§&R§();
         var _loc3_:int = this.§"Z§.§<!B§.§>w§();
         return _loc1_ - _loc2_ + _loc3_;
      }
      
      public function §,V§() : int
      {
         return § R§ - this.getStaticCount();
      }
      
      public function §]6§() : int
      {
         return § H§ - this.§;!x§.slingshot.getBirdCount();
      }
      
      public function §+H§() : Vector.<§8",§>
      {
         return this.§;!x§.slingshot.mBirds;
      }
      
      public function getBirdCount() : int
      {
         return this.§;!x§.slingshot.getBirdCount();
      }
      
      public function getPigCount() : int
      {
         return this.§;!x§.objects.getPigCount();
      }
      
      public function getBlockCount() : int
      {
         return this.§;!x§.§00§.getBlockCount();
      }
      
      public function §&R§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;!x§.§00§.getObjectCount())
         {
            if(this.§;!x§.§00§.getObject(_loc2_).isMiscBlock())
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         return this.§;!x§.§00§.getStaticCount();
      }
      
      public function §,!F§() : §9!R§
      {
         return this.§;!x§.objects.getObject(0);
      }
      
      public function §-,§(param1:String) : void
      {
      }
      
      public function §;!7§(param1:String, param2:Number, param3:Number) : Object
      {
         if(param1.indexOf("BIRD_") != -1)
         {
            if(this.§]6§() <= 0)
            {
               §&F§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Bird Limit");
               return null;
            }
         }
         else if(param1.indexOf("TERRAIN_") == 0)
         {
            if(this.§,V§() <= 0)
            {
               §&F§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Static Limit");
               return null;
            }
         }
         else if(this.§=<§() <= 0)
         {
            §&F§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Block Limit");
            return null;
         }
         var _loc4_:Object = null;
         if(param1.indexOf("BIRD_") != -1)
         {
            _loc4_ = this.§;!x§.slingshot.addNewBirdToEndOfList(param1,param2,param3);
         }
         else
         {
            _loc4_ = this.§;!x§.objects.addObject(param1,param2,param3,0);
         }
         if(_loc4_ != null)
         {
            this.§"§();
         }
         return _loc4_;
      }
      
      public function removeObject(param1:§9!R§) : void
      {
         if(§7P§.§'!o§.§@"7§(§7!O§.§-n§(param1)))
         {
            this.§;!x§.objects.removeObject(param1);
            this.§"§();
         }
      }
      
      public function § "#§(param1:§8",§) : void
      {
         this.§;!x§.slingshot.removeObject(param1);
      }
      
      private function §&t§() : void
      {
         var _loc2_:§7!O§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;!x§.objects.getObjectCount())
         {
            _loc2_ = §7!O§.§-n§(this.§;!x§.objects.getObject(_loc1_));
            _loc2_.§0?§();
            _loc1_++;
         }
      }
      
      public function getJoints() : Vector.<§=!Q§>
      {
         return this.§;!x§.objects.getJoints();
      }
      
      public function §2!-§(param1:§7!O§, param2:Number, param3:Number) : §7!O§
      {
         var _loc4_:§7!O§ = param1.clone(this.§;!x§,param2,param3);
         this.§"§();
         return _loc4_;
      }
   }
}
