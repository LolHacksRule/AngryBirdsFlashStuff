package §1" §
{
   import §"_§.§!"8§;
   import §%!0§.§%Q§;
   import §%!0§.§&@§;
   import §%!0§.§3"!§;
   import §%!j§.§%K§;
   import §&!P§.§``§;
   import §,!g§.§"!P§;
   import §,P§.§'_§;
   import §05§.§?s§;
   import §5u§.§-"#§;
   import §6U§.§="4§;
   import §6]§.§,"0§;
   import §6]§.Base64;
   import §7!@§.§+`§;
   import §7t§.§7a§;
   import §;" §.§5L§;
   import §;b§.StateLevelEditorTestPlay;
   import §<i§.§'!e§;
   import §<i§.§-"?§;
   import §[!P§.§@R§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   
   public class §6!2§ extends EventDispatcher implements §4!x§
   {
      
      public static const §6=§:int = 200;
      
      public static const §1!V§:int = 1000;
      
      public static const §&!g§:int = 8;
      
      private static var §!!O§:Function;
       
      
      private var §'!=§:Function;
      
      private var §`!G§:§&@§;
      
      private var §9J§:§#!j§;
      
      private var §4!u§:Boolean = true;
      
      public function §6!2§(param1:§#!j§)
      {
         super();
         this.§9J§ = param1;
         this.§`!G§ = §'_§.§=M§ as §&@§;
      }
      
      public static function §'" §(param1:Function) : void
      {
         §!!O§ = param1;
         §%K§.§`9§.§>"§ = §7""§;
      }
      
      private static function §7""§() : BitmapData
      {
         var _loc1_:Number = §'_§.§implements§();
         var _loc2_:Number = §'_§.§6l§();
         var _loc3_:BitmapData = new BitmapData(_loc1_,_loc2_,false);
         §%K§.drawToBitmapData(_loc3_);
         if(§!!O§ != null)
         {
            §!!O§(_loc3_);
            §!!O§ = null;
         }
         return _loc3_;
      }
      
      public function activate() : void
      {
         §!!2§.§[E§.§[j§(this.§?!p§,§!!2§.SAVE);
         this.§@!0§(§-"#§.§3"=§);
      }
      
      public function initialize() : void
      {
         this.§9J§.§<!_§.addEventListener(§!"8§.SAVE,this.§ =§);
      }
      
      private function § =§(param1:§!"8§) : void
      {
         if(§!!2§.§[E§.§?!p§())
         {
            §5L§.§[E§.§2!q§();
            this.§4!u§ = false;
         }
      }
      
      public function get §0z§() : §&@§
      {
         return this.§`!G§;
      }
      
      public function get camera() : §"!P§
      {
         return this.§`!G§.camera;
      }
      
      public function §8!b§() : void
      {
         var _loc2_:§7a§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`!G§.objects.getObjectCount())
         {
            _loc2_ = §7a§.§^!g§(this.§`!G§.objects.getObject(_loc1_));
            _loc2_.§8!b§();
            _loc1_++;
         }
      }
      
      public function §@!0§(param1:§'!e§) : void
      {
         this.§`!G§.clearLevel();
         this.§`!G§.init(param1);
         this.§`!G§.objects.setGroundTextureEnabled(false);
         §7a§.§3!G§(this.§`!G§.objects);
         this.§`!G§.slingshot.setSlingShotState(§3"!§.§3"4§);
         this.§?"7§();
         this.§7!F§();
         dispatchEvent(new §!"8§(§!"8§.§"`§));
      }
      
      private function §7!F§() : void
      {
         var _loc2_:§7a§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`!G§.objects.getObjectCount())
         {
            _loc2_ = §7a§.§^!g§(this.§`!G§.objects.getObject(_loc1_));
            if(_loc2_.isTexture())
            {
               _loc2_.§#!1§(-1,true);
            }
            _loc1_++;
         }
      }
      
      public function §?!p§() : Boolean
      {
         return this.§4!u§;
      }
      
      public function §-v§() : void
      {
         this.§4!u§ = true;
         dispatchEvent(new §!"8§(§!"8§.CHANGE));
      }
      
      public function §9!h§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.data = this.§`!G§.§1!l§().§6" §();
         _loc1_.valid = StateLevelEditorTestPlay.§3!%§;
         return _loc1_;
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §2!f§(param1:Number, param2:Number) : Point
      {
         return this.§`!G§.§4!5§(param1,param2);
      }
      
      public function §'!3§(param1:Point, param2:Boolean = true) : Object
      {
         var _loc5_:Vector.<§``§> = null;
         var _loc6_:§``§ = null;
         var _loc3_:Point = this.§`!G§.screenToBox2D(param1.x,param1.y);
         var _loc4_:Object;
         if((_loc4_ = this.§`!G§.slingshot.getObjectFromPoint(_loc3_.x,_loc3_.y)) == null && this.§`!G§.slingshot.intersectsWithPoint(_loc3_.x,_loc3_.y))
         {
            _loc4_ = this.§`!G§.slingshot;
         }
         if(_loc4_ == null)
         {
            _loc5_ = this.§`!G§.objects.getObjectsFromPoint(_loc3_.x,_loc3_.y);
            for each(_loc6_ in _loc5_)
            {
               if(§!!2§.§[E§.§'%§(§7a§.§^!g§(_loc6_)))
               {
                  return _loc6_;
               }
            }
         }
         if(_loc4_ is §``§ && (_loc4_ as §``§).isGround())
         {
            return null;
         }
         return _loc4_;
      }
      
      private function §#!$§() : void
      {
         §%K§.§`9§.§>"§ = this.§"u§;
      }
      
      private function §"u§() : void
      {
         var _loc1_:Object = this.§9!h§();
         var _loc2_:BitmapData = §7""§();
         var _loc3_:ByteArray = §="4§.encode(_loc2_);
         _loc1_.screen = Base64.§7o§(_loc3_);
         §?s§.doJsCall("onScreenshotReady",JSON.stringify(_loc1_));
      }
      
      public function §=!I§() : int
      {
         var _loc1_:int = (AngryBirdsFP11.§>!7§ as §+`§).§#!r§;
         var _loc2_:int = this.getBlockCount() - this.§>y§();
         var _loc3_:int = this.§9J§.§9L§.§[i§();
         return _loc1_ - _loc2_ + _loc3_;
      }
      
      public function §0J§() : int
      {
         return §1!V§ - this.getStaticCount();
      }
      
      public function §<!%§() : int
      {
         return §&!g§ - this.§`!G§.slingshot.getBirdCount();
      }
      
      public function §+P§() : Vector.<§%Q§>
      {
         return this.§`!G§.slingshot.mBirds;
      }
      
      public function getBirdCount() : int
      {
         return this.§`!G§.slingshot.getBirdCount();
      }
      
      public function getPigCount() : int
      {
         return this.§`!G§.objects.getPigCount();
      }
      
      public function getBlockCount() : int
      {
         return this.§`!G§.§0n§.getBlockCount();
      }
      
      public function §>y§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!G§.§0n§.getObjectCount())
         {
            if(this.§`!G§.§0n§.getObject(_loc2_).isMiscBlock())
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         return this.§`!G§.§0n§.getStaticCount();
      }
      
      public function §6!T§() : §``§
      {
         return this.§`!G§.objects.getObject(0);
      }
      
      public function §,!D§(param1:String, param2:Number, param3:Number, param4:Boolean = true) : Object
      {
         if(param1.indexOf("BIRD_") != -1)
         {
            if(this.§<!%§() <= 0)
            {
               §,"0§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Bird Limit");
               return null;
            }
         }
         else if(param1.indexOf("TERRAIN_") == 0)
         {
            if(this.§0J§() <= 0)
            {
               §,"0§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Static Limit");
               return null;
            }
         }
         else if(param1.indexOf("MISC_") != 0 && this.§=!I§() <= 0)
         {
            §,"0§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Block Limit");
            dispatchEvent(new §!"8§(§!"8§.§%"-§));
            return null;
         }
         var _loc5_:Object = null;
         if(param1.indexOf("BIRD_") != -1)
         {
            _loc5_ = this.§`!G§.slingshot.addNewBirdToEndOfList(param1,param2,param3);
         }
         else
         {
            _loc5_ = this.§`!G§.objects.addObject(param1,param2,param3,0);
         }
         if(_loc5_ != null && param4)
         {
            this.§-v§();
         }
         return _loc5_;
      }
      
      public function §<!8§(param1:Vector.<§7a§>) : void
      {
         var _loc3_:§7a§ = null;
         var _loc2_:Boolean = false;
         for each(_loc3_ in param1)
         {
            if(§!!2§.§[E§.§#§(_loc3_))
            {
               if(_loc3_.getObject() is §``§)
               {
                  this.§`!G§.objects.removeObject(_loc3_.getObject());
                  _loc2_ = true;
               }
               else if(_loc3_.getObject() is §%Q§)
               {
                  this.§26§(_loc3_.getObject() as §%Q§);
                  _loc2_ = true;
               }
            }
         }
         if(_loc2_)
         {
            this.§-v§();
         }
      }
      
      public function removeObject(param1:§``§) : void
      {
         if(§!!2§.§[E§.§#§(§7a§.§^!g§(param1)))
         {
            this.§`!G§.objects.removeObject(param1);
            this.§-v§();
         }
      }
      
      public function §26§(param1:§%Q§) : void
      {
         this.§`!G§.slingshot.removeObject(param1);
      }
      
      private function §?"7§() : void
      {
         var _loc2_:§7a§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`!G§.objects.getObjectCount())
         {
            _loc2_ = §7a§.§^!g§(this.§`!G§.objects.getObject(_loc1_));
            _loc2_.§;!>§();
            _loc1_++;
         }
      }
      
      public function getJoints() : Vector.<§@R§>
      {
         return this.§`!G§.objects.getJoints();
      }
      
      public function §=j§(param1:§7a§, param2:Number, param3:Number) : §7a§
      {
         return param1.clone(this.§`!G§,param2,param3);
      }
      
      public function get §,w§() : §-"?§
      {
         return this.§`!G§.§1!l§() as §-"?§;
      }
   }
}
