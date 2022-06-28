package §?$§
{
   import §"$§.Starling;
   import §-!>§.§4!T§;
   import §1!&§.§!!9§;
   import §1!&§.Sprite;
   import §8!?§.TextureManager;
   
   public class CutScene
   {
      
      public static const §]!3§:String = "CutScene_Type_Intro";
      
      public static const §;F§:String = "CutScene_Type_Outro";
      
      public static const §@s§:String = "CutScene_Type_Final_Outro";
       
      
      private var §`_§:TextureManager;
      
      private var §1L§:String;
      
      private var §-!F§:Vector.<§9!'§>;
      
      private var §>2§:Number;
      
      private var §4!M§:Number;
      
      private var §^B§:Number;
      
      private var §+!d§:Number;
      
      private var §1!J§:Sprite;
      
      private var §;>§:Boolean = true;
      
      private var §'[§:uint;
      
      private var §4!!§:Boolean;
      
      private var § null§:§!!9§;
      
      private var §]e§:§!!9§;
      
      public function CutScene(param1:Object, param2:String)
      {
         var _loc3_:§9!'§ = null;
         var _loc4_:Object = null;
         this.§-!F§ = new Vector.<§9!'§>();
         super();
         this.§>2§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§1L§ = §]!3§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§1L§ = §;F§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§]!Q§(_loc4_);
               if(_loc3_)
               {
                  this.§-!F§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§-!F§)
            {
               if(_loc3_ is §'y§)
               {
                  (_loc3_ as §'y§).setSize(this.§^B§,this.§+!d§);
                  (_loc3_ as §'y§).§#!6§ = this.§;>§;
               }
               else if(_loc3_ is §=n§)
               {
                  (_loc3_ as §=n§).setSize(this.§^B§,this.§+!d§);
                  (_loc3_ as §=n§).§null § = this.§;>§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§1!J§;
      }
      
      private function §]!Q§(param1:Object) : §9!'§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §9!'§.§ !A§:
               return new §=n§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §9!'§.§`!R§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §'y§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §9!'§.§;9§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §,3§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §9!'§.§''§:
               return new §<b§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §9!'§.§=!Y§:
               this.§4!M§ = param1.time * 1000;
               break;
            case §9!'§.§9E§:
               this.§^B§ = param1.width;
               this.§+!d§ = param1.height;
               break;
            case §9!'§.§&2§:
               this.§;>§ = false;
               break;
            case §9!'§.§4!,§:
               this.§;>§ = true;
               break;
            case §9!'§.§;!Q§:
               this.§'[§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§1!J§)
         {
            this.§1!J§.dispose();
            this.§1!J§ = null;
         }
         this.§-!F§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§1!J§)
         {
            this.§1!J§ = new Sprite();
         }
         this.§>2§ += param1;
         var _loc2_:int = this.§-!F§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§-!F§[_loc2_].update(this.§>2§,this.§1!J§,this.§`_§))
            {
               this.§-!F§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§<!k§();
         this.§7P§();
         this.§ if§();
         return this.§>2§ < this.§4!M§;
      }
      
      private function § if§() : void
      {
         var _loc1_:int = Starling.§'!A§.§<H§.height;
         var _loc2_:Number = §4!T§.§`!Y§;
         var _loc3_:Number = §4!T§.§=!_§;
         var _loc4_:int = (_loc1_ - this.§+!d§ * _loc2_) / _loc2_;
         this.§1!J§.y = _loc4_ >> 1;
      }
      
      private function §<!k§() : void
      {
         Starling.§'!A§.color = this.§'[§;
      }
      
      private function §7P§() : void
      {
         if(this.§4!!§)
         {
            return;
         }
         var _loc1_:Sprite = this.§1!J§.getChildByName(§=n§.§'"§) as Sprite;
         if(_loc1_)
         {
         }
         this.§4!!§ = true;
      }
      
      public function clone(param1:TextureManager) : CutScene
      {
         var _loc3_:§9!'§ = null;
         var _loc2_:CutScene = new CutScene(null,null);
         for each(_loc3_ in this.§-!F§)
         {
            _loc2_.§-!F§.push(_loc3_.clone());
         }
         _loc2_.§>2§ = this.§>2§;
         _loc2_.§4!M§ = this.§4!M§;
         _loc2_.§^B§ = this.§^B§;
         _loc2_.§+!d§ = this.§+!d§;
         _loc2_.§;>§ = this.§;>§;
         _loc2_.§'[§ = this.§'[§;
         _loc2_.§1L§ = this.§1L§;
         _loc2_.§`_§ = param1;
         return _loc2_;
      }
      
      public function get §%p§() : String
      {
         return this.§1L§;
      }
      
      public function set §%p§(param1:String) : void
      {
         this.§1L§ = param1;
      }
   }
}
