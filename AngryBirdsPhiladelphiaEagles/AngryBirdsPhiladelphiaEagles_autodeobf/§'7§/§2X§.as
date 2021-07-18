package §'7§
{
   import § N§.§6!O§;
   import § N§.Sprite;
   import §#e§.§'?§;
   import §5Z§.§[Z§;
   import §8!B§.§#! §;
   
   public class §2X§
   {
      
      public static const §9!$§:String = "CutScene_Type_Intro";
      
      public static const §[<§:String = "CutScene_Type_Outro";
      
      public static const §9=§:String = "CutScene_Type_Final_Outro";
       
      
      private var §2"§:§'?§;
      
      private var §6!%§:String;
      
      private var §]y§:Vector.<§@!F§>;
      
      private var §-!9§:Number;
      
      private var §#!A§:Number;
      
      private var §6! §:Number;
      
      private var §@g§:Number;
      
      private var §8A§:Sprite;
      
      private var §96§:Boolean = true;
      
      private var §6&§:uint;
      
      private var §^`§:Boolean;
      
      private var §?5§:§6!O§;
      
      private var §9!;§:§6!O§;
      
      public function §2X§(param1:Object, param2:String)
      {
         var _loc3_:§@!F§ = null;
         var _loc4_:Object = null;
         this.§]y§ = new Vector.<§@!F§>();
         super();
         this.§-!9§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§6!%§ = §9!$§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§6!%§ = §[<§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§?-§(_loc4_);
               if(_loc3_)
               {
                  this.§]y§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§]y§)
            {
               if(_loc3_ is §'!A§)
               {
                  (_loc3_ as §'!A§).setSize(this.§6! §,this.§@g§);
                  (_loc3_ as §'!A§).§9I§ = this.§96§;
               }
               else if(_loc3_ is §3g§)
               {
                  (_loc3_ as §3g§).setSize(this.§6! §,this.§@g§);
                  (_loc3_ as §3g§).§2h§ = this.§96§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§8A§;
      }
      
      private function §?-§(param1:Object) : §@!F§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §@!F§.§=5§:
               return new §3g§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §@!F§.§,!P§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §'!A§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §@!F§.§5&§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §66§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §@!F§.§@`§:
               return new §6!&§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §@!F§.END:
               this.§#!A§ = param1.time * 1000;
               break;
            case §@!F§.§^i§:
               this.§6! § = param1.width;
               this.§@g§ = param1.height;
               break;
            case §@!F§.§!!=§:
               this.§96§ = false;
               break;
            case §@!F§.§0d§:
               this.§96§ = true;
               break;
            case §@!F§.§-T§:
               this.§6&§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§8A§)
         {
            this.§8A§.dispose();
            this.§8A§ = null;
         }
         this.§]y§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§8A§)
         {
            this.§8A§ = new Sprite();
         }
         this.§-!9§ += param1;
         var _loc2_:int = this.§]y§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§]y§[_loc2_].update(this.§-!9§,this.§8A§,this.§2"§))
            {
               this.§]y§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§&E§();
         this.§!!5§();
         this.§+!"§();
         return this.§-!9§ < this.§#!A§;
      }
      
      private function §+!"§() : void
      {
         var _loc1_:int = §[Z§.§%m§.§&!L§.height;
         var _loc2_:Number = §#! §.§3M§;
         var _loc3_:Number = §#! §.§+!E§;
         var _loc4_:int = (_loc1_ - this.§@g§ * _loc2_) / _loc2_;
         this.§8A§.y = _loc4_ >> 1;
      }
      
      private function §&E§() : void
      {
         §[Z§.§%m§.color = this.§6&§;
      }
      
      private function §!!5§() : void
      {
         if(this.§^`§)
         {
            return;
         }
         var _loc1_:Sprite = this.§8A§.getChildByName(§3g§.§,V§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§^`§ = true;
      }
      
      public function clone(param1:§'?§) : §2X§
      {
         var _loc3_:§@!F§ = null;
         var _loc2_:§2X§ = new §2X§(null,null);
         for each(_loc3_ in this.§]y§)
         {
            _loc2_.§]y§.push(_loc3_.clone());
         }
         _loc2_.§-!9§ = this.§-!9§;
         _loc2_.§#!A§ = this.§#!A§;
         _loc2_.§6! § = this.§6! §;
         _loc2_.§@g§ = this.§@g§;
         _loc2_.§96§ = this.§96§;
         _loc2_.§6&§ = this.§6&§;
         _loc2_.§6!%§ = this.§6!%§;
         _loc2_.§2"§ = param1;
         return _loc2_;
      }
      
      public function get §=!6§() : String
      {
         return this.§6!%§;
      }
      
      public function set §=!6§(param1:String) : void
      {
         this.§6!%§ = param1;
      }
   }
}
