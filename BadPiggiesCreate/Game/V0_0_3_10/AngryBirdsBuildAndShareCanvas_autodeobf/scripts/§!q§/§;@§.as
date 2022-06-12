package §!q§
{
   import §%!I§.§3g§;
   import §%!k§.§&^§;
   import §+!v§.§`!t§;
   import §,i§.§4!q§;
   import §1!p§.§`!#§;
   import §1U§.§"!V§;
   import §2!§.§1!n§;
   import §3;§.§#!C§;
   import §4!s§.§#!,§;
   import §4!s§.§4^§;
   import §4!s§.§`!7§;
   import §5!5§.§^e§;
   import §7M§.§+R§;
   import §8"'§.§?!`§;
   import §9!G§.Base64;
   import §9!G§.§]!e§;
   import §="$§.§?3§;
   import §="§.§`T§;
   import §?^§.§0Q§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.net.SharedObject;
   import flash.utils.ByteArray;
   
   public class §;@§ extends EventDispatcher implements §2j§
   {
      
      public static const §^"8§:int = 200;
      
      public static const §"!O§:int = 1000;
      
      public static const §`a§:int = 8;
      
      private static const §%$§:String = "LastEditedLevel";
      
      private static var §>2§:SharedObject;
      
      private static var §8!1§:Function;
       
      
      private var §91§:Function;
      
      private var §,!T§:§#!,§;
      
      private var §5!V§:§84§;
      
      private var §0"9§:Boolean = true;
      
      public function §;@§(param1:§84§)
      {
         super();
         this.§5!V§ = param1;
         this.§,!T§ = §"!V§.§!j§ as §#!,§;
      }
      
      public static function §-y§(param1:Function) : void
      {
         §8!1§ = param1;
         §^e§.§-_§.§,!B§ = §@!e§;
      }
      
      private static function §@!e§() : BitmapData
      {
         var _loc1_:Number = §"!V§.§ !N§();
         var _loc2_:Number = §"!V§.§@!w§();
         var _loc3_:BitmapData = new BitmapData(_loc1_,_loc2_,false);
         §^e§.drawToBitmapData(_loc3_);
         if(§8!1§ != null)
         {
            §8!1§(_loc3_);
            §8!1§ = null;
         }
         return _loc3_;
      }
      
      public function activate() : void
      {
         § %§.§,l§.§]!0§(this.§#G§,§ %§.SAVE);
         this.§52§(§`!t§.§@o§);
      }
      
      public function initialize() : void
      {
         this.§5!V§.§<B§.addEventListener(§#!C§.SAVE,this.§">§);
      }
      
      private function §">§(param1:§#!C§) : void
      {
         if(§ %§.§,l§.§#G§())
         {
            §?!`§.doJsCall("save",JSON.stringify(§?3§.§,l§.§@!B§()),JSON.stringify(this.§<3§()));
            this.§0"9§ = false;
         }
      }
      
      public function get §^"'§() : §#!,§
      {
         return this.§,!T§;
      }
      
      public function get camera() : §1!n§
      {
         return this.§,!T§.camera;
      }
      
      public function § !c§() : void
      {
         var _loc2_:§0Q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,!T§.objects.getObjectCount())
         {
            _loc2_ = §0Q§.§super§(this.§,!T§.objects.getObject(_loc1_));
            _loc2_.§ !c§();
            _loc1_++;
         }
      }
      
      public function §52§(param1:§+R§) : void
      {
         this.§,!T§.clearLevel();
         this.§,!T§.init(param1);
         this.§,!T§.objects.setGroundTextureEnabled(false);
         §0Q§.§^!f§(this.§,!T§.objects);
         this.§,!T§.slingshot.setSlingShotState(§4^§.§2"3§);
         this.§%i§();
         this.§>i§();
         dispatchEvent(new §#!C§(§#!C§.§&!J§));
      }
      
      private function §>i§() : void
      {
         var _loc2_:§0Q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,!T§.objects.getObjectCount())
         {
            _loc2_ = §0Q§.§super§(this.§,!T§.objects.getObject(_loc1_));
            if(_loc2_.isTexture())
            {
               _loc2_.§,!I§(-1,true);
            }
            _loc1_++;
         }
      }
      
      public function §#G§() : Boolean
      {
         return this.§0"9§;
      }
      
      public function §=Q§() : void
      {
         this.§0"9§ = true;
         dispatchEvent(new §#!C§(§#!C§.CHANGE));
      }
      
      public function §<3§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.data = this.§,!T§.§&!7§().§?"#§();
         _loc1_.valid = §4!q§.§;!3§;
         return _loc1_;
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §>!<§(param1:Number, param2:Number) : Point
      {
         return this.§,!T§.§?!+§(param1,param2);
      }
      
      public function §,!_§(param1:Point, param2:Boolean = true) : Object
      {
         var _loc5_:Vector.<§`T§> = null;
         var _loc6_:§`T§ = null;
         var _loc3_:Point = this.§,!T§.screenToBox2D(param1.x,param1.y);
         var _loc4_:Object;
         if((_loc4_ = this.§,!T§.slingshot.getObjectFromPoint(_loc3_.x,_loc3_.y)) == null && this.§,!T§.slingshot.intersectsWithPoint(_loc3_.x,_loc3_.y))
         {
            _loc4_ = this.§,!T§.slingshot;
         }
         if(_loc4_ == null)
         {
            _loc5_ = this.§,!T§.objects.getObjectsFromPoint(_loc3_.x,_loc3_.y);
            for each(_loc6_ in _loc5_)
            {
               if(§ %§.§,l§.§?!7§(§0Q§.§super§(_loc6_)))
               {
                  return _loc6_;
               }
            }
         }
         if(_loc4_ is §`T§ && (_loc4_ as §`T§).isGround())
         {
            return null;
         }
         return _loc4_;
      }
      
      private function §-n§() : void
      {
         §^e§.§-_§.§,!B§ = this.§'"'§;
      }
      
      private function §'"'§() : void
      {
         var _loc1_:Object = this.§<3§();
         var _loc2_:BitmapData = §@!e§();
         var _loc3_:ByteArray = §&^§.encode(_loc2_);
         _loc1_.screen = Base64.§,!8§(_loc3_);
         §?!`§.doJsCall("onScreenshotReady",JSON.stringify(_loc1_));
      }
      
      public function §7@§() : int
      {
         var _loc1_:int = (AngryBirdsFP11.§<U§ as §`!#§).§+y§;
         var _loc2_:int = this.getBlockCount() - this.§1A§();
         var _loc3_:int = this.§5!V§.§@"0§.§3!`§();
         return _loc1_ - _loc2_ + _loc3_;
      }
      
      public function §7!`§() : int
      {
         return §"!O§ - this.getStaticCount();
      }
      
      public function §1!R§() : int
      {
         return §`a§ - this.§,!T§.slingshot.getBirdCount();
      }
      
      public function §?!@§() : Vector.<§`!7§>
      {
         return this.§,!T§.slingshot.mBirds;
      }
      
      public function getBirdCount() : int
      {
         return this.§,!T§.slingshot.getBirdCount();
      }
      
      public function getPigCount() : int
      {
         return this.§,!T§.objects.getPigCount();
      }
      
      public function getBlockCount() : int
      {
         return this.§,!T§.§6!"§.getBlockCount();
      }
      
      public function §1A§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!T§.§6!"§.getObjectCount())
         {
            if(this.§,!T§.§6!"§.getObject(_loc2_).isMiscBlock())
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         return this.§,!T§.§6!"§.getStaticCount();
      }
      
      public function §8$§() : §`T§
      {
         return this.§,!T§.objects.getObject(0);
      }
      
      public function §="!§(param1:String) : void
      {
      }
      
      public function §!!S§(param1:String, param2:Number, param3:Number) : Object
      {
         if(param1.indexOf("BIRD_") != -1)
         {
            if(this.§1!R§() <= 0)
            {
               §]!e§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Bird Limit");
               return null;
            }
         }
         else if(param1.indexOf("TERRAIN_") == 0)
         {
            if(this.§7!`§() <= 0)
            {
               §]!e§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Static Limit");
               return null;
            }
         }
         else if(this.§7@§() <= 0)
         {
            §]!e§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Block Limit");
            dispatchEvent(new §#!C§(§#!C§.§`k§));
            return null;
         }
         var _loc4_:Object = null;
         if(param1.indexOf("BIRD_") != -1)
         {
            _loc4_ = this.§,!T§.slingshot.addNewBirdToEndOfList(param1,param2,param3);
         }
         else
         {
            _loc4_ = this.§,!T§.objects.addObject(param1,param2,param3,0);
         }
         if(_loc4_ != null)
         {
            this.§=Q§();
         }
         return _loc4_;
      }
      
      public function removeObject(param1:§`T§) : void
      {
         if(§ %§.§,l§.§&!!§(§0Q§.§super§(param1)))
         {
            this.§,!T§.objects.removeObject(param1);
            this.§=Q§();
         }
      }
      
      public function §,!E§(param1:§`!7§) : void
      {
         this.§,!T§.slingshot.removeObject(param1);
      }
      
      private function §%i§() : void
      {
         var _loc2_:§0Q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,!T§.objects.getObjectCount())
         {
            _loc2_ = §0Q§.§super§(this.§,!T§.objects.getObject(_loc1_));
            _loc2_.§var §();
            _loc1_++;
         }
      }
      
      public function getJoints() : Vector.<§3g§>
      {
         return this.§,!T§.objects.getJoints();
      }
      
      public function §<p§(param1:§0Q§, param2:Number, param3:Number) : §0Q§
      {
         var _loc4_:§0Q§ = param1.clone(this.§,!T§,param2,param3);
         this.§=Q§();
         return _loc4_;
      }
   }
}
